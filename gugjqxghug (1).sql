-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 10, 2020 at 10:58 AM
-- Server version: 5.6.50-log
-- PHP Version: 7.2.34-8+0~20201103.52+debian9~1.gbpafa084

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gugjqxghug`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_location`
--

CREATE TABLE `add_location` (
  `id` int(11) NOT NULL,
  `dealer_id` int(11) NOT NULL,
  `location_title` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `src_lat` varchar(100) NOT NULL,
  `src_long` varchar(100) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_location`
--

INSERT INTO `add_location` (`id`, `dealer_id`, `location_title`, `location`, `src_lat`, `src_long`, `img`, `status`, `created`) VALUES
(6, 164, 'This is my first location', 'punjab', '30.7117564', '76.686434', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/demy.jpg', '1', '2020-03-09 04:09:24'),
(7, 1, 'This is my first location', 'bathind', '30.7117564', '76.686434', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins18691.png', '1', '2020-03-09 04:09:37'),
(8, 6, 'protolab', 'pkase 8 b ,mohali', '30.5689687', '70.98755323', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins90576.png', '1', '2020-03-09 05:08:41'),
(9, 6, 'Eweb', 'Phase 7 Market', '30.7071379', '30.7071379', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins64087.jpg', '1', '2020-03-09 05:35:37'),
(10, 6, 'A1professional', 'Phase 11', '30.68017679999999', '30.68017679999999', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins65533.jpg', '1', '2020-03-09 05:36:38'),
(11, 6, 'Stetup', 'PTL Chowk', '30.7197609', '30.7197609', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins65401.jpg', '1', '2020-03-09 10:50:18'),
(12, 6, 'Deft Soft', 'Sector 74', '30.7115894', '30.7115894', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins20393.jpg', '1', '2020-03-09 11:04:19'),
(13, 6, 'Warehouse', 'Phase 7', '30.70401859999999', '30.70401859999999', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins79195.jpg', '1', '2020-03-09 11:26:45'),
(14, 6, 'Ware House', 'Phase 6', '30.7355465', '30.7355465', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins50972.jpg', '1', '2020-03-11 08:55:40'),
(15, 6, 'Ware Hiuse 12', 'phase 9 mohali', '30.6691596', '30.6691596', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins95354.jpg', '1', '2020-03-11 12:16:25'),
(16, 135, 'Mohali', 'Quark City', '30.70412370000001', '30.70412370000001', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins28241.jpg', '1', '2020-03-12 12:09:35'),
(17, 6, '', '', '', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/demy.jpg', '1', '2020-03-20 06:55:22'),
(18, 167, 'Trailer Company', 'New Lucky Building', '30.720346', '30.720346', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins71365.jpg', '1', '2020-03-31 09:04:09'),
(19, 6, 'home', 'Chathewala, Punjab, India', '30.0626083', '75.0684153', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins89639.jpg', '1', '2020-03-31 10:38:38'),
(20, 6, 'home', 'China', '35.86166000000001', '104.195397', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins43613.jpg', '1', '2020-03-31 10:53:50'),
(21, 169, 'home', 'Chandigarh, India', '30.7333148', '76.7794179', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins17658.jpg', '1', '2020-03-31 15:00:18'),
(22, 6, 'Office', 'Kinix Systems Pvt. Ltd', '30.71192920000001', '30.71192920000001', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins17279.jpg', '1', '2020-04-02 17:44:11'),
(23, 6, 'Home city', 'Kapurthala, Punjab, India', '31.3722571', '75.4017654', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/demy.jpg', '1', '2020-04-03 13:20:46'),
(24, 6, 'My hotel', '22C, Sector 22, Chandigarh, 160022, India', '30.729805', '76.7693641', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins88366.HEIC', '1', '2020-04-03 13:30:16'),
(25, 304, 'Work ', 'E-253 Second Floor, 8B, Industrial Area, Sector 74, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.71192920000001', '76.6864301', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins81314.HEIC', '1', '2020-04-14 10:26:31'),
(26, 304, 'Sunfocus', 'Sunfocus Solutions Pvt. Ltd.', '30.7130097', '76.7092797', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins75042.HEIC', '1', '2020-04-14 11:06:12'),
(27, 305, 'Hello', 'Phase 8', '30.7104586', '76.7033471', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins57896.PNG', '1', '2020-04-16 12:32:50'),
(28, 304, 'Office', 'Protolabz Eservices', '31.2209606', '75.7691992', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins75579.HEIC', '1', '2020-04-16 12:49:05'),
(29, 335, 'Durana', 'Dubai', '25.2048493', '25.2048493', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins18749.jpg', '1', '2020-06-12 15:39:39'),
(30, 6, 'Hello', 'Sahibzada Ajit Singh Nagar', '30.7046486', '30.7046486', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins59895.jpg', '1', '2020-07-31 06:52:40'),
(31, 6, 'asdf asdf asdf asdf asdf asddf asdf asdf asdf asdf asdf', 'asdf asdf sadff asdf asdf dgafs asdf asdfd', '30.6767793', '76.7201378', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins25883.png', '1', '2020-07-31 07:09:14'),
(32, 372, 'Londom', 'London Bridge', '51.5078788', '51.5078788', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins23083.jpg', '1', '2020-07-31 08:11:40'),
(33, 372, 'Test', 'London', '51.5073509', '51.5073509', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins70262.jpg', '1', '2020-07-31 08:48:58'),
(34, 372, 'Bgx', 'Londrina', '-23.3044524', '-23.3044524', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins88965.jpg', '1', '2020-07-31 08:50:12'),
(35, 1, 'asdf', 'C.F.\'s', 'asdf', 'asdf', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/demy.jpg', '1', '2020-09-15 11:32:25'),
(36, 1, 'asdf', 'C.F.\'s asd', 'asdf', 'asdf', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins61153.jpg', '1', '2020-09-15 11:32:58');

-- --------------------------------------------------------

--
-- Table structure for table `ades`
--

CREATE TABLE `ades` (
  `id` int(11) NOT NULL,
  `dealer_id` int(11) NOT NULL,
  `ad_title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `trajection_id` varchar(255) NOT NULL,
  `clieck` varchar(255) NOT NULL,
  `total_click` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(250) NOT NULL,
  `from_admin` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ades`
--

INSERT INTO `ades` (`id`, `dealer_id`, `ad_title`, `description`, `amount`, `trajection_id`, `clieck`, `total_click`, `image`, `status`, `from_admin`, `created_at`) VALUES
(3, 0, 'Valcrum Products', 'https://www.valcrum.com', '', '', '-14', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/e78388ce46d96546a316f095d9ec1288.jpg', '4', 1, '2020-09-18 15:55:31'),
(5, 0, 'Valcrum Products2', 'https://www.valcrum.com/products/', '', '', '-5', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/25eb54875877a1a57bb0606df8d089a4.png', '4', 1, '2020-09-21 15:12:56'),
(6, 383, 'my add', 'www.facebook.com', '2', '40055310750', '1', '1', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins37309.jpg', '1', 2, '2020-10-12 13:26:03'),
(7, 383, 'My test1', 'Www.fb.com', '40', '40055340569', '20', '20', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins69659.jpg', '1', 2, '2020-10-13 12:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `createdon`) VALUES
(1, 'admin', '12345', '2020-02-26 12:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `admin_noti`
--

CREATE TABLE `admin_noti` (
  `id` int(11) NOT NULL,
  `to` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_noti`
--

INSERT INTO `admin_noti` (`id`, `to`, `title`, `Description`, `status`, `created_on`) VALUES
(1, 'Drivers', 'driver check', 'drivers good morning', 1, '2020-12-10 03:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `admin_product`
--

CREATE TABLE `admin_product` (
  `id` int(11) NOT NULL,
  `Partno` varchar(250) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `image` varchar(255) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `Wheel_Stud_Diameter` varchar(250) NOT NULL,
  `Hub_Diameter` varchar(255) NOT NULL,
  `Brake_Actuation_Type` varchar(255) NOT NULL,
  `Brake_Type` varchar(255) NOT NULL,
  `EZ_Lube` varchar(255) NOT NULL,
  `start_weight` varchar(255) NOT NULL,
  `Axle_Weight_Capacity` varchar(255) NOT NULL,
  `to_weight` varchar(255) NOT NULL,
  `Axle_Manufacturer` varchar(255) NOT NULL,
  `Trailer_Manufacturer` varchar(255) NOT NULL,
  `Trailer_Year` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `strat_year` varchar(255) NOT NULL,
  `end_month` varchar(255) NOT NULL,
  `end_year` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_product`
--

INSERT INTO `admin_product` (`id`, `Partno`, `product_name`, `image`, `Description`, `Wheel_Stud_Diameter`, `Hub_Diameter`, `Brake_Actuation_Type`, `Brake_Type`, `EZ_Lube`, `start_weight`, `Axle_Weight_Capacity`, `to_weight`, `Axle_Manufacturer`, `Trailer_Manufacturer`, `Trailer_Year`, `month`, `strat_year`, `end_month`, `end_year`, `status`, `created_at`, `updated_at`) VALUES
(1, '21-003', 'Grease Cap', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/275634db16b0c8cada13c8237aec22a3.png', 'Grease Cap 1.98\"', 'NA', 'NA', 'NA', 'NA', 'NO', '1000', '1000-3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:26', '2020-04-07 10:35:26'),
(2, '21-041', 'Grease Cap', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/3e7df425be7360426549e0e5db8aaba3.png', 'Grease Cap EZ Lube 1.98\"', 'NA', 'NA', 'NA', 'NA', 'YES', '1000', '1000-3500', '3500', 'Dexter or Rockwell or Lippert', '', '02 to 20', '', '2002', '', '2020', 1, '2020-04-07 10:35:26', '2020-04-07 10:35:26'),
(3, '19-002', 'Cotter Pin', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/cd46ce057fc4f26ba763f8dbf54803c1.png', 'Cotter Pin .125\" x 1.75\"', 'NA', 'NA', 'NA', 'NA', 'NO', '1000', '1000-8000', '8000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:26', '2020-04-07 10:35:26'),
(4, '6-176', 'Spindle Nut', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/f7e192cb9c1ad44645ced3012fd3d7bc.png', 'Castle Spindle Nut 1\" ID - 14\"', 'NA', 'NA', 'NA', 'NA', 'NO', '1000', '1000-8000', '8000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:26', '2020-04-07 10:35:26'),
(5, '6-191', 'Spindle Nut', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/86487e42973db56bccd141004c719329.png', 'Jam Nut 1\" ID - 14\"', 'NA', 'NA', 'NA', 'NA', 'YES', '2000', '2000-8000', '8000', 'Dexter or Rockwell or Lippert', '', '02 to 20', '', '2002', '', '2020', 1, '2020-04-07 10:35:26', '2020-04-07 10:35:26'),
(6, '6-190', 'Retainer ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/effb02fba85d4163f4d30824103a55c8.png', 'Retainer for Spindle Nut 1\" ID', 'NA', 'NA', 'NA', 'NA', 'YES', '2000', '2000-8000', '8000', 'Dexter or Rockwell or Lippert', '', '02 to 20', '', '2002', '', '2020', 1, '2020-04-07 10:35:26', '2020-04-07 10:35:26'),
(7, '5-023', 'Washer', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/02e73e80f1ed8a28b277b60ad18f6fe1.png', 'Spindle Nut Washer \"D\" for 1\" ID\"', 'NA', 'NA', 'NA', 'NA', 'YES', '1000', '1000-8000', '8000', 'Dexter or Rockwell or Lippert', '', '02 to 20', '', '2002', '', '2020', 1, '2020-04-07 10:35:26', '2020-04-07 10:35:26'),
(8, 'L44649', 'Outer Bearing', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/864652e6ffbce112b8c250da3d2e53bd.png', 'Outer Bearing 1.063\" ID (L44610 Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '1000', '1000-3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:26', '2020-04-07 10:35:26'),
(9, 'L44610', 'Outer Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/715bfa280d0cd610f81a4ff7e99a8758.png', 'Outer Race 1.98\" OD (L44649 Bearing)', 'NA', 'NA', 'NA', 'NA', 'NA', '1000', '1000-3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:26', '2020-04-07 10:35:26'),
(10, '10-009', 'Seal', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/0a1d7dd53b4e0353d594c130b0385cff.png', 'Double Lip Seal 1.50\" ID - 1.987\" OD\"', 'NA', 'NA', 'NA', 'NA', 'NA', '1000', '1000-2200', '2200', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:26', '2020-04-07 10:35:26'),
(11, '8-091-05', 'Idler Hub', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/bc00e6cad2f89675fe439e7817e44027.png', 'Axle Hub Only 2200 w/ Races and Studs', '1/2\"', '4-4', 'None', 'None', 'NA', '1000', '1000-2200', '2200', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:26', '2020-04-07 10:35:26'),
(12, '8-173-16', 'Hub/Drum ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/6196635f407bf959c77c2b69689382ea.png', 'Axle Hub and Drum 2200 w/ Races and Studs', '1/2\"', '4-4', 'Electric or Hydraulic', 'Drum', 'NA', '1000', '1000-2200', '2200', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:26', '2020-04-07 10:35:26'),
(13, '23-047', 'LH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/c451ddd45ce9803bbe3ff57e70aa17a8.png', 'Electric Brake Assembly 7\" x 1.25\" Left Hand/Driver Side Manual Adjustment', 'NA', 'NA', 'Electric', 'Drum', 'NA', '1000', '1000-2200', '2200', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:26', '2020-04-07 10:35:26'),
(14, '23-048', 'RH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/1d02c51799bcaa9b5a22b1604eb8366d.png', 'Electric Brake Assembly 7\" x 1.25\" Right Hand/Passenger Side Manual Adjustment', 'NA', 'NA', 'Electric', 'Drum', 'NA', '1000', '1000-2200', '2200', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:26', '2020-04-07 10:35:26'),
(15, '71-057-00', 'Magnet', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/000e8313809d6d0c9acbc53b6a3f6278.png', 'Electric Magnet for Electric Brakes (White Wire)', 'NA', 'NA', 'Electric', 'Drum', 'NA', '1000', '1000-2200', '2200', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:26', '2020-04-07 10:35:26'),
(16, '23-398', 'LH Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/d0215017a3c268d4850ff68b1d0dba85.png', 'Hydraulic Brake Assembly 7\" x 1.75\" Left Hand/Driver Side Uni Servo', 'NA', 'NA', 'Hydraulic', 'Drum', 'NA', '1000', '1000-2200', '2200', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:26', '2020-04-07 10:35:26'),
(17, '23-399', 'RH Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/d1654c4f8571fa6c6ddb4b3b6e3aaa6d.png', 'Hydraulic Brake Assembly 7\" x 1.75\" Right Hand/Passenger Side Uni Servo', 'NA', 'NA', 'Hydraulic', 'Drum', 'NA', '1000', '1000-2200', '2200', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:26', '2020-04-07 10:35:26'),
(18, 'L68111', 'Inner Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/bc876d1ce9f71195f2ed9a48c04534d5.png', 'Inner Race 2.361\" OD (L68149 Bearing)', 'NA', 'NA', 'NA', 'NA', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:26', '2020-04-07 10:35:26'),
(19, 'L68149', 'Inner Bearing', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/9dba71c9646db8447c183547b62edc3f.png', 'Inner Bearing 1.378\" ID (L68111 Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(20, '10-019', 'Seal', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/2659e9809ab09af1f4f29da197b554d9.png', 'Double Lip Seal 1.72\" ID - 2.565\" OD', 'NA', 'NA', 'NA', 'NA', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(21, '8-248-05', 'Idler Hub', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/a98e004a7ce4f41d634834c8d7716bc1.png', 'Axle Hub Only 3500 w/ Races and Studs', '1/2\"', '5-4.5', 'None', 'None', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(22, '8-248-10', 'Idler Hub', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/bee07f1118033e630dbe78eaa9243baf.png', 'Axle Hub Only 3500 w/ Races and Studs', '1/2\"', '5-4.75', 'None', 'None', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(23, '8-256-07', 'Idler Hub', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/0eca2104deaac4b4c626c2f4d14d551a.png', 'Axle Hub Only 3500 w/ Races and Studs', '1/2\"', '5-5.0', 'None', 'None', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(24, '8-256-05', 'Idler Hub', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/373d6cd7f2195a142f45982422a2aa04.png', 'Axle Hub Only 3500 w/ Races and Studs', '1/2\"', '5-5.5', 'None', 'None', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(25, '8-251-05', 'Idler Hub', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/cd717ab8fa52e3f5af7daab8a931f743.png', 'Axle Hub Only 3500 w/ Races and Studs', '1/2\"', '6-5.5', 'None', 'None', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(26, '23-472', 'LH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/0f26f7a8108558d68f5baf0527d2d41a.png', 'Electric Brake Assembly 10\" x 1.5\" Left Hand/Driver Side Manual Adjustment', 'NA', 'NA', 'Electric', 'Drum', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(27, '23-473', 'RH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/4f30207970182d2ccafb6b6e3a4026ea.png', 'Electric Brake Assembly 10\" x 1.5\" Right Hand/Passenger Side Manual Adjustment', 'NA', 'NA', 'Electric', 'Drum', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(28, '8-247-05', 'Hub/Drum ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/26d1cd16575b4e51401a32ef2b3cb0c9.png', 'Axle Hub and Drum 3500 w/ Races and Studs', '1/2\"', '5-4.5', 'Electric or Hydraulic or Electric/Hydraulic', 'Drum', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(29, '8-249-07', 'Hub/Drum ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/86d8212c106bc78258bec1f66c973927.png', 'Axle Hub and Drum 3500 w/ Races and Studs', '1/2\"', '5-5.0', 'Electric or Hydraulic or Electric/Hydraulic', 'Drum', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(30, '8-248-10', 'Hub/Drum ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/d320afe58aba0dc00ecd54d178e8ed10.png', 'Axle Hub and Drum 3500 w/ Races and Studs', '1/2\"', '5-4.75', 'Electric or Hydraulic or Electric/Hydraulic', 'Drum', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(31, '8-249-05', 'Hub/Drum ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/288e738bce5fc7f60811194eac2fab09.png', 'Axle Hub and Drum 3500 w/ Races and Studs', '1/2\"', '5-5.5', 'Electric or Hydraulic or Electric/Hydraulic', 'Drum', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(32, '8-250-05', 'Hub/Drum ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/1dec3a3707289b53e9701107298f2197.png', 'Axle Hub and Drum 3500 w/ Races and Studs', '1/2\"', '6-5.5', 'Electric or Hydraulic or Electric/Hydraulic', 'Drum', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(33, '71-104-00', 'Magnet', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/58a798aabd105336804589d7b17a006d.png', 'Electric Magnet for Electric Brakes (Green Wire)', 'NA', 'NA', 'Electric', 'Drum', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(34, '23-312', 'LH Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/79bfe5edd926c635686b3051cdd3696e.png', 'Hydraulic Brake Assembly 10\" x 2.25\" Left Hand/Driver Side Uni Servo', 'NA', 'NA', 'Hydraulic', 'Drum', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(35, '23-313', 'RH Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/7a0267d2f014248045ef7affa876e4a5.png', 'Hydraulic Brake Assembly 10\" x 2.25\" Right Hand/Passenger Side Uni Servo', 'NA', 'NA', 'Hydraulic', 'Drum', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(36, '23-310', 'LH Electric/Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/c65fa7a21ceff6fc40890c5944d1df7a.png', 'Hydraulic Brake Assembly 10\" x 2.25\" Left Hand/Driver Side Duo Servo', 'NA', 'NA', 'Electric/Hydraulic', 'Drum', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(37, '23-311', 'RH Electric/Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/108c17cfbd30aaba652c33819d756acb.png', 'Hydraulic Brake Assembly 10\" x 2.25\" Right Hand/Passenger Side Duo Servo', 'NA', 'NA', 'Electric/Hydraulic', 'Drum', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(38, '21-001', 'Grease Cap', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/6d7043f844291b0d0c1d9e7b70371ca0.png', 'Grease Cap 2.44\"', 'NA', 'NA', 'NA', 'NA', 'NO', '5200', '5200-6000', '6000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(39, 'LM67048', 'Outer Bearing', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/d9c713757b7923b69d2d3f13844c217d.png', 'Outer Bearing 1.25\" ID (LM67010 Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '5200', '5200', '5200', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(40, 'LM67010', 'Outer Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/4c14f1ef99b19966e2a0d58502918083.png', 'Outer Race 2.328\" OD (LM67048 Bearing)', 'NA', 'NA', 'NA', 'NA', 'NA', '5200', '5200', '5200', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(41, '8-213-05', 'Idler Hub', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/819896704d66ff0065617112e3411c17.png', 'Axle Hub Only 5200 w/ Races and Studs', '1/2\"', '6-5.5', 'None', 'None', 'NA', '5200', '5200', '5200', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(42, '23-105', 'LH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/dd7b26e1e5fc9866f1d908f495af56f3.png', 'Electric Brake Assembly 12\" x 2\" Left Hand/Driver Side Manual Adjustment', 'NA', 'NA', 'Electric', 'Drum', 'NA', '5200', '5200-6000', '6000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(43, '23-106', 'RH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/0c7ad841517055135d9f0b88ac074ca5.png', 'Electric Brake Assembly 12\" x 2\" Right Hand/Passenger Side Manual Adjustment', 'NA', 'NA', 'Electric', 'Drum', 'NA', '5200', '5200-6000', '6000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(44, '8-201-05', 'Hub/Drum ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/60a61a087040c3720e3afa4984cb5034.png', 'Axle Hub and Drum 5200 w/ Races and Studs', '1/2\"', '6-5.5', 'Electric or Hydraulic or Electric/Hydraulic', 'Drum', 'NA', '5200', '5200', '5200', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(45, '71-105', 'Magnet', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/cc92ef6e10eff63c773a14d298215e4b.png', 'Electric Magnet for Electric Brakes (White Wire)', 'NA', 'NA', 'Electric', 'Drum', 'NA', '5200', '5200-6000', '6000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(46, '8-219-04', 'Hub/Drum ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/ba7b010175ba8e84480cce5335f1280f.png', 'Axle Hub and Drum 7k w/ Races and Studs', '1/2\"', '8-6.5', 'Electric or Hydraulic or Electric/Hydraulic', 'Drum', 'NA', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(47, '23-324', 'LH Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/8b9805aef263c0d5f27be0ee2a4cc44c.png', 'Hydraulic Brake Assembly 12\" x 2\" Left Hand/Driver Side Uni Servo', 'NA', 'NA', 'Hydraulic', 'Drum', 'NA', '5200', '5200-6000', '6000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(48, '23-325', 'RH Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/ad8ac279f073388f8a5c947c1cb9e258.png', 'Hydraulic Brake Assembly 12\" x 2\" Right Hand/Passenger Side Uni Servo', 'NA', 'NA', 'Hydraulic', 'Drum', 'NA', '5200', '5200-6000', '6000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(49, '23-322', 'LH Electric/Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/53260969e27248fd63bc8d0613ddfff9.png', 'Hydraulic Brake Assembly 12\" x 2\" Left Hand/Driver Side Duo Servo', 'NA', 'NA', 'Electric/Hydraulic', 'Drum', 'NA', '5200', '5200-6000', '6000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(50, '23-323', 'RH Electric/Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/57480ea1ece9946a2abd4a689729bdf5.png', 'Hydraulic Brake Assembly 12\" x 2\" Right Hand/Passenger Side Duo Servo', 'NA', 'NA', 'Electric/Hydraulic', 'Drum', 'NA', '5200', '5200-6000', '6000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(51, '15123', 'Outer Bearing', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/eebee0344c23e05fa0fd05ed1eacc8a3.png', 'Outer Bearing 1.25\" ID (15245 Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '6000', '6000', '6000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(52, '15245', 'Outer Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/86f05d4960934571da0b5c9c42d7edc2.png', '\"Outer Race 2.441\"\" OD  (15123 Bearing)\"', 'NA', 'NA', 'NA', 'NA', 'NA', '6000', '6000', '6000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(53, '25520', 'Inner Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/d35cdf7652b4db649766aa91d5ad05c3.png', 'Inner Race 3.265\" OD (25580 Bearing)', 'NA', 'NA', 'NA', 'NA', 'NA', '5200', '5200-8000', '8000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(54, '25580', 'Inner Bearing ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/029c423d43c76b4ffa65b1e4d3d21f53.png', 'Inner Bearing 1.75\" ID (25520 Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '5200', '5200-8000', '8000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(55, '8-213-09', 'Idler Hub', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/1f1ab8cfb97e7593c51d10d341f90e73.png', 'Axle Hub Only 6k w/ Races and Studs', '1/2\"', '6-5.5', 'None', 'None', 'NA', '6000', '6000', '6000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(56, '21-042', 'Grease Cap', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/8cb7248f331e5dbdcc449c965ff41771.png', 'Grease Cap EZ Lube 2.44\"', 'NA', 'NA', 'NA', 'NA', 'YES', '5200', '5200-6000', '6000', 'Dexter or Rockwell or Lippert', '', '02 to 20', '', '2002', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(57, '21-039', 'Grease Cap', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/4699ab5f8d1dafcad4bee430a0a6383a.png', 'Grease Cap 2.72\"', 'NA', 'NA', 'NA', 'NA', 'NO', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(58, '14125A', 'Outer Bearing', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/bec58878a55547ecfbe7dfcf7ec1f78b.png', 'Outer Bearing 1.25\" ID (14276 Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(59, '14276', 'Outer Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/1cee521477fb86fb4a4049257dd0b376.png', 'Outer Race 2.717\" OD (14125A Bearing)', 'NA', 'NA', 'NA', 'NA', 'NA', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(60, '10-054', 'Seal', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/9459c02011ed85018ccfd4c8d58a5164.png', 'Double Lip Seal 2.25\" ID - 3.376\" OD (GS-2250DL)', 'NA', 'NA', 'NA', 'NA', 'NA', '4000', '4000-7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(61, '8-231-09', 'Idler Hub', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/8cbdc0c9ecde372fb96c6ccc429e06fb.png', 'Axle Hub Only 7k w/ Races and Studs', '1/2\"', '8-6.5', 'None', 'None', 'NA', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(62, '8-231-18', 'Idler Hub', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/53d096a38036082caa30231feba615a4.png', 'Axle Hub Only 7k w/ Races and Studs', '9/16\"', '8-6.5', 'None', 'None', 'NA', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(63, '8-231-20', 'Idler Hub', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/e18aa33bb10555cd42038552c69d6b13.png', 'Axle Hub Only 7k w/ Races and Studs', '5/8\"', '8-6.5', 'None', 'None', 'NA', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(64, '23-180', 'LH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/80271e3e0dc60b3c4c1a605bff7b9341.png', 'Electric Brake Assembly 12\" x 2\" Left Hand/Driver Side Manual Adjustment', 'NA', 'NA', 'Electric', 'Drum', 'NA', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(65, '23-181', 'RH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/b203321eaa1addb74fb1a78ce72800e6.png', 'Electric Brake Assembly 12\" x 2\" Right Hand/Passenger Side Manual Adjustment', 'NA', 'NA', 'Electric', 'Drum', 'NA', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(66, '71-125', 'Magnet', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/ebb750bb0c0b695d10d5acf0ef93ca7a.png', 'Electric Magnet for Electric Brakes (Black Wire)', 'NA', 'NA', 'Electric', 'Drum', 'NA', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(67, '8-219-13', 'Hub/Drum ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/aeff15bcb1bf7bcc0268ed103767141a.png', 'Axle Hub and Drum 7k w/ Races and Studs', '9/16\"', '8-6.5', 'Electric or Hydraulic or Electric/Hydraulic', 'Drum', 'NA', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(68, '8-219-18', 'Hub/Drum ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/cd4c7bd1687e740b5cd35a5f66d4c379.png', 'Axle Hub and Drum 7k w/ Races and Studs', '5/8\"', '8-6.5', 'Electric or Hydraulic or Electric/Hydraulic', 'Drum', 'NA', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(69, '23-338', 'LH Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/7402174b22ac4bc85e0c078982b5eb07.png', 'Hydraulic Brake Assembly 12\" x 2\" Left Hand/Driver Side Uni Servo for Surge Coupler', 'NA', 'NA', 'Hydraulic', 'Drum', 'NA', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(70, '23-339', 'RH Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/e46c3cd4dbaf53567feb013d5f62a96b.png', 'Hydraulic Brake Assembly 12\" x 2\" Right Hand/Passenger Side Uni Servo for Surge Coupler', 'NA', 'NA', 'Hydraulic', 'Drum', 'NA', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(71, '23-336', 'LH Electric/Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/fb351f408153eeadcf899d77492a673f.png', 'Hydraulic Brake Assembly 12\" x 2\" Left Hand/Driver Side Duo Servo', 'NA', 'NA', 'Electric/Hydraulic', 'Drum', 'NA', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(72, '23-337', 'RH Electric/Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/f0837f10e1386075714fb2b8c076090b.png', 'Hydraulic Brake Assembly 12\" x 2\" Right Hand/Passenger Side Duo Servo', 'NA', 'NA', 'Electric/Hydraulic', 'Drum', 'NA', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(73, 'ST2875', 'Oil Cap', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/94041e67bfd27ac46c91226fc2d2f253.png', 'Oil Cap Aluminum Valcrum', 'NA', 'NA', 'NA', 'NA', 'NA', '8000', '8000', '8000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(74, '2475', 'Outer Bearing', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/79eeb2ec8999a3f8ffa78033e74ae6b5.png', 'Outer Bearing 1.25\" ID (2420 Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '8000', '8000', '8000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(75, '2420', 'Outer Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/6bb2f886f2897ad08fe4ebfda4e2e0bc.png', 'Outer Race 2.688\" OD (2475 Bearing)', 'NA', 'NA', 'NA', 'NA', 'NA', '8000', '8000', '8000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(76, '10-063', 'Seal', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/d790dc70b93f5a98802156c0ef5ca292.png', 'Oil Seal 2.25\" ID - 3.376\" OD', 'NA', 'NA', 'NA', 'NA', 'NA', '8000', '8000', '8000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(77, '8-285-11', 'Hub/Drum ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/79bdfb265455db82e587c3a8bfb1fd56.png', 'Axle Hub and Drum 8k w/ Races and Studs', '9/16\"', '8-6.5', 'Electric or Hydraulic or Electric/Hydraulic', 'Drum', 'NA', '8000', '8000', '8000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(78, '8-285-08', 'Hub/Drum ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/8995332d0b5a16a1c6e4bf2c2257d8f4.png', 'Axle Hub and Drum 8k w/ Races and Studs', '5/8\"', '8-6.5', 'Electric or Hydraulic or Electric/Hydraulic', 'Drum', 'NA', '8000', '8000', '8000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(79, '23-432', 'LH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/889ce0365a39be887ae02874c0154e25.png', 'Electric Brake Assembly 12.25\" x 3.375\" Left Hand/Driver Side', 'NA', 'NA', 'Electric', 'Drum', 'NA', '8000', '8000', '8000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(80, '23-433', 'RH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/29862873190740efb8fac6b93c391710.png', 'Electric Brake Assembly 12.25\" x 3.375\" Right Hand/Passenger Side', 'NA', 'NA', 'Electric', 'Drum', 'NA', '8000', '8000', '8000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(81, '71-378', 'Magnet', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/cf17218c091a7b2213109fb47143c249.png', 'Electric Magnet for Electric Brakes (Red Wire)', 'NA', 'NA', 'Electric', 'Drum', 'NA', '8000', '8000-16000', '16000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(82, '23-418', 'LH Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/265e4bbd4ad50c3562210c0bb67ac236.png', 'Hydraulic Brake Assembly 12.25\" x 3.375\" Left Hand/Driver Side Uni Servo', 'NA', 'NA', 'Hydraulic', 'Drum', 'NA', '8000', '8000', '8000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(83, '23-419', 'RH Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/85fc62238e3b8602729472c1905e4ca7.png', 'Hydraulic Brake Assembly 12.25\" x 3.375\" Right Hand/Passenger Side Uni Servo', 'NA', 'NA', 'Hydraulic', 'Drum', 'NA', '8000', '8000', '8000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(84, '23-402', 'LH Electric/Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/a7df45e28c643d2a787b0861aaca319b.png', 'Hydraulic Brake Assembly 12.25\" x 3.375\" Left Hand/Driver Side Duo Servo', 'NA', 'NA', 'Electric/Hydraulic', 'Drum', 'NA', '8000', '8000', '8000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(85, '23-403', 'RH Electric/Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/5ea8a944ef55548640b8d76a1acf7d5d.png', 'Hydraulic Brake Assembly 12.25\" x 3.375\" Right Hand/Passenger Side Duo Servo', 'NA', 'NA', 'Electric/Hydraulic', 'Drum', 'NA', '8000', '8000', '8000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(86, 'ST350', 'Oil Cap', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/5c6bf2703d92cbb621ee6722efd3c7bd.png', 'Oil Cap Aluminum Valcrum', 'NA', 'NA', 'NA', 'NA', 'NA', '9000', '9000-10000 GD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(87, '6-096', 'Spindle Nut x2', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/5479dfadc912bf8209d62de0e836b98c.png', 'Jam Nut 1.5\" ID - 12', 'NA', 'NA', 'NA', 'NA', 'NA', '9000', '9000-10000 GD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(88, '5-057', 'Washer', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/9e33846d9eb8ffc26a87c5aa0200f340.png', 'Spindle Nut Washer for 1\" ID', 'NA', 'NA', 'NA', 'NA', 'NO', '1000', '1000-8000', '8000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(89, '5-070', 'Washer', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/0bcf62173abc72f5e919bd2a727b5a71.png', 'Spindle Nut Washer for 1.5\" ID', 'NA', 'NA', 'NA', 'NA', 'NA', '9000', '9000-10000 GD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(90, '382A', 'Inner Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/90187359733809f068d2a379a268f247.png', 'Inner Race 3.813\" OD (387A Bearing)', 'NA', 'NA', 'NA', 'NA', 'NA', '9000', '9000-10000 GD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(91, '387A ', 'Inner Bearing ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/6eefbf85145da336ab2891f7fa70519a.png', 'Inner Bearing 2.25\" ID (382A Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '9000', '9000-10000 GD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(92, '10-051-02', 'Seal', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/112c9121e0a6b522bd967956856014c2.png', 'Oil Seal 2.875\" ID - 3.88\" OD', 'NA', 'NA', 'NA', 'NA', 'NA', '9000', '9000-10000 GD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(93, '8-288-03', 'Hub ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/1425c09c6faa1fa14cef1ac1199a23a6.png', 'Axle Hub Only 9-10k GD ', '5/8\"', '8-6.5', 'NA', 'NA', 'NA', '9000', '9000-10000 GD', '10000', 'Dexter   ', '', '90 to 6/09', '', '1990', '06', '2009', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(94, '7-115', 'Stud', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/d54253eb62d4c7a9fedf81ce91debe7c.png', 'Wheel Stud Drive In ', '5/8\"', 'NA', 'NA', 'NA', 'NA', '9000', '9000-12000', '12000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(95, '23-450', 'LH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/2a7521d6391fc563439e3399252b3644.png', 'Electric Brake Assembly 12.25\" x 3.375\" Left Hand/Driver Side', 'NA', 'NA', 'Electric', 'Drum', 'NA', '9000', '9000-10000 GD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(96, '23-451', 'RH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/a946a1adbc75af44862c007711b6c459.png', 'Electric Brake Assembly 12.25\" x 3.375\" Right Hand/Passenger Side', 'NA', 'NA', 'Electric', 'Drum', 'NA', '9000', '9000-10000 GD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(97, '5-071', 'Tang Washer', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/a1fa8292e2fc85733a61f3219534af84.png', 'Tang Washer for 1.5\"', 'NA', 'NA', 'NA', 'NA', 'NA', '9000', '9000-10000 GD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(98, '23-412', 'LH Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/ce6a5357adfbd04eb4459b07c55f657e.png', 'Hydraulic Brake Assembly 12.25\" x 3.375\" Left Hand/Driver Side Uni Servo', 'NA', 'NA', 'Hydraulic', 'Drum', 'NA', '9000', '9000-10000 GD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(99, '23-413', 'RH Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/e87c1ddb553acab317b377a42f0fe094.png', 'Hydraulic Brake Assembly 12.25\" x 3.375\" Right Hand/Passenger Side Uni Servo', 'NA', 'NA', 'Hydraulic', 'Drum', 'NA', '9000', '9000-10000 GD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(100, '23-410', 'LH Electric/Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/cb9e94c1aa3f5233798eb50bbf91b94c.png', 'Hydraulic Brake Assembly 12.25\" x 3.375\" Left Hand/Driver Side Duo Servo', 'NA', 'NA', 'Electric/Hydraulic', 'Drum', 'NA', '9000', '9000-10000 GD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(101, '23-411', 'RH Electric/Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/6f62528a46aa65912f506260b50cc5b1.png', 'Hydraulic Brake Assembly 12.25\" x 3.375\" Right Hand/Passenger Side Duo Servo', 'NA', 'NA', 'Electric/Hydraulic', 'Drum', 'NA', '9000', '9000-10000 GD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(102, 'ST400D', 'Oil Cap', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/c4686ba890325ee9cad7dac820764762.png', 'Oil Cap Aluminum Valcrum', 'NA', 'NA', 'NA', 'NA', 'NA', '10000', '10000HD - 15000', '15000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(103, '6-084', 'Spindle Nut x2', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/301c49a3f8551d0fae35e70c969df6c4.png', 'Jam Nut 1.75\" ID - 12', 'NA', 'NA', 'NA', 'NA', 'NA', '10000', '10000HD - 15000', '15000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(104, '5-059', 'Tang Washer', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/9ad30b7caddd7d155a05071b51778e3c.png', 'Tang Washer for 1.75\" Spindle', 'NA', 'NA', 'NA', 'NA', 'NA', '10000', '10000HD - 15000', '15000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(105, '5-060', 'Washer', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/112d0ac5bdde6d9f23f5defb9f70b9fb.png', 'Spindle Nut Washer for 1.75\" ID', 'NA', 'NA', 'NA', 'NA', 'NA', '10000', '10000HD - 15000', '15000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(106, '394A', 'Inner Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/746abc5c2fc8a50c2e2370ab2fc43204.png', 'Inner Race 4.33\" OD (395S Bearing)', 'NA', 'NA', 'NA', 'NA', 'NA', '10000', '10000HD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(107, '395S', 'Inner Bearing ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/5ccb5c4ee2bc5a9bcfa52e0102455b36.png', 'Inner Bearing 2.625\" ID (394A Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '10000', '10000HD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(108, '10-056', 'Seal', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/11e611da40cfe5f04d9c35bbf960d92e.png', 'Oil Seal 3.125\" ID - 4.5\" OD', 'NA', 'NA', 'NA', 'NA', 'NA', '10000', '10000HD - 15000', '15000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(109, '8-214-05', 'Hub', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/59a35ba7daaed52fc345db71ee1785e4.png', 'Axle Hub Only 10k HD w/ Races and Studs', '5/8\"', '8-6.5', 'NA', 'NA', 'NA', '10000', '10000HD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(110, '23-438', 'LH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/ee52501298cd30a13d1e2ea3c9f3a668.png', 'Electric Brake Assembly 12.25\" x 4\" Left Hand/Driver Side', 'NA', 'NA', 'Electric', 'Drum', 'NA', '10000', '10000HD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(111, '23-439', 'RH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/f2ff0baf9b10e8c9b0223fd7738d942c.png', 'Electric Brake Assembly 12.25\" x 4\" Right Hand/Passenger Side', 'NA', 'NA', 'Electric', 'Drum', 'NA', '10000', '10000HD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(112, '23-404', 'LH Electric/Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/665930152859bd4bb7310432651a76cf.png', 'Hydraulic Brake Assembly 12.25\" x 4\" Left Hand/Driver Side Duo Servo', 'NA', 'NA', 'Electric/Hydraulic', 'Drum', 'NA', '10000', '10000HD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(113, '23-405', 'RH Electric/Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/351eac9ff570f07a2e642532e6c3c5b9.png', 'Hydraulic Brake Assembly 12.25\" x 4\" Right Hand/Passenger Side Duo Servo', 'NA', 'NA', 'Electric/Hydraulic', 'Drum', 'NA', '10000', '10000HD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(114, '70-006-01', 'Rotor', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/0062a79ad3d1831fd04866fdcba86371.png', 'Rotor Only 9-15k Disc Brakes', 'NA', 'NA', 'Hydraulic or Electric/Hydraulic', 'Disc', 'NA', '9000', '9000-15000', '15000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(115, '89-002-02', 'Caliper', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/7778af5d2ec45b9202c2e0551a8e5382.png', 'Caliper Only 9-15k Disc Brakes', 'NA', 'NA', 'Electric/Hydraulic', 'Disc', 'NA', '9000', '9000-15000', '15000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(116, '7-186', 'Shoulder Screw', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/b6e648c50e7d2bcd6d778023921e9371.png', 'Shoulder Screw for Dexter Disc Caliper', 'NA', 'NA', 'Electric/Hydraulic', 'Disc', 'NA', '9000', '9000-15000', '15000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(117, '23-442', 'LH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/dbc505de7bb8f74342155441ba75d1bd.png', 'Electric Brake Assembly 12.25\" x 5\" Left Hand/Driver Side', 'NA', 'NA', 'Electric', 'Drum', 'NA', '12000', '12000', '12000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(118, '23-443', 'RH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/631ce247d03598b8f81ffeef14ede909.png', 'Electric Brake Assembly 12.25\" x 5\" Right Hand/Passenger Side', 'NA', 'NA', 'Electric', 'Drum', 'NA', '12000', '12000', '12000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(119, '23-408', 'LH Electric/Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/fbe3261407110827954328d3142857d8.png', 'Hydraulic Brake Assembly 12.25\" x 5\" Left Hand/Driver Side Duo Servo', 'NA', 'NA', 'Electric/Hydraulic', 'Drum', 'NA', '12000', '12000', '12000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(120, '8-214-08', 'Hub', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/52265e721c2c9238502de256466adeae.png', 'Axle Hub Only 12k w/ Races and Studs', '5/8\"', '8-6.5', 'NA', 'Disc or Drum', 'NA', '12000', '12000', '12000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(121, '28682', 'Outer Bearing', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/c889618dfa505f9d7990aae15398e9d6.png', 'Outer Bearing 2.25\" ID (28622 Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '12000', '12000-15000', '15000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(122, '28622', 'Outer Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/2126d0e6a70e38f7cc8409ebc519d5c9.png', 'Outer Race 3.844\" OD (28682 Bearing)', 'NA', 'NA', 'NA', 'NA', 'NA', '12000', '12000-15000', '15000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(123, '3920', 'Inner Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/a5aaa96c94453d657eebc2cf0be34d26.png', 'Inner Race 4.438\" OD (3984 Bearing)', 'NA', 'NA', 'NA', 'NA', 'NA', '12000', '12000-15000', '15000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(124, '3984', 'Inner Bearing ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/38168e67982345b62a4426a6bb721b1f.png', 'Inner Bearing 2.625\" ID (3920 Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '12000', '12000-15000', '15000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(125, '8-401-05', 'Hub ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/f7aa0df55b0f6a258b19701a09317349.png', 'Axle Hub Only 15k w/ Races and Studs', 'M22', '8-275MM', 'Electric or Electric/Hydraulic', 'Disc or Drum', 'NA', '15000', '15000', '15000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(126, '23-447', 'LH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/43522ababa104a77ebbdcfdbd243b957.png', 'Electric Brake Assembly 12.25\" x 5\" Left Hand/Driver Side', 'NA', 'NA', 'Electric', 'Drum', 'NA', '15000', '15000', '15000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(142, '21-043', 'Grease Cap', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/c0ea9bfa48c040b3438341cd00db1fb8.png', 'Grease Cap EZ Lube 2.72\"', 'NA', 'NA', 'NA', 'NA', 'YES', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '02 to 20', '', '2002', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(143, '8-219-04', 'Stud', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/88b66e7770b36b9083a685ac91cbe352.png', 'Wheel Stud Drive In ', '1/2\"', 'NA', 'NA', 'NA', 'NA', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(144, '8-219-13', 'Stud', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/ac64f6107ee5107967e9656b68856dd8.png', 'Wheel Stud Drive In', '9/16\"', 'NA', 'NA', 'NA', 'NA', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(145, '8-219-18', 'Stud', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/7a3853496ad3bd3616ef415c2e72dd8a.png', 'Wheel Stud Drive In ', '5/8\"', 'NA', 'NA', 'NA', 'NA', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(146, '8-407-05', 'Stud', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/a4bea30a7259cea903217b54a2844901.png', 'Wheel Stud Drive In ', '1/2\"', 'NA', 'NA', 'Drum', 'NA', '5200', '5200-6000', '6000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27');
INSERT INTO `admin_product` (`id`, `Partno`, `product_name`, `image`, `Description`, `Wheel_Stud_Diameter`, `Hub_Diameter`, `Brake_Actuation_Type`, `Brake_Type`, `EZ_Lube`, `start_weight`, `Axle_Weight_Capacity`, `to_weight`, `Axle_Manufacturer`, `Trailer_Manufacturer`, `Trailer_Year`, `month`, `strat_year`, `end_month`, `end_year`, `status`, `created_at`, `updated_at`) VALUES
(147, '7-132', 'Stud', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/df3a45ce3c6a596d3a29fc3e86a2c1af.png', 'Wheel Stud Drive In ', '9/16\"', 'NA', 'NA', 'Drum', 'NA', '8000', '8000', '8000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(148, '7-232', 'Stud', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/e4bc8a34496dac33e967519fb023546d.png', 'Wheel Stud Drive In ', '5/8\"', 'NA', 'NA', 'Drum', 'NA', '8000', '8000', '8000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(149, '7-122', 'Stud', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/b05d7e5103af0e28fda0018ea8dd4b01.png', 'Wheel Stud Drive In ', '1/2\"', 'NA', 'NA', 'NA', 'NA', '3500', '3500', '3500', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(150, '7-257', 'Stud', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/c3b9abfcd62add6bcc66a96c9c005a33.png', 'Wheel Stud Drive In ', '9/16\"', 'NA', 'Electric/Hydraulic', 'Disc', 'NA', '8000', '8000', '8000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(151, '9-044', 'Drum', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/203745482d6313547160dfbdb2bde772.png', 'Brake Drum Only 12-1/4\" x 3-3/8\"', 'NA', 'NA', 'Electric or Electric/Hydraulic', 'Drum', 'NA', '9000', '9000-10000 GD', '10000', 'Dexter', '', '90 to 6/09', '', '1990', '06', '2009', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(152, '9-027', 'Drum', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/9572e3fe970c779f20b3ead026bbddcc.png', 'Brake Drum Only 12-1/4\" x 4\" HD', 'NA', 'NA', 'Electric or Electric/Hydraulic', 'Drum', 'NA', '10000', '10000HD', '10000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(153, '9-028', 'Drum', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/23865b516e1f5d464593e4a04cdce8cb.png', 'Brake Drum Only 12-1/4\" x 5\"', 'NA', 'NA', 'Electric or Electric/Hydraulic', 'Drum', 'NA', '12000', '12000-15000', '15000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(154, '71-629', 'Disc Pad', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/c839705530e65e365a8baa9dc490b92b.png', 'Disc Brake Pads 6-8K', 'NA', 'NA', 'Electric/Hydraulic', 'Disc', 'NA', '6000', '6000-8000', '8000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(155, '91-003', 'Disc Pad', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/a964228825eeb313c282ab4680131bdc.png', 'Disc Brake Pads 9-15k', 'NA', 'NA', 'Electric/Hydraulic', 'Disc', 'NA', '9000', '9000-15000', '15000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(156, '8-201-09', 'Hub/Drum ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/073a9c04b6f103d820ded63c44b290f3.png', 'Axle Hub and Drum 6k w/ Races and Studs', '1/2\"', '6-5.5', 'Electric or Hydraulic or Electric/Hydraulic', 'Drum', 'NA', '6000', '6000', '6000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(157, '10-036', 'Seal ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/28d2b1b4c5d8134575c5e544d90ce5d5.png', 'Double Lip Seal 2.25\" ID - 3.376\" OD', 'NA', 'NA', 'NA', 'NA', 'NA', '7000', '7000', '7000', 'Dexter or Rockwell or Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(158, '9-123', 'Drum ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/66ec8b664cf9fb69501ce840130325a4.png', '\"Brake Drum Only 12-1/4\"\" x 3-3/8\"\"  \"', 'NA', 'NA', 'Electric or Electric/Hydraulic', 'Drum', 'NA', '9000', '9000-10000 GD', '10000', 'Dexter', '', '5/13 to 20', '', '0000-00-00', '', '0000-00-00', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(159, '8-430-03', 'Hub', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/f08f3f918abb3002a6a9bea2c85f42cb.png', 'Axle Hub Only 9-10k GD ', '5/8\"', '8-6.5', 'NA', 'NA', 'NA', '9000', '9000-10000 GD', '10000', 'Dexter', '', '5/13 to 20', '', '0000-00-00', '', '0000-00-00', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(160, '23-409', 'RH Electric/Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/c9794b5d916395bbbc537762215f721f.png', 'Hydraulic Brake Assembly 12.25\" x 5\" Right Hand/Passenger Side Duo Servo', 'NA', 'NA', 'Electric/Hydraulic', 'Drum', 'NA', '12000', '12000', '12000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(161, '23-446', 'RH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/fb3893516620c8cdb038467e9be6ed9c.png', 'Electric Brake Assembly 12.25\" x 5\" Right Hand/Passenger Side', 'NA', 'NA', 'Electric', 'Drum', 'NA', '15000', '15000', '15000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(162, '23-406', 'LH Electric/Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/55a7a1dfc5a7ff43380b1040a1eafe2f.png', 'Hydraulic Brake Assembly 12.25\" x 5\" Left Hand/Driver Side Duo Servo', 'NA', 'NA', 'Electric/Hydraulic', 'Drum', 'NA', '15000', '15000', '15000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(163, '23-407', 'RH Electric/Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/7f20fcd53ee49d2221b68a89fac09af1.png', 'Hydraulic Brake Assembly 12.25\" x 5\" Right Hand/Passenger Side Duo Servo', 'NA', 'NA', 'Electric/Hydraulic', 'Drum', 'NA', '15000', '15000', '15000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(164, '25520', 'Outer Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/c02084022fa239ac9a7cb33549c19304.png', 'Outer Race 3.265\" OD (25580 Bearing)', 'NA', 'NA', 'NA', 'NA', 'NA', '9000', '9000-10000 GD', '10000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(165, '25580', 'Outer Bearing', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/cda7a99de2b4e8e109bb96fd55374e23.png', 'Outer Bearing 1.75\" ID (25520 Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '9000', '9000-10000 GD', '10000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(166, '382A', 'Outer Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/51fe741c5dddc5f2ea9f9c10813744e5.png', 'Outer Race 3.813\" OD (387A Bearing)', 'NA', 'NA', 'NA', 'NA', 'NA', '10000', '10000HD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(167, '387A ', 'Outer Bearing', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/36adf9b1381cbc0f40c82ab4cc840cc9.png', 'Outer Bearing 2.25\" ID (382A Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '10000', '10000HD', '10000', 'Dexter   ', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(168, '90-003-01', 'Anchor Yoke', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/41cdd836db9f15d5a624dd733bd198b0.png', 'Caliper Mounting Bracket for 4 Bolt Brake Flange', 'NA', 'NA', 'Hydraulic or Electric/Hydraulic', 'Disc', 'NA', '8000', '8000', '8000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(169, '71-630', 'Caliper', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/82d289ff25787da0fdaebd6ea9afe4fc.png', 'Caliper Assembly 6-8K', 'NA', 'NA', 'Electric/Hydraulic', 'Disc', 'NA', '6000', '6000-8000', '8000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(170, '71-631', 'Rotor', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/45d904a2c95fc102fbc19e11d2818364.png', 'Rotor Only 6-8K Disc Brakes', 'NA', 'NA', 'Hydraulic or Electric/Hydraulic', 'Disc', 'NA', '6000', '6000-8000', '8000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(171, '5-058', 'Lock Washer', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/2055a512d4b1c5bb1d93c5bcc2e5cc61.png', 'Lock Washer 1/2\"', 'NA', 'NA', 'Electric/Hydraulic', 'Disc', 'NA', '6000', '6000-8000', '8000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(172, '6-129', 'Hex Nut', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/f372f3cbcf4b2116b8d21f8e39078b9c.png', 'Hex Nut 1/2\"', 'NA', 'NA', 'Electric/Hydraulic', 'Disc', 'NA', '6000', '6000-8000', '8000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(173, '7-097', 'Shoulder Screw', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/cd7744ae0f67ded985c4faf65019798c.png', 'Caliper Mounting Bolt 1/2\"', 'NA', 'NA', 'Electric/Hydraulic', 'Disc', 'NA', '6000', '6000-8000', '8000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(174, 'ST2875', 'Oil Cap', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/d05e68e33637a40966b03d441fc87619.png', 'Oil Cap Aluminum Valcrum', 'NA', 'NA', 'NA', 'NA', 'NA', '8000', '8000', '8000', 'Lippert', '', '13 to 20', '', '2013', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(175, '122075', 'Cotter Pin', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/1dbdc535f750d58ea31b9b4714c01aea.png', 'Cotter Pin  .125\"x 1.75\"', 'NA', 'NA', 'NA', 'NA', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(176, '122081', 'Spindle Nut', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/dd7fe71c6d09fd425f2ce1c7f96e130f.png', 'Castle Spindle Nut 1\" ID - 14\"', 'NA', 'NA', 'NA', 'NA', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(177, '179660', 'Washer', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/edd2ce39f82295b56d0d10237c06a771.png', 'Spindle Nut Washer for 1\" ID', 'NA', 'NA', 'NA', 'NA', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(178, '2475', 'Outer Bearing', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/d20c9b4ffc0cd86d4008d1f0ea12d054.png', 'Outer Bearing 1.25\" ID (2420 Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(179, '2420', 'Outer Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/4cb88a7e968355f295309560dfbe2647.png', 'Outer Race 2.688\" OD (2475 Bearing)', 'NA', 'NA', 'NA', 'NA', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(180, '175704', 'Stud', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/523d016438efced7902a513cb30397f5.png', 'Wheel Stud Drive In ', '9/16\"', 'NA', 'NA', 'NA', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(181, '175705', 'Stud', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/a79facf79c452c8677875928db1dafe0.png', 'Wheel Stud Drive In ', '5/8\"', 'NA', 'NA', 'NA', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(182, '2772101', 'Hub/Drum', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/ae6451c6cf98699f684697b4d6c5722c.png', 'Axle Hub and Drum 8k w/ Races and Studs', '9/16\"', '8-6.5', 'Electric or Hydraulic or Electric/Hydraulic', 'Drum', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(183, '2772121', 'Hub/Drum', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/c1d69228cb3c9b1ac709a163557b8bcc.png', 'Axle Hub and Drum 8k w/ Races and Studs', '5/8\"', '8-6.5', 'Electric or Hydraulic or Electric/Hydraulic', 'Drum', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(184, '25520', 'Inner Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/44a617e8dd94f5b01086a49ee822bbf3.png', 'Inner Race 3.265\" OD (25580 Bearing)', 'NA', 'NA', 'NA', 'NA', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(185, '25580', 'Inner Bearing', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/9ddc14b0eddccb968cb34c62d8381884.png', 'Inner Bearing 2.00\" ID (28521 Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(186, '276712', 'Seal', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/6c123695d8e262bbe4136f3857497441.png', 'Oil Seal 2.25\" ID - 3.376\" OD', 'NA', 'NA', 'NA', 'NA', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(187, '156443', 'LH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/5f63ad9a9ff163b8460c448dd8bc00d3.png', 'Electric Brake Assembly 12.25\" x 3.375\" Left Hand/Driver Side', 'NA', 'NA', 'Electric  ', 'Drum', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(188, '156444', 'RH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/7b093582cb64d5de8d6aea405d01cbf9.png', 'Electric Brake Assembly 12.25\" x 3.375\" Right Hand/Passenger Side', 'NA', 'NA', 'Electric  ', 'Drum', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(189, '336252', 'LH Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/a6c7a8dbc29ac657bb581d8a439a6075.png', 'Hydraulic Brake Assembly 12.25\" x 3.375\" Left Hand/Driver Side Uni Servo', 'NA', 'NA', 'Hydraulic', 'Drum', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(190, '3362521', 'RH Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/5ed2c2448c57cdf523829fb9b3f51f8e.png', 'Hydraulic Brake Assembly 12.25\" x 3.375\" Right Hand/Passenger Side Uni Servo', 'NA', 'NA', 'Hydraulic', 'Drum', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(191, '307319', 'Hub/Rotor', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/63c2bf339b7581df8cf39169baa6e6be.png', 'Axle Hub and Rotor 8k w/ Races and Studs', '5/8\"', '8-6.5', 'Hydraulic or Electric/Hydraulic', 'Disc', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(192, '307318', 'Hub/Rotor', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/2cb8915561b42301e50dff3d08972e86.png', 'Axle Hub and Rotor 8k w/ Races and Studs', '9/16\"', '8-6.5', 'Hydraulic or Electric/Hydraulic', 'Disc', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(193, '286594', 'Anchor Yoke', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/07c851eddd4b7af3daebb05adb79fa6f.png', 'Caliper Mounting Bracket for 5 Bolt Brake Flange', 'NA', 'NA', 'Hydraulic or Electric/Hydraulic', 'Disc', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(194, '158797', 'Anchor Yoke', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/a0a08c01430b69ee5ed09d527d1270b3.png', 'Caliper Mounting Bracket for 4 Bolt Brake Flange', 'NA', 'NA', 'Hydraulic or Electric/Hydraulic', 'Disc', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(195, '134421', 'Caliper   ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/2c9392239a7a52da3b82d1fd3432c81e.png', 'Brake Caliper Assembly', 'NA', 'NA', 'Hydraulic or Electric/Hydraulic', 'Disc', 'NA', '8000', '8000', '8000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(196, 'ST400', 'Oil Cap', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/9b2354cf0fa5224aeaf076fcb2be190b.png', 'Oil Cap Aluminum Valcrum', 'NA', 'NA', 'NA', 'NA', 'NA', '10000', '10000-16000', '16000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(197, '181899', 'Cotter Pin', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/2b3fc068ee515b19b6886d6e55ec270b.png', 'Cotter Pin .25\" x 2.25\"', 'NA', 'NA', 'NA', 'NA', 'NA', '10000', '10000-16000', '16000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(198, '181894', 'Spindle Nut', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/a868408ec47b40caffcb89dca7568fdf.png', 'Castle Spindle Nut 1.5\"\" ID - 12', 'NA', 'NA', 'NA', 'NA', 'NA', '10000', '10000', '10000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(199, '181895', 'Washer', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/02c226856902ec838edc00f68e12e608.png', 'Spindle Washer - 1.50\" ID x 3.00\" OD', 'NA', 'NA', 'NA', 'NA', 'NA', '10000', '10000', '10000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(200, '25580', 'Outer Bearing', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/eb4ae7ac988b2fdae60a8de77d5f43d8.png', 'Outer Bearing 1.75\" ID (25520 Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '10000', '10000', '10000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(201, '25520', 'Outer Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/0de1cdfc21f4fc05719751b6609a4d82.png', 'Outer Race 3.265\" OD (25580 Bearing)', 'NA', 'NA', 'NA', 'NA', 'NA', '10000', '10000', '10000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(202, '183662', 'Hub/Drum ', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/291bdb2c1c60da17f73a9f1dd5e24b96.png', 'Axle Hub and Drum 10k w/ Races and Studs', '5/8\"', '8-6.5', 'Electric or Electric/Hydraulic', 'Drum', 'NA', '10000', '10000', '10000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(203, '382A', 'Inner Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/95036a62cb6f7f757c2f0ee14711f310.png', 'Inner Race 3.813\" OD (387A Bearing)', 'NA', 'NA', 'NA', 'NA', 'NA', '10000', '10000', '10000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(204, '387A', 'Inner Bearing', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/158268c2763f1e54120b09ac06960b73.png', 'Inner Bearing 2.25\" ID (382A Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '10000', '10000', '10000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(205, '176692', 'Seal', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/9a398885a4dc5ead4213c22081deb47e.png', 'Oil Seal 2.875\" ID - 3.88\" OD', 'NA', 'NA', 'NA', 'NA', 'NA', '10000', '10000', '10000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(206, '183128', 'Stud', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/53871686d51c9c3af577d119fe659275.png', 'Wheel Stud Drive In ', '5/8\"', 'NA', 'NA', 'NA', 'NA', '10000', '10000', '10000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(207, '181935', 'LH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/d72738466e5b77bdd63c3b3d86ed8f42.png', 'Electric Brake Assembly 12.25\" x 3.375\" Left Hand/Driver Side', 'NA', 'NA', 'Electric  ', 'Drum', 'NA', '10000', '10000', '10000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(208, '181936', 'RH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/fcf72549dd2b36eab9d3c343c5dd46c7.png', 'Electric Brake Assembly 12.25\" x 3.375\" Right Hand/Passenger Side', 'NA', 'NA', 'Electric  ', 'Drum', 'NA', '10000', '10000', '10000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(209, '213222', 'LH Electric/Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/e1d39b9188a3f38b9e363e8859278c86.png', 'Hydraulic Brake Assembly 12.25\" x 3.375\" Left Hand/Driver Side Duo Servo', 'NA', 'NA', 'Electric/Hydraulic', 'Drum', 'NA', '10000', '10000', '10000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(210, '213223', 'RH Electric/Hydraulic Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/adc219dd069640191e25cafab33b4e09.png', 'Hydraulic Brake Assembly 12.25\" x 3.375\" Right Hand/Passenger Side Duo Servo', 'NA', 'NA', 'Electric/Hydraulic', 'Drum', 'NA', '10000', '10000', '10000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(211, '71-378', 'Magnet', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/370007cc7aa6f26c3f07271d37d96527.png', 'Electric Magnet for Electric Brakes (Red Wire)', 'NA', 'NA', 'Electric', 'Drum', 'NA', '8000', '8000-16000', '16000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(212, '330037', 'Spindle Nut', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/e8d99e476e691d43f2813676ad11e576.png', 'Castle Spindle Nut 1.75\" ID - 12\"', 'NA', 'NA', 'NA', 'NA', 'NA', '12000', '12000-16000', '16000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(213, '28682', 'Outer Bearing', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/841164d3275157f6d274ef9ff4b4613b.png', 'Outer Bearing 2.25\" ID (28622 Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '12000', '12000', '12000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(214, '28622', 'Outer Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/1e071f47940eb3bd47c132e7965d0743.png', 'Outer Race 3.844\" OD (28682 Bearing)', 'NA', 'NA', 'NA', 'NA', 'NA', '12000', '12000', '12000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(215, '297983', 'Hub/Drum', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/7e95b1b6935d665e268e30e24a11602b.png', 'Axle Hub and Drum 12k w/ Races and Studs', '5/8\"', '8-6.5', 'Electric or Electric/Hydraulic', 'Drum', 'NA', '12000', '12000', '12000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(216, '3920', 'Inner Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/4eebdbadb3230dd83fb8612ff5ff018f.png', 'Inner Race 4.438\" OD (3984 Bearing)', 'NA', 'NA', 'NA', 'NA', 'NA', '12000', '12000', '12000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(217, '3984', 'Inner Bearing', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/0605d6231d156757d511ec7af06c1729.png', 'Inner Bearing 2.625\" ID (3920 Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '12000', '12000', '12000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(218, '295924', 'Seal', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/f69349579d075587db45951fc0c3b016.png', 'Oil Seal 3.125\" ID - 4.5\" OD', 'NA', 'NA', 'NA', 'NA', 'NA', '12000', '12000-16000', '16000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(219, '183128', 'Stud', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/ca65637cc4970f0f69d5ff1de81af88a.png', 'Wheel Stud Drive In ', '5/8\"', 'NA', 'NA', 'NA', 'NA', '12000', '12000', '12000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(220, '297998', 'LH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/6d26f6d417b0c030b95ac7d49b0d1da9.png', 'Electric Brake Assembly 12.25\" x 5\" Left Hand/Driver Side', 'NA', 'NA', 'Electric', 'Drum', 'NA', '12000', '12000-16000', '16000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(221, '2979981', 'RH Electric Brake Assembly', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/ef3e5632b2db3e58665033d8fd6db0ef.png', 'Electric Brake Assembly 12.25\" x 5\" Right Hand/Passenger Side', 'NA', 'NA', 'Electric', 'Drum', 'NA', '12000', '12000-16000', '16000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(222, '3984', 'Inner Bearing', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/18df1ae7c92a81d269191fd8524aa7e1.png', 'Inner Bearing 2.625\" ID (3920 Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '16000', '16000', '16000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(223, '3920', 'Inner Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/94903e11b989778a28e2145c53b0e0ad.png', 'Inner Race 4.438\" OD (3984 Bearing)', 'NA', 'NA', 'NA', 'NA', 'NA', '16000', '16000', '16000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(224, '353323', 'Hub/Drum', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/8d1d4fc7f79e929cf733b5f95be5eecf.png', 'Axle Hub and Drum 16k w/ Races and Studs', 'M22', '8-275MM', 'Electric or Electric/Hydraulic', 'Drum', 'NA', '16000', '16000', '16000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(225, '352774', 'Stud', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/e2487aca16949b19e324aba05fc6b22b.png', 'Wheel Stud Drive In ', 'M22', 'NA', 'NA', 'NA', 'NA', '16000', '16000', '16000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(226, '28622', 'Outer Race', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/c1783aaf81ea15c97c5b01e3fc22525e.png', 'Outer Race 3.844\" OD (28682 Bearing)', 'NA', 'NA', 'NA', 'NA', 'NA', '16000', '16000', '16000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(227, '28682', 'Outer Bearing', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/14b5759c9d5fb2ec6587191d8d70e179.png', 'Outer Bearing 2.25\" ID (28622 Race)', 'NA', 'NA', 'NA', 'NA', 'NA', '16000', '16000', '16000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(228, '358550', 'Washer', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/4a9e46072ec2387ed0aadab7569bef0a.png', 'Spindle Washer 1.75\" ID x 3\" OD', 'NA', 'NA', 'NA', 'NA', 'NA', '16000', '16000', '16000', 'Lippert', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(229, '90-002-02', 'Anchor Yoke', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/26403210cf3012b486cf60cb6b7fb75a.png', 'Caliper Mounting Bracket for 7 Bolt Brake Flange', 'NA', 'NA', 'Hydraulic or Electric/Hydraulic', 'Disc', 'NA', '9000', '9000-15000', '15000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(230, '8-403-05', 'Idler Hub', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/9f6bcd60ad73228de6a815f5be64473c.png', 'Axle Hub Only 6k w/ Races and Studs', '1/2\"', '6-5.5', 'Electric/Hydraulic', 'Disc', 'NA', '6000', '6000', '6000', 'Dexter', '', '90 to 1/09', '', '1990', '01', '2009', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(231, '90-005-01', 'Anchor Yoke', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/5e7cc535131350b85bc2b93c74dcfe0d.png', 'Caliper Mounting Bracket for 5 Bolt Brake Flange LH', 'NA', 'NA', 'Electric/Hydraulic', 'Disc', 'NA', '5200', '5200-6000', '6000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(232, '90-005-02', 'Anchor Yoke', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/855305af3785cb43f5dc93db4256d365.png', 'Caliper Mounting Bracket for 5 Bolt Brake Flange RH', 'NA', 'NA', 'Electric/Hydraulic', 'Disc', 'NA', '5200', '5200-6000', '6000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(233, '90-008-01', 'Anchor Yoke', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/2161e326b8a74c1395004012b57dd872.png', 'Caliper Mounting Bracket for 5 Bolt Brake Flange LH', 'NA', 'NA', 'Electric/Hydraulic', 'Disc', 'NA', '7000', '7000', '7000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(234, '90-008-02', 'Anchor Yoke', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/06dd82dc7a5d926cbd54f0b3ec2fe855.png', 'Caliper Mounting Bracket for 5 Bolt Brake Flange RH', 'NA', 'NA', 'Electric/Hydraulic', 'Disc', 'NA', '7000', '7000', '7000', 'Dexter', '', '90 to 20', '', '1990', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27'),
(235, '7-262', 'Stud', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/5da3991a4b81ae905d30e6c4b1b3810b.png', 'Wheel Stud Drive In ', '1/2\"', 'NA', 'Electric/Hydraulic', 'Disc', 'NA', '6000', '6000', '6000', 'Dexter', '', '3/09 to 20', '03', '2009', '', '2020', 1, '2020-04-07 10:35:27', '2020-04-07 10:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `ads_price`
--

CREATE TABLE `ads_price` (
  `id` int(11) NOT NULL,
  `click` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads_price`
--

INSERT INTO `ads_price` (`id`, `click`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', '2', '2020-06-11 04:59:40', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `block_driver`
--

CREATE TABLE `block_driver` (
  `id` int(11) NOT NULL,
  `block_driver_id` varchar(255) NOT NULL,
  `driver_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `block_driver`
--

INSERT INTO `block_driver` (`id`, `block_driver_id`, `driver_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '53', '300', 1, '2020-07-20 08:12:09', '2020-07-20 08:12:09'),
(2, '259', '225', 1, '2020-07-31 06:25:50', '2020-07-31 06:25:50'),
(3, '225', '259', 1, '2020-07-31 06:49:04', '2020-07-31 06:49:04'),
(4, '259', '265', 1, '2020-07-31 12:25:47', '2020-07-31 12:25:47'),
(5, '40', '259', 1, '2020-07-31 12:34:32', '2020-07-31 12:34:32'),
(6, '40', '265', 1, '2020-08-22 10:53:34', '2020-08-22 10:53:34'),
(7, '225', '265', 1, '2020-08-22 10:53:44', '2020-08-22 10:53:44'),
(8, '265', '315', 1, '2020-09-03 12:06:19', '2020-09-03 12:06:19'),
(9, '259', '315', 1, '2020-09-03 12:06:23', '2020-09-03 12:06:23'),
(10, '40', '315', 1, '2020-09-03 12:06:28', '2020-09-03 12:06:28'),
(11, '225', '315', 1, '2020-09-03 12:06:34', '2020-09-03 12:06:34'),
(12, '225', '311', 1, '2020-09-07 10:15:04', '2020-09-07 10:15:04'),
(13, '316', '311', 1, '2020-09-07 10:16:08', '2020-09-07 10:16:08'),
(14, '315', '314', 1, '2020-09-07 16:26:32', '2020-09-07 16:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE `card_details` (
  `id` int(11) NOT NULL,
  `cardnumber` varchar(255) NOT NULL,
  `card_cvv` varchar(255) NOT NULL,
  `carde_date` varchar(255) NOT NULL,
  `Transaction_id` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card_details`
--

INSERT INTO `card_details` (`id`, `cardnumber`, `card_cvv`, `carde_date`, `Transaction_id`, `amount`, `create_at`) VALUES
(1, '4242424242424242', '123', '2024-12', '40052001931', ' 100', '2020-07-16 10:14:36'),
(2, '4242424242424242', '123', '2024-12', '40052025029', ' 100', '2020-07-17 03:38:04'),
(3, '4242424242424242', '123', '2022-08', '0', '10', '2020-07-17 04:01:47'),
(20, '4242424242424242', '123', '2022-08', '40052153815', '20', '2020-07-20 07:15:03'),
(21, '4242424242424242', '123', '2022-08', '40052153954', '10', '2020-07-20 07:22:35'),
(22, '4242424242424242', '123', '2022-08', '40052154035', '10', '2020-07-20 07:26:08'),
(23, '4242424242424242', '123', '2022-08', '40052154091', '10', '2020-07-20 07:30:59'),
(24, '4242424242424242', '123', '2022-08', '40052154289', '10', '2020-07-20 07:40:37'),
(25, '4242424242424242', '123', '2022-08', '40052154360', '10', '2020-07-20 07:43:39'),
(26, '4242424242424242', '123', '2022-08', '40052154563', '10', '2020-07-20 07:49:52'),
(27, '4242424242424242', '123', '2022-08', '40052530211', '300', '2020-07-27 13:27:42'),
(28, '4242424242424242', '123', '2022-08', '40052530852', '20', '2020-07-27 13:41:54'),
(29, '4242424242424242', '123', '2024-12', '40052563327', ' 100', '2020-07-28 05:15:01'),
(30, '4242424242424242', '123', '2024-12', '40052563882', ' 110', '2020-07-28 05:56:39'),
(31, '4242424242424242', '123', '2024-12', '40052564899', ' 115', '2020-07-28 06:36:39'),
(32, '4242424242424242', '123', '2022-08', '40052590491', '10', '2020-07-28 12:05:45'),
(33, '4242424242424242', '123', '2022-08', '40052590522', '5', '2020-07-28 12:06:46'),
(34, '4242424242424242', '123', '2022-08', '40052629388', '5', '2020-07-29 05:37:29'),
(35, '4242424242424242', '123', '2022-08', '40052629425', '5', '2020-07-29 05:39:30'),
(36, '4242424242424242', '123', '2024-12', '40052629561', ' 115', '2020-07-29 05:47:09'),
(37, '4242424242424242', '123', '2024-12', '40052629574', ' 110', '2020-07-29 05:48:20'),
(38, '4242424242424242', '123', '2024-12', '40052643589', ' 110', '2020-07-29 09:09:47'),
(39, '4242424242424242', '123', '2024-12', '40052647147', ' 119', '2020-07-29 09:10:51'),
(40, '4242424242424242', '123', '2022-08', '40052653372', '20', '2020-07-29 10:15:44'),
(41, '4242424242424242', '123', '2024-12', '40052654010', ' 119', '2020-07-29 11:06:36'),
(42, '4242424242424242', '123', '2024-12', '40052654046', '121', '2020-07-29 11:07:47'),
(43, '4242424242424242', '123', '2022-08', '40052710544', '123', '2020-07-30 10:58:02'),
(44, '4242424242424242', '123', '2022-08', '40052712118', '123', '2020-07-30 12:20:02'),
(45, '4242424242424242', '123', '2022-08', '40052712282', '123', '2020-07-30 12:28:57'),
(46, '4242424242424242', '123', '2022-08', '40052712668', '25', '2020-07-30 12:35:09'),
(47, '4242424242424242', '123', '2022-08', '40052877855', '50', '2020-08-03 13:08:05'),
(48, '4242424242424242', '123', '2022-08', '40053187344', '10', '2020-08-10 03:52:22'),
(49, '4242424242424242', '123', '2024-08', '40053187351', '10', '2020-08-10 03:54:42'),
(50, '4242424242424242', '123', '2024-08', '40053187359', '10', '2020-08-10 03:57:05'),
(51, '4242424242424242', '123', '2022-08', '60148361994', '20', '2020-08-10 04:58:20'),
(52, '4242424242424242', '123', '2022-08', '60148362041', '20', '2020-08-10 05:01:22'),
(53, '4242424242424242', '123', '2024-08', '60148362076', '50', '2020-08-10 05:04:20'),
(54, '4242424242424242', '123', '2024-08', '60148362156', '50', '2020-08-10 05:09:25'),
(55, '4242424242424242', '123', '2024-08', '60148366257', '10', '2020-08-10 06:25:49'),
(56, '4242424242424242', '123', '2024-08', '60148366399', '10', '2020-08-10 06:30:03'),
(57, '4242424242424242', '123', '2022-08', '40053263156', '10', '2020-08-11 12:15:39'),
(58, '4242424242424242', '123', '2024-12', '40054420601', '9.99', '2020-09-15 11:40:01'),
(59, '4242424242424242', '123', '2024-12', '40054516265', '99.99', '2020-09-18 05:34:14'),
(60, '4242424242424242', '123', '12/24', '40055110275', '9.99', '2020-10-05 11:54:17'),
(61, '4242424242424242', '123', '2024-12', '40055310750', '2', '2020-10-12 13:26:02'),
(62, '4242424242424242', '123', '12/24', '40055339706', '50', '2020-10-13 12:03:14'),
(63, '4242424242424242', '123', '12/24', '40055339806', '50', '2020-10-13 12:06:47'),
(64, '4242424242424242', '123', '12/24', '40055339963', '50', '2020-10-13 12:11:05'),
(65, '4242424242424242', '123', '12/24', '40055340569', '40', '2020-10-13 12:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `comment_post`
--

CREATE TABLE `comment_post` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=like,2=unlike',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment_post`
--

INSERT INTO `comment_post` (`id`, `post_id`, `driver_id`, `comment`, `status`, `created_on`) VALUES
(1, 1, 259, 'nice', 1, '2020-07-31 05:14:20'),
(2, 3, 225, 'hello', 1, '2020-07-31 06:39:16'),
(3, 3, 259, 'nice', 1, '2020-07-31 06:48:32'),
(4, 13, 40, 'hello comment', 1, '2020-07-31 09:02:36'),
(5, 13, 40, 'test again ', 1, '2020-07-31 09:10:09'),
(6, 15, 259, 'nice', 1, '2020-07-31 10:29:06'),
(7, 19, 265, 'hi', 1, '2020-07-31 12:08:05'),
(8, 29, 259, 'good', 1, '2020-07-31 14:38:35'),
(9, 30, 259, 'good', 1, '2020-08-06 07:31:02'),
(10, 30, 259, 'f', 1, '2020-08-06 08:32:50'),
(11, 30, 259, 'a', 1, '2020-08-06 08:33:12'),
(12, 30, 259, 'e', 1, '2020-08-06 08:35:30'),
(13, 30, 259, 'b', 1, '2020-08-06 08:35:39'),
(14, 30, 259, 'u', 1, '2020-08-06 08:35:51'),
(15, 30, 259, 'dy', 1, '2020-08-06 08:40:08'),
(16, 30, 259, 'bbh', 1, '2020-08-06 08:40:42'),
(17, 30, 259, 'vbh', 1, '2020-08-06 08:41:33'),
(18, 30, 259, 'ggh', 1, '2020-08-06 08:41:46'),
(19, 30, 259, 'y', 1, '2020-08-06 08:48:24'),
(20, 30, 259, 'n', 1, '2020-08-06 08:48:33'),
(21, 30, 259, 'df', 1, '2020-08-06 10:24:47'),
(22, 30, 259, 'geg', 1, '2020-08-06 10:33:44'),
(23, 30, 259, 'bxbb', 1, '2020-08-06 10:33:48'),
(24, 30, 259, 'ji', 1, '2020-08-06 11:26:20'),
(25, 30, 259, 'hu', 1, '2020-08-06 11:28:47'),
(26, 13, 265, 'hi', 1, '2020-08-06 11:54:19'),
(27, 30, 309, 'test notification ', 1, '2020-08-07 14:43:16'),
(28, 30, 259, 'a', 1, '2020-08-08 07:21:42'),
(29, 30, 259, 'v', 1, '2020-08-08 07:21:54'),
(30, 30, 259, 'testing', 1, '2020-08-08 10:26:28'),
(31, 19, 40, 'hello', 1, '2020-08-10 03:36:02'),
(32, 30, 259, ' g', 1, '2020-08-10 11:51:42'),
(33, 30, 259, 'g', 1, '2020-08-10 11:51:56'),
(34, 30, 259, 'aro', 1, '2020-08-10 11:52:10'),
(35, 19, 40, 'hii', 1, '2020-08-10 12:01:43'),
(36, 30, 259, 'ok', 1, '2020-08-10 12:03:26'),
(37, 30, 259, 'jkkj', 1, '2020-08-10 12:13:25'),
(38, 30, 259, 'jko', 1, '2020-08-10 12:13:57'),
(39, 30, 259, 'bjjj', 1, '2020-08-10 12:20:44'),
(40, 30, 259, 'fgg', 1, '2020-08-11 05:07:08'),
(41, 30, 259, 'yes', 1, '2020-08-11 12:10:05'),
(42, 30, 259, 'yes', 1, '2020-08-11 12:10:23'),
(43, 30, 259, 'giid', 1, '2020-08-11 12:11:54'),
(44, 30, 259, 'ok', 1, '2020-08-11 12:32:55'),
(45, 30, 259, 'g', 1, '2020-08-12 11:12:19'),
(46, 30, 259, 'a', 1, '2020-08-12 13:55:37'),
(47, 30, 259, 'ok', 1, '2020-08-13 06:55:31'),
(48, 30, 259, 'he', 1, '2020-08-13 09:44:51'),
(49, 30, 259, 'gh', 1, '2020-08-13 09:45:19'),
(50, 19, 40, 'testing', 1, '2020-08-13 09:49:22'),
(51, 30, 259, 'ty', 1, '2020-08-13 12:27:40'),
(52, 30, 259, 'o', 1, '2020-08-13 12:48:15'),
(53, 30, 259, 'h', 1, '2020-08-13 12:49:48'),
(54, 30, 259, 'y', 1, '2020-08-13 13:40:32'),
(55, 30, 259, 'as', 1, '2020-08-14 07:15:51'),
(56, 30, 259, 'a', 1, '2020-08-14 07:43:05'),
(57, 30, 259, 'a', 1, '2020-08-14 10:58:10'),
(58, 19, 40, 'tesr\n', 1, '2020-08-20 06:47:37'),
(59, 3, 265, 'sbdhjddn', 1, '2020-08-22 02:58:33'),
(60, 3, 265, 'hlllllllooo', 1, '2020-08-22 02:58:48'),
(61, 3, 265, 'dhjdjdjd', 1, '2020-08-22 04:27:14'),
(62, 13, 265, 'hlodbbdjdjd', 1, '2020-08-22 08:02:12'),
(63, 13, 265, 'hlo', 1, '2020-08-22 08:02:21'),
(64, 13, 265, 'hlo', 1, '2020-08-22 08:02:39'),
(65, 31, 265, 'hloooo', 1, '2020-08-22 10:58:04'),
(66, 31, 265, 'vxhxhxhd', 1, '2020-08-22 11:15:17'),
(67, 31, 265, 'heyyyy', 1, '2020-08-24 12:33:52'),
(68, 32, 315, 'hlo.. ', 1, '2020-09-03 09:28:06'),
(69, 33, 315, 'xvhzhz', 1, '2020-09-03 09:34:02'),
(70, 33, 315, 'dvhdhdh', 1, '2020-09-03 09:34:08'),
(71, 33, 315, 'bdhdbdbd', 1, '2020-09-03 09:34:15'),
(72, 33, 315, 'vxjxhdbdhdhd', 1, '2020-09-03 09:58:16'),
(73, 3, 315, 'vdhbdbdbdbd', 1, '2020-09-03 09:58:54'),
(74, 33, 315, 'hlooooo', 1, '2020-09-03 11:33:27'),
(75, 33, 315, 'hhhdvdhbdbdhdjdj', 1, '2020-09-03 11:34:29'),
(76, 34, 315, 'hlo.. ', 1, '2020-09-03 12:07:23'),
(77, 34, 315, 'hiiii', 1, '2020-09-03 12:34:58'),
(78, 34, 315, 'ab', 1, '2020-09-03 12:35:02'),
(79, 34, 315, 'hdbfnnf', 1, '2020-09-03 12:35:10'),
(80, 34, 315, 'hdbjcjcbbcb', 1, '2020-09-03 12:35:16'),
(81, 34, 315, 'xbbxdbbdjxh', 1, '2020-09-03 12:35:21'),
(82, 34, 315, 'xbjcbxbxbnsjbs', 1, '2020-09-03 12:35:27'),
(83, 34, 315, ' xbxbxbhxndbshsjdbdb', 1, '2020-09-03 12:35:33'),
(84, 34, 315, 'dghdhdvsudjdvshsh', 1, '2020-09-03 12:35:39'),
(85, 34, 315, 'gdhdhsgahssjvsgshdb', 1, '2020-09-03 12:35:45'),
(86, 34, 315, 'vdjdhdvuehs', 1, '2020-09-03 12:36:01'),
(87, 34, 315, 'excellent services.. ', 1, '2020-09-03 12:38:11'),
(88, 35, 315, 'hello... good services', 1, '2020-09-04 04:31:10'),
(89, 35, 315, 'hey.. ', 1, '2020-09-04 04:31:41'),
(90, 35, 315, 'testtstdhdbdbjd', 1, '2020-09-04 04:31:57'),
(91, 35, 315, 'vdjjsdbjshdhs', 1, '2020-09-04 04:32:12'),
(92, 35, 315, 'hdvhdhdbd', 1, '2020-09-04 04:32:55'),
(93, 35, 315, 'vxhdhdhxvbdbd', 1, '2020-09-04 04:43:44'),
(94, 35, 315, 'chvvvyuvvv', 1, '2020-09-04 04:44:02'),
(95, 45, 309, 'ok', 1, '2020-09-23 00:37:10'),
(96, 30, 259, 'I am comment', 1, '2020-09-30 06:47:48'),
(97, 32, 259, 'Hi cute', 1, '2020-09-30 06:51:42'),
(98, 32, 259, 'Beautiful', 1, '2020-09-30 06:52:44'),
(99, 42, 259, 'Nyccc', 1, '2020-09-30 07:05:20');

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE `dealer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `image` varchar(250) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `device_token` varchar(500) NOT NULL,
  `device_type` varchar(50) NOT NULL,
  `dealer_lat` varchar(100) NOT NULL,
  `dealer_long` varchar(100) NOT NULL,
  `location` varchar(255) NOT NULL,
  `otp` varchar(100) NOT NULL,
  `otp_expire` time NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `driver_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`id`, `name`, `l_name`, `image`, `contact`, `email`, `device_token`, `device_type`, `dealer_lat`, `dealer_long`, `location`, `otp`, `otp_expire`, `status`, `driver_id`, `created_at`, `updated_at`) VALUES
(6, 'Alton', 'Shelton', 'http://phpstack-102119-1169738.cloudwaysapps.com/public/img/location/1414842803.png', '+18322345678', 'admin@thetrailerapp.com', 'etDZh_RWTF-do1kqPCZg2N:APA91bFqoevz0shNEU5aPqbwuFhhhq0W8bax54KgMy23uO7OD2Z6reW4QsZP5oWeHVuY--OZhkBV1T4GnZnBCQ8lHFFrbHnDaWEJ4-__eiM_gk3RuP02aMql0v9lF1y29mt6BuxsdQ90', 'a', '30.0690978', '75.071153', 'Punjab,India', '2503', '17:56:12', 1, 0, '2020-03-23 13:24:50', '2020-03-23 13:24:50'),
(171, 'Spectrac Parts & Services', '', '', '480-545-5533', '', '', '', '33.378345', '-111.822388', '405 E Baseline Rd,Gilbert', '', '00:00:00', 1, 0, '2020-04-04 05:40:05', '2020-04-04 05:40:05'),
(172, 'Liberty Trailer Company', '', '', '480-545-5534', '', '', '', '34.773895', '-92.152355', '10120 Hwy 70,North Little Rock', '', '00:00:00', 1, 0, '2020-04-04 05:40:05', '2020-04-04 05:40:05'),
(173, 'Trailer Factory Outlet', '', '', '480-545-5535', '', '', '', '33.929002', '-116.962057', '1365 E. 6th Street,Beaumont', '', '00:00:00', 1, 0, '2020-04-04 05:40:05', '2020-04-04 05:40:05'),
(174, 'Tru-Bilt Trailers', '', '', '480-545-5536', '', '', '', '40.378513', '-104.69252', '3602 Denver St.,Evans', '', '00:00:00', 1, 0, '2020-04-04 05:40:05', '2020-04-04 05:40:05'),
(175, '4 Corners Trailers', '', '', '480-545-5537', '', '', '', '37.21875', '-107.63874', '39894 US Highway 160,Bayfield ', '', '00:00:00', 1, 0, '2020-04-04 05:40:05', '2020-04-04 05:40:05'),
(176, 'Iron Bear Trailer', '', '', '480-545-5538', '', '', '', '39.79547', '-104.97233', '1291 E 54th Ave,Denver', '', '00:00:00', 1, 0, '2020-04-04 05:40:05', '2020-04-04 05:40:05'),
(177, 'Rifle Truck & Trailer', '', '', '480-545-5539', '', '', '', '39.89446', '-108.32925', '1725 Airport Rd,Rifle', '', '00:00:00', 1, 0, '2020-04-04 05:40:05', '2020-04-04 05:40:05'),
(178, 'Load Runner Trailers', '', '', '480-545-5540', '', '', '', '26.032095', '-80.411898', '19681 SW 69th Pl,Fort Lauderdale', '', '00:00:00', 1, 0, '2020-04-04 05:40:05', '2020-04-04 05:40:05'),
(179, 'Tropic Trailer', '', '', '480-545-5541', '', '', '', '26.672192', '-81.801122', '9451 Workmen Way,Ft. Myers', '', '00:00:00', 1, 0, '2020-04-04 05:59:19', '2020-04-04 05:59:19'),
(180, 'Tropic Trailer', '', '', '480-545-5542', '', '', '', '26.672192', '-81.801122', '2163 Post Oak Ln.,Marianna', '', '00:00:00', 1, 0, '2020-04-04 05:59:19', '2020-04-04 05:59:19'),
(181, 'Triple Crown Trailers', '', '', '480-545-5543', '', '', '', '29.145506', '-82.113565', '4251 South Pine Ave.,Ocala', '', '00:00:00', 1, 0, '2020-04-04 05:59:19', '2020-04-04 05:59:19'),
(182, 'Davids Trailers', '', '', '480-545-5544', '', '', '', '28.5523', '-81.432749', '4300 W. Colonial Dr.,Orlando', '', '00:00:00', 1, 0, '2020-04-04 05:59:19', '2020-04-04 05:59:19'),
(183, 'Rentz Trailer Sales', '', '', '480-545-5545', '', '', '', '28.343856', '-82.697658', '12826 US 19,Hudson', '', '00:00:00', 1, 0, '2020-04-04 05:59:19', '2020-04-04 05:59:19'),
(184, 'Champion Trailers', '', '', '480-545-5546', '', '', '', '27.952971', '-82.383241', '6300 E. Alamo Drive,Tampa', '', '00:00:00', 1, 0, '2020-04-04 05:59:19', '2020-04-04 05:59:19'),
(185, 'Discount Trailer', '', '', '480-545-5547', '', '', '', '27.015898', '-82.14233', '18480 Paulson Dr.,Port Charlotte', '', '00:00:00', 1, 0, '2020-04-04 05:59:19', '2020-04-04 05:59:19'),
(186, 'Southern Wholesale Trailers', '', '', '480-545-5548', '', '', '', '28.047224', '-81.901474', '3025 US Hwy 92 E,Lakeland', '', '00:00:00', 1, 0, '2020-04-04 05:59:19', '2020-04-04 05:59:19'),
(187, 'Atlanta Safety Brake Service', '', '', '480-545-5549', '', '', '', '34.248524', '-84.856588', '5762 Sydney Ann Ct,Mableton', '', '00:00:00', 1, 0, '2020-04-04 05:59:19', '2020-04-04 05:59:19'),
(188, 'Greer Truck and Trailer Parts,Inc', '', '', '480-545-5550', '', '', '', '42.63524', '-113.78368', '128 S. 600 W.,Paul', '', '00:00:00', 1, 0, '2020-04-04 05:59:19', '2020-04-04 05:59:19'),
(189, 'Spectrac Parts & Services', '', '', '480-545-5533', '', '', '', '33.378345', '-111.822388', '405 E Baseline Rd,Gilbert', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(190, 'Liberty Trailer Company', '', '', '480-545-5534', '', '', '', '34.773895', '-92.152355', '10120 Hwy 70,North Little Rock', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(191, 'Trailer Factory Outlet', '', '', '480-545-5535', '', '', '', '33.929002', '-116.962057', '1365 E. 6th Street,Beaumont', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(192, 'Tru-Bilt Trailers', '', '', '480-545-5536', '', '', '', '40.378513', '-104.69252', '3602 Denver St.,Evans', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(200, 'Southern Wholesale Trailers', '', '', '480-545-5548', '', '', '', '28.047224', '-81.901474', '3025 US Hwy 92 E,Lakeland', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(201, 'Atlanta Safety Brake Service', '', '', '480-545-5549', '', '', '', '34.248524', '-84.856588', '5762 Sydney Ann Ct,Mableton', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(202, 'Greer Truck and Trailer Parts,Inc', '', '', '480-545-5550', '', '', '', '42.63524', '-113.78368', '128 S. 600 W.,Paul', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(203, 'Riverside Boot & Saddle', '', '', '480-545-5551', '', '', '', '43.19704', '-112.44556', '742 W. Hwy. 39,Blackfoot', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(204, 'Riverside Boot & Saddle', '', '', '480-545-5552', '', '', '', '42.69653', '-114.522385', '322 W. Yakima,Jerome', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(205, 'Riverside Boot & Saddle', '', '', '480-545-5553', '', '', '', '43.659415', '-116.671105', '321 N 21st Ave,Caldwell', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(206, 'Country Blacksmith Trailers', '', '', '480-545-5554', '', '', '', '38.32514', '-88.87724', '751 Fairfield Rd,Mt Vernon', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(207, 'A&W Trailer', '', '', '480-545-5555', '', '', '', '41.733888', '-87.963781', '17W411 N. Frontage Rd.,Darien', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(208, 'Camper Exchange Inc', '', '', '480-545-5556', '', '', '', '38.496654', '-89.984784', '1401 S Illinoise St,Belleville', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(209, 'I-69 Trailer Center', '', '', '480-545-5557', '', '', '', '40.831284', '-85.356248', '2 Novae Parkway,Markle', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(210, 'Schwartzs Trailer Sales', '', '', '480-545-5558', '', '', '', '40.048025', '-86.016913', '117 CICERO RD,Noblesville', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(211, 'MAYES TRAILER SALES', '', '', '480-545-5559', '', '', '', '39.56806', '-86.0925', '1101 N U.S. 31,New Whiteland', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(212, 'Indiana Trailer Sales', '', '', '480-545-5560', '', '', '', '40.822055', '-84.934584', '740 S 11th St,Decatur', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(213, 'Northside Trailer', '', '', '480-545-5561', '', '', '', '40.041226', '-86.251583', '11985 IN-32,Zionsville', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(214, 'US Trailer Center', '', '', '480-545-5562', '', '', '', '38.212478', '-85.261508', '102 Taylorsville Rd,Shelbyville', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(215, 'Gatormade Trailers', '', '', '480-545-5563', '', '', '', '37.172665', '-84.482911', '1278 Hwy 461,Somerset', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(216, 'Auto Safety House', '', '', '480-545-5564', '', '', '', '33.437716', '-112.11636', '2630 West Buckeye Rd,Phoenix', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(217, 'Tucson Trailer Company', '', '', '480-545-5565', '', '', '', '32.260532', '-110.993698', '1315 W Miracle Mile,Tucson', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(218, 'Lewis Trailer Sales', '', '', '480-545-5566', '', '', '', '30.29816', '-89.72881', '80 Tortoise,Slidell', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(219, 'Topps Trailer Sales and Services, Inc', '', '', '480-545-5567', '', '', '', '32.530863', '-93.670026', '3001 Topps Trail,Bossier City', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(220, 'Southern Trailer Works, LLC', '', '', '480-545-5568', '', '', '', '29.74437', '-90.808968', '225 Old Highway 659,Schriever', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(221, 'McClain Trailers, Inc', '', '', '480-545-5569', '', '', '', '30.489851', '-91.123641', '6800 Airline Hwy,Baton Rouge', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(222, 'Trailers of Louisiana', '', '', '480-545-5570', '', '', '', '29.942404', '-91.769531', '5703 Hwy 90 E,New Iberia', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(223, 'Polar Service Centers-Port Allen', '', '', '480-545-5571', '', '', '', '30.427146', '-91.217923', '3100 Phillips Way,Port Allen', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(224, 'Ragin Trailers', '', '', '480-545-5572', '', '', '', '30.187256', '-91.990799', '2601 SE Evangeline Thruway,Lafayette', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(225, 'Tims RV, Inc', '', '', '480-545-5573', '', '', '', '42.599443', '-72.397941', '15 East Main St,Erving', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(226, 'Becks Trailer Store', '', '', '480-545-5574', '', '', '', '42.9311', '-84.502778', '7607 US 127,ST Johns', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(227, 'Gustafson Trailers', '', '', '480-545-5575', '', '', '', '45.4485', '-93.9985', 'US-10,Clear Lake', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(228, 'Lewis Trailer Sales', '', '', '480-545-5576', '', '', '', '32.140149', '-90.349172', '9780 I-55,Terry', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(229, 'Alpha Specialties', '', '', '480-545-5577', '', '', '', '32.277788', '-90.148111', '1670 Hwy 80 E,Pearl', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(230, 'Lewis Trailer Sales', '', '', '480-545-5578', '', '', '', '30.528495', '-89.10848', '16494 US Hwy 49,Saucier', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(231, 'Bonnett Trailer Sales', '', '', '480-545-5579', '', '', '', '39.761304', '-94.502204', '711 Park Ave,Stewartsville', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(232, 'Mouser Steel Supply, Inc', '', '', '480-545-5580', '', '', '', '37.415812', '-90.06529', 'RR 5 BOX 2495,Patton', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(233, 'Country Load Trailers', '', '', '480-545-5581', '', '', '', '40.85053', '-101.546815', '102 S Denison Avenue,Madrid', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(234, 'Shalom Trailers', '', '', '480-545-5582', '', '', '', '32.346329', '-104.248337', '5330 National Parks Hwy,Carlsbad', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(235, 'Hobbs Trailers', '', '', '480-545-5583', '', '', '', '32.747195', '-103.167007', '4220 N Lovington Hwy,Hobbs ', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(236, 'Superior Trailer', '', '', '480-545-5584', '', '', '', '36.065919', '-79.441304', '812 Plantation Dr,Burlington', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(237, 'Gustafson Trailers', '', '', '480-545-5585', '', '', '', '46.875724', '-96.80651', '1549 Main Ave,ST. Marys,Fargo', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(238, 'Midway Trailer', '', '', '480-545-5586', '', '', '', '40.55833', '-84.31729', '14275 GLYNWOOD NEW KNOXVILLE RD,ST. Marys', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(239, 'Trailers Direct of Springfield', '', '', '480-545-5587', '', '', '', '39.772095', '-89.633496', '1925 E Clearlake Ave,Springfield', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(240, 'Nationwide Trailers', '', '', '480-545-5588', '', '', '', '34.932948', '-92.079215', '7216 T P White Dr,Cabot ', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(241, 'Midway Trailer', '', '', '480-545-5589', '', '', '', '39.82164', '-84.18726', '5135 WADSWORTH RD,Dayton ', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(242, 'Rocks Trailer Sales', '', '', '480-545-5590', '', '', '', '39.878519', '-83.026218', '3908 Jackson Pike,Grove City', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(243, 'O-Reilly Equipment', '', '', '480-545-5591', '', '', '', '41.471945', '-81.192841', '14555 Ravenna Rd, Newbury', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(244, 'Bennett Trailer Sales Inc.', '', '', '480-545-5592', '', '', '', '40.929464', '-80.80213', '7989 W Pine Lake Rd,Salem', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(245, 'Trailer Factory Ohio', '', '', '480-545-5593', '', '', '', '40.993237', '-81.99658', '10254 Avon Lake Rd,Burbank', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(246, 'Southern Ohio Equipment', '', '', '480-545-5594', '', '', '', '39.391868', '-83.154276', '6339 County Road 550,Frankfort', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(247, 'Lazy B Trailer Sales', '', '', '480-545-5595', '', '', '', '41.382282', '-80.868632', '6040 State Route 45,Bristolville', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(248, 'Elite Trailers ', '', '', '480-545-5596', '', '', '', '35.434945', '-97.648096', '7700 SW 29th St. ,Oklahoma City', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(249, 'Nationwide Trailers', '', '', '480-545-5597', '', '', '', '36.161543', '-95.810617', '15051 E Admiral Pl,Tulsa', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(250, '4 State Trailers', '', '', '480-545-5598', '', '', '', '36.590398', '-94.866184', '59700 E US-60,Fairland', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(251, 'The Trailer Pros', '', '', '480-545-5599', '', '', '', '35.361063', '-97.496755', '2542 N. Moore Avenue,Moore', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(252, 'C Bar C Truck Sales', '', '', '480-545-5600', '', '', '', '42.437346', '-122.84993', '2301 Avenue G,White City', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(253, 'Wysocki Inc', '', '', '480-545-5601', '', '', '', '40.368028', '-80.389916', '2070 Smith Township State Road,Burgettstown', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(254, 'Weaver Distributing', '', '', '480-545-5602', '', '', '', '40.44076', '-76.39596', '131 Blue Mountain Rd,Fredericksburg', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(255, 'Triple \"R\" Truck Parts', '', '', '480-545-5603', '', '', '', '39.865497', '-75.344704', '1915 Chester Pike,Eddystone', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(256, 'Smouse Trailers & Snow Equipment', '', '', '480-545-5604', '', '', '', '40.126989', '-79.561866', '207 Smouse Rd,Mount Pleasant', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(257, 'Chattanooga Trailer & Rental, Inc.', '', '', '480-545-5605', '', '', '', '35.056814', '-85.142154', '7445 Lee Highway,Chattanooga', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(258, 'Midway Trailer', '', '', '480-545-5606', '', '', '', '35.672127', '-86.418612', '204 Polly Thickett Road,Bell Buckle', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(259, 'Feltons', '', '', '480-545-5607', '', '', '', '35.000529', '-85.299241', '1222 East 38th St,Chatanooga', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(260, 'San K Trailers, LLC', '', '', '480-545-5608', '', '', '', '32.032285', '-102.38637', '17010 Zinnia Ave,Gardendale', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(261, 'Trailer Plus Sales, Inc.', '', '', '480-545-5609', '', '', '', '32.758139', '-97.764412', '1511 Fort Worth Hwy,Weatherford', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(262, 'Wyatt-s Trailer Sales', '', '', '480-545-5610', '', '', '', '32.503409', '-94.698375', '2310 East Marshall Ave,Longview', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(263, 'The Trailer Guys East', '', '', '480-545-5611', '', '', '', '33.439903', '-96.320385', '12643 S STATE HIGHWAY 121,TRENTON', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(264, 'The Trailer Guys (West)', '', '', '480-545-5612', '', '', '', '32.274913', '-101.370708', '9410 S. Service Rd,Big Spring', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(265, 'Bragg Trailers', '', '', '480-545-5613', '', '', '', '31.054629', '-97.529166', '5431 B West Hwy 190,Belton', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(266, 'Leggott Trailers of Waco, Inc.', '', '', '480-545-5614', '', '', '', '31.490908', '-97.13985', '4902 S. Loop 340,Waco', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(267, 'Texas Trailer Man', '', '', '480-545-5615', '', '', '', '32.795468', '-97.262462', '2411 Thomas Road,Haltom City', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(268, 'RJ Trailers', '', '', '480-545-5616', '', '', '', '32.645825', '-96.529677', '308 S HIGHWAY 175,SEAGOVILLE', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(269, 'The Trailer Lot', '', '', '480-545-5617', '', '', '', '29.407056', '-96.957302', '2639 US HWY 77 S,Hallettsville', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(270, 'Shelton Trailer', '', '', '480-545-5618', '', '', '', '29.953028', '-95.667262', '16315 Grasmere Drive,Cypress', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(271, 'Beards Trailer Sales', '', '', '480-545-5619', '', '', '', '32.70984', '-97.231876', '3700 E LOOP 820 S,FORT WORTH', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(272, 'Nationwide Trailers', '', '', '480-545-5620', '', '', '', '29.882395', '-95.411178', '8410 North Fwy,Houston', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(273, 'Nationwide Trailers', '', '', '480-545-5621', '', '', '', '31.881783', '-102.275131', '7901 E Interstate 20,Odessa', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(274, 'Montgomery Trailer Sales', '', '', '480-545-5622', '', '', '', '30.345467', '-95.562918', '13245 HWY 105 W,Conroe', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(275, 'TK Trailer Parts', '', '', '480-545-5623', '', '', '', '30.987126', '-95.904977', '2209 Interstate 45 N,Madisonville', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(276, 'Polar Service Centers', '', '', '480-545-5624', '', '', '', '29.836309', '-95.174001', '7600 E. Sam Houston Pkwy N.,Houston', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(277, 'Affordable Trailers', '', '', '480-545-5625', '', '', '', '29.379953', '-98.311368', '8989 Hwy 87 E,San Antonio', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(278, 'Copes Trailers', '', '', '480-545-5626', '', '', '', '30.10279', '-94.061673', '24206 I-10,Vidor', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(279, 'Red Barn Trailers', '', '', '480-545-5627', '', '', '', '31.822317', '-106.155645', '14961 Montana Ave, El Paso', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(280, 'Quicken Trailer', '', '', '480-545-5628', '', '', '', '31.911218', '-102.229396', '11220 West County Road 127,Odessa', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(281, 'Southwest Wheel', '', '', '480-545-5629', '', '', '', '32.685827', '-96.883346', '4809 S Westmoreland Rd,Dallas', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(282, 'Southwest Wheel', '', '', '480-545-5630', '', '', '', '33.604537', '-101.814956', '1501 E Broadway #5327 ,Lubbock', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(283, 'Nationwide Trailers', '', '', '480-545-5631', '', '', '', '29.246156', '-98.759026', '16293 Interstate 35 Access Rd,Atascosa', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(284, 'GCI Sales', '', '', '480-545-5632', '', '', '', '32.011718', '-102.243957', '10620 W. County Rd,Midland', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(285, 'Hawn Freeway Trailer Sales', '', '', '480-545-5633', '', '', '', '32.715047', '-96.68796', '7841 C.F. Hawn Freeway,Dallas', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(286, 'Nationwide Trailers', '', '', '480-545-5634', '', '', '', '29.667', '-95.159589', '5319 Spencer Hwy,Pasadena', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(287, 'Nationwide Trailers', '', '', '480-545-5635', '', '', '', '32.715883', '-97.228607', '2850 East Loop 820 South,Fort Worth', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(288, 'Hawkins Trailer', '', '', '480-545-5636', '', '', '', '35.2124', '-101.836475', '108 S Polk St,Amarillo', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(289, 'Trailer King', '', '', '480-545-5637', '', '', '', '31.813129', '-102.432068', '6214 W. IH 20,Odess', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(290, 'Wasatch Trailer Sales', '', '', '480-545-5638', '', '', '', '41.04055', '-111.95358', '310 N 650 W,Kaysville', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(291, 'Superior Trailer', '', '', '480-545-5639', '', '', '', '36.83991', '-76.15095', '4999 Euclid Road,Virginia Beach', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(292, 'Superior Trailer', '', '', '480-545-5640', '', '', '', '37.426553', '-77.439906', '7100 Jefferson Davis Hwy,Richmond', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(293, 'Superior Trailer', '', '', '480-545-5641', '', '', '', '36.779134', '-76.621198', '3468 Pruden Blvd,Suffolk', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(294, 'Huffman Trailers Sales', '', '', '480-545-5642', '', '', '', '38.485868', '-78.812241', '4124 North Valley Pike,Rockingham', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(295, 'Frontline Trailers', '', '', '480-545-5643', '', '', '', '44.697654', '-63.584042', '121 ILSLEY AVENUE, UNIT 115,Dartmouth', '', '00:00:00', 1, 0, '2020-04-06 03:33:36', '2020-04-06 03:33:36'),
(318, 'Alton', 'Shelton', 'http://phpstack-102119-1169738.cloudwaysapps.com/public/img/location/777183841.jpg', '+12812505662', 'admin@thetrailerapp.com', 'ct_QskVRSBSCFRTreqlU5U:APA91bHCIFjiNx-k0NgrsclYfBPL55OhE3x1FnxmPg6gf0zbmCAmTxvUsMCPuGiFGlaAujtsguDHEsqeDw_XqueO7J-2-2sVP4E4cTV_eoJ3BTmEhGdxvWIsCTE35tKrc3cZpghjfnk0', 'a', '29.9835314', '-95.6891172', 'Texas,United States', '4118', '00:36:47', 1, 0, '2020-04-23 17:20:59', '2020-04-23 17:20:59'),
(327, 'Varun', 'Durana', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins85522.jpg', '+918264271289', 'varun@gmail.com', '', '', '', '', 'Himachal Pradesh,India', '', '16:50:49', 1, 0, '2020-06-09 11:19:10', '2020-06-09 11:19:10'),
(335, 'Varun', 'Singh', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins89018.jpg', '+919882123456', 'varun@gmail.com', '', '', '', '', 'Himachal Pradesh,India', '', '20:05:21', 1, 0, '2020-06-12 14:34:03', '2020-06-12 14:34:03'),
(341, 'TEST', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del37140.jpg', '+9112345678', '', '', '', '123', '123', 'abc', '', '00:00:00', 1, 40, '2020-06-16 11:00:09', '2020-06-16 11:00:09'),
(343, 'varun', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del39760.png', '9882146314', '', '', '', '24.53405', '55.08382', 'Dubai', '', '00:00:00', 1, 40, '2020-06-27 07:10:40', '2020-06-27 07:10:40'),
(344, 'vikas', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del77713.png', '98821463144', '', '', '', '24.5340555.08382', '55.08382', 'Dubai', '', '00:00:00', 2, 40, '2020-06-30 08:54:42', '2020-06-30 08:54:42'),
(345, 'durana', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del98026.jpg', '098764525262', '', '', '', '32.1497785', '76.0993759', 'Harchakian', '', '00:00:00', 2, 40, '2020-06-30 09:04:48', '2020-06-30 09:04:48'),
(346, 'Varun', 'Singh', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins93452.jpg', '+919882146363', 'varun@gmail.com', 'dV3z4qLhU04:APA91bG3QoN6Tz09hw5Av-mjrbADtAv98UpcJ9XufeckF6tnBrqL-ds8CQoi7M5SY7cQTZ-AZdmWOxRmtlBQTAlgJXL6AibJ54hLLml5vx1qEqCxeEVUrmE8Ukxuhbi--JvS4rDULNIA', 'a', '32.1542013', '76.0932673', 'Himachal Pradesh,India', '2126', '16:14:28', 1, 0, '2020-07-06 10:43:29', '2020-07-06 10:43:29'),
(347, 'ABC Dealer', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del65035.jpg', '2123456789', '', '', '', '29.955828', '-95.670598', '12320 Barker Cypress Rd', '', '00:00:00', 1, 53, '2020-07-07 12:44:41', '2020-07-07 12:44:41'),
(348, '123 Dealer', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del22912.jpg', '1234567890', '', '', '', '29.955828', '-95.670598', '12320 Barker Cypress Rd', '', '00:00:00', 1, 53, '2020-07-07 12:56:26', '2020-07-07 12:56:26'),
(349, 'ncjchxh', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del44040.jpg', '+919882145666', '', '', '', '25.2048493', '55.2707828', 'Dubai', '', '00:00:00', 2, 40, '2020-07-08 04:45:07', '2020-07-08 04:45:07'),
(350, 'Tsting', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del37277.jpg', '+911212121212', '', '', '', '123', '123', 'MOHALI', '', '00:00:00', 1, 0, '2020-07-08 07:49:54', '2020-07-08 07:49:54'),
(351, 'Tsting', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del91006.jpg', '+91121212121212', '', '', '', '123', '123', 'MOHALI', '', '00:00:00', 1, 40, '2020-07-08 07:50:33', '2020-07-08 07:50:33'),
(352, 'tomcate', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del36910.jpg', '+91123456777', '', '', '', '28.702504', '77.125997', 'PHP MYSQL Training in Rohini,Pitampura', '', '00:00:00', 1, 40, '2020-07-10 13:52:06', '2020-07-10 13:52:06'),
(353, '123 Dealer', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del80340.jpg', '+19877818607', '', '', '', '29.955828', '-95.670598', '12320 Barker Cypress Rd', '', '00:00:00', 1, 53, '2020-07-11 12:55:43', '2020-07-11 12:55:43'),
(354, 'Tsting', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del64599.jpg', '+9112asdf', '', '', '', '123', '123', 'MOHALI', '', '00:00:00', 1, 40, '2020-07-11 12:59:03', '2020-07-11 12:59:03'),
(355, 'ABC dealer', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del44957.jpg', '+11234567980', '', '', '', '29.79724150000001', '-95.81200229999999', '5318 Friar Tuck Dr', '', '00:00:00', 1, 53, '2020-07-11 13:00:03', '2020-07-11 13:00:03'),
(356, 'trey dealership', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del41998.jpg', '+10987654321', '', '', '', '29.8483767', '-95.47245649999999', '5675 W Tidwell Rd', '', '00:00:00', 1, 53, '2020-07-11 13:06:16', '2020-07-11 13:06:16'),
(357, 'varun', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del83565.jpg', '+919632584642', '', '', '', '25.2048493', '55.2707828', 'Dubai', '', '00:00:00', 2, 40, '2020-07-15 05:10:33', '2020-07-15 05:10:33'),
(358, 'xvgs', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del44764.jpg', '+619882445555', '', '', '', '25.2048493', '55.2707828', 'Dubai', '', '00:00:00', 2, 40, '2020-07-15 05:29:31', '2020-07-15 05:29:31'),
(359, 'Varu', 'Singh', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins45191.jpg', '+919459090722', 'varuntalyal142@gmail.com', '', '', '', '', 'Himachal Pradesh,India', '', '12:06:29', 1, 0, '2020-07-20 07:42:45', '2020-07-20 07:42:45'),
(360, 'gsgdgdv', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del67610.jpg', '+9184645', '', '', '', '28.5385481', '77.40751809999999', 'Phase-2', '', '00:00:00', 2, 302, '2020-07-23 07:54:20', '2020-07-23 07:54:20'),
(361, 'tt', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del97806.jpg', '+9112', '', '', '', '30.7046486', '76.71787259999999', 'Sahibzada Ajit Singh Nagar', '', '00:00:00', 2, 302, '2020-07-23 09:35:42', '2020-07-23 09:35:42'),
(362, 'rohit', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del52874.jpg', '+919041156283', '', '', '', '30.4676817', '74.5072976', 'Abohar Road', '', '00:00:00', 2, 307, '2020-07-24 03:54:26', '2020-07-24 03:54:26'),
(363, 'ghu', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del16612.jpg', '+917545752255', '', '', '', '30.146861', '74.2008185', 'Abohar', '', '00:00:00', 2, 307, '2020-07-24 03:59:50', '2020-07-24 03:59:50'),
(364, '123Dealer', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del27796.jpg', '+19877818600', '', '', '', '29.955828', '-95.670598', '12320 Barker Cypress Rd', '', '00:00:00', 1, 53, '2020-07-27 13:23:21', '2020-07-27 13:23:21'),
(365, 'Test 28/07/2020', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del65010.jpg', '+91852963741', '', '', '', '123', '123', 'MOHALI', '', '00:00:00', 2, 40, '2020-07-28 06:08:14', '2020-07-28 06:08:14'),
(366, 'rahul', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del29158.jpg', '+619882148784', '', '', '', '25.2048493', '55.2707828', 'Dubai', '', '00:00:00', 2, 40, '2020-07-28 06:12:43', '2020-07-28 06:12:43'),
(367, 'harbans singh', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del51465.jpg', '+910857946132', '', '', '', '30.0626083', '75.0684153', 'Chathewala', '', '00:00:00', 2, 40, '2020-07-28 06:17:01', '2020-07-28 06:17:01'),
(368, 'shubham', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del52845.jpg', '+918557045054', '', '', '', '30.6711984', '76.7177553', 'Sector 80', '', '00:00:00', 1, 265, '2020-07-28 09:42:37', '2020-07-28 09:42:37'),
(369, '123 Dealership', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del12350.jpg', '+19855012456', '', '', '', '29.955828', '-95.670598', '12320 Barker Cypress Rd', '', '00:00:00', 1, 53, '2020-07-28 16:00:01', '2020-07-28 16:00:01'),
(370, 'vikas', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del36378.jpg', '+919882146361', '', '', '', '25.2048493', '55.2707828', 'Dubai', '', '00:00:00', 1, 308, '2020-07-29 09:30:51', '2020-07-29 09:30:51'),
(371, 'ashu', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del61553.jpg', '+919638527410', '', '', '', '32.1620941', '76.09065729999999', 'Jyoti Fashion Point Durana', '', '00:00:00', 1, 40, '2020-07-29 09:55:02', '2020-07-29 09:55:02'),
(372, 'Shamu', 'K', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins66201.jpg', '+918219184307', 'shamu@gmail.com', 'dgTYhGj9ShiWyRP9ZAYZG3:APA91bEdppp-cIpoPCccdfQO0Zr2YeT1RgbY2gs_wJ3PNzsa7B4yHPEePf1Ob8RjGH5tufHkUiwh_h4kzY1aQuI2_arblfz79Mgj2JJGtHkFwAJfBtI4G3rLe2FtB1IJyoVdIEzKQ59N', 'a', '32.1571607', '76.0924515', 'Himachal Pradesh,India', '5124', '15:45:42', 1, 0, '2020-07-29 10:14:43', '2020-07-29 10:14:43'),
(373, 'shubham', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del52838.jpg', '+919877848464', '', '', '', '30.6711984', '76.7177553', 'Sector 80', '', '00:00:00', 1, 265, '2020-07-30 12:18:54', '2020-07-30 12:18:54'),
(374, 'testtt', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del92997.jpg', '+919855555555', '', '', '', '30.7923337', '75.4670189', 'Jagraon', '', '00:00:00', 2, 265, '2020-07-31 12:09:17', '2020-07-31 12:09:17'),
(375, 'sharma', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del37442.jpg', '+919882148282', '', '', '', '32.1623325', '76.0903136', 'Durana', '', '00:00:00', 2, 259, '2020-07-31 12:21:28', '2020-07-31 12:21:28'),
(376, 'Test Dealership', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del48760.jpg', '+19855712456', '', '', '', '29.9283099', '-95.6818929', '17427 Little Riata Dr', '', '00:00:00', 1, 53, '2020-08-03 12:53:31', '2020-08-03 12:53:31'),
(378, 'Truck Parts World', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del24115.jpg', '+19037574572', '', '', '', '32.466529', '-94.66978069999999', '5765 SE Loop 281', '', '00:00:00', 1, 309, '2020-08-03 21:44:20', '2020-08-03 21:44:20'),
(379, 'Bass Trailers', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del47706.jpg', '+13186882824', '', '', '', '32.3938782', '-93.81128570000001', 'Bass Trailer Sales', '', '00:00:00', 1, 309, '2020-08-03 21:45:24', '2020-08-03 21:45:24'),
(380, 'LeBlanc Trailer Sales', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del95874.jpg', '+13373342144', '', '', '', '30.2277909', '-92.2760137', 'LeBlanc Trailer Sales', '', '00:00:00', 1, 309, '2020-08-03 21:46:20', '2020-08-03 21:46:20'),
(381, 'Cowboy Trailers', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del12498.jpg', '+13186448686', '', '', '', '32.5167752', '-92.3269', 'Cowboy Trailers', '', '00:00:00', 1, 309, '2020-08-03 23:15:00', '2020-08-03 23:15:00'),
(382, 'Rohit', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del16291.jpg', '+919638520741', '', '', '', '19.0759837', '72.8776559', 'Mumbai', '', '00:00:00', 2, 310, '2020-08-06 04:16:41', '2020-08-06 04:16:41'),
(383, '', '', '', '+919845263986', '', 'my token', '2', '31.390012632815278', '75.40313009716287', 'Punjab,India', '5734', '18:06:28', 1, 0, '2020-08-08 10:27:29', '2020-08-08 10:27:29'),
(384, 'test', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del90395.jpg', '+919885454554', '', '', '', '30.7333148', '76.7794179', 'Chandigarh', '', '00:00:00', 2, 265, '2020-08-12 05:17:36', '2020-08-12 05:17:36'),
(385, 'Ravi', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del41087.jpg', '+919478925579', '', '', '', '31.2231589', '75.7670466', 'Phagwara', '', '00:00:00', 2, 265, '2020-08-13 06:11:17', '2020-08-13 06:11:17'),
(386, 'Ravi Test', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del73446.jpg', '+919592200779', '', '', '', '30.7046486', '76.71787259999999', 'Sahibzada Ajit Singh Nagar', '', '00:00:00', 2, 265, '2020-08-13 06:12:45', '2020-08-13 06:12:45'),
(387, 'ravi Test 2', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del88496.jpg', '+919872211935', '', '', '', '30.7333148', '76.7794179', 'Chandigarh', '', '00:00:00', 2, 265, '2020-08-13 06:14:02', '2020-08-13 06:14:02'),
(388, 'test', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del16908.jpg', '+911234567890', '', '', '', '25.2048493', '55.2707828', 'Dubai', '', '00:00:00', 2, 259, '2020-08-18 06:02:31', '2020-08-18 06:02:31'),
(389, 'test 2', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del52884.jpg', '+919870654123', '', '', '', '25.2048493', '55.2707828', 'Dubai', '', '00:00:00', 2, 259, '2020-08-18 06:05:08', '2020-08-18 06:05:08'),
(390, 'IOS testin', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del73191.jpg', '1234567879', '', '', '', '31.3722571', '75.4017654', 'Kapurthala', '', '00:00:00', 2, 0, '2020-08-18 11:15:33', '2020-08-18 11:15:33'),
(391, 'IOS', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del36487.jpg', '1111111141', '', '', '', '31.3722571', '75.4017654', 'Kapurthala', '', '00:00:00', 2, 0, '2020-08-18 11:16:58', '2020-08-18 11:16:58'),
(392, 'Demo', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/demy.jpg', '', '', '', '', '', '', 'Enter your Address', '', '00:00:00', 2, 0, '2020-08-18 11:18:20', '2020-08-18 11:18:20'),
(393, 'V', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/demy.jpg', '+911111111111', '', '', '', '26.449923', '80.3318736', 'Kanpur', '', '00:00:00', 2, 311, '2020-08-18 11:33:02', '2020-08-18 11:33:02'),
(394, 'H', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del19260.jpg', '+911111111112', '', '', '', '29.7604267', '-95.3698028', 'Houston', '', '00:00:00', 2, 0, '2020-08-18 11:35:35', '2020-08-18 11:35:35'),
(395, 'what', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del81133.jpg', '+912580963147', '', '', '', '25.2048493', '55.2707828', 'Dubai', '', '00:00:00', 2, 259, '2020-08-18 17:03:49', '2020-08-18 17:03:49'),
(396, 'm dealer', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del62632.jpg', '+914545454543', '', '', '', '31.32601519999999', '75.57618289999999', 'Jalandhar', '', '00:00:00', 2, 174, '2020-08-18 18:48:40', '2020-08-18 18:48:40'),
(397, 'fg', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del66128.jpg', '+91991478524', '', '', '', '25.2048493', '55.2707828', 'Dubai', '', '00:00:00', 2, 312, '2020-08-20 05:52:01', '2020-08-20 05:52:01'),
(398, 'ttt', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del95441.jpg', '+91545882895', '', '', '', '25.2048493', '55.2707828', 'Dubai', '', '00:00:00', 2, 312, '2020-08-20 05:52:41', '2020-08-20 05:52:41'),
(399, 'harry test', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del47728.jpg', '+919898989898', '', '', '', '30.0626083', '75.0684153', 'Chathewala', '', '00:00:00', 1, 40, '2020-08-20 06:06:14', '2020-08-20 06:06:14'),
(400, 'test1', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del69753.jpg', '+917814789835', '', '', '', '29.174841', '74.7688173', 'Nohar', '', '00:00:00', 2, 265, '2020-08-21 10:00:08', '2020-08-21 10:00:08'),
(401, 'sbhshshd', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del81805.jpg', '+9155', '', '', '', '29.5815012', '74.32941989999999', 'Hanumangarh', '', '00:00:00', 2, 265, '2020-08-22 09:56:54', '2020-08-22 09:56:54'),
(402, 'xyz', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del69194.jpg', '+917887848484', '', '', '', '29.1918167', '74.7731271', 'Nohar - Bhadra Road', '', '00:00:00', 2, 265, '2020-08-24 10:49:00', '2020-08-24 10:49:00'),
(403, 'vdhdhdbdhd', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del98005.jpg', '+918565656566', '', '', '', '29.1918167', '74.7731271', 'Nohar - Bhadra Road', '', '00:00:00', 2, 265, '2020-08-25 06:17:47', '2020-08-25 06:17:47'),
(404, 'test', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del74293.jpg', '+911234500000', '', '', '', '31.2231589', '75.7670466', 'Phagwara', '', '00:00:00', 1, 265, '2020-08-28 07:22:38', '2020-08-28 07:22:38'),
(405, 'varun', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del45892.jpg', '+919876542134', '', '', '', '25.2048493', '55.2707828', 'Dubai', '', '00:00:00', 2, 259, '2020-08-31 16:10:32', '2020-08-31 16:10:32'),
(406, 'sp', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del94613.jpg', '+9122', '', '', '', '30.7316253', '76.7054785', 'Mohali Bus Stand', '', '00:00:00', 2, 315, '2020-09-03 07:44:53', '2020-09-03 07:44:53'),
(407, 'sp', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del27189.jpg', '+9188', '', '', '', '30.7017355', '76.7247759', 'Mohali 7 Phase', '', '00:00:00', 2, 315, '2020-09-03 07:45:37', '2020-09-03 07:45:37'),
(408, 'sonu', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del48236.jpg', '+9144', '', '', '', '30.7333148', '76.7794179', 'Chandigarh', '', '00:00:00', 2, 315, '2020-09-03 07:46:54', '2020-09-03 07:46:54'),
(409, 'sonu', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del58058.jpg', '+9166', '', '', '', '30.7333148', '76.7794179', 'Chandigarh', '', '00:00:00', 2, 315, '2020-09-03 07:55:50', '2020-09-03 07:55:50'),
(410, 'Sonu Pareek', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del92003.jpg', '+9140', '', '', '', '29.174841', '74.7688173', 'Nohar', '', '00:00:00', 2, 315, '2020-09-03 07:59:04', '2020-09-03 07:59:04'),
(411, 'abbs', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del67440.jpg', '+917814247802', '', '', '', '30.7316253', '76.7054785', 'Mohali Bus Stand', '', '00:00:00', 2, 315, '2020-09-03 11:26:07', '2020-09-03 11:26:07'),
(412, 'xyzfgh', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del83718.jpg', '+9100', '', '', '', '30.7333148', '76.7794179', 'Chandigarh', '', '00:00:00', 2, 315, '2020-09-04 05:38:42', '2020-09-04 05:38:42'),
(413, 'abhinav', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del49842.jpg', '+919178147898', '', '', '', '29.1509823', '75.4424841', 'Telanwali', '', '00:00:00', 2, 315, '2020-09-04 05:42:44', '2020-09-04 05:42:44'),
(414, 'testing', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del90887.jpg', '+917536809635', '', '', '', '30.0626083', '75.0684153', 'Chathewala', '', '00:00:00', 1, 40, '2020-09-08 17:12:25', '2020-09-08 17:12:25'),
(415, 're', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del97982.jpg', '+919882445566', '', '', '', '25.2048493', '55.2707828', 'Dubai', '', '00:00:00', 1, 259, '2020-09-09 06:22:18', '2020-09-09 06:22:18'),
(416, 'test', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del47289.jpg', '+919877845454', '', '', '', '30.7046486', '76.71787259999999', 'Sahibzada Ajit Singh Nagar', '', '00:00:00', 2, 265, '2020-09-09 06:35:58', '2020-09-09 06:35:58'),
(417, 'ra', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del20530.jpg', '+911234567854', '', '', '', '25.2048493', '55.2707828', 'Dubai', '', '00:00:00', 1, 259, '2020-09-09 07:23:21', '2020-09-09 07:23:21'),
(418, 'ra', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del66851.jpg', '+17894514521', '', '', '', '25.2048493', '55.2707828', 'Dubai', '', '00:00:00', 1, 259, '2020-09-09 07:35:56', '2020-09-09 07:35:56'),
(419, 'ra', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del20399.jpg', '+18754785699', '', '', '', '25.2048493', '55.2707828', 'Dubai', '', '00:00:00', 1, 259, '2020-09-09 07:36:36', '2020-09-09 07:36:36'),
(420, 'test 1:28', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del33661.jpg', '+91123456781', '', '', '', '30.210994', '74.9454745', 'Bathinda', '', '00:00:00', 2, 40, '2020-09-09 07:59:57', '2020-09-09 07:59:57'),
(421, 'test', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del53697.jpg', '+919877544544', '', '', '', '30.7046486', '76.71787259999999', 'Sahibzada Ajit Singh Nagar', '', '00:00:00', 2, 265, '2020-09-09 09:14:25', '2020-09-09 09:14:25'),
(422, 'Holt Trailer', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del91139.jpg', '+15044696372', '', '', '', '25.2048493', '55.2707828', 'Dubai', '', '00:00:00', 2, 309, '2020-09-10 13:22:02', '2020-09-10 13:22:02'),
(423, 'wwww', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del26890.jpg', '+919864444447', '', '', '', '25.0459441', '121.5153112', 'No. 66, Section 1, Zhongxiao West Road', '', '00:00:00', 1, 259, '2020-09-10 13:32:37', '2020-09-10 13:32:37'),
(424, 'aqqa', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del10397.jpg', '+18744564546', '', '', '', '25.0835956', '121.5624745', 'No. 66, Section 1, Neihu Rd', '', '00:00:00', 1, 259, '2020-09-10 13:40:56', '2020-09-10 13:40:56'),
(425, 'da', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del74236.jpg', '+18796454632', '', '', '', '25.0459441', '121.5153112', 'No. 66, Section 1, Zhongxiao West Road', '', '00:00:00', 1, 259, '2020-09-10 13:42:12', '2020-09-10 13:42:12'),
(426, 'de', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/demy.jpg', '+912136478965', '', '', '', '0.0', '0.0', 'jchzkjch jhfajsafhak asjhafskjha ahajkfwio whfsjhs sahfkajhf ashajkfah ajhajsfj', '', '00:00:00', 1, 235, '2020-09-11 04:07:32', '2020-09-11 04:07:32'),
(427, 'de', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/demy.jpg', '895647854122', '', '', '', '0.0', '0.0', 'jchzkjch jhfajsafhak asjhafskjha ahajkfwio whfsjhs sahfkajhf ashajkfah ajhajsfj', '', '00:00:00', 1, 40, '2020-09-11 04:09:39', '2020-09-11 04:09:39'),
(428, 'de', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/demy.jpg', '8956478541225', '', '', '', '0.0', '0.0', ' sahfkajhf ashajkfah ', '', '00:00:00', 1, 40, '2020-09-11 04:10:01', '2020-09-11 04:10:01'),
(429, 'de', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/demy.jpg', '89564785412252', '', '', '', '0.0', '0.0', 'sahfkajhf ashajkfah ', '', '00:00:00', 1, 40, '2020-09-11 04:10:34', '2020-09-11 04:10:34'),
(430, 'varun trst', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del58651.jpg', '+91978456132', '', '', '', '30.0626083', '75.0684153', 'Chathewala', '', '00:00:00', 1, 40, '2020-09-11 04:12:50', '2020-09-11 04:12:50'),
(431, 'de', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del53646.png', '8974587458', '', '', '', '0.0', '0.0', 'Dubai', '', '00:00:00', 1, 40, '2020-09-11 04:14:29', '2020-09-11 04:14:29'),
(432, 'de', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del29883.png', '8974587459', '', '', '', '0.0', '0.0', 'djfksfj sdkjsdjsk asjajs asjajksda afancj asdajkd jfjsdfjskj asfhafkja', '', '00:00:00', 1, 40, '2020-09-11 04:14:46', '2020-09-11 04:14:46'),
(433, 'de', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del23350.png', '8974587457', '', '', '', '0.0', '0.0', 'djfksfj sdkjsdjsk asjajs asjajksda afancj asdajkd jfjsdfjskj asfhafkjavnmsd dsfksjfskl sdfsfjsklfssd dfslfkjsk sdfsjdfksjf sfjsfklsfj', '', '00:00:00', 1, 40, '2020-09-11 04:15:08', '2020-09-11 04:15:08'),
(434, 'de', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del47305.png', '8974587452', '', '', '', '', '', 'djfksfj sdkjsdjsk asjajs asjajksda afancj asdajkd jfjsdfjskj asfhafkjavnmsd dsfksjfskl sdfsfjsklfssd dfslfkjsk sdfsjdfksjf sfjsfklsfj', '', '00:00:00', 1, 40, '2020-09-11 04:19:27', '2020-09-11 04:19:27'),
(435, 'de', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del15541.png', '8974587454', '', '', '', '', '', 'djfksfj sdkjsdjsk asjajs asjajksda afancj asdajkd jfjsdfjskj asfhafkjavnmsd dsfksjfskl sdfsfjsklfssd dfslfkjsk sdfsjdfksjf sfjsfklsfj', '', '00:00:00', 1, 40, '2020-09-11 04:22:22', '2020-09-11 04:22:22'),
(436, 'trst', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del90607.jpg', '+911254367980', '', '', '', '41.68208970000001', '-69.95976639999999', 'Chatham', '', '00:00:00', 1, 40, '2020-09-11 04:32:01', '2020-09-11 04:32:01'),
(437, 'rah', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del79942.jpg', '+939854676418', '', '', '', '25.0835956', '121.5624745', 'No. 66, Section 1, Neihu Rd', '', '00:00:00', 1, 40, '2020-09-11 04:32:08', '2020-09-11 04:32:08'),
(438, 'test 34', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del12471.jpg', '+11234567890', '', '', '', '30.2307875', '76.79587269999999', 'Durana', '', '00:00:00', 1, 259, '2020-09-14 14:59:38', '2020-09-14 14:59:38'),
(439, 'akash', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del58266.jpg', '+11234567899', '', '', '', '31.25370500000001', '-92.53899899999999', 'C. F.\'s Trailers Inc - C.F.\'s Welding Service and ', '', '00:00:00', 1, 259, '2020-09-15 05:01:31', '2020-09-15 05:01:31'),
(440, 'tedt', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del21649.jpg', '+919855455522', '', '', '', '18.9531956', '72.8337653', 'Mohammed Ali Road', '', '00:00:00', 2, 265, '2020-09-15 06:19:43', '2020-09-15 06:19:43'),
(441, 'haha', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del38203.jpg', '+91123654879', '', '', '', '31.25370500000001', '-92.53899899999999', 'C. F.\'s Trailers Inc - C.F.\'s Welding Service and ', '', '00:00:00', 2, 40, '2020-09-15 11:39:22', '2020-09-15 11:39:22'),
(444, 'This Trailers', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del62326.jpg', '+13378734906', '', '', '', '30.2290227', '-92.1426956', 'Thib\'s Trailers', '', '00:00:00', 1, 309, '2020-09-16 12:28:10', '2020-09-16 12:28:10'),
(445, 'C.Fs Trailers', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del40239.jpg', '+13184433521', '', '', '', '31.25370500000001', '-92.53899899999999', 'C. F.\'s Trailers Inc - C.F.\'s Welding Service and ', '', '00:00:00', 1, 309, '2020-09-16 12:40:40', '2020-09-16 12:40:40'),
(446, 'shubh123', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del53017.jpg', '+919855454555', '', '', '', '30.7316253', '76.7054785', 'Mohali Bus Stand', '', '00:00:00', 1, 265, '2020-09-16 13:09:34', '2020-09-16 13:09:34'),
(447, 'testing123', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del43904.jpg', '+13378734901', '', '', '', '30.2290227', '-92.1426956', 'Thib\'s Trailers', '', '00:00:00', 1, 309, '2020-09-17 13:20:26', '2020-09-17 13:20:26'),
(448, 'qwerty', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del87496.jpg', '+913692581470', '', '', '', '28.68627380000001', '77.2217831', 'Delhi', '', '00:00:00', 1, 259, '2020-09-18 04:45:34', '2020-09-18 04:45:34');
INSERT INTO `dealer` (`id`, `name`, `l_name`, `image`, `contact`, `email`, `device_token`, `device_type`, `dealer_lat`, `dealer_long`, `location`, `otp`, `otp_expire`, `status`, `driver_id`, `created_at`, `updated_at`) VALUES
(449, 'Thibs Trailers', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del26869.jpg', '+14567891330', '', '', '', '30.2290227', '-92.1426956', 'Thib\'s Trailers', '', '00:00:00', 1, 309, '2020-09-21 13:40:00', '2020-09-21 13:40:00'),
(450, 'Hockley Dealer', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/del71196.jpg', '+19876543210', '', '', '', '30.026861', '-95.8458562', 'Hockley', '', '00:00:00', 1, 309, '2020-09-21 13:49:03', '2020-09-21 13:49:03'),
(451, '', '', '', '+12345678901', '', 'dmXrVTOsT3KUBNQhppl8SH:APA91bEbOckrxImmuW2WCzxB2mQLxfdLcV1gyvffCXVge6O1DvBObuXXaa0_N5NQporJPSKRXnsn_bsGeOaJUcqr5irZVnMLK0NtZTucjg5gOyiKCTIdRIB6WJI2TIbVyy54taBhBQzu', 'a', '29.9836536', '-95.6892929', 'Texas,United States', '8060', '18:48:46', 1, 0, '2020-09-24 13:17:47', '2020-09-24 13:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `dealer_crunt_location`
--

CREATE TABLE `dealer_crunt_location` (
  `id` int(11) NOT NULL,
  `dealer_id` int(11) NOT NULL,
  `d_lat` varchar(255) NOT NULL,
  `d_lont` varchar(255) NOT NULL,
  `status` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dealer_crunt_location`
--

INSERT INTO `dealer_crunt_location` (`id`, `dealer_id`, `d_lat`, `d_lont`, `status`, `created_at`) VALUES
(1, 2, 'hjgfds', 'asd asd asd', '1', '2020-06-27 05:52:34'),
(2, 6, '31.390031', '75.4031039', '1', '2020-06-27 06:57:00'),
(3, 6, '31.390031', '75.4031039', '1', '2020-06-27 07:03:49'),
(4, 161, '', '', '1', '2020-06-27 07:03:49'),
(5, 162, '37.09024', '-95.712891', '1', '2020-06-27 07:03:49'),
(6, 163, '29.9716905', '-95.6937856', '1', '2020-06-27 07:03:49'),
(7, 164, '30.6768744', '76.7202864', '1', '2020-06-27 07:03:49'),
(8, 167, '30.7202229', '76.7087046', '1', '2020-06-27 07:03:49'),
(9, 171, '33.378345', '-111.822388', '1', '2020-06-27 07:03:49'),
(10, 172, '34.773895', '-92.152355', '1', '2020-06-27 07:03:49'),
(11, 173, '33.929002', '-116.962057', '1', '2020-06-27 07:03:49'),
(12, 174, '40.378513', '-104.69252', '1', '2020-06-27 07:03:49'),
(13, 175, '37.21875', '-107.63874', '1', '2020-06-27 07:03:49'),
(14, 176, '39.79547', '-104.97233', '1', '2020-06-27 07:03:49'),
(15, 177, '24.53405', '55.08382', '1', '2020-06-27 07:03:49'),
(16, 178, '26.032095', '-80.411898', '1', '2020-06-27 07:03:49'),
(17, 179, '26.672192', '-81.801122', '1', '2020-06-27 07:03:49'),
(18, 180, '26.672192', '-81.801122', '1', '2020-06-27 07:03:49'),
(19, 181, '29.145506', '-82.113565', '1', '2020-06-27 07:03:49'),
(20, 182, '28.5523', '-81.432749', '1', '2020-06-27 07:03:49'),
(21, 183, '28.343856', '-82.697658', '1', '2020-06-27 07:03:49'),
(22, 184, '27.952971', '-82.383241', '1', '2020-06-27 07:03:49'),
(23, 185, '27.015898', '-82.14233', '1', '2020-06-27 07:03:49'),
(24, 186, '28.047224', '-81.901474', '1', '2020-06-27 07:03:49'),
(25, 187, '34.248524', '-84.856588', '1', '2020-06-27 07:03:49'),
(26, 188, '42.63524', '-113.78368', '1', '2020-06-27 07:03:49'),
(27, 189, '33.378345', '-111.822388', '1', '2020-06-27 07:03:49'),
(28, 190, '34.773895', '-92.152355', '1', '2020-06-27 07:03:49'),
(29, 191, '33.929002', '-116.962057', '1', '2020-06-27 07:03:49'),
(30, 192, '40.378513', '-104.69252', '1', '2020-06-27 07:03:49'),
(31, 200, '28.047224', '-81.901474', '1', '2020-06-27 07:03:49'),
(32, 201, '34.248524', '-84.856588', '1', '2020-06-27 07:03:49'),
(33, 202, '42.63524', '-113.78368', '1', '2020-06-27 07:03:49'),
(34, 203, '43.19704', '-112.44556', '1', '2020-06-27 07:03:49'),
(35, 204, '42.69653', '-114.522385', '1', '2020-06-27 07:03:49'),
(36, 205, '43.659415', '-116.671105', '1', '2020-06-27 07:03:49'),
(37, 206, '38.32514', '-88.87724', '1', '2020-06-27 07:03:49'),
(38, 207, '41.733888', '-87.963781', '1', '2020-06-27 07:03:49'),
(39, 208, '38.496654', '-89.984784', '1', '2020-06-27 07:03:49'),
(40, 209, '40.831284', '-85.356248', '1', '2020-06-27 07:03:49'),
(41, 210, '40.048025', '-86.016913', '1', '2020-06-27 07:03:49'),
(42, 211, '39.56806', '-86.0925', '1', '2020-06-27 07:03:49'),
(43, 212, '40.822055', '-84.934584', '1', '2020-06-27 07:03:49'),
(44, 213, '40.041226', '-86.251583', '1', '2020-06-27 07:03:49'),
(45, 214, '38.212478', '-85.261508', '1', '2020-06-27 07:03:49'),
(46, 215, '37.172665', '-84.482911', '1', '2020-06-27 07:03:49'),
(47, 216, '33.437716', '-112.11636', '1', '2020-06-27 07:03:49'),
(48, 217, '32.260532', '-110.993698', '1', '2020-06-27 07:03:49'),
(49, 218, '30.29816', '-89.72881', '1', '2020-06-27 07:03:49'),
(50, 219, '32.530863', '-93.670026', '1', '2020-06-27 07:03:49'),
(51, 220, '29.74437', '-90.808968', '1', '2020-06-27 07:03:49'),
(52, 221, '30.489851', '-91.123641', '1', '2020-06-27 07:03:49'),
(53, 222, '29.942404', '-91.769531', '1', '2020-06-27 07:03:49'),
(54, 223, '30.427146', '-91.217923', '1', '2020-06-27 07:03:49'),
(55, 224, '30.187256', '-91.990799', '1', '2020-06-27 07:03:49'),
(56, 225, '42.599443', '-72.397941', '1', '2020-06-27 07:03:49'),
(57, 226, '42.9311', '-84.502778', '1', '2020-06-27 07:03:49'),
(58, 227, '45.4485', '-93.9985', '1', '2020-06-27 07:03:49'),
(59, 228, '32.140149', '-90.349172', '1', '2020-06-27 07:03:49'),
(60, 229, '32.277788', '-90.148111', '1', '2020-06-27 07:03:49'),
(61, 230, '30.528495', '-89.10848', '1', '2020-06-27 07:03:49'),
(62, 231, '39.761304', '-94.502204', '1', '2020-06-27 07:03:49'),
(63, 232, '37.415812', '-90.06529', '1', '2020-06-27 07:03:49'),
(64, 233, '40.85053', '-101.546815', '1', '2020-06-27 07:03:49'),
(65, 234, '32.346329', '-104.248337', '1', '2020-06-27 07:03:49'),
(66, 235, '32.747195', '-103.167007', '1', '2020-06-27 07:03:49'),
(67, 236, '36.065919', '-79.441304', '1', '2020-06-27 07:03:49'),
(68, 237, '46.875724', '-96.80651', '1', '2020-06-27 07:03:49'),
(69, 238, '40.55833', '-84.31729', '1', '2020-06-27 07:03:49'),
(70, 239, '39.772095', '-89.633496', '1', '2020-06-27 07:03:49'),
(71, 240, '34.932948', '-92.079215', '1', '2020-06-27 07:03:49'),
(72, 241, '39.82164', '-84.18726', '1', '2020-06-27 07:03:49'),
(73, 242, '39.878519', '-83.026218', '1', '2020-06-27 07:03:49'),
(74, 243, '41.471945', '-81.192841', '1', '2020-06-27 07:03:49'),
(75, 244, '40.929464', '-80.80213', '1', '2020-06-27 07:03:49'),
(76, 245, '40.993237', '-81.99658', '1', '2020-06-27 07:03:49'),
(77, 246, '39.391868', '-83.154276', '1', '2020-06-27 07:03:49'),
(78, 247, '41.382282', '-80.868632', '1', '2020-06-27 07:03:49'),
(79, 248, '35.434945', '-97.648096', '1', '2020-06-27 07:03:49'),
(80, 249, '36.161543', '-95.810617', '1', '2020-06-27 07:03:49'),
(81, 250, '36.590398', '-94.866184', '1', '2020-06-27 07:03:49'),
(82, 251, '35.361063', '-97.496755', '1', '2020-06-27 07:03:49'),
(83, 252, '42.437346', '-122.84993', '1', '2020-06-27 07:03:50'),
(84, 253, '40.368028', '-80.389916', '1', '2020-06-27 07:03:50'),
(85, 254, '40.44076', '-76.39596', '1', '2020-06-27 07:03:50'),
(86, 255, '39.865497', '-75.344704', '1', '2020-06-27 07:03:50'),
(87, 256, '40.126989', '-79.561866', '1', '2020-06-27 07:03:50'),
(88, 257, '35.056814', '-85.142154', '1', '2020-06-27 07:03:50'),
(89, 258, '35.672127', '-86.418612', '1', '2020-06-27 07:03:50'),
(90, 259, '35.000529', '-85.299241', '1', '2020-06-27 07:03:50'),
(91, 260, '32.032285', '-102.38637', '1', '2020-06-27 07:03:50'),
(92, 261, '32.758139', '-97.764412', '1', '2020-06-27 07:03:50'),
(93, 262, '32.503409', '-94.698375', '1', '2020-06-27 07:03:50'),
(94, 263, '33.439903', '-96.320385', '1', '2020-06-27 07:03:50'),
(95, 264, '32.274913', '-101.370708', '1', '2020-06-27 07:03:50'),
(96, 265, '31.054629', '-97.529166', '1', '2020-06-27 07:03:50'),
(97, 266, '31.490908', '-97.13985', '1', '2020-06-27 07:03:50'),
(98, 267, '32.795468', '-97.262462', '1', '2020-06-27 07:03:50'),
(99, 268, '32.645825', '-96.529677', '1', '2020-06-27 07:03:50'),
(100, 269, '29.407056', '-96.957302', '1', '2020-06-27 07:03:50'),
(101, 270, '29.953028', '-95.667262', '1', '2020-06-27 07:03:50'),
(102, 271, '32.70984', '-97.231876', '1', '2020-06-27 07:03:50'),
(103, 272, '29.882395', '-95.411178', '1', '2020-06-27 07:03:50'),
(104, 273, '31.881783', '-102.275131', '1', '2020-06-27 07:03:50'),
(105, 274, '30.345467', '-95.562918', '1', '2020-06-27 07:03:50'),
(106, 275, '30.987126', '-95.904977', '1', '2020-06-27 07:03:50'),
(107, 276, '29.836309', '-95.174001', '1', '2020-06-27 07:03:50'),
(108, 277, '29.379953', '-98.311368', '1', '2020-06-27 07:03:50'),
(109, 278, '30.10279', '-94.061673', '1', '2020-06-27 07:03:50'),
(110, 279, '31.822317', '-106.155645', '1', '2020-06-27 07:03:50'),
(111, 280, '31.911218', '-102.229396', '1', '2020-06-27 07:03:50'),
(112, 281, '32.685827', '-96.883346', '1', '2020-06-27 07:03:50'),
(113, 282, '33.604537', '-101.814956', '1', '2020-06-27 07:03:50'),
(114, 283, '29.246156', '-98.759026', '1', '2020-06-27 07:03:50'),
(115, 284, '32.011718', '-102.243957', '1', '2020-06-27 07:03:50'),
(116, 285, '32.715047', '-96.68796', '1', '2020-06-27 07:03:50'),
(117, 286, '29.667', '-95.159589', '1', '2020-06-27 07:03:50'),
(118, 287, '32.715883', '-97.228607', '1', '2020-06-27 07:03:50'),
(119, 288, '35.2124', '-101.836475', '1', '2020-06-27 07:03:50'),
(120, 289, '31.813129', '-102.432068', '1', '2020-06-27 07:03:50'),
(121, 290, '41.04055', '-111.95358', '1', '2020-06-27 07:03:50'),
(122, 291, '36.83991', '-76.15095', '1', '2020-06-27 07:03:50'),
(123, 292, '37.426553', '-77.439906', '1', '2020-06-27 07:03:50'),
(124, 293, '36.779134', '-76.621198', '1', '2020-06-27 07:03:50'),
(125, 294, '38.485868', '-78.812241', '1', '2020-06-27 07:03:50'),
(126, 295, '44.697654', '-63.584042', '1', '2020-06-27 07:03:50'),
(127, 296, '', '', '1', '2020-06-27 07:03:50'),
(128, 297, '', '', '1', '2020-06-27 07:03:50'),
(129, 298, '', '', '1', '2020-06-27 07:03:50'),
(130, 299, '', '', '1', '2020-06-27 07:03:50'),
(131, 300, '', '', '1', '2020-06-27 07:03:50'),
(132, 301, '', '', '1', '2020-06-27 07:03:50'),
(133, 302, '', '', '1', '2020-06-27 07:03:50'),
(134, 303, '', '', '1', '2020-06-27 07:03:50'),
(135, 305, '30.590320479757484', '74.81999629333788', '1', '2020-06-27 07:03:50'),
(136, 306, '', '', '1', '2020-06-27 07:03:50'),
(137, 307, '', '', '1', '2020-06-27 07:03:50'),
(138, 308, '', '', '1', '2020-06-27 07:03:50'),
(139, 309, '', '', '1', '2020-06-27 07:03:50'),
(140, 310, '31.39003312338279', '75.40309594621702', '1', '2020-06-27 07:03:50'),
(141, 311, '', '', '1', '2020-06-27 07:03:50'),
(142, 312, '', '', '1', '2020-06-27 07:03:50'),
(143, 313, '', '', '1', '2020-06-27 07:03:50'),
(144, 314, '', '', '1', '2020-06-27 07:03:50'),
(145, 315, '', '', '1', '2020-06-27 07:03:50'),
(146, 316, '', '', '1', '2020-06-27 07:03:50'),
(147, 317, '', '', '1', '2020-06-27 07:03:50'),
(148, 318, '37.09024', '-95.712891', '1', '2020-06-27 07:03:50'),
(149, 319, '', '', '1', '2020-06-27 07:03:50'),
(150, 320, '', '', '1', '2020-06-27 07:03:50'),
(151, 321, '', '', '1', '2020-06-27 07:03:50'),
(152, 324, '', '', '1', '2020-06-27 07:03:50'),
(153, 325, '', '', '1', '2020-06-27 07:03:50'),
(154, 326, '', '', '1', '2020-06-27 07:03:50'),
(155, 327, '', '', '1', '2020-06-27 07:03:50'),
(156, 328, '', '', '1', '2020-06-27 07:03:50'),
(157, 329, '', '', '1', '2020-06-27 07:03:50'),
(158, 330, '', '', '1', '2020-06-27 07:03:50'),
(159, 331, '', '', '1', '2020-06-27 07:03:50'),
(160, 332, '', '', '1', '2020-06-27 07:03:50'),
(161, 333, '', '', '1', '2020-06-27 07:03:50'),
(162, 334, '', '', '1', '2020-06-27 07:03:50'),
(163, 335, '32.1571995', '76.0924262', '1', '2020-06-27 07:03:50'),
(164, 336, '30.5870102', '74.8174116', '1', '2020-06-27 07:03:50'),
(165, 337, '29.9835432', '-95.6891024', '1', '2020-06-27 07:03:50'),
(166, 338, '', '', '1', '2020-06-27 07:03:50'),
(167, 339, '123', '123', '1', '2020-06-27 07:03:50'),
(168, 340, '123', '123', '1', '2020-06-27 07:03:50'),
(169, 341, '123', '123', '1', '2020-06-27 07:03:50'),
(170, 342, 'text', 'text', '1', '2020-06-27 07:03:50'),
(171, 0, '', '', '1', '2020-07-02 06:35:15');

-- --------------------------------------------------------

--
-- Table structure for table `dealer_membership`
--

CREATE TABLE `dealer_membership` (
  `id` int(11) NOT NULL,
  `dealer_id` int(11) NOT NULL,
  `membership_id` int(11) NOT NULL,
  `end_date` date NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dealer_membership`
--

INSERT INTO `dealer_membership` (`id`, `dealer_id`, `membership_id`, `end_date`, `created_on`, `update_at`) VALUES
(7, 6, 1, '2020-05-02', '2020-03-25 07:36:56', '2020-04-02'),
(8, 165, 1, '2020-05-02', '2020-03-30 06:03:39', '2020-04-02'),
(9, 1, 1, '2020-04-30', '2020-03-30 06:04:14', '2020-03-30'),
(10, 0, 0, '2021-04-06', '2020-04-06 06:33:00', '2020-04-06'),
(11, 304, 1, '2020-06-21', '2020-05-11 06:03:28', '2020-05-21');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(250) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `part_no` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `trailer_year` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `wheel_stud` varchar(255) NOT NULL,
  `hub_diameter` varchar(255) NOT NULL,
  `brake_actuation` varchar(255) NOT NULL,
  `ez_labe` varchar(255) NOT NULL,
  `traler_menufacter` varchar(255) NOT NULL,
  `brack_type` varchar(255) NOT NULL,
  `axle_weight_capacity` varchar(255) NOT NULL,
  `axle_manufacturer` varchar(255) NOT NULL,
  `vehicle_name` varchar(255) NOT NULL,
  `vehicle_num` varchar(255) NOT NULL,
  `device_token` varchar(500) NOT NULL,
  `device_type` varchar(50) NOT NULL,
  `driver_lat` varchar(100) NOT NULL,
  `driver_long` varchar(100) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `img_icon` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `otp` varchar(255) NOT NULL,
  `otp_expire` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `name`, `image`, `contact`, `email`, `part_no`, `product_name`, `trailer_year`, `description`, `wheel_stud`, `hub_diameter`, `brake_actuation`, `ez_labe`, `traler_menufacter`, `brack_type`, `axle_weight_capacity`, `axle_manufacturer`, `vehicle_name`, `vehicle_num`, `device_token`, `device_type`, `driver_lat`, `driver_long`, `payment_mode`, `img_icon`, `status`, `otp`, `otp_expire`, `created_at`, `updated_at`) VALUES
(40, 'Harbans', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins96997.jpg', '+91123456789', 'harbans@ga.com', ' ', ' ', '1990', ' ', '1/2\"', '6-5.5', 'Electric/Hydraulic', 'NO', 'haini', 'Drum', '6000', 'Dexter', '', '', 'daUqNG66Rw6dFIRR95Bdvr:APA91bE9zs1P21ZGU_H7l8yh6V2BeMk8H4UKHHJvB55DnM0LfY_2E2AQd7Fp7mCAdrcaVokJq6ijEj4949C5TsUI3N85LYQ1mdZrcMm_niubqF7tNPA2OrqCZAFbaC4OF9oNNTkg_amB', '1', '', '', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/ad_assects/map_icon2.png', 1, '', '11:33:33', '2020-02-27 09:01:33', '2020-02-27 09:01:33'),
(41, 'vks', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins17416.jpg', '+917845233697', 'vks@gmail.com', 'LM67048', 'Outer Bearing', '2011', '\"Outer Bearing 1.25\"\" ID (LM67010 Race)\"', 'NA', 'NA', 'NA', 'NA', '', 'NA', '5200', 'Dexter or Rockwell or Lippert', '', '34456', '', '', '30.7062787', '76.6844583', '', '', 1, '1874', '20:27:47', '2020-02-27 11:32:49', '2020-02-27 11:32:49'),
(50, 'Goodu Kumar22', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/da3483dfeb953a90440c7deb8267f12d.png', '+919876543211', 'goodu@gmail.com', '12', '12', '12', '12', '12', '12', '12', '12', '', '', '12', '12', '122', '123', '', '', '', '', '', '', 1, '', '00:00:00', '2020-03-02 09:22:07', '2020-03-02 09:22:07'),
(55, '', '', '+919877511250', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '9371', '18:50:51', '2020-03-02 13:19:48', '2020-03-02 13:19:48'),
(57, '', '', '+919811721212', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '30.7117661', '76.6864531', '', '', 1, '1893', '18:29:01', '2020-03-04 12:58:00', '2020-03-04 12:58:00'),
(63, '', '', '+917845233965', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '30.5844538', '74.8231143', '', '', 1, '3107', '17:03:05', '2020-03-09 11:32:01', '2020-03-09 11:32:01'),
(175, '', '', '+91750898330223421234', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '9710', '11:23:21', '2020-03-13 05:51:04', '2020-03-13 05:51:04'),
(178, '', '', '+919877136880', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '3100', '13:19:46', '2020-03-21 04:17:31', '2020-03-21 04:17:31'),
(180, '', '', '+915558553855', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4514', '00:07:43', '2020-03-21 18:36:44', '2020-03-21 18:36:44'),
(184, '', '', '+91123123412334', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2143', '09:52:32', '2020-03-23 04:20:58', '2020-03-23 04:20:58'),
(185, '', '', '+912222222222', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '6104', '11:13:54', '2020-03-23 04:26:56', '2020-03-23 04:26:56'),
(186, '', '', '+913333333333', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '7259', '10:39:48', '2020-03-23 04:27:45', '2020-03-23 04:27:45'),
(188, '', '', '+919844545454', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '8687', '12:04:27', '2020-03-23 06:33:28', '2020-03-23 06:33:28'),
(189, '', '', '+234724535634573', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '8318', '12:08:30', '2020-03-23 06:37:31', '2020-03-23 06:37:31'),
(192, '', '', '+9178251423', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '3564', '12:28:21', '2020-03-23 06:57:22', '2020-03-23 06:57:22'),
(194, '', '', '+917206464259', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '7707', '12:42:54', '2020-03-23 07:11:55', '2020-03-23 07:11:55'),
(195, '', '', '+9187839523458932', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '9458', '13:01:43', '2020-03-23 07:30:44', '2020-03-23 07:30:44'),
(196, '', '', '+9134523452345235', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '3691', '13:18:35', '2020-03-23 07:47:36', '2020-03-23 07:47:36'),
(197, '', '', '+913452345234523512', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '6552', '13:23:07', '2020-03-23 07:52:08', '2020-03-23 07:52:08'),
(198, '', '', '+914444444444', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '8580', '13:25:12', '2020-03-23 07:54:13', '2020-03-23 07:54:13'),
(210, '', '', '+919855214454', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '1940', '16:22:15', '2020-04-06 10:51:17', '2020-04-06 10:51:17'),
(211, '', '', '+919855214454', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '1806', '16:22:16', '2020-04-06 10:51:17', '2020-04-06 10:51:17'),
(212, '', '', '+919855214454', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '8117', '16:22:22', '2020-04-06 10:51:23', '2020-04-06 10:51:23'),
(213, '', '', '+919855214454', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '6785', '16:22:28', '2020-04-06 10:51:29', '2020-04-06 10:51:29'),
(214, '', '', '+919855214452', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '9755', '16:22:34', '2020-04-06 10:51:35', '2020-04-06 10:51:35'),
(215, '', '', '+919855214451', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '3784', '16:22:58', '2020-04-06 10:51:59', '2020-04-06 10:51:59'),
(216, '', '', '+919856324589', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '8715', '16:25:28', '2020-04-06 10:54:30', '2020-04-06 10:54:30'),
(217, '', '', '9875263245', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '6910', '16:31:53', '2020-04-06 11:00:54', '2020-04-06 11:00:54'),
(218, '', '', '+919875263245', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '6754', '16:32:09', '2020-04-06 11:01:11', '2020-04-06 11:01:11'),
(221, '', '', '+917889642356', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2409', '16:40:57', '2020-04-06 11:09:58', '2020-04-06 11:09:58'),
(222, '', '', '+919855412288', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '3499', '17:27:36', '2020-04-06 11:56:37', '2020-04-06 11:56:37'),
(223, '', '', '+919855412288', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2303', '17:27:36', '2020-04-06 11:56:37', '2020-04-06 11:56:37'),
(224, '', '', '+919855412288', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4221', '17:27:37', '2020-04-06 11:56:38', '2020-04-06 11:56:38'),
(225, '', '', '+918427449665', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'eSCJglGNQUa4t3CF3jcVpv:APA91bF2gn9Q-Cyb-bbDXs0d_xhX-0dVvV9FOQZwcGCezCxqeU2nDhZ91EjA_r7bdJO5rmMoJoDd7R5ZPpH-GF1yCPlfYLnh8113bteMjP3-2Zd2XJTQ61fACjPHupOYWrbsm0aTe3sQ', 'a', '76.7201177', '30.6767699', '', '', 1, '5134', '17:58:05', '2020-04-06 11:57:27', '2020-04-06 11:57:27'),
(226, '', '', '+919846523621', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4285', '17:40:21', '2020-04-06 12:09:22', '2020-04-06 12:09:22'),
(227, '', '', '+919875936452', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '5788', '17:42:15', '2020-04-06 12:11:17', '2020-04-06 12:11:17'),
(228, '', '', '+917889623521', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '8052', '18:04:30', '2020-04-06 12:33:32', '2020-04-06 12:33:32'),
(229, '', '', '+917888624530', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '9053', '18:16:28', '2020-04-06 12:45:29', '2020-04-06 12:45:29'),
(230, '', '', '+918888556633', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2282', '18:24:23', '2020-04-06 12:53:25', '2020-04-06 12:53:25'),
(231, '', '', '+919845545424', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4272', '17:32:21', '2020-04-07 12:01:22', '2020-04-07 12:01:22'),
(232, '', '', '+919845545424', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2026', '17:32:21', '2020-04-07 12:01:22', '2020-04-07 12:01:22'),
(233, '', '', '+919845263', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '9970', '17:51:46', '2020-04-07 12:20:47', '2020-04-07 12:20:47'),
(234, '', '', '+919845263989', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '9977', '17:52:02', '2020-04-07 12:21:04', '2020-04-07 12:21:04'),
(235, '', '', '+911234568755', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '9357', '18:40:51', '2020-04-07 13:09:52', '2020-04-07 13:09:52'),
(236, '', '', '+911234568755', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '6797', '18:40:52', '2020-04-07 13:09:53', '2020-04-07 13:09:53'),
(254, '', '', '+916494997979', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '30.5830529', '74.8201897', '', '', 1, '9248', '14:19:28', '2020-04-17 08:48:29', '2020-04-17 08:48:29'),
(255, '', '', '+919848454561', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '4737', '21:24:10', '2020-04-22 15:53:12', '2020-04-22 15:53:12'),
(256, 'ram', '', '+18264271287', 'abc@gmail.com', ' ', ' ', '1996', ' ', '1/2\"', '8-6.5', 'Electric', 'NO', 'sdfsfs', 'Drum', '7000', 'Dexter', '', '', '', '', '37.4219825', '-122.0839827', '', '', 1, '8213', '09:50:36', '2020-04-27 10:02:22', '2020-04-27 10:02:22'),
(257, '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins97738.jpg', '+19876642075', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '30.7276976', '76.6586107', '', '', 1, '8979', '16:45:43', '2020-04-28 10:16:21', '2020-04-28 10:16:21'),
(258, '', '', '+919876642075', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '30.7276878', '76.6586124', '', '', 1, '2541', '16:46:00', '2020-04-28 11:15:01', '2020-04-28 11:15:01'),
(259, 'Varun', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins52510.jpg', '+919459090723', 'varun@gmail.com', ' ', ' ', 'undefined', ' ', '1/2\"', '6-5.5', 'Electric', 'NO', '', 'Drum', '10000GD', 'Dexter', '', '', 'a', 'i', '', '', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/ad_assects/map_icon2.png', 1, '1659', '11:24:03', '2020-04-29 04:35:54', '2020-04-29 04:35:54'),
(260, '', '', '+919854544346', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '30.587872', '74.8226336', '', '', 1, '1845', '10:51:20', '2020-04-29 05:20:22', '2020-04-29 05:20:22'),
(261, 'Sham', '', '+919882146314', 'sham@gmail.com', ' ', ' ', '1991', ' ', '\"9/16\"\"\"', '8-6.5', 'Electric or Hydraulic or Electric/Hydraulic', 'NO', '', 'Drum', '8000', 'Dexter', '', '', '', '', '32.1517237', '76.0967609', '', '', 1, '4587', '13:04:01', '2020-04-29 07:33:02', '2020-04-29 07:33:02'),
(262, 'Lucky', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins40398.jpg', '+919845451631', 'lucky@gmail.com', ' ', ' ', '1996', ' ', '1/2\"', 'NA', 'Electric/Hydraulic', 'NO', 'jzjz', 'Disc', '7000', 'Dexter', '', '', 'dKr9AueWQee7RhKjSL8REs:APA91bFCiuUtzGI8yVXX8S7ULYv_mOuReCOVKhgYuWp2AxFcEM7z-Oit_ubhohZ1rDUYlmhf4bq8jaYJjdu5KROYvbDznSHpBD-BictWFsLpispWa-i3NRCVuivqOmsBJvMt4Jw87iDU', 'a', '76.0894895', '32.1630682', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/ad_assects/map_icon1.png', 1, '5206', '16:27:06', '2020-04-29 13:13:48', '2020-04-29 13:13:48'),
(263, '', '', '+919854513313', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '30.584595', '74.8230048', '', '', 1, '3800', '20:13:02', '2020-04-29 14:42:03', '2020-04-29 14:42:03'),
(264, '', '', '+19418394865', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '37.422001', '-122.0839913', '', '', 1, '5457', '20:49:24', '2020-04-29 15:18:25', '2020-04-29 15:18:25'),
(265, 'Tester', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins81701.jpg', '+919781241441', 'tester@gmail.com', ' ', ' ', '2020', ' ', 'NA', '5-4.5', 'None', 'NO', 'fhjvghhh', 'Drum', '12000', 'Lippert', '', '', 'dbiuOxjQQ72YQeBTsnYUPn:APA91bEt1ZvCKmzVXMp2RHMmk5umipRoSLCIY5LCe5xDbVWxSg8gJasgXfB7arEY_8R9f7sFikpMDqCyOrf-6WwyIoODXivXze1obDy7RU_Nu2zvx1tD7oK8ixC2wl1bSCnFvpyYD-OD', '1', '76.720124', '30.6767421', '', '', 1, '4825', '11:47:13', '2020-04-29 15:32:30', '2020-04-29 15:32:30'),
(266, 'Test', '', '+919885544553', 'shubham7363@yahoo.com', ' ', ' ', '1991', ' ', '\"1/2\"\"\"', '5-4.5', 'Electric/Hydraulic', 'NO', '', 'Drum', '5200', 'Rockwell', '', '', '', '', '30.5909037', '74.824211', '', '', 1, '7434', '10:57:39', '2020-05-01 05:26:40', '2020-05-01 05:26:40'),
(267, 'Rahul', '', '+916284271287', 'rahul@gmail.com', ' ', ' ', '1991', ' ', '\"5/8\"\"\"', '8-6.5', 'Electric or Hydraulic or Electric/Hydraulic', 'NO', 'xo', 'Drum', '7000', 'Dexter', '', '', '', '', '32.1628029', '76.0938979', '', '', 1, '3474', '11:15:48', '2020-05-01 05:44:50', '2020-05-01 05:44:50'),
(270, 'admin', 'http://phpstack-102119-1169738.cloudwaysapps.com/admin/../img/location/708e1a2d225dd2ee69fb79efb5a8aa9b.png', '+19855252119', 'admin@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '', '00:00:00', '2020-05-16 07:04:34', '2020-05-16 07:04:34'),
(271, '', '', '+1987654320', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '31.894612', '75.5775182', '', '', 1, '4553', '17:37:10', '2020-05-19 12:06:10', '2020-05-19 12:06:10'),
(272, 'Test', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins68336.jpg', '+917018401506', 'protolabzmanisha@gmail.com', ' ', ' ', '2020', ' ', '5/8\"', '8-6.5', 'Electric/Hydraulic', 'NA', '', 'Disc', '10000HD', 'Dexter', '', '', '', '', '31.735855799999996', '76.4732028', '', '', 1, '1989', '17:00:09', '2020-05-22 05:12:03', '2020-05-22 05:12:03'),
(273, '', '', '+914564564564', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '31.7348668', '76.4730661', '', '', 1, '8573', '10:15:53', '2020-05-28 04:42:35', '2020-05-28 04:42:35'),
(275, '', '', '+914545454545', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4167', '11:06:30', '2020-05-28 05:35:05', '2020-05-28 05:35:05'),
(284, 'Suj', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins41472.jpg', '+917018401508', 'protolabzmanisha@gmail.com', ' ', ' ', '2009', ' ', '', '8-6.5', 'None', 'YES', '', 'None', '7000', 'Dexter', '', '', '', '', '31.735135299999996', '76.4727564', '', '', 1, '3081', '10:15:02', '2020-06-03 04:44:02', '2020-06-03 04:44:02'),
(288, '', '', '+91789654321', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '3079', '18:21:11', '2020-06-04 12:50:11', '2020-06-04 12:50:11'),
(289, '', '', '+91987654321', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '31.3900311', '75.4031012', '', '', 1, '4184', '18:21:54', '2020-06-04 12:50:54', '2020-06-04 12:50:54'),
(290, '', '', '+919876543210', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '31.38900184266053', '75.40315245990988', '', '', 1, '3317', '18:55:44', '2020-06-04 12:58:41', '2020-06-04 12:58:41'),
(291, '', '', '+919876543212', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '31.389360348357442', '75.40315319666614', '', '', 1, '5159', '18:59:21', '2020-06-04 13:28:21', '2020-06-04 13:28:21'),
(292, '', '', '+919877818607', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '30.5870211', '74.8181527', '', '', 1, '4679', '19:19:36', '2020-06-12 12:54:23', '2020-06-12 12:54:23'),
(293, 'Sharma', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins81820.jpg', '+919882146369', 'sharma@gmail.com', ' ', ' ', '1995', ' ', '1/2\"', '6-5.5', 'Electric/Hydraulic', 'NO', '', 'Disc', '6000', 'Dexter', '', '', '', '', '32.1542144', '76.0933336', '', '', 1, '2122', '16:50:14', '2020-07-03 07:04:06', '2020-07-03 07:04:06'),
(295, '', '', '+919877811827', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c9RteuLrSTKehXUWssTFuS:APA91bG7EH2x-lFXrGuSj9Noc5PBv5gy6PU_51SNiIVAPg0it_PK_a3Tw17Ydjjm_edB9Wqw2sMaZxNnNNPP6VxrHl04dvP9OHUwVZCtZf3YyJVhP1JTDikiXzDQf0s-yrF0cifaFR1u', 'a', '', '', '', '', 0, '8312', '18:29:12', '2020-07-10 12:58:12', '2020-07-10 12:58:12'),
(296, '', '', '+917508983302', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cuxNE8aFRjifWF91_Jamc-:APA91bEYxZpo9BO6YyIgTFXjEqfhQRmYltVP-xkrs0ggIetSowhF0YRI2Nsl8hSzpJIlErkicapLObfxAIlvHU6YxWXqICt0LW5PrNSYEBvoDtkIZIpNR0X1Oq3_qhAkzRwhaq6LiGe_', 'a', '30.7016095', '76.7140471', '', '', 1, '6112', '18:47:23', '2020-07-11 13:16:23', '2020-07-11 13:16:23'),
(297, '', '', '+917017674512', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'eDlN3xs_Q-SUGbFIcIE8um:APA91bFHCZaCCTdHQpDRcMMc38TgnKQvCWDDYAA0_EWdKVU-SGeCn5neCdp_kMcY-RpCvTHz4lSzH4RSDkcoT_O2cbTzmlQNmTaXhzEoyDG5MFP6FMijwGzg0YXKsKK-9QGAEI26sCdy', 'a', '', '', '', '', 1, '8706', '18:08:32', '2020-07-15 07:52:48', '2020-07-15 07:52:48'),
(298, '', '', '+918368255275', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'dQCPYeoxR6axR74ChUOF_H:APA91bGyAnWqSdNbLCZm9RHr_H3gZnG3IsQ-ETgNvMHmpG8INISGvhutft8jJpXJ91yp_IY3ibFkz023uWF9NxZzBfqzTuddh9H4Lqg8jhe3LtJKAtyZ5BDHqinc6QVKlfkgqmfF4QzJ', 'a', '', '', '', '', 0, '7619', '15:11:52', '2020-07-15 09:40:52', '2020-07-15 09:40:52'),
(299, 'Rajat', '', '+919170176745', 'tester.sawan@gmail.com', ' ', ' ', '1991', ' ', '', '', '', '', 'hhgjhbg', '', '7000', 'Dexter', '', '', 'eDlN3xs_Q-SUGbFIcIE8um:APA91bFHCZaCCTdHQpDRcMMc38TgnKQvCWDDYAA0_EWdKVU-SGeCn5neCdp_kMcY-RpCvTHz4lSzH4RSDkcoT_O2cbTzmlQNmTaXhzEoyDG5MFP6FMijwGzg0YXKsKK-9QGAEI26sCdy', 'a', '', '', '', '', 1, '2341', '18:03:54', '2020-07-20 07:07:27', '2020-07-20 07:07:27'),
(300, 'Mmm', '', '+919354890254', 'akanksha.guptalava@gmail.com', ' ', ' ', '2007', ' ', '', '', '', '', 'nn', '', '12000', 'Rockwell', '', '', 'cNbUTIUEQsStuNaxLsriBk:APA91bG0IB5t3LQ2h956sinKNyyP5sYvNwbhAJ1YeH22u9oF4ohKKi9Wo0or7udnL2UM0-mWig7CDReRYqHOjfkg-rbCcurmkJrwHz_L0xHu85IZObxMC4bxJk6jTCvu3hZlUS_fsrUR', 'a', '27.0128926', '78.1181348', '', '', 1, '2697', '18:02:58', '2020-07-20 07:45:47', '2020-07-20 07:45:47'),
(301, '', '', '+9111', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cpB5xXJITiy3z3sWhZE9Rr:APA91bFd487QNYL-cEarAr6A4nyv8bGSavI87HtXn9jBTs3gShC6mkJ1sCOSXXqhRKF8PDzOBKzNSv4wrlSdxHSMYZY58iZ3yEZQ50VR6zM2MNFmbAoklhgs1kHMsnNDmA5S3b1hTlpP', 'a', '', '', '', '', 0, '7126', '13:07:36', '2020-07-23 07:36:36', '2020-07-23 07:36:36'),
(302, '', '', '+919625590051', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c-4w130aSo-gsOO5_Wb9ZW:APA91bHYTbbZGUEHXdjYTrHuXUb7dF-YliWZmcUvooSTHNpYw9mKpCwquANBgLYgY5qOlDy0svPfbtkfERiPhYaNiZeH3zAcfkJw5ZuNBWbhXNAFmMt82xLfm66VtjqbStGzTQoWeXcg', 'a', '31.3207225', '76.8152462', '', '', 1, '5508', '14:56:48', '2020-07-23 07:47:12', '2020-07-23 07:47:12'),
(303, '', '', '+911111646646', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c-4w130aSo-gsOO5_Wb9ZW:APA91bHYTbbZGUEHXdjYTrHuXUb7dF-YliWZmcUvooSTHNpYw9mKpCwquANBgLYgY5qOlDy0svPfbtkfERiPhYaNiZeH3zAcfkJw5ZuNBWbhXNAFmMt82xLfm66VtjqbStGzTQoWeXcg', 'a', '', '', '', '', 0, '4607', '14:17:03', '2020-07-23 08:46:03', '2020-07-23 08:46:03'),
(304, '', '', '+91111', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c-4w130aSo-gsOO5_Wb9ZW:APA91bHYTbbZGUEHXdjYTrHuXUb7dF-YliWZmcUvooSTHNpYw9mKpCwquANBgLYgY5qOlDy0svPfbtkfERiPhYaNiZeH3zAcfkJw5ZuNBWbhXNAFmMt82xLfm66VtjqbStGzTQoWeXcg', 'a', '', '', '', '', 0, '7913', '14:17:14', '2020-07-23 08:46:14', '2020-07-23 08:46:14'),
(305, 'Test', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins29536.jpg', '+917807244851', 'test@g.com', ' ', ' ', '1992', ' ', '1/2\"', '6-5.5', 'Electric', 'NA', 'ff', 'Drum', '5200', 'Rockwell', '', '', 'c-4w130aSo-gsOO5_Wb9ZW:APA91bHYTbbZGUEHXdjYTrHuXUb7dF-YliWZmcUvooSTHNpYw9mKpCwquANBgLYgY5qOlDy0svPfbtkfERiPhYaNiZeH3zAcfkJw5ZuNBWbhXNAFmMt82xLfm66VtjqbStGzTQoWeXcg', 'a', '31.3207225', '76.8152462', '', '', 1, '2905', '14:20:52', '2020-07-23 08:49:52', '2020-07-23 08:49:52'),
(307, '', '', '+919041156289', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a', '30.0927806', '74.0830674', '', '', 1, '6239', '09:23:05', '2020-07-24 03:51:00', '2020-07-24 03:51:00'),
(308, 'Vikas', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins96348.jpg', '+919882146365', 'vikas@gmail.com', ' ', ' ', '1996', ' ', '5/8\"', '8-6.5', 'Electric/Hydraulic', 'NA', 'bssb', 'Disc', '10000GD', 'Dexter', '', '', 'dKr9AueWQee7RhKjSL8REs:APA91bFCiuUtzGI8yVXX8S7ULYv_mOuReCOVKhgYuWp2AxFcEM7z-Oit_ubhohZ1rDUYlmhf4bq8jaYJjdu5KROYvbDznSHpBD-BictWFsLpispWa-i3NRCVuivqOmsBJvMt4Jw87iDU', 'a', '32.1630682', '76.0894895', '', 'http://phpstack-102119-1240555.cloudwaysapps.com/app-assets/images/f1.png', 1, '8341', '16:08:55', '2020-07-29 09:24:40', '2020-07-29 09:24:40'),
(309, 'Alton', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins77842.jpg', '+18327632105', 'alton.shelton@iiishotshot.net', ' ', ' ', '2019', ' ', '1/2\"', '8-6.5', 'Electric', 'NO', 'PJ', 'Drum', '7000', 'Dexter', '', '', 'daUqNG66Rw6dFIRR95Bdvr:APA91bE9zs1P21ZGU_H7l8yh6V2BeMk8H4UKHHJvB55DnM0LfY_2E2AQd7Fp7mCAdrcaVokJq6ijEj4949C5TsUI3N85LYQ1mdZrcMm_niubqF7tNPA2OrqCZAFbaC4OF9oNNTkg_amB', '1', '-95.4676562', '29.7878185', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/ad_assects/map_icon2.png', 1, '3415', '11:02:03', '2020-08-03 13:06:40', '2020-08-03 13:06:40'),
(313, '', '', '+918264271287', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'fSYhC56jT2iTrVeSggp7R5:APA91bETUvjmQLGT7gF6LzEfq4tLxpo7Ko3kdNndJuw84i8zaUT5l1aw_BZ9cflc8DJ0RIOtAK-AT2wJn9B5wS93i5G1cBtQq2wUg6Ver1GC9KAqTm9-Z_SObKXgOOlOy8wJTQIxbW2p', '1', '32.1502959', '76.1024569', '', '', 1, '2005', '19:59:11', '2020-08-24 14:24:10', '2020-08-24 14:24:10'),
(314, '', '', '+18219184307', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a', 'i', '', '', '', '', 1, '', '17:15:01', '2020-09-02 08:14:24', '2020-09-02 08:14:24'),
(315, 'Fgh', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins74887.jpg', '+917814247800', 'asp@gmail.com', ' ', ' ', '2020', ' ', '5/8\"', '8-6.5', 'NA', '', 'bdhdhdhd', '', '10000GD', 'Dexter', '', '', '', '1', '', '', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/ad_assects/map_icon4.png', 1, '', '11:34:32', '2020-09-03 06:02:16', '2020-09-03 06:02:16'),
(316, '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins69963.jpg', '+3557814789835', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cozkCer0TqizElgc_RqdH5:APA91bE7OcQqb8vOwfQL93G6H1u3BSLfKNlx4zxn8hI5WiAOXyS85nk8Sjjc6padPQaVP39fUm1d1PcecR8Juf-EX-iLmIQJZnh-p28IRBIMJrhh58tI3nW1d85scsqS2bZYJT174oTw', '1', '29.1546043', '75.4385879', '', '', 1, '3232', '12:47:08', '2020-09-04 07:16:08', '2020-09-04 07:16:08'),
(317, '', '', '+12143948499', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'f2Fp1pDhTgy_aF0fC1QHfn:APA91bERY32o093iSzlW3PLQfwJQdVJpReZcXGl1G6JRiTjsvYXytnLgHz6I1KdJWSBI1B7ZoOFq2KJmkyVwjoL78gPxPg6tlisCibQupf8RpumJW_u8tGHS_sSJXmSJ_Hrd7juiDYne', '1', '', '', '', '', 1, '2388', '04:13:21', '2020-09-23 22:41:23', '2020-09-23 22:41:23'),
(318, 'Protolabz', '', '+919845263987', 'proto@gmail.com', ' ', ' ', '1997', ' ', 'NA', 'NA', 'NA', 'NA', '', 'NA', '12000', 'Rockwell', '', '', 'eWcwk1XkSj-R8zFDt_J577:APA91bHf-KK8iXqIH71oCJFM3eZzANBzXh7AfWwTy4qQLx0j-yMF7sWov9TMumfnZoijyS0ZqxwJ9_jescm3EMwOjeDg9-KnVTMepilYf1S2Fc9nkuWLfBl3bvlGRCpiVXTfgs0ghcUM', '1', '31.3900124', '75.4031309', '', 'http://phpstack-102119-1169738.cloudwaysapps.com/ad_assects/map_icon1.png', 1, '7828', '15:20:48', '2020-10-05 10:10:58', '2020-10-05 10:10:58'),
(319, '', '', '+1123456789', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'dHyzrAgsT263ySjtgS0Ap2:APA91bHlpWBqB4pa0Bz8M89lVJcmv05X0pQEderQDxNFBEpMt0xpGDJrMIovpCzGsT7-6mSj72Ed80lXGoKiU5fi-bTY7CmGY3PcTB2DKTOSBVst3_Nfi4IhAKEAcCGvtOTJFlV3zmVR', '1', '37.4219474', '-122.0839984', '', '', 1, '7735', '02:06:41', '2020-11-20 20:35:13', '2020-11-20 20:35:13'),
(320, '', '', '+919997618642', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'dkJbPiq5SpCvJCrWy9pocf:APA91bHqbXWV-uMpbNzcQj-LJcYpB-51Cy412NSezni5Yp8c7EF5BSp6tNJBOSIbgTA9ekgOXz9NEcdss6Z30JqOozEwkFvVZeLH1WLbIZStpexAlGttP2BLtJvFp0VyLjdaMdlV2ai5', '1', '', '', '', '', 1, '6276', '17:15:27', '2020-11-24 11:44:27', '2020-11-24 11:44:27'),
(321, '', '', '+918077142185', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '29.9553956', '78.0750089', '', '', 1, '1983', '12:36:34', '2020-12-03 07:05:34', '2020-12-03 07:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `driver_membership`
--

CREATE TABLE `driver_membership` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `membership_id` int(11) NOT NULL,
  `end_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver_membership`
--

INSERT INTO `driver_membership` (`id`, `driver_id`, `membership_id`, `end_date`, `status`, `created_on`, `update_at`) VALUES
(1, 1, 4, '2020-04-05', 1, '2020-04-06 07:09:43', '2020-04-06'),
(2, 10, 10, '2020-04-06', 1, '2020-04-06 07:26:29', '2020-04-06'),
(4, 187, 1, '2021-09-06', 1, '2020-04-06 09:47:11', '2020-05-22'),
(5, 41, 1, '2020-05-13', 1, '2020-04-13 07:35:06', '2020-04-13'),
(6, 285, 1, '2020-07-04', 1, '2020-06-04 10:09:34', '2020-06-04'),
(7, 286, 1, '2020-07-04', 1, '2020-06-04 10:17:43', '2020-06-04'),
(8, 287, 3, '2020-12-04', 1, '2020-06-04 10:37:45', '2020-06-04'),
(9, 290, 2, '2020-09-04', 1, '2020-06-04 13:10:28', '2020-06-04'),
(10, 40, 1, '2021-02-01', 1, '2020-06-04 13:28:32', '2020-09-15'),
(11, 3, 1, '2020-08-17', 1, '2020-07-17 11:55:09', '2020-07-17'),
(12, 177, 1, '2020-08-17', 1, '2020-07-17 12:02:55', '2020-07-17'),
(13, 259, 1, '2020-09-17', 1, '2020-07-17 16:55:51', '2020-07-17'),
(14, 53, 1, '2020-08-27', 1, '2020-07-27 13:27:43', '2020-07-27'),
(15, 262, 4, '2021-07-30', 1, '2020-07-30 10:58:03', '2020-07-30'),
(16, 265, 4, '2021-07-30', 1, '2020-07-30 12:20:03', '2020-07-30'),
(17, 225, 4, '2021-07-30', 1, '2020-07-30 12:28:58', '2020-07-30'),
(18, 309, 4, '2021-09-18', 1, '2020-08-03 13:08:07', '2020-09-18');

-- --------------------------------------------------------

--
-- Table structure for table `driver_posts`
--

CREATE TABLE `driver_posts` (
  `id` int(11) NOT NULL,
  `driver_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver_posts`
--

INSERT INTO `driver_posts` (`id`, `driver_id`, `title`, `location`, `status`, `created_at`) VALUES
(3, '225', 'hello', '', '1', '2020-07-31 06:38:58'),
(13, '40', 'comments testing', 'Chathewala', '1', '2020-07-31 09:02:22'),
(30, '259', 'test', '', '1', '2020-08-06 07:28:58'),
(31, '265', 'sghsheheveg\n.. ', 'Nohar', '1', '2020-08-22 10:55:58'),
(32, '265', 'bdhdbdhdhr', 'Nohar', '1', '2020-08-24 12:34:28'),
(35, '315', 'helloooooo.... ', 'Mohali Bus Stand', '1', '2020-09-03 12:38:40'),
(36, '315', 'hdhdhd', '', '1', '2020-09-04 04:44:22'),
(37, '315', 'excellent services.... ', '', '1', '2020-09-04 05:00:27'),
(38, '315', 'serviced is very very effective.. ', '', '1', '2020-09-04 05:01:00'),
(39, '315', 'Good performance... ', '', '1', '2020-09-04 05:01:34'),
(40, '315', 'very effective... xbjxjdbdbd', '', '1', '2020-09-04 05:02:02'),
(41, '315', 'effective services..', '', '1', '2020-09-04 05:46:37'),
(42, '315', 'xhxhxhsh', 'Sahibzada Ajit Singh Nagar', '1', '2020-09-04 05:47:12'),
(43, '316', 'heh... ', '', '1', '2020-09-04 10:29:09'),
(44, '314', 'cghhjgf', '', '1', '2020-09-07 18:06:56'),
(45, '314', 'my test', '', '1', '2020-09-08 18:02:27'),
(46, '259', '', '\"Kapurthala\"', '1', '2020-10-01 10:44:59'),
(47, '259', 'Today is Thursday', '\"Add Location\"', '1', '2020-10-01 10:48:12'),
(48, '259', 'I m title', '\"kapurthala\"', '1', '2020-10-01 11:55:19'),
(49, '259', '', '\"\"', '1', '2020-10-01 11:58:45'),
(50, '259', '', '\"\"', '1', '2020-10-01 12:01:14'),
(51, '259', '', '\"\"', '1', '2020-10-01 12:04:00'),
(58, '259', 'Testingggg', '', '1', '2020-10-01 13:49:03'),
(59, '259', '', '\"Kapurthala\"', '1', '2020-10-01 13:55:12'),
(60, '309', 'hah', '\"Bathinda\"', '1', '2020-10-14 04:59:57'),
(61, '319', 'you\n', '', '1', '2020-11-20 20:49:59');

-- --------------------------------------------------------

--
-- Table structure for table `driver_posts_file`
--

CREATE TABLE `driver_posts_file` (
  `id` int(11) NOT NULL,
  `driver_post_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver_posts_file`
--

INSERT INTO `driver_posts_file` (`id`, `driver_post_id`, `file_path`, `status`, `created_on`) VALUES
(4, 3, 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/P69638.jpg', 1, '2020-07-31 06:38:58'),
(5, 3, 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/P13034.jpg', 1, '2020-07-31 06:38:58'),
(6, 3, 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/P57992.jpg', 1, '2020-07-31 06:38:58'),
(17, 13, 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/P89547.jpg', 1, '2020-07-31 09:02:22'),
(24, 30, 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/P57309.jpg', 1, '2020-08-06 07:28:58'),
(25, 30, 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/P71919.jpg', 1, '2020-08-06 07:28:58'),
(26, 31, 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/P72789.jpg', 1, '2020-08-22 10:55:58'),
(27, 32, 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/P39432.jpg', 1, '2020-08-24 12:34:28'),
(30, 42, 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/P70726.jpg', 1, '2020-09-04 05:47:12'),
(31, 44, 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/P50217.jpg', 1, '2020-09-07 18:06:56'),
(32, 48, 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/P24373.png', 1, '2020-10-01 11:55:19'),
(33, 49, 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/P71512.jpg', 1, '2020-10-01 11:58:45'),
(34, 50, 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/P69709.jpg', 1, '2020-10-01 12:01:14'),
(35, 51, 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/P10494.jpg', 1, '2020-10-01 12:04:00'),
(36, 60, 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/P68049.jpg', 1, '2020-10-14 04:59:57'),
(37, 61, 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/P75898.jpg', 1, '2020-11-20 20:49:59');

-- --------------------------------------------------------

--
-- Table structure for table `fav_dealer`
--

CREATE TABLE `fav_dealer` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `dealer_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=fav,2=unfav',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fav_dealer`
--

INSERT INTO `fav_dealer` (`id`, `driver_id`, `dealer_id`, `status`, `created_on`) VALUES
(1, 50, 1, 2, '2020-03-04 10:17:25'),
(2, 41, 4, 1, '2020-03-05 04:55:41'),
(5, 42, 4, 2, '2020-03-05 05:30:01'),
(6, 42, 6, 1, '2020-03-05 05:30:35'),
(7, 41, 6, 1, '2020-03-05 05:31:29'),
(8, 61, 6, 1, '2020-03-05 05:55:05'),
(9, 173, 121, 2, '2020-03-16 12:37:37'),
(10, 174, 6, 1, '2020-04-01 10:34:33'),
(11, 187, 6, 2, '2020-04-01 11:10:43'),
(12, 187, 167, 1, '2020-04-15 13:05:59'),
(13, 187, 170, 2, '2020-04-15 13:06:50'),
(14, 187, 164, 1, '2020-04-16 04:43:38'),
(15, 187, 166, 2, '2020-04-16 05:00:28'),
(16, 187, 304, 1, '2020-04-16 12:45:23'),
(17, 177, 295, 1, '2020-05-18 13:01:08'),
(18, 177, 176, 1, '2020-05-18 16:10:23'),
(19, 177, 247, 1, '2020-05-29 12:04:47'),
(20, 272, 207, 1, '2020-05-29 12:08:07'),
(21, 272, 226, 1, '2020-05-29 12:31:28'),
(22, 284, 295, 1, '2020-06-03 07:13:47'),
(23, 284, 225, 1, '2020-06-03 07:14:42'),
(24, 53, 270, 1, '2020-06-04 13:01:54'),
(25, 40, 295, 2, '2020-07-10 13:52:28'),
(26, 177, 371, 1, '2020-07-29 10:02:38'),
(27, 225, 6, 1, '2020-07-31 05:00:21'),
(28, 259, 346, 2, '2020-07-31 05:16:10'),
(29, 259, 372, 1, '2020-07-31 05:48:04'),
(30, 259, 371, 1, '2020-07-31 05:48:16'),
(31, 265, 310, 1, '2020-07-31 12:11:24'),
(32, 265, 171, 1, '2020-08-21 11:44:42'),
(33, 265, 352, 1, '2020-08-21 11:49:59'),
(34, 265, 362, 2, '2020-08-22 03:49:40'),
(35, 265, 244, 1, '2020-08-22 10:41:31'),
(36, 265, 206, 1, '2020-08-22 11:16:18'),
(37, 265, 208, 1, '2020-08-22 11:16:27'),
(38, 265, 177, 1, '2020-08-22 11:16:33'),
(39, 265, 258, 1, '2020-08-22 11:16:41'),
(40, 265, 249, 1, '2020-08-22 11:16:47'),
(41, 265, 217, 1, '2020-08-22 11:17:03'),
(42, 265, 218, 1, '2020-08-22 11:17:16'),
(43, 265, 372, 1, '2020-08-22 12:28:14'),
(44, 265, 399, 1, '2020-08-22 12:28:20'),
(45, 265, 351, 1, '2020-08-22 12:28:28'),
(46, 265, 350, 1, '2020-08-22 12:28:33'),
(47, 265, 237, 1, '2020-08-22 12:28:39'),
(48, 265, 247, 1, '2020-08-22 12:28:44'),
(49, 265, 6, 1, '2020-08-24 10:27:58'),
(50, 265, 346, 1, '2020-08-24 10:44:18'),
(51, 265, 343, 1, '2020-08-24 10:50:12'),
(52, 265, 256, 1, '2020-08-24 10:51:30'),
(53, 265, 371, 1, '2020-08-24 10:52:13'),
(54, 265, 354, 1, '2020-08-24 10:52:20'),
(55, 265, 226, 1, '2020-08-24 10:52:28'),
(56, 265, 400, 1, '2020-08-24 11:29:20'),
(57, 265, 396, 1, '2020-08-24 11:29:57'),
(58, 265, 361, 1, '2020-08-24 11:31:01'),
(59, 265, 172, 1, '2020-08-24 11:33:17'),
(60, 265, 370, 1, '2020-08-25 05:39:57'),
(61, 265, 368, 1, '2020-08-25 05:40:52'),
(62, 265, 367, 1, '2020-08-25 05:42:08'),
(63, 265, 363, 1, '2020-08-25 05:42:51'),
(64, 265, 267, 1, '2020-08-25 06:16:03'),
(65, 265, 403, 1, '2020-08-25 06:18:27'),
(66, 265, 402, 1, '2020-08-25 06:22:07'),
(67, 315, 205, 2, '2020-09-03 07:47:27'),
(68, 315, 252, 2, '2020-09-03 07:48:35'),
(69, 315, 245, 1, '2020-09-03 07:48:50'),
(70, 315, 253, 1, '2020-09-03 07:48:57'),
(71, 315, 212, 1, '2020-09-03 07:49:03'),
(72, 315, 238, 2, '2020-09-03 07:49:12'),
(73, 315, 202, 2, '2020-09-03 07:49:21'),
(74, 315, 292, 2, '2020-09-03 07:49:28'),
(75, 315, 293, 1, '2020-09-03 07:49:34'),
(76, 315, 290, 1, '2020-09-03 07:49:49'),
(77, 315, 286, 1, '2020-09-03 08:05:24'),
(78, 315, 225, 1, '2020-09-03 09:30:20'),
(79, 315, 291, 2, '2020-09-03 09:31:49'),
(80, 315, 295, 1, '2020-09-03 09:38:49'),
(81, 315, 254, 2, '2020-09-03 10:02:29'),
(82, 315, 244, 2, '2020-09-03 10:19:57'),
(83, 315, 255, 1, '2020-09-04 03:51:51'),
(84, 315, 237, 1, '2020-09-04 05:35:33'),
(85, 315, 256, 2, '2020-09-04 05:36:52'),
(86, 315, 243, 1, '2020-09-04 05:41:53'),
(87, 315, 226, 1, '2020-09-04 05:53:28'),
(88, 317, 233, 1, '2020-09-23 22:45:38'),
(89, 319, 252, 1, '2020-11-20 21:02:58'),
(90, 321, 215, 1, '2020-12-03 07:12:59');

-- --------------------------------------------------------

--
-- Table structure for table `free_dealer`
--

CREATE TABLE `free_dealer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dealer_lat` varchar(100) NOT NULL,
  `dealer_long` varchar(100) NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_dealer`
--

INSERT INTO `free_dealer` (`id`, `name`, `contact`, `email`, `dealer_lat`, `dealer_long`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Tropic Trailer', '480-545-5541', '', '26.672192', '-81.801122', '9451 Workmen Way,Ft. Myers', '2020-04-04 06:01:43', '2020-04-04 06:01:43'),
(3, 'Triple Crown Trailers', '480-545-5543', '', '29.145506', '-82.113565', '4251 South Pine Ave.,Ocala', '2020-04-04 06:01:43', '2020-04-04 06:01:43'),
(4, 'Davids Trailers', '480-545-5544', '', '28.5523', '-81.432749', '4300 W. Colonial Dr.,Orlando', '2020-04-04 06:01:43', '2020-04-04 06:01:43'),
(5, 'Rentz Trailer Sales', '480-545-5545', '', '28.343856', '-82.697658', '12826 US 19,Hudson', '2020-04-04 06:01:43', '2020-04-04 06:01:43'),
(6, 'Champion Trailers', '480-545-5546', '', '27.952971', '-82.383241', '6300 E. Alamo Drive,Tampa', '2020-04-04 06:01:43', '2020-04-04 06:01:43'),
(7, 'Discount Trailer', '480-545-5547', '', '27.015898', '-82.14233', '18480 Paulson Dr.,Port Charlotte', '2020-04-04 06:01:43', '2020-04-04 06:01:43'),
(8, 'Southern Wholesale Trailers', '480-545-5548', '', '28.047224', '-81.901474', '3025 US Hwy 92 E,Lakeland', '2020-04-04 06:01:43', '2020-04-04 06:01:43'),
(9, 'Atlanta Safety Brake Service', '480-545-5549', '', '34.248524', '-84.856588', '5762 Sydney Ann Ct,Mableton', '2020-04-04 06:01:43', '2020-04-04 06:01:43'),
(10, 'Greer Truck and Trailer Parts,Inc', '480-545-5550', '', '42.63524', '-113.78368', '128 S. 600 W.,Paul', '2020-04-04 06:01:43', '2020-04-04 06:01:43'),
(11, 'Spectrac Parts & Services', '480-545-5533', '', '33.378345', '-111.822388', '405 E Baseline Rd,Gilbert', '2020-04-04 06:03:35', '2020-04-04 06:03:35'),
(12, 'Liberty Trailer Company', '480-545-5534', '', '34.773895', '-92.152355', '10120 Hwy 70,North Little Rock', '2020-04-04 06:03:35', '2020-04-04 06:03:35'),
(13, 'Trailer Factory Outlet', '480-545-5535', '', '33.929002', '-116.962057', '1365 E. 6th Street,Beaumont', '2020-04-04 06:03:35', '2020-04-04 06:03:35'),
(14, 'Tru-Bilt Trailers', '480-545-5536', '', '40.378513', '-104.69252', '3602 Denver St.,Evans', '2020-04-04 06:03:35', '2020-04-04 06:03:35'),
(15, '4 Corners Trailers', '480-545-5537', '', '37.21875', '-107.63874', '39894 US Highway 160,Bayfield', '2020-04-04 06:27:39', '2020-04-04 06:27:39'),
(16, 'Iron Bear Trailer', '480-545-5538', '', '39.79547', '-104.97233', '1291 E 54th Ave,Denver', '2020-04-04 06:27:39', '2020-04-04 06:27:39'),
(17, 'Rifle Truck & Trailer', '480-545-5539', '', '39.89446', '-108.32925', '1725 Airport Rd,Rifle', '2020-04-04 06:27:39', '2020-04-04 06:27:39'),
(18, 'Load Runner Trailers', '480-545-5540', '', '26.032095', '-80.411898', '19681 SW 69th Pl,Fort Lauderdale', '2020-04-04 06:27:39', '2020-04-04 06:27:39'),
(20, 'Tropic Trailer', '480-545-5542', '', '26.672192', '-81.801122', '2163 Post Oak Ln.,Marianna', '2020-04-04 06:27:39', '2020-04-04 06:27:39'),
(29, 'Riverside Boot & Saddle', '480-545-5551', '', '43.19704', '-112.44556', '742 W. Hwy. 39,Blackfoot', '2020-04-04 07:53:17', '2020-04-04 07:53:17'),
(30, 'Riverside Boot & Saddle', '480-545-5552', '', '42.69653', '-114.522385', '322 W. Yakima,Jerome', '2020-04-04 07:53:17', '2020-04-04 07:53:17'),
(31, 'Riverside Boot & Saddle', '480-545-5553', '', '43.659415', '-116.671105', '321 N 21st Ave,Caldwell', '2020-04-04 07:53:17', '2020-04-04 07:53:17'),
(32, 'Country Blacksmith Trailers', '480-545-5554', '', '38.32514', '-88.87724', '751 Fairfield Rd,Mt Vernon', '2020-04-04 07:53:17', '2020-04-04 07:53:17'),
(33, 'A&W Trailer', '480-545-5555', '', '41.733888', '-87.963781', '17W411 N. Frontage Rd.,Darien', '2020-04-04 07:53:17', '2020-04-04 07:53:17'),
(34, 'Camper Exchange Inc', '480-545-5556', '', '38.496654', '-89.984784', '1401 S Illinoise St,Belleville', '2020-04-04 07:53:17', '2020-04-04 07:53:17'),
(35, 'I-69 Trailer Center', '480-545-5557', '', '40.831284', '-85.356248', '2 Novae Parkway,Markle', '2020-04-04 07:53:17', '2020-04-04 07:53:17'),
(36, 'Schwartzs Trailer Sales', '480-545-5558', '', '40.048025', '-86.016913', '117 CICERO RD,Noblesville', '2020-04-04 07:53:17', '2020-04-04 07:53:17'),
(37, 'MAYES TRAILER SALES', '480-545-5559', '', '39.56806', '-86.0925', '1101 N U.S. 31,New Whiteland', '2020-04-04 07:53:17', '2020-04-04 07:53:17'),
(38, 'Indiana Trailer Sales', '480-545-5560', '', '40.822055', '-84.934584', '740 S 11th St,Decatur', '2020-04-04 07:53:17', '2020-04-04 07:53:17'),
(39, 'Northside Trailer', '480-545-5561', '', '40.041226', '-86.251583', '11985 IN-32,Zionsville', '2020-04-04 09:15:18', '2020-04-04 09:15:18'),
(40, 'US Trailer Center', '480-545-5562', '', '38.212478', '-85.261508', '102 Taylorsville Rd,Shelbyville', '2020-04-04 09:15:18', '2020-04-04 09:15:18'),
(41, 'Gatormade Trailers', '480-545-5563', '', '37.172665', '-84.482911', '1278 Hwy 461,Somerset', '2020-04-04 09:15:18', '2020-04-04 09:15:18'),
(42, 'Auto Safety House', '480-545-5564', '', '33.437716', '-112.11636', '2630 West Buckeye Rd,Phoenix', '2020-04-04 09:15:18', '2020-04-04 09:15:18'),
(43, 'Tucson Trailer Company', '480-545-5565', '', '32.260532', '-110.993698', '1315 W Miracle Mile,Tucson', '2020-04-04 09:15:18', '2020-04-04 09:15:18'),
(44, 'Lewis Trailer Sales', '480-545-5566', '', '30.29816', '-89.72881', '80 Tortoise,Slidell', '2020-04-04 09:15:18', '2020-04-04 09:15:18'),
(45, 'Topps Trailer Sales and Services, Inc', '480-545-5567', '', '32.530863', '-93.670026', '3001 Topps Trail,Bossier City', '2020-04-04 09:15:18', '2020-04-04 09:15:18'),
(46, 'Southern Trailer Works, LLC', '480-545-5568', '', '29.74437', '-90.808968', '225 Old Highway 659,Schriever', '2020-04-04 09:15:18', '2020-04-04 09:15:18'),
(47, 'McClain Trailers, Inc', '480-545-5569', '', '30.489851', '-91.123641', '6800 Airline Hwy,Baton Rouge', '2020-04-04 09:15:18', '2020-04-04 09:15:18'),
(48, 'Trailers of Louisiana', '480-545-5570', '', '29.942404', '-91.769531', '5703 Hwy 90 E,New Iberia', '2020-04-04 09:15:18', '2020-04-04 09:15:18'),
(49, 'Polar Service Centers-Port Allen', '480-545-5571', '', '30.427146', '-91.217923', '3100 Phillips Way,Port Allen', '2020-04-04 10:01:06', '2020-04-04 10:01:06'),
(50, 'Ragin Trailers', '480-545-5572', '', '30.187256', '-91.990799', '2601 SE Evangeline Thruway,Lafayette', '2020-04-04 10:01:06', '2020-04-04 10:01:06'),
(51, 'Tims RV, Inc', '480-545-5573', '', '42.599443', '-72.397941', '15 East Main St,Erving', '2020-04-04 10:01:06', '2020-04-04 10:01:06'),
(52, 'Becks Trailer Store', '480-545-5574', '', '42.9311', '-84.502778', '7607 US 127,ST Johns', '2020-04-04 10:01:06', '2020-04-04 10:01:06'),
(67, 'Gustafson Trailers', '480-545-5575', '', '45.4485', '-93.9985', 'US-10,Clear Lake', '2020-04-04 10:20:12', '2020-04-04 10:20:12'),
(68, 'Lewis Trailer Sales', '480-545-5576', '', '32.140149', '-90.349172', '9780 I-55,Terry', '2020-04-04 10:20:12', '2020-04-04 10:20:12'),
(69, 'Alpha Specialties', '480-545-5577', '', '32.277788', '-90.148111', '1670 Hwy 80 E,Pearl', '2020-04-04 10:20:12', '2020-04-04 10:20:12'),
(70, 'Lewis Trailer Sales', '480-545-5578', '', '30.528495', '-89.10848', '16494 US Hwy 49,Saucier', '2020-04-04 10:20:12', '2020-04-04 10:20:12'),
(71, 'Bonnett Trailer Sales', '480-545-5579', '', '39.761304', '-94.502204', '711 Park Ave,Stewartsville', '2020-04-04 10:20:12', '2020-04-04 10:20:12'),
(72, 'Mouser Steel Supply, Inc', '480-545-5580', '', '37.415812', '-90.06529', 'RR 5 BOX 2495,Patton', '2020-04-04 10:20:12', '2020-04-04 10:20:12'),
(73, 'Country Load Trailers', '480-545-5581', '', '40.85053', '-101.546815', '102 S Denison Avenue,Madrid', '2020-04-04 10:20:12', '2020-04-04 10:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `like_dealer`
--

CREATE TABLE `like_dealer` (
  `id` int(11) NOT NULL,
  `dealer_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=like,2=unlike',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `like_dealer`
--

INSERT INTO `like_dealer` (`id`, `dealer_id`, `driver_id`, `status`, `created_on`) VALUES
(2, 6, 42, 2, '2020-03-05 06:36:37'),
(3, 6, 41, 1, '2020-03-05 07:26:07'),
(4, 6, 61, 1, '2020-03-05 09:05:46'),
(5, 4, 61, 1, '2020-03-05 09:56:16'),
(6, 2, 54, 2, '2020-03-05 13:04:50'),
(7, 2, 41, 1, '2020-03-11 12:19:49'),
(8, 2, 173, 2, '2020-03-12 12:04:48'),
(9, 124, 173, 2, '2020-03-16 12:38:00'),
(10, 123, 173, 2, '2020-03-17 03:45:45'),
(11, 6, 174, 1, '2020-03-27 11:30:10'),
(12, 6, 187, 2, '2020-04-01 11:50:06'),
(13, 164, 187, 1, '2020-04-07 07:18:59'),
(14, 167, 187, 1, '2020-04-15 13:05:46'),
(15, 0, 0, 2, '2020-04-16 04:57:46'),
(16, 304, 187, 1, '2020-04-16 05:02:00'),
(17, 170, 187, 1, '2020-04-16 05:03:43'),
(18, 171, 177, 2, '2020-05-18 12:59:46'),
(19, 176, 177, 1, '2020-05-18 16:10:26'),
(20, 247, 177, 1, '2020-05-29 12:04:35'),
(21, 295, 284, 1, '2020-06-03 07:13:27'),
(22, 371, 177, 1, '2020-07-29 10:02:36'),
(23, 6, 225, 2, '2020-07-31 05:01:14'),
(24, 346, 259, 1, '2020-07-31 05:15:56'),
(25, 400, 265, 1, '2020-08-21 10:01:01'),
(26, 171, 265, 2, '2020-08-21 11:46:01'),
(27, 352, 265, 2, '2020-08-21 11:49:44'),
(28, 6, 265, 2, '2020-08-21 12:06:56'),
(29, 362, 265, 2, '2020-08-22 03:49:07'),
(30, 226, 265, 1, '2020-08-22 04:26:27'),
(31, 231, 265, 2, '2020-08-22 10:05:03'),
(32, 244, 265, 1, '2020-08-22 10:41:08'),
(33, 350, 265, 2, '2020-08-22 12:14:21'),
(34, 225, 265, 1, '2020-08-24 10:51:09'),
(35, 256, 265, 1, '2020-08-24 10:51:23'),
(36, 242, 265, 2, '2020-08-24 11:28:10'),
(37, 172, 265, 1, '2020-08-24 11:28:33'),
(38, 396, 265, 1, '2020-08-24 11:29:44'),
(39, 391, 265, 1, '2020-08-24 11:30:12'),
(40, 361, 265, 1, '2020-08-24 11:30:30'),
(41, 351, 265, 1, '2020-08-24 11:31:50'),
(42, 227, 265, 1, '2020-08-24 11:32:40'),
(43, 370, 265, 2, '2020-08-24 12:37:05'),
(44, 399, 265, 2, '2020-08-24 12:37:16'),
(45, 246, 265, 1, '2020-08-24 12:37:53'),
(46, 368, 265, 1, '2020-08-25 05:40:55'),
(47, 367, 265, 1, '2020-08-25 05:42:01'),
(48, 363, 265, 2, '2020-08-25 05:42:40'),
(49, 267, 265, 1, '2020-08-25 06:15:56'),
(50, 205, 315, 2, '2020-09-03 07:47:48'),
(51, 252, 315, 1, '2020-09-03 07:48:21'),
(52, 225, 315, 1, '2020-09-03 09:30:13'),
(53, 295, 315, 1, '2020-09-03 09:39:35'),
(54, 190, 315, 2, '2020-09-03 10:04:20'),
(55, 237, 315, 1, '2020-09-04 05:35:36'),
(56, 256, 315, 1, '2020-09-04 05:36:54'),
(57, 226, 315, 1, '2020-09-04 05:53:30'),
(58, 233, 317, 1, '2020-09-23 22:45:30'),
(59, 252, 319, 1, '2020-11-20 21:02:55');

-- --------------------------------------------------------

--
-- Table structure for table `like_post`
--

CREATE TABLE `like_post` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=like,2=unlike',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `like_post`
--

INSERT INTO `like_post` (`id`, `post_id`, `driver_id`, `status`, `created_on`) VALUES
(1, 1, 259, 1, '2020-07-31 05:14:26'),
(2, 3, 225, 1, '2020-07-31 06:39:02'),
(3, 15, 259, 1, '2020-07-31 10:28:57'),
(4, 29, 259, 1, '2020-07-31 11:28:52'),
(5, 29, 265, 0, '2020-07-31 12:25:35'),
(6, 19, 265, 1, '2020-07-31 12:25:39'),
(7, 16, 265, 1, '2020-07-31 12:25:42'),
(8, 13, 309, 1, '2020-08-04 12:47:47'),
(9, 30, 259, 1, '2020-08-06 07:29:04'),
(10, 1, 177, 0, '2020-08-06 09:41:36'),
(11, 13, 259, 259, '2020-08-06 09:42:59'),
(12, 13, 174, 2, '2020-08-08 10:24:02'),
(13, 19, 40, 2, '2020-08-10 03:29:14'),
(14, 13, 265, 2, '2020-08-21 12:09:48'),
(15, 3, 265, 2, '2020-08-22 04:28:20'),
(16, 13, 40, 0, '2020-08-22 10:56:09'),
(17, 31, 40, 1, '2020-08-22 10:57:03'),
(18, 31, 265, 2, '2020-08-22 10:57:36'),
(19, 32, 265, 1, '2020-08-24 12:34:40'),
(20, 33, 315, 2, '2020-09-03 08:57:44'),
(21, 34, 315, 1, '2020-09-03 12:07:13'),
(22, 35, 315, 1, '2020-09-03 12:38:47'),
(23, 36, 315, 1, '2020-09-04 04:44:26'),
(24, 37, 315, 1, '2020-09-04 05:00:32'),
(25, 38, 315, 1, '2020-09-04 05:01:05'),
(26, 39, 315, 1, '2020-09-04 05:01:37'),
(27, 40, 315, 1, '2020-09-04 05:02:08'),
(28, 41, 315, 1, '2020-09-04 05:46:43'),
(29, 42, 315, 1, '2020-09-04 05:47:18'),
(30, 41, 314, 2, '2020-09-07 06:10:11'),
(31, 42, 314, 1, '2020-09-07 11:40:41'),
(32, 40, 314, 1, '2020-09-07 11:40:45'),
(33, 39, 314, 1, '2020-09-07 11:40:47'),
(34, 32, 314, 1, '2020-09-07 11:40:51'),
(35, 31, 314, 1, '2020-09-07 11:40:53'),
(36, 43, 314, 1, '2020-09-07 12:56:47'),
(37, 13, 314, 2, '2020-09-07 12:58:19'),
(38, 3, 314, 2, '2020-09-07 12:58:27'),
(39, 35, 314, 2, '2020-09-07 13:11:40'),
(40, 30, 314, 2, '2020-09-07 16:50:17'),
(41, 44, 314, 2, '2020-09-08 17:50:35'),
(42, 45, 314, 2, '2020-09-08 18:03:06'),
(43, 45, 259, 2, '2020-09-29 10:44:18'),
(44, 44, 259, 1, '2020-09-30 04:28:06'),
(45, 31, 259, 0, '2020-09-30 04:44:47'),
(46, 43, 259, 1, '2020-09-30 07:04:53'),
(47, 59, 318, 2, '2020-10-09 09:52:20'),
(48, 60, 309, 1, '2020-10-14 05:00:01'),
(49, 61, 321, 1, '2020-12-03 07:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `type`, `price`, `status`, `created_on`) VALUES
(1, '1 Month', '9.99', 1, '2020-07-28 08:51:41'),
(2, '3 Month', '652', 0, '2020-07-28 08:54:31'),
(3, '6 Month', '5252', 0, '2020-07-28 08:54:43'),
(4, '12 Month', '99.99', 1, '2020-07-28 09:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `to_dealer` int(11) NOT NULL,
  `to_driver` int(11) NOT NULL,
  `noti_message` text NOT NULL,
  `noti_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=Un-Read, 1=Read',
  `post_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `to_dealer`, `to_driver`, `noti_message`, `noti_status`, `post_id`, `created_at`, `updated_at`) VALUES
(53, 0, 310, 'the admin testing', 0, 0, '2020-08-11 05:37:58', '2020-08-11 05:37:58'),
(55, 0, 308, 'the admin testing', 0, 0, '2020-08-11 05:37:58', '2020-08-11 05:37:58'),
(56, 0, 306, 'the admin testing', 0, 0, '2020-08-11 05:37:58', '2020-08-11 05:37:58'),
(57, 0, 305, 'the admin testing', 0, 0, '2020-08-11 05:37:59', '2020-08-11 05:37:59'),
(58, 0, 302, 'the admin testing', 0, 0, '2020-08-11 05:37:59', '2020-08-11 05:37:59'),
(59, 0, 300, 'the admin testing', 0, 0, '2020-08-11 05:37:59', '2020-08-11 05:37:59'),
(60, 0, 299, 'the admin testing', 0, 0, '2020-08-11 05:37:59', '2020-08-11 05:37:59'),
(61, 0, 297, 'the admin testing', 0, 0, '2020-08-11 05:37:59', '2020-08-11 05:37:59'),
(62, 0, 296, 'the admin testing', 0, 0, '2020-08-11 05:37:59', '2020-08-11 05:37:59'),
(64, 0, 262, 'the admin testing', 0, 0, '2020-08-11 05:38:00', '2020-08-11 05:38:00'),
(66, 0, 225, 'the admin testing', 0, 0, '2020-08-11 05:38:00', '2020-08-11 05:38:00'),
(69, 318, 0, 'the admin testing', 0, 0, '2020-08-11 05:38:50', '2020-08-11 05:38:50'),
(70, 346, 0, 'the admin testing', 0, 0, '2020-08-11 05:38:51', '2020-08-11 05:38:51'),
(72, 383, 0, 'the admin testing', 0, 0, '2020-08-11 05:38:51', '2020-08-11 05:38:51'),
(74, 318, 0, 'from admin', 0, 0, '2020-08-11 05:52:29', '2020-08-11 05:52:29'),
(75, 346, 0, 'from admin', 0, 0, '2020-08-11 05:52:30', '2020-08-11 05:52:30'),
(77, 383, 0, 'from admin', 0, 0, '2020-08-11 05:52:30', '2020-08-11 05:52:30'),
(82, 0, 310, 'the admin testing', 0, 0, '2020-08-11 12:28:58', '2020-08-11 12:28:58'),
(84, 0, 308, 'the admin testing', 0, 0, '2020-08-11 12:28:59', '2020-08-11 12:28:59'),
(85, 0, 306, 'the admin testing', 0, 0, '2020-08-11 12:28:59', '2020-08-11 12:28:59'),
(86, 0, 305, 'the admin testing', 0, 0, '2020-08-11 12:28:59', '2020-08-11 12:28:59'),
(87, 0, 302, 'the admin testing', 0, 0, '2020-08-11 12:28:59', '2020-08-11 12:28:59'),
(88, 0, 300, 'the admin testing', 0, 0, '2020-08-11 12:29:00', '2020-08-11 12:29:00'),
(89, 0, 299, 'the admin testing', 0, 0, '2020-08-11 12:29:00', '2020-08-11 12:29:00'),
(90, 0, 297, 'the admin testing', 0, 0, '2020-08-11 12:29:00', '2020-08-11 12:29:00'),
(91, 0, 296, 'the admin testing', 0, 0, '2020-08-11 12:29:00', '2020-08-11 12:29:00'),
(93, 0, 262, 'the admin testing', 0, 0, '2020-08-11 12:29:01', '2020-08-11 12:29:01'),
(95, 0, 225, 'the admin testing', 0, 0, '2020-08-11 12:29:01', '2020-08-11 12:29:01'),
(97, 0, 310, 'zdfsdfsd', 0, 0, '2020-08-11 12:29:25', '2020-08-11 12:29:25'),
(99, 0, 308, 'zdfsdfsd', 0, 0, '2020-08-11 12:29:26', '2020-08-11 12:29:26'),
(100, 0, 306, 'zdfsdfsd', 0, 0, '2020-08-11 12:29:26', '2020-08-11 12:29:26'),
(101, 0, 305, 'zdfsdfsd', 0, 0, '2020-08-11 12:29:26', '2020-08-11 12:29:26'),
(102, 0, 302, 'zdfsdfsd', 0, 0, '2020-08-11 12:29:26', '2020-08-11 12:29:26'),
(103, 0, 300, 'zdfsdfsd', 0, 0, '2020-08-11 12:29:26', '2020-08-11 12:29:26'),
(104, 0, 299, 'zdfsdfsd', 0, 0, '2020-08-11 12:29:26', '2020-08-11 12:29:26'),
(105, 0, 297, 'zdfsdfsd', 0, 0, '2020-08-11 12:29:27', '2020-08-11 12:29:27'),
(106, 0, 296, 'zdfsdfsd', 0, 0, '2020-08-11 12:29:27', '2020-08-11 12:29:27'),
(108, 0, 262, 'zdfsdfsd', 0, 0, '2020-08-11 12:29:27', '2020-08-11 12:29:27'),
(110, 0, 225, 'zdfsdfsd', 0, 0, '2020-08-11 12:29:27', '2020-08-11 12:29:27'),
(112, 0, 310, 'the admin testing', 0, 0, '2020-08-11 12:31:08', '2020-08-11 12:31:08'),
(114, 0, 308, 'the admin testing', 0, 0, '2020-08-11 12:31:08', '2020-08-11 12:31:08'),
(115, 0, 306, 'the admin testing', 0, 0, '2020-08-11 12:31:08', '2020-08-11 12:31:08'),
(116, 0, 305, 'the admin testing', 0, 0, '2020-08-11 12:31:08', '2020-08-11 12:31:08'),
(117, 0, 302, 'the admin testing', 0, 0, '2020-08-11 12:31:08', '2020-08-11 12:31:08'),
(118, 0, 300, 'the admin testing', 0, 0, '2020-08-11 12:31:09', '2020-08-11 12:31:09'),
(119, 0, 299, 'the admin testing', 0, 0, '2020-08-11 12:31:09', '2020-08-11 12:31:09'),
(120, 0, 297, 'the admin testing', 0, 0, '2020-08-11 12:31:09', '2020-08-11 12:31:09'),
(121, 0, 296, 'the admin testing', 0, 0, '2020-08-11 12:31:09', '2020-08-11 12:31:09'),
(123, 0, 262, 'the admin testing', 0, 0, '2020-08-11 12:31:09', '2020-08-11 12:31:09'),
(125, 0, 225, 'the admin testing', 0, 0, '2020-08-11 12:31:09', '2020-08-11 12:31:09'),
(127, 0, 310, 'New Notifications testing 123', 0, 0, '2020-08-11 12:31:24', '2020-08-11 12:31:24'),
(129, 0, 308, 'New Notifications testing 123', 0, 0, '2020-08-11 12:31:25', '2020-08-11 12:31:25'),
(130, 0, 306, 'New Notifications testing 123', 0, 0, '2020-08-11 12:31:25', '2020-08-11 12:31:25'),
(131, 0, 305, 'New Notifications testing 123', 0, 0, '2020-08-11 12:31:25', '2020-08-11 12:31:25'),
(132, 0, 302, 'New Notifications testing 123', 0, 0, '2020-08-11 12:31:25', '2020-08-11 12:31:25'),
(133, 0, 300, 'New Notifications testing 123', 0, 0, '2020-08-11 12:31:25', '2020-08-11 12:31:25'),
(134, 0, 299, 'New Notifications testing 123', 0, 0, '2020-08-11 12:31:25', '2020-08-11 12:31:25'),
(135, 0, 297, 'New Notifications testing 123', 0, 0, '2020-08-11 12:31:25', '2020-08-11 12:31:25'),
(136, 0, 296, 'New Notifications testing 123', 0, 0, '2020-08-11 12:31:26', '2020-08-11 12:31:26'),
(138, 0, 262, 'New Notifications testing 123', 0, 0, '2020-08-11 12:31:26', '2020-08-11 12:31:26'),
(140, 0, 225, 'New Notifications testing 123', 0, 0, '2020-08-11 12:31:26', '2020-08-11 12:31:26'),
(144, 318, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-11 12:33:30', '2020-08-11 12:33:30'),
(145, 346, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-11 12:33:30', '2020-08-11 12:33:30'),
(147, 383, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-11 12:33:30', '2020-08-11 12:33:30'),
(148, 0, 310, 'Test', 0, 0, '2020-08-11 14:25:03', '2020-08-11 14:25:03'),
(150, 0, 308, 'Test', 0, 0, '2020-08-11 14:25:03', '2020-08-11 14:25:03'),
(151, 0, 306, 'Test', 0, 0, '2020-08-11 14:25:03', '2020-08-11 14:25:03'),
(152, 0, 305, 'Test', 0, 0, '2020-08-11 14:25:03', '2020-08-11 14:25:03'),
(153, 0, 302, 'Test', 0, 0, '2020-08-11 14:25:03', '2020-08-11 14:25:03'),
(154, 0, 300, 'Test', 0, 0, '2020-08-11 14:25:04', '2020-08-11 14:25:04'),
(155, 0, 299, 'Test', 0, 0, '2020-08-11 14:25:04', '2020-08-11 14:25:04'),
(156, 0, 297, 'Test', 0, 0, '2020-08-11 14:25:04', '2020-08-11 14:25:04'),
(157, 0, 296, 'Test', 0, 0, '2020-08-11 14:25:04', '2020-08-11 14:25:04'),
(159, 0, 262, 'Test', 0, 0, '2020-08-11 14:25:04', '2020-08-11 14:25:04'),
(161, 0, 225, 'Test', 0, 0, '2020-08-11 14:25:05', '2020-08-11 14:25:05'),
(163, 0, 310, '1234', 0, 0, '2020-08-12 05:13:57', '2020-08-12 05:13:57'),
(165, 0, 308, '1234', 0, 0, '2020-08-12 05:13:57', '2020-08-12 05:13:57'),
(166, 0, 306, '1234', 0, 0, '2020-08-12 05:13:58', '2020-08-12 05:13:58'),
(167, 0, 305, '1234', 0, 0, '2020-08-12 05:13:58', '2020-08-12 05:13:58'),
(168, 0, 302, '1234', 0, 0, '2020-08-12 05:13:59', '2020-08-12 05:13:59'),
(169, 0, 300, '1234', 0, 0, '2020-08-12 05:13:59', '2020-08-12 05:13:59'),
(170, 0, 299, '1234', 0, 0, '2020-08-12 05:13:59', '2020-08-12 05:13:59'),
(171, 0, 297, '1234', 0, 0, '2020-08-12 05:14:00', '2020-08-12 05:14:00'),
(172, 0, 296, '1234', 0, 0, '2020-08-12 05:14:00', '2020-08-12 05:14:00'),
(174, 0, 262, '1234', 0, 0, '2020-08-12 05:14:01', '2020-08-12 05:14:01'),
(176, 0, 225, '1234', 0, 0, '2020-08-12 05:14:02', '2020-08-12 05:14:02'),
(180, 0, 310, '7890', 0, 0, '2020-08-12 18:38:48', '2020-08-12 18:38:48'),
(182, 0, 308, '7890', 0, 0, '2020-08-12 18:38:48', '2020-08-12 18:38:48'),
(183, 0, 306, '7890', 0, 0, '2020-08-12 18:38:49', '2020-08-12 18:38:49'),
(184, 0, 305, '7890', 0, 0, '2020-08-12 18:38:49', '2020-08-12 18:38:49'),
(185, 0, 302, '7890', 0, 0, '2020-08-12 18:38:49', '2020-08-12 18:38:49'),
(186, 0, 300, '7890', 0, 0, '2020-08-12 18:38:50', '2020-08-12 18:38:50'),
(187, 0, 299, '7890', 0, 0, '2020-08-12 18:38:50', '2020-08-12 18:38:50'),
(188, 0, 297, '7890', 0, 0, '2020-08-12 18:38:50', '2020-08-12 18:38:50'),
(189, 0, 296, '7890', 0, 0, '2020-08-12 18:38:50', '2020-08-12 18:38:50'),
(191, 0, 262, '7890', 0, 0, '2020-08-12 18:38:51', '2020-08-12 18:38:51'),
(193, 0, 225, '7890', 0, 0, '2020-08-12 18:38:51', '2020-08-12 18:38:51'),
(195, 0, 310, 'the admin testing', 0, 0, '2020-08-13 06:37:45', '2020-08-13 06:37:45'),
(197, 0, 308, 'the admin testing', 0, 0, '2020-08-13 06:37:47', '2020-08-13 06:37:47'),
(198, 0, 306, 'the admin testing', 0, 0, '2020-08-13 06:37:47', '2020-08-13 06:37:47'),
(199, 0, 305, 'the admin testing', 0, 0, '2020-08-13 06:37:47', '2020-08-13 06:37:47'),
(200, 0, 302, 'the admin testing', 0, 0, '2020-08-13 06:37:47', '2020-08-13 06:37:47'),
(201, 0, 300, 'the admin testing', 0, 0, '2020-08-13 06:37:47', '2020-08-13 06:37:47'),
(202, 0, 299, 'the admin testing', 0, 0, '2020-08-13 06:37:48', '2020-08-13 06:37:48'),
(203, 0, 297, 'the admin testing', 0, 0, '2020-08-13 06:37:48', '2020-08-13 06:37:48'),
(204, 0, 296, 'the admin testing', 0, 0, '2020-08-13 06:37:48', '2020-08-13 06:37:48'),
(206, 0, 262, 'the admin testing', 0, 0, '2020-08-13 06:37:48', '2020-08-13 06:37:48'),
(208, 0, 225, 'the admin testing', 0, 0, '2020-08-13 06:37:48', '2020-08-13 06:37:48'),
(210, 0, 310, 'from admin', 0, 0, '2020-08-13 06:38:21', '2020-08-13 06:38:21'),
(212, 0, 308, 'from admin', 0, 0, '2020-08-13 06:38:22', '2020-08-13 06:38:22'),
(213, 0, 306, 'from admin', 0, 0, '2020-08-13 06:38:22', '2020-08-13 06:38:22'),
(214, 0, 305, 'from admin', 0, 0, '2020-08-13 06:38:22', '2020-08-13 06:38:22'),
(215, 0, 302, 'from admin', 0, 0, '2020-08-13 06:38:22', '2020-08-13 06:38:22'),
(216, 0, 300, 'from admin', 0, 0, '2020-08-13 06:38:22', '2020-08-13 06:38:22'),
(217, 0, 299, 'from admin', 0, 0, '2020-08-13 06:38:22', '2020-08-13 06:38:22'),
(218, 0, 297, 'from admin', 0, 0, '2020-08-13 06:38:22', '2020-08-13 06:38:22'),
(219, 0, 296, 'from admin', 0, 0, '2020-08-13 06:38:22', '2020-08-13 06:38:22'),
(221, 0, 262, 'from admin', 0, 0, '2020-08-13 06:38:23', '2020-08-13 06:38:23'),
(223, 0, 225, 'from admin', 0, 0, '2020-08-13 06:38:23', '2020-08-13 06:38:23'),
(225, 0, 310, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:39:03', '2020-08-13 06:39:03'),
(227, 0, 308, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:39:03', '2020-08-13 06:39:03'),
(228, 0, 306, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:39:03', '2020-08-13 06:39:03'),
(229, 0, 305, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:39:03', '2020-08-13 06:39:03'),
(230, 0, 302, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:39:03', '2020-08-13 06:39:03'),
(231, 0, 300, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:39:03', '2020-08-13 06:39:03'),
(232, 0, 299, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:39:04', '2020-08-13 06:39:04'),
(233, 0, 297, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:39:04', '2020-08-13 06:39:04'),
(234, 0, 296, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:39:04', '2020-08-13 06:39:04'),
(236, 0, 262, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:39:04', '2020-08-13 06:39:04'),
(238, 0, 225, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:39:05', '2020-08-13 06:39:05'),
(240, 0, 310, 'zdfsdfsd', 0, 0, '2020-08-13 06:39:39', '2020-08-13 06:39:39'),
(242, 0, 308, 'zdfsdfsd', 0, 0, '2020-08-13 06:39:39', '2020-08-13 06:39:39'),
(243, 0, 306, 'zdfsdfsd', 0, 0, '2020-08-13 06:39:39', '2020-08-13 06:39:39'),
(244, 0, 305, 'zdfsdfsd', 0, 0, '2020-08-13 06:39:40', '2020-08-13 06:39:40'),
(245, 0, 302, 'zdfsdfsd', 0, 0, '2020-08-13 06:39:40', '2020-08-13 06:39:40'),
(246, 0, 300, 'zdfsdfsd', 0, 0, '2020-08-13 06:39:40', '2020-08-13 06:39:40'),
(247, 0, 299, 'zdfsdfsd', 0, 0, '2020-08-13 06:39:40', '2020-08-13 06:39:40'),
(248, 0, 297, 'zdfsdfsd', 0, 0, '2020-08-13 06:39:40', '2020-08-13 06:39:40'),
(249, 0, 296, 'zdfsdfsd', 0, 0, '2020-08-13 06:39:40', '2020-08-13 06:39:40'),
(251, 0, 262, 'zdfsdfsd', 0, 0, '2020-08-13 06:39:41', '2020-08-13 06:39:41'),
(253, 0, 225, 'zdfsdfsd', 0, 0, '2020-08-13 06:39:41', '2020-08-13 06:39:41'),
(255, 0, 310, 'abc', 0, 0, '2020-08-13 06:40:23', '2020-08-13 06:40:23'),
(257, 0, 308, 'abc', 0, 0, '2020-08-13 06:40:23', '2020-08-13 06:40:23'),
(258, 0, 306, 'abc', 0, 0, '2020-08-13 06:40:24', '2020-08-13 06:40:24'),
(259, 0, 305, 'abc', 0, 0, '2020-08-13 06:40:24', '2020-08-13 06:40:24'),
(260, 0, 302, 'abc', 0, 0, '2020-08-13 06:40:24', '2020-08-13 06:40:24'),
(261, 0, 300, 'abc', 0, 0, '2020-08-13 06:40:24', '2020-08-13 06:40:24'),
(262, 0, 299, 'abc', 0, 0, '2020-08-13 06:40:24', '2020-08-13 06:40:24'),
(263, 0, 297, 'abc', 0, 0, '2020-08-13 06:40:24', '2020-08-13 06:40:24'),
(264, 0, 296, 'abc', 0, 0, '2020-08-13 06:40:24', '2020-08-13 06:40:24'),
(266, 0, 262, 'abc', 0, 0, '2020-08-13 06:40:25', '2020-08-13 06:40:25'),
(268, 0, 225, 'abc', 0, 0, '2020-08-13 06:40:25', '2020-08-13 06:40:25'),
(270, 0, 310, 'from admin', 0, 0, '2020-08-13 06:41:24', '2020-08-13 06:41:24'),
(272, 0, 308, 'from admin', 0, 0, '2020-08-13 06:41:25', '2020-08-13 06:41:25'),
(273, 0, 306, 'from admin', 0, 0, '2020-08-13 06:41:25', '2020-08-13 06:41:25'),
(274, 0, 305, 'from admin', 0, 0, '2020-08-13 06:41:25', '2020-08-13 06:41:25'),
(275, 0, 302, 'from admin', 0, 0, '2020-08-13 06:41:25', '2020-08-13 06:41:25'),
(276, 0, 300, 'from admin', 0, 0, '2020-08-13 06:41:25', '2020-08-13 06:41:25'),
(277, 0, 299, 'from admin', 0, 0, '2020-08-13 06:41:25', '2020-08-13 06:41:25'),
(278, 0, 297, 'from admin', 0, 0, '2020-08-13 06:41:26', '2020-08-13 06:41:26'),
(279, 0, 296, 'from admin', 0, 0, '2020-08-13 06:41:26', '2020-08-13 06:41:26'),
(281, 0, 262, 'from admin', 0, 0, '2020-08-13 06:41:26', '2020-08-13 06:41:26'),
(283, 0, 225, 'from admin', 0, 0, '2020-08-13 06:41:26', '2020-08-13 06:41:26'),
(285, 0, 310, 'zdfsdfsd', 0, 0, '2020-08-13 06:43:03', '2020-08-13 06:43:03'),
(287, 0, 308, 'zdfsdfsd', 0, 0, '2020-08-13 06:43:04', '2020-08-13 06:43:04'),
(288, 0, 306, 'zdfsdfsd', 0, 0, '2020-08-13 06:43:04', '2020-08-13 06:43:04'),
(289, 0, 305, 'zdfsdfsd', 0, 0, '2020-08-13 06:43:04', '2020-08-13 06:43:04'),
(290, 0, 302, 'zdfsdfsd', 0, 0, '2020-08-13 06:43:05', '2020-08-13 06:43:05'),
(291, 0, 300, 'zdfsdfsd', 0, 0, '2020-08-13 06:43:05', '2020-08-13 06:43:05'),
(292, 0, 299, 'zdfsdfsd', 0, 0, '2020-08-13 06:43:05', '2020-08-13 06:43:05'),
(293, 0, 297, 'zdfsdfsd', 0, 0, '2020-08-13 06:43:05', '2020-08-13 06:43:05'),
(294, 0, 296, 'zdfsdfsd', 0, 0, '2020-08-13 06:43:06', '2020-08-13 06:43:06'),
(296, 0, 262, 'zdfsdfsd', 0, 0, '2020-08-13 06:43:06', '2020-08-13 06:43:06'),
(298, 0, 225, 'zdfsdfsd', 0, 0, '2020-08-13 06:43:07', '2020-08-13 06:43:07'),
(300, 0, 310, 'from admin', 0, 0, '2020-08-13 06:43:59', '2020-08-13 06:43:59'),
(302, 0, 308, 'from admin', 0, 0, '2020-08-13 06:44:00', '2020-08-13 06:44:00'),
(303, 0, 306, 'from admin', 0, 0, '2020-08-13 06:44:00', '2020-08-13 06:44:00'),
(304, 0, 305, 'from admin', 0, 0, '2020-08-13 06:44:00', '2020-08-13 06:44:00'),
(305, 0, 302, 'from admin', 0, 0, '2020-08-13 06:44:00', '2020-08-13 06:44:00'),
(306, 0, 300, 'from admin', 0, 0, '2020-08-13 06:44:00', '2020-08-13 06:44:00'),
(307, 0, 299, 'from admin', 0, 0, '2020-08-13 06:44:01', '2020-08-13 06:44:01'),
(308, 0, 297, 'from admin', 0, 0, '2020-08-13 06:44:01', '2020-08-13 06:44:01'),
(309, 0, 296, 'from admin', 0, 0, '2020-08-13 06:44:01', '2020-08-13 06:44:01'),
(311, 0, 262, 'from admin', 0, 0, '2020-08-13 06:44:01', '2020-08-13 06:44:01'),
(313, 0, 225, 'from admin', 0, 0, '2020-08-13 06:44:01', '2020-08-13 06:44:01'),
(315, 0, 310, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:44:25', '2020-08-13 06:44:25'),
(317, 0, 308, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:44:26', '2020-08-13 06:44:26'),
(318, 0, 306, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:44:26', '2020-08-13 06:44:26'),
(319, 0, 305, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:44:26', '2020-08-13 06:44:26'),
(320, 0, 302, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:44:26', '2020-08-13 06:44:26'),
(321, 0, 300, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:44:26', '2020-08-13 06:44:26'),
(322, 0, 299, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:44:27', '2020-08-13 06:44:27'),
(323, 0, 297, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:44:27', '2020-08-13 06:44:27'),
(324, 0, 296, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:44:27', '2020-08-13 06:44:27'),
(326, 0, 262, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:44:28', '2020-08-13 06:44:28'),
(328, 0, 225, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 06:44:28', '2020-08-13 06:44:28'),
(335, 318, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 10:14:07', '2020-08-13 10:14:07'),
(336, 346, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 10:14:07', '2020-08-13 10:14:07'),
(337, 372, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 10:14:07', '2020-08-13 10:14:07'),
(338, 383, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 10:14:08', '2020-08-13 10:14:08'),
(340, 318, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 10:14:47', '2020-08-13 10:14:47'),
(341, 346, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 10:14:47', '2020-08-13 10:14:47'),
(342, 372, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 10:14:48', '2020-08-13 10:14:48'),
(343, 383, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 10:14:48', '2020-08-13 10:14:48'),
(345, 318, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 10:16:38', '2020-08-13 10:16:38'),
(346, 346, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 10:16:38', '2020-08-13 10:16:38'),
(347, 372, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 10:16:38', '2020-08-13 10:16:38'),
(348, 383, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 10:16:38', '2020-08-13 10:16:38'),
(350, 318, 0, 'asdfsf', 0, 0, '2020-08-13 10:20:24', '2020-08-13 10:20:24'),
(351, 346, 0, 'asdfsf', 0, 0, '2020-08-13 10:20:24', '2020-08-13 10:20:24'),
(352, 372, 0, 'asdfsf', 0, 0, '2020-08-13 10:20:24', '2020-08-13 10:20:24'),
(353, 383, 0, 'asdfsf', 0, 0, '2020-08-13 10:20:24', '2020-08-13 10:20:24'),
(354, 0, 310, 'dfslkfjskfljsf', 0, 0, '2020-08-13 10:21:10', '2020-08-13 10:21:10'),
(356, 0, 308, 'dfslkfjskfljsf', 0, 0, '2020-08-13 10:21:10', '2020-08-13 10:21:10'),
(357, 0, 306, 'dfslkfjskfljsf', 0, 0, '2020-08-13 10:21:10', '2020-08-13 10:21:10'),
(358, 0, 305, 'dfslkfjskfljsf', 0, 0, '2020-08-13 10:21:10', '2020-08-13 10:21:10'),
(359, 0, 302, 'dfslkfjskfljsf', 0, 0, '2020-08-13 10:21:10', '2020-08-13 10:21:10'),
(360, 0, 300, 'dfslkfjskfljsf', 0, 0, '2020-08-13 10:21:11', '2020-08-13 10:21:11'),
(361, 0, 299, 'dfslkfjskfljsf', 0, 0, '2020-08-13 10:21:11', '2020-08-13 10:21:11'),
(362, 0, 297, 'dfslkfjskfljsf', 0, 0, '2020-08-13 10:21:11', '2020-08-13 10:21:11'),
(363, 0, 296, 'dfslkfjskfljsf', 0, 0, '2020-08-13 10:21:11', '2020-08-13 10:21:11'),
(365, 0, 262, 'dfslkfjskfljsf', 0, 0, '2020-08-13 10:21:11', '2020-08-13 10:21:11'),
(367, 0, 225, 'dfslkfjskfljsf', 0, 0, '2020-08-13 10:21:12', '2020-08-13 10:21:12'),
(370, 318, 0, 'dsflksjfsklfjslf', 0, 0, '2020-08-13 10:22:14', '2020-08-13 10:22:14'),
(371, 346, 0, 'dsflksjfsklfjslf', 0, 0, '2020-08-13 10:22:15', '2020-08-13 10:22:15'),
(372, 372, 0, 'dsflksjfsklfjslf', 0, 0, '2020-08-13 10:22:15', '2020-08-13 10:22:15'),
(373, 383, 0, 'dsflksjfsklfjslf', 0, 0, '2020-08-13 10:22:15', '2020-08-13 10:22:15'),
(374, 0, 310, 'jhlkjhlkjh hjhkljhlh kjkhlkh', 0, 0, '2020-08-13 10:24:18', '2020-08-13 10:24:18'),
(376, 0, 308, 'jhlkjhlkjh hjhkljhlh kjkhlkh', 0, 0, '2020-08-13 10:24:19', '2020-08-13 10:24:19'),
(377, 0, 306, 'jhlkjhlkjh hjhkljhlh kjkhlkh', 0, 0, '2020-08-13 10:24:19', '2020-08-13 10:24:19'),
(378, 0, 305, 'jhlkjhlkjh hjhkljhlh kjkhlkh', 0, 0, '2020-08-13 10:24:19', '2020-08-13 10:24:19'),
(379, 0, 302, 'jhlkjhlkjh hjhkljhlh kjkhlkh', 0, 0, '2020-08-13 10:24:19', '2020-08-13 10:24:19'),
(380, 0, 300, 'jhlkjhlkjh hjhkljhlh kjkhlkh', 0, 0, '2020-08-13 10:24:19', '2020-08-13 10:24:19'),
(381, 0, 299, 'jhlkjhlkjh hjhkljhlh kjkhlkh', 0, 0, '2020-08-13 10:24:19', '2020-08-13 10:24:19'),
(382, 0, 297, 'jhlkjhlkjh hjhkljhlh kjkhlkh', 0, 0, '2020-08-13 10:24:19', '2020-08-13 10:24:19'),
(383, 0, 296, 'jhlkjhlkjh hjhkljhlh kjkhlkh', 0, 0, '2020-08-13 10:24:20', '2020-08-13 10:24:20'),
(385, 0, 262, 'jhlkjhlkjh hjhkljhlh kjkhlkh', 0, 0, '2020-08-13 10:24:20', '2020-08-13 10:24:20'),
(387, 0, 225, 'jhlkjhlkjh hjhkljhlh kjkhlkh', 0, 0, '2020-08-13 10:24:20', '2020-08-13 10:24:20'),
(390, 318, 0, 'wem,nr,wmnrw', 0, 0, '2020-08-13 10:30:33', '2020-08-13 10:30:33'),
(391, 346, 0, 'wem,nr,wmnrw', 0, 0, '2020-08-13 10:30:33', '2020-08-13 10:30:33'),
(392, 372, 0, 'wem,nr,wmnrw', 0, 0, '2020-08-13 10:30:33', '2020-08-13 10:30:33'),
(393, 383, 0, 'wem,nr,wmnrw', 0, 0, '2020-08-13 10:30:34', '2020-08-13 10:30:34'),
(395, 318, 0, 'fmenwmfnwf,mw', 0, 0, '2020-08-13 10:30:52', '2020-08-13 10:30:52'),
(396, 346, 0, 'fmenwmfnwf,mw', 0, 0, '2020-08-13 10:30:52', '2020-08-13 10:30:52'),
(397, 372, 0, 'fmenwmfnwf,mw', 0, 0, '2020-08-13 10:30:52', '2020-08-13 10:30:52'),
(398, 383, 0, 'fmenwmfnwf,mw', 0, 0, '2020-08-13 10:30:52', '2020-08-13 10:30:52'),
(400, 318, 0, 'sdfsfsf', 0, 0, '2020-08-13 10:47:25', '2020-08-13 10:47:25'),
(401, 346, 0, 'sdfsfsf', 0, 0, '2020-08-13 10:47:25', '2020-08-13 10:47:25'),
(402, 372, 0, 'sdfsfsf', 0, 0, '2020-08-13 10:47:25', '2020-08-13 10:47:25'),
(403, 383, 0, 'sdfsfsf', 0, 0, '2020-08-13 10:47:25', '2020-08-13 10:47:25'),
(405, 318, 0, 'erm rklgekrg rejgelgk', 0, 0, '2020-08-13 10:49:44', '2020-08-13 10:49:44'),
(406, 346, 0, 'erm rklgekrg rejgelgk', 0, 0, '2020-08-13 10:49:44', '2020-08-13 10:49:44'),
(407, 372, 0, 'erm rklgekrg rejgelgk', 0, 0, '2020-08-13 10:49:44', '2020-08-13 10:49:44'),
(408, 383, 0, 'erm rklgekrg rejgelgk', 0, 0, '2020-08-13 10:49:44', '2020-08-13 10:49:44'),
(410, 318, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 11:22:56', '2020-08-13 11:22:56'),
(411, 346, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 11:22:56', '2020-08-13 11:22:56'),
(412, 372, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 11:22:56', '2020-08-13 11:22:56'),
(413, 383, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-13 11:22:57', '2020-08-13 11:22:57'),
(415, 318, 0, 'abc', 0, 0, '2020-08-13 11:23:32', '2020-08-13 11:23:32'),
(416, 346, 0, 'abc', 0, 0, '2020-08-13 11:23:32', '2020-08-13 11:23:32'),
(417, 372, 0, 'abc', 0, 0, '2020-08-13 11:23:33', '2020-08-13 11:23:33'),
(418, 383, 0, 'abc', 0, 0, '2020-08-13 11:23:33', '2020-08-13 11:23:33'),
(420, 318, 0, 'vbnbn', 0, 0, '2020-08-13 11:23:56', '2020-08-13 11:23:56'),
(421, 346, 0, 'vbnbn', 0, 0, '2020-08-13 11:23:56', '2020-08-13 11:23:56'),
(422, 372, 0, 'vbnbn', 0, 0, '2020-08-13 11:23:56', '2020-08-13 11:23:56'),
(423, 383, 0, 'vbnbn', 0, 0, '2020-08-13 11:23:57', '2020-08-13 11:23:57'),
(425, 318, 0, '1234', 0, 0, '2020-08-13 11:25:48', '2020-08-13 11:25:48'),
(426, 346, 0, '1234', 0, 0, '2020-08-13 11:25:49', '2020-08-13 11:25:49'),
(427, 372, 0, '1234', 0, 0, '2020-08-13 11:25:49', '2020-08-13 11:25:49'),
(428, 383, 0, '1234', 0, 0, '2020-08-13 11:25:49', '2020-08-13 11:25:49'),
(430, 318, 0, 'sfds sjfd', 0, 0, '2020-08-13 11:26:14', '2020-08-13 11:26:14'),
(431, 346, 0, 'sfds sjfd', 0, 0, '2020-08-13 11:26:14', '2020-08-13 11:26:14'),
(432, 372, 0, 'sfds sjfd', 0, 0, '2020-08-13 11:26:14', '2020-08-13 11:26:14'),
(433, 383, 0, 'sfds sjfd', 0, 0, '2020-08-13 11:26:14', '2020-08-13 11:26:14'),
(435, 318, 0, ' ds', 0, 0, '2020-08-13 11:26:43', '2020-08-13 11:26:43'),
(436, 346, 0, ' ds', 0, 0, '2020-08-13 11:26:43', '2020-08-13 11:26:43'),
(437, 372, 0, ' ds', 0, 0, '2020-08-13 11:26:44', '2020-08-13 11:26:44'),
(438, 383, 0, ' ds', 0, 0, '2020-08-13 11:26:44', '2020-08-13 11:26:44'),
(440, 318, 0, 'sd ds', 0, 0, '2020-08-13 11:28:48', '2020-08-13 11:28:48'),
(441, 346, 0, 'sd ds', 0, 0, '2020-08-13 11:28:48', '2020-08-13 11:28:48'),
(442, 372, 0, 'sd ds', 0, 0, '2020-08-13 11:28:48', '2020-08-13 11:28:48'),
(443, 383, 0, 'sd ds', 0, 0, '2020-08-13 11:28:48', '2020-08-13 11:28:48'),
(445, 318, 0, 'sd sd', 0, 0, '2020-08-13 11:30:08', '2020-08-13 11:30:08'),
(446, 346, 0, 'sd sd', 0, 0, '2020-08-13 11:30:08', '2020-08-13 11:30:08'),
(447, 372, 0, 'sd sd', 0, 0, '2020-08-13 11:30:09', '2020-08-13 11:30:09'),
(448, 383, 0, 'sd sd', 0, 0, '2020-08-13 11:30:09', '2020-08-13 11:30:09'),
(450, 318, 0, 'aa', 0, 0, '2020-08-13 11:30:35', '2020-08-13 11:30:35'),
(451, 346, 0, 'aa', 0, 0, '2020-08-13 11:30:35', '2020-08-13 11:30:35'),
(452, 372, 0, 'aa', 0, 0, '2020-08-13 11:30:35', '2020-08-13 11:30:35'),
(453, 383, 0, 'aa', 0, 0, '2020-08-13 11:30:35', '2020-08-13 11:30:35'),
(455, 318, 0, 'as', 0, 0, '2020-08-13 11:31:00', '2020-08-13 11:31:00'),
(456, 346, 0, 'as', 0, 0, '2020-08-13 11:31:00', '2020-08-13 11:31:00'),
(457, 372, 0, 'as', 0, 0, '2020-08-13 11:31:01', '2020-08-13 11:31:01'),
(458, 383, 0, 'as', 0, 0, '2020-08-13 11:31:01', '2020-08-13 11:31:01'),
(459, 0, 310, 's', 0, 0, '2020-08-13 11:33:17', '2020-08-13 11:33:17'),
(461, 0, 308, 's', 0, 0, '2020-08-13 11:33:17', '2020-08-13 11:33:17'),
(462, 0, 306, 's', 0, 0, '2020-08-13 11:33:17', '2020-08-13 11:33:17'),
(463, 0, 305, 's', 0, 0, '2020-08-13 11:33:17', '2020-08-13 11:33:17'),
(464, 0, 302, 's', 0, 0, '2020-08-13 11:33:17', '2020-08-13 11:33:17'),
(465, 0, 300, 's', 0, 0, '2020-08-13 11:33:18', '2020-08-13 11:33:18'),
(466, 0, 299, 's', 0, 0, '2020-08-13 11:33:18', '2020-08-13 11:33:18'),
(467, 0, 297, 's', 0, 0, '2020-08-13 11:33:18', '2020-08-13 11:33:18'),
(468, 0, 296, 's', 0, 0, '2020-08-13 11:33:18', '2020-08-13 11:33:18'),
(470, 0, 262, 's', 0, 0, '2020-08-13 11:33:19', '2020-08-13 11:33:19'),
(472, 0, 225, 's', 0, 0, '2020-08-13 11:33:19', '2020-08-13 11:33:19'),
(475, 318, 0, 'a', 0, 0, '2020-08-13 11:33:40', '2020-08-13 11:33:40'),
(476, 346, 0, 'a', 0, 0, '2020-08-13 11:33:40', '2020-08-13 11:33:40'),
(477, 372, 0, 'a', 0, 0, '2020-08-13 11:33:40', '2020-08-13 11:33:40'),
(478, 383, 0, 'a', 0, 0, '2020-08-13 11:33:40', '2020-08-13 11:33:40'),
(479, 0, 310, 'as', 0, 0, '2020-08-13 11:48:38', '2020-08-13 11:48:38'),
(481, 0, 308, 'as', 0, 0, '2020-08-13 11:48:38', '2020-08-13 11:48:38'),
(482, 0, 306, 'as', 0, 0, '2020-08-13 11:48:38', '2020-08-13 11:48:38'),
(483, 0, 305, 'as', 0, 0, '2020-08-13 11:48:39', '2020-08-13 11:48:39'),
(484, 0, 302, 'as', 0, 0, '2020-08-13 11:48:39', '2020-08-13 11:48:39'),
(485, 0, 300, 'as', 0, 0, '2020-08-13 11:48:39', '2020-08-13 11:48:39'),
(486, 0, 299, 'as', 0, 0, '2020-08-13 11:48:39', '2020-08-13 11:48:39'),
(487, 0, 297, 'as', 0, 0, '2020-08-13 11:48:39', '2020-08-13 11:48:39'),
(488, 0, 296, 'as', 0, 0, '2020-08-13 11:48:39', '2020-08-13 11:48:39'),
(490, 0, 262, 'as', 0, 0, '2020-08-13 11:48:40', '2020-08-13 11:48:40'),
(492, 0, 225, 'as', 0, 0, '2020-08-13 11:48:40', '2020-08-13 11:48:40'),
(494, 0, 310, 'a', 0, 0, '2020-08-13 11:48:57', '2020-08-13 11:48:57'),
(496, 0, 308, 'a', 0, 0, '2020-08-13 11:48:57', '2020-08-13 11:48:57'),
(497, 0, 306, 'a', 0, 0, '2020-08-13 11:48:57', '2020-08-13 11:48:57'),
(498, 0, 305, 'a', 0, 0, '2020-08-13 11:48:57', '2020-08-13 11:48:57'),
(499, 0, 302, 'a', 0, 0, '2020-08-13 11:48:58', '2020-08-13 11:48:58'),
(500, 0, 300, 'a', 0, 0, '2020-08-13 11:48:58', '2020-08-13 11:48:58'),
(501, 0, 299, 'a', 0, 0, '2020-08-13 11:48:58', '2020-08-13 11:48:58'),
(502, 0, 297, 'a', 0, 0, '2020-08-13 11:48:58', '2020-08-13 11:48:58'),
(503, 0, 296, 'a', 0, 0, '2020-08-13 11:48:58', '2020-08-13 11:48:58'),
(505, 0, 262, 'a', 0, 0, '2020-08-13 11:48:58', '2020-08-13 11:48:58'),
(507, 0, 225, 'a', 0, 0, '2020-08-13 11:48:59', '2020-08-13 11:48:59'),
(509, 0, 310, 'qq', 0, 0, '2020-08-13 11:49:28', '2020-08-13 11:49:28'),
(511, 0, 308, 'qq', 0, 0, '2020-08-13 11:49:28', '2020-08-13 11:49:28'),
(512, 0, 306, 'qq', 0, 0, '2020-08-13 11:49:28', '2020-08-13 11:49:28'),
(513, 0, 305, 'qq', 0, 0, '2020-08-13 11:49:28', '2020-08-13 11:49:28'),
(514, 0, 302, 'qq', 0, 0, '2020-08-13 11:49:29', '2020-08-13 11:49:29'),
(515, 0, 300, 'qq', 0, 0, '2020-08-13 11:49:29', '2020-08-13 11:49:29'),
(516, 0, 299, 'qq', 0, 0, '2020-08-13 11:49:29', '2020-08-13 11:49:29'),
(517, 0, 297, 'qq', 0, 0, '2020-08-13 11:49:29', '2020-08-13 11:49:29'),
(518, 0, 296, 'qq', 0, 0, '2020-08-13 11:49:29', '2020-08-13 11:49:29'),
(520, 0, 262, 'qq', 0, 0, '2020-08-13 11:49:29', '2020-08-13 11:49:29'),
(522, 0, 225, 'qq', 0, 0, '2020-08-13 11:49:30', '2020-08-13 11:49:30'),
(525, 0, 310, 'abc', 0, 0, '2020-08-13 12:43:23', '2020-08-13 12:43:23'),
(527, 0, 308, 'abc', 0, 0, '2020-08-13 12:43:23', '2020-08-13 12:43:23'),
(528, 0, 306, 'abc', 0, 0, '2020-08-13 12:43:23', '2020-08-13 12:43:23'),
(529, 0, 305, 'abc', 0, 0, '2020-08-13 12:43:23', '2020-08-13 12:43:23'),
(530, 0, 302, 'abc', 0, 0, '2020-08-13 12:43:24', '2020-08-13 12:43:24'),
(531, 0, 300, 'abc', 0, 0, '2020-08-13 12:43:24', '2020-08-13 12:43:24'),
(532, 0, 299, 'abc', 0, 0, '2020-08-13 12:43:24', '2020-08-13 12:43:24'),
(533, 0, 297, 'abc', 0, 0, '2020-08-13 12:43:24', '2020-08-13 12:43:24'),
(534, 0, 296, 'abc', 0, 0, '2020-08-13 12:43:24', '2020-08-13 12:43:24'),
(536, 0, 262, 'abc', 0, 0, '2020-08-13 12:43:25', '2020-08-13 12:43:25'),
(538, 0, 225, 'abc', 0, 0, '2020-08-13 12:43:25', '2020-08-13 12:43:25'),
(541, 318, 0, 're', 0, 0, '2020-08-13 12:51:53', '2020-08-13 12:51:53'),
(542, 346, 0, 're', 0, 0, '2020-08-13 12:51:53', '2020-08-13 12:51:53'),
(543, 372, 0, 're', 0, 0, '2020-08-13 12:51:54', '2020-08-13 12:51:54'),
(544, 383, 0, 're', 0, 0, '2020-08-13 12:51:54', '2020-08-13 12:51:54'),
(546, 318, 0, 'dfdfdf', 0, 0, '2020-08-13 12:52:15', '2020-08-13 12:52:15'),
(547, 346, 0, 'dfdfdf', 0, 0, '2020-08-13 12:52:15', '2020-08-13 12:52:15'),
(548, 372, 0, 'dfdfdf', 0, 0, '2020-08-13 12:52:15', '2020-08-13 12:52:15'),
(549, 383, 0, 'dfdfdf', 0, 0, '2020-08-13 12:52:16', '2020-08-13 12:52:16'),
(550, 0, 310, 'eerere', 0, 0, '2020-08-13 12:52:30', '2020-08-13 12:52:30'),
(552, 0, 308, 'eerere', 0, 0, '2020-08-13 12:52:30', '2020-08-13 12:52:30'),
(553, 0, 306, 'eerere', 0, 0, '2020-08-13 12:52:30', '2020-08-13 12:52:30'),
(554, 0, 305, 'eerere', 0, 0, '2020-08-13 12:52:30', '2020-08-13 12:52:30'),
(555, 0, 302, 'eerere', 0, 0, '2020-08-13 12:52:30', '2020-08-13 12:52:30'),
(556, 0, 300, 'eerere', 0, 0, '2020-08-13 12:52:31', '2020-08-13 12:52:31'),
(557, 0, 299, 'eerere', 0, 0, '2020-08-13 12:52:31', '2020-08-13 12:52:31'),
(558, 0, 297, 'eerere', 0, 0, '2020-08-13 12:52:31', '2020-08-13 12:52:31'),
(559, 0, 296, 'eerere', 0, 0, '2020-08-13 12:52:31', '2020-08-13 12:52:31'),
(561, 0, 262, 'eerere', 0, 0, '2020-08-13 12:52:31', '2020-08-13 12:52:31'),
(563, 0, 225, 'eerere', 0, 0, '2020-08-13 12:52:32', '2020-08-13 12:52:32'),
(566, 318, 0, 'as', 0, 0, '2020-08-13 13:01:39', '2020-08-13 13:01:39'),
(567, 346, 0, 'as', 0, 0, '2020-08-13 13:01:39', '2020-08-13 13:01:39'),
(568, 372, 0, 'as', 0, 0, '2020-08-13 13:01:39', '2020-08-13 13:01:39'),
(569, 383, 0, 'as', 0, 0, '2020-08-13 13:01:39', '2020-08-13 13:01:39'),
(570, 0, 310, 'as', 0, 0, '2020-08-13 13:01:57', '2020-08-13 13:01:57'),
(572, 0, 308, 'as', 0, 0, '2020-08-13 13:01:58', '2020-08-13 13:01:58'),
(573, 0, 306, 'as', 0, 0, '2020-08-13 13:01:58', '2020-08-13 13:01:58'),
(574, 0, 305, 'as', 0, 0, '2020-08-13 13:01:58', '2020-08-13 13:01:58'),
(575, 0, 302, 'as', 0, 0, '2020-08-13 13:01:58', '2020-08-13 13:01:58'),
(576, 0, 300, 'as', 0, 0, '2020-08-13 13:01:58', '2020-08-13 13:01:58'),
(577, 0, 299, 'as', 0, 0, '2020-08-13 13:01:58', '2020-08-13 13:01:58'),
(578, 0, 297, 'as', 0, 0, '2020-08-13 13:01:59', '2020-08-13 13:01:59'),
(579, 0, 296, 'as', 0, 0, '2020-08-13 13:01:59', '2020-08-13 13:01:59'),
(581, 0, 262, 'as', 0, 0, '2020-08-13 13:01:59', '2020-08-13 13:01:59'),
(583, 0, 225, 'as', 0, 0, '2020-08-13 13:01:59', '2020-08-13 13:01:59'),
(585, 0, 310, 'as', 0, 0, '2020-08-13 13:02:34', '2020-08-13 13:02:34'),
(587, 0, 308, 'as', 0, 0, '2020-08-13 13:02:34', '2020-08-13 13:02:34'),
(588, 0, 306, 'as', 0, 0, '2020-08-13 13:02:34', '2020-08-13 13:02:34'),
(589, 0, 305, 'as', 0, 0, '2020-08-13 13:02:35', '2020-08-13 13:02:35'),
(590, 0, 302, 'as', 0, 0, '2020-08-13 13:02:35', '2020-08-13 13:02:35'),
(591, 0, 300, 'as', 0, 0, '2020-08-13 13:02:35', '2020-08-13 13:02:35'),
(592, 0, 299, 'as', 0, 0, '2020-08-13 13:02:35', '2020-08-13 13:02:35'),
(593, 0, 297, 'as', 0, 0, '2020-08-13 13:02:35', '2020-08-13 13:02:35'),
(594, 0, 296, 'as', 0, 0, '2020-08-13 13:02:35', '2020-08-13 13:02:35'),
(596, 0, 262, 'as', 0, 0, '2020-08-13 13:02:35', '2020-08-13 13:02:35'),
(598, 0, 225, 'as', 0, 0, '2020-08-13 13:02:36', '2020-08-13 13:02:36'),
(600, 0, 310, 'b', 0, 0, '2020-08-13 13:05:05', '2020-08-13 13:05:05'),
(602, 0, 308, 'b', 0, 0, '2020-08-13 13:05:05', '2020-08-13 13:05:05'),
(603, 0, 306, 'b', 0, 0, '2020-08-13 13:05:05', '2020-08-13 13:05:05'),
(604, 0, 305, 'b', 0, 0, '2020-08-13 13:05:06', '2020-08-13 13:05:06'),
(605, 0, 302, 'b', 0, 0, '2020-08-13 13:05:06', '2020-08-13 13:05:06'),
(606, 0, 300, 'b', 0, 0, '2020-08-13 13:05:06', '2020-08-13 13:05:06'),
(607, 0, 299, 'b', 0, 0, '2020-08-13 13:05:06', '2020-08-13 13:05:06'),
(608, 0, 297, 'b', 0, 0, '2020-08-13 13:05:06', '2020-08-13 13:05:06'),
(609, 0, 296, 'b', 0, 0, '2020-08-13 13:05:07', '2020-08-13 13:05:07'),
(611, 0, 262, 'b', 0, 0, '2020-08-13 13:05:07', '2020-08-13 13:05:07'),
(613, 0, 225, 'b', 0, 0, '2020-08-13 13:05:07', '2020-08-13 13:05:07'),
(615, 0, 310, 'ff', 0, 0, '2020-08-13 13:05:34', '2020-08-13 13:05:34'),
(617, 0, 308, 'ff', 0, 0, '2020-08-13 13:05:34', '2020-08-13 13:05:34'),
(618, 0, 306, 'ff', 0, 0, '2020-08-13 13:05:34', '2020-08-13 13:05:34'),
(619, 0, 305, 'ff', 0, 0, '2020-08-13 13:05:34', '2020-08-13 13:05:34'),
(620, 0, 302, 'ff', 0, 0, '2020-08-13 13:05:34', '2020-08-13 13:05:34'),
(621, 0, 300, 'ff', 0, 0, '2020-08-13 13:05:35', '2020-08-13 13:05:35'),
(622, 0, 299, 'ff', 0, 0, '2020-08-13 13:05:35', '2020-08-13 13:05:35'),
(623, 0, 297, 'ff', 0, 0, '2020-08-13 13:05:35', '2020-08-13 13:05:35'),
(624, 0, 296, 'ff', 0, 0, '2020-08-13 13:05:35', '2020-08-13 13:05:35'),
(626, 0, 262, 'ff', 0, 0, '2020-08-13 13:05:36', '2020-08-13 13:05:36'),
(628, 0, 225, 'ff', 0, 0, '2020-08-13 13:05:36', '2020-08-13 13:05:36'),
(630, 0, 310, 's', 0, 0, '2020-08-13 13:08:54', '2020-08-13 13:08:54'),
(632, 0, 308, 's', 0, 0, '2020-08-13 13:08:54', '2020-08-13 13:08:54'),
(633, 0, 306, 's', 0, 0, '2020-08-13 13:08:54', '2020-08-13 13:08:54'),
(634, 0, 305, 's', 0, 0, '2020-08-13 13:08:55', '2020-08-13 13:08:55'),
(635, 0, 302, 's', 0, 0, '2020-08-13 13:08:55', '2020-08-13 13:08:55'),
(636, 0, 300, 's', 0, 0, '2020-08-13 13:08:55', '2020-08-13 13:08:55'),
(637, 0, 299, 's', 0, 0, '2020-08-13 13:08:55', '2020-08-13 13:08:55'),
(638, 0, 297, 's', 0, 0, '2020-08-13 13:08:55', '2020-08-13 13:08:55'),
(639, 0, 296, 's', 0, 0, '2020-08-13 13:08:55', '2020-08-13 13:08:55'),
(641, 0, 262, 's', 0, 0, '2020-08-13 13:08:56', '2020-08-13 13:08:56'),
(643, 0, 225, 's', 0, 0, '2020-08-13 13:08:56', '2020-08-13 13:08:56'),
(645, 0, 310, 's', 0, 0, '2020-08-13 13:09:17', '2020-08-13 13:09:17'),
(647, 0, 308, 's', 0, 0, '2020-08-13 13:09:17', '2020-08-13 13:09:17'),
(648, 0, 306, 's', 0, 0, '2020-08-13 13:09:18', '2020-08-13 13:09:18'),
(649, 0, 305, 's', 0, 0, '2020-08-13 13:09:18', '2020-08-13 13:09:18'),
(650, 0, 302, 's', 0, 0, '2020-08-13 13:09:18', '2020-08-13 13:09:18'),
(651, 0, 300, 's', 0, 0, '2020-08-13 13:09:18', '2020-08-13 13:09:18'),
(652, 0, 299, 's', 0, 0, '2020-08-13 13:09:18', '2020-08-13 13:09:18'),
(653, 0, 297, 's', 0, 0, '2020-08-13 13:09:19', '2020-08-13 13:09:19'),
(654, 0, 296, 's', 0, 0, '2020-08-13 13:09:19', '2020-08-13 13:09:19'),
(656, 0, 262, 's', 0, 0, '2020-08-13 13:09:19', '2020-08-13 13:09:19'),
(658, 0, 225, 's', 0, 0, '2020-08-13 13:09:20', '2020-08-13 13:09:20'),
(660, 0, 310, 's', 0, 0, '2020-08-13 13:09:40', '2020-08-13 13:09:40'),
(662, 0, 308, 's', 0, 0, '2020-08-13 13:09:40', '2020-08-13 13:09:40'),
(663, 0, 306, 's', 0, 0, '2020-08-13 13:09:40', '2020-08-13 13:09:40'),
(664, 0, 305, 's', 0, 0, '2020-08-13 13:09:41', '2020-08-13 13:09:41'),
(665, 0, 302, 's', 0, 0, '2020-08-13 13:09:41', '2020-08-13 13:09:41'),
(666, 0, 300, 's', 0, 0, '2020-08-13 13:09:41', '2020-08-13 13:09:41'),
(667, 0, 299, 's', 0, 0, '2020-08-13 13:09:41', '2020-08-13 13:09:41'),
(668, 0, 297, 's', 0, 0, '2020-08-13 13:09:41', '2020-08-13 13:09:41'),
(669, 0, 296, 's', 0, 0, '2020-08-13 13:09:41', '2020-08-13 13:09:41'),
(671, 0, 262, 's', 0, 0, '2020-08-13 13:09:41', '2020-08-13 13:09:41'),
(673, 0, 225, 's', 0, 0, '2020-08-13 13:09:42', '2020-08-13 13:09:42'),
(675, 0, 310, '1234', 0, 0, '2020-08-13 13:11:28', '2020-08-13 13:11:28'),
(677, 0, 308, '1234', 0, 0, '2020-08-13 13:11:28', '2020-08-13 13:11:28'),
(678, 0, 306, '1234', 0, 0, '2020-08-13 13:11:29', '2020-08-13 13:11:29'),
(679, 0, 305, '1234', 0, 0, '2020-08-13 13:11:29', '2020-08-13 13:11:29'),
(680, 0, 302, '1234', 0, 0, '2020-08-13 13:11:29', '2020-08-13 13:11:29'),
(681, 0, 300, '1234', 0, 0, '2020-08-13 13:11:29', '2020-08-13 13:11:29'),
(682, 0, 299, '1234', 0, 0, '2020-08-13 13:11:30', '2020-08-13 13:11:30'),
(683, 0, 297, '1234', 0, 0, '2020-08-13 13:11:30', '2020-08-13 13:11:30'),
(684, 0, 296, '1234', 0, 0, '2020-08-13 13:11:30', '2020-08-13 13:11:30'),
(686, 0, 262, '1234', 0, 0, '2020-08-13 13:11:31', '2020-08-13 13:11:31'),
(688, 0, 225, '1234', 0, 0, '2020-08-13 13:11:31', '2020-08-13 13:11:31'),
(690, 0, 310, 's', 0, 0, '2020-08-13 13:12:17', '2020-08-13 13:12:17'),
(692, 0, 308, 's', 0, 0, '2020-08-13 13:12:17', '2020-08-13 13:12:17'),
(693, 0, 306, 's', 0, 0, '2020-08-13 13:12:17', '2020-08-13 13:12:17'),
(694, 0, 305, 's', 0, 0, '2020-08-13 13:12:17', '2020-08-13 13:12:17'),
(695, 0, 302, 's', 0, 0, '2020-08-13 13:12:18', '2020-08-13 13:12:18'),
(696, 0, 300, 's', 0, 0, '2020-08-13 13:12:18', '2020-08-13 13:12:18'),
(697, 0, 299, 's', 0, 0, '2020-08-13 13:12:18', '2020-08-13 13:12:18'),
(698, 0, 297, 's', 0, 0, '2020-08-13 13:12:19', '2020-08-13 13:12:19'),
(699, 0, 296, 's', 0, 0, '2020-08-13 13:12:19', '2020-08-13 13:12:19'),
(701, 0, 262, 's', 0, 0, '2020-08-13 13:12:19', '2020-08-13 13:12:19'),
(703, 0, 225, 's', 0, 0, '2020-08-13 13:12:20', '2020-08-13 13:12:20'),
(705, 0, 310, 'vipan', 0, 0, '2020-08-13 13:12:46', '2020-08-13 13:12:46'),
(707, 0, 308, 'vipan', 0, 0, '2020-08-13 13:12:46', '2020-08-13 13:12:46'),
(708, 0, 306, 'vipan', 0, 0, '2020-08-13 13:12:46', '2020-08-13 13:12:46'),
(709, 0, 305, 'vipan', 0, 0, '2020-08-13 13:12:47', '2020-08-13 13:12:47'),
(710, 0, 302, 'vipan', 0, 0, '2020-08-13 13:12:47', '2020-08-13 13:12:47'),
(711, 0, 300, 'vipan', 0, 0, '2020-08-13 13:12:47', '2020-08-13 13:12:47'),
(712, 0, 299, 'vipan', 0, 0, '2020-08-13 13:12:47', '2020-08-13 13:12:47'),
(713, 0, 297, 'vipan', 0, 0, '2020-08-13 13:12:47', '2020-08-13 13:12:47'),
(714, 0, 296, 'vipan', 0, 0, '2020-08-13 13:12:47', '2020-08-13 13:12:47'),
(716, 0, 262, 'vipan', 0, 0, '2020-08-13 13:12:48', '2020-08-13 13:12:48'),
(718, 0, 225, 'vipan', 0, 0, '2020-08-13 13:12:48', '2020-08-13 13:12:48'),
(720, 0, 310, '1234', 0, 0, '2020-08-13 13:14:45', '2020-08-13 13:14:45'),
(722, 0, 308, '1234', 0, 0, '2020-08-13 13:14:46', '2020-08-13 13:14:46'),
(723, 0, 306, '1234', 0, 0, '2020-08-13 13:14:46', '2020-08-13 13:14:46'),
(724, 0, 305, '1234', 0, 0, '2020-08-13 13:14:46', '2020-08-13 13:14:46'),
(725, 0, 302, '1234', 0, 0, '2020-08-13 13:14:46', '2020-08-13 13:14:46'),
(726, 0, 300, '1234', 0, 0, '2020-08-13 13:14:46', '2020-08-13 13:14:46'),
(727, 0, 299, '1234', 0, 0, '2020-08-13 13:14:47', '2020-08-13 13:14:47'),
(728, 0, 297, '1234', 0, 0, '2020-08-13 13:14:47', '2020-08-13 13:14:47'),
(729, 0, 296, '1234', 0, 0, '2020-08-13 13:14:47', '2020-08-13 13:14:47'),
(731, 0, 262, '1234', 0, 0, '2020-08-13 13:14:48', '2020-08-13 13:14:48'),
(733, 0, 225, '1234', 0, 0, '2020-08-13 13:14:48', '2020-08-13 13:14:48'),
(741, 0, 310, '1234', 0, 0, '2020-08-18 04:52:46', '2020-08-18 04:52:46'),
(742, 0, 308, '1234', 0, 0, '2020-08-18 04:52:46', '2020-08-18 04:52:46'),
(743, 0, 306, '1234', 0, 0, '2020-08-18 04:52:46', '2020-08-18 04:52:46'),
(744, 0, 305, '1234', 0, 0, '2020-08-18 04:52:46', '2020-08-18 04:52:46'),
(745, 0, 302, '1234', 0, 0, '2020-08-18 04:52:47', '2020-08-18 04:52:47'),
(746, 0, 300, '1234', 0, 0, '2020-08-18 04:52:47', '2020-08-18 04:52:47'),
(747, 0, 299, '1234', 0, 0, '2020-08-18 04:52:47', '2020-08-18 04:52:47'),
(748, 0, 297, '1234', 0, 0, '2020-08-18 04:52:47', '2020-08-18 04:52:47'),
(749, 0, 296, '1234', 0, 0, '2020-08-18 04:52:47', '2020-08-18 04:52:47'),
(751, 0, 262, '1234', 0, 0, '2020-08-18 04:52:47', '2020-08-18 04:52:47'),
(753, 0, 225, '1234', 0, 0, '2020-08-18 04:52:48', '2020-08-18 04:52:48'),
(756, 318, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-18 04:54:40', '2020-08-18 04:54:40'),
(757, 346, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-18 04:54:41', '2020-08-18 04:54:41'),
(758, 372, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-18 04:54:41', '2020-08-18 04:54:41'),
(759, 383, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-18 04:54:41', '2020-08-18 04:54:41'),
(761, 318, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-18 04:59:31', '2020-08-18 04:59:31'),
(762, 346, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-18 04:59:31', '2020-08-18 04:59:31'),
(763, 372, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-18 04:59:31', '2020-08-18 04:59:31'),
(764, 383, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-18 04:59:32', '2020-08-18 04:59:32'),
(766, 318, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-18 05:01:41', '2020-08-18 05:01:41'),
(767, 346, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-18 05:01:41', '2020-08-18 05:01:41'),
(768, 372, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-18 05:01:41', '2020-08-18 05:01:41'),
(769, 383, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-08-18 05:01:42', '2020-08-18 05:01:42'),
(784, 0, 225, 'Tester commented on your post', 0, 3, '2020-08-22 02:58:33', '2020-08-22 02:58:33'),
(785, 0, 225, 'Tester commented on your post', 0, 3, '2020-08-22 02:58:48', '2020-08-22 02:58:48'),
(786, 0, 225, 'Tester commented on your post', 0, 3, '2020-08-22 04:27:14', '2020-08-22 04:27:14'),
(787, 0, 225, 'Your post like by Tester', 0, 0, '2020-08-22 04:28:21', '2020-08-22 04:28:21'),
(788, 0, 225, 'Your post like by Tester', 0, 3, '2020-08-22 04:28:21', '2020-08-22 04:28:21'),
(789, 0, 225, 'Your post like by Tester', 0, 3, '2020-08-22 04:28:38', '2020-08-22 04:28:38'),
(790, 0, 225, 'Your post like by Tester', 0, 3, '2020-08-22 04:28:38', '2020-08-22 04:28:38'),
(791, 0, 225, 'Your post like by Tester', 0, 3, '2020-08-22 04:28:38', '2020-08-22 04:28:38'),
(840, 0, 225, 'Asp commented on your post', 0, 3, '2020-09-03 09:58:54', '2020-09-03 09:58:54'),
(843, 0, 315, 'Your post like by Asp', 0, 33, '2020-09-03 11:37:33', '2020-09-03 11:37:33'),
(844, 0, 315, 'Your post like by Asp', 0, 33, '2020-09-03 11:37:35', '2020-09-03 11:37:35'),
(845, 0, 315, 'Your post like by Asp', 0, 33, '2020-09-03 12:06:05', '2020-09-03 12:06:05'),
(846, 0, 315, 'Your post like by Asp', 0, 0, '2020-09-03 12:07:13', '2020-09-03 12:07:13'),
(847, 0, 315, 'Your post like by Asp', 0, 34, '2020-09-03 12:07:14', '2020-09-03 12:07:14'),
(848, 0, 315, 'Asp commented on your post', 0, 34, '2020-09-03 12:07:23', '2020-09-03 12:07:23'),
(849, 0, 315, 'Asp commented on your post', 0, 34, '2020-09-03 12:34:59', '2020-09-03 12:34:59'),
(850, 0, 315, 'Asp commented on your post', 0, 34, '2020-09-03 12:35:03', '2020-09-03 12:35:03'),
(851, 0, 315, 'Asp commented on your post', 0, 34, '2020-09-03 12:35:10', '2020-09-03 12:35:10'),
(852, 0, 315, 'Asp commented on your post', 0, 34, '2020-09-03 12:35:17', '2020-09-03 12:35:17'),
(853, 0, 315, 'Asp commented on your post', 0, 34, '2020-09-03 12:35:22', '2020-09-03 12:35:22'),
(854, 0, 315, 'Asp commented on your post', 0, 34, '2020-09-03 12:35:27', '2020-09-03 12:35:27'),
(855, 0, 315, 'Asp commented on your post', 0, 34, '2020-09-03 12:35:33', '2020-09-03 12:35:33'),
(856, 0, 315, 'Asp commented on your post', 0, 34, '2020-09-03 12:35:39', '2020-09-03 12:35:39'),
(857, 0, 315, 'Asp commented on your post', 0, 34, '2020-09-03 12:35:45', '2020-09-03 12:35:45'),
(858, 0, 315, 'Asp commented on your post', 0, 34, '2020-09-03 12:36:01', '2020-09-03 12:36:01'),
(859, 0, 315, 'Your post like by Asp', 0, 34, '2020-09-03 12:37:05', '2020-09-03 12:37:05'),
(860, 0, 315, 'Your post like by Asp', 0, 34, '2020-09-03 12:37:59', '2020-09-03 12:37:59'),
(861, 0, 315, 'Asp commented on your post', 0, 34, '2020-09-03 12:38:11', '2020-09-03 12:38:11'),
(862, 0, 315, 'Your post like by Asp', 0, 0, '2020-09-03 12:38:48', '2020-09-03 12:38:48'),
(863, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-03 12:38:49', '2020-09-03 12:38:49'),
(864, 0, 315, 'Asp commented on your post', 0, 35, '2020-09-04 04:31:11', '2020-09-04 04:31:11'),
(865, 0, 315, 'Asp commented on your post', 0, 35, '2020-09-04 04:31:41', '2020-09-04 04:31:41'),
(866, 0, 315, 'Asp commented on your post', 0, 35, '2020-09-04 04:31:58', '2020-09-04 04:31:58'),
(867, 0, 315, 'Asp commented on your post', 0, 35, '2020-09-04 04:32:12', '2020-09-04 04:32:12'),
(868, 0, 315, 'Asp commented on your post', 0, 35, '2020-09-04 04:32:56', '2020-09-04 04:32:56'),
(869, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-04 04:42:56', '2020-09-04 04:42:56'),
(870, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-04 04:42:59', '2020-09-04 04:42:59'),
(871, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-04 04:43:01', '2020-09-04 04:43:01'),
(872, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-04 04:43:03', '2020-09-04 04:43:03'),
(873, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-04 04:43:05', '2020-09-04 04:43:05'),
(874, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-04 04:43:08', '2020-09-04 04:43:08'),
(875, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-04 04:43:11', '2020-09-04 04:43:11'),
(876, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-04 04:43:12', '2020-09-04 04:43:12'),
(877, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-04 04:43:12', '2020-09-04 04:43:12'),
(878, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-04 04:43:14', '2020-09-04 04:43:14'),
(879, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-04 04:43:15', '2020-09-04 04:43:15'),
(880, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-04 04:43:16', '2020-09-04 04:43:16'),
(881, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-04 04:43:17', '2020-09-04 04:43:17'),
(882, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-04 04:43:18', '2020-09-04 04:43:18'),
(883, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-04 04:43:18', '2020-09-04 04:43:18'),
(884, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-04 04:43:18', '2020-09-04 04:43:18'),
(885, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-04 04:43:19', '2020-09-04 04:43:19'),
(886, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-04 04:43:23', '2020-09-04 04:43:23'),
(887, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-04 04:43:24', '2020-09-04 04:43:24');
INSERT INTO `notifications` (`id`, `to_dealer`, `to_driver`, `noti_message`, `noti_status`, `post_id`, `created_at`, `updated_at`) VALUES
(888, 0, 315, 'Your post like by Asp', 0, 35, '2020-09-04 04:43:29', '2020-09-04 04:43:29'),
(889, 0, 315, 'Asp commented on your post', 0, 35, '2020-09-04 04:43:45', '2020-09-04 04:43:45'),
(890, 0, 315, 'Asp commented on your post', 0, 35, '2020-09-04 04:44:02', '2020-09-04 04:44:02'),
(891, 0, 315, 'Your post like by Asp', 0, 0, '2020-09-04 04:44:26', '2020-09-04 04:44:26'),
(892, 0, 315, 'Your post like by Asp', 0, 0, '2020-09-04 05:00:33', '2020-09-04 05:00:33'),
(893, 0, 315, 'Your post like by Asp', 0, 0, '2020-09-04 05:01:05', '2020-09-04 05:01:05'),
(894, 0, 315, 'Your post like by Asp', 0, 0, '2020-09-04 05:01:37', '2020-09-04 05:01:37'),
(895, 0, 315, 'Your post like by Asp', 0, 0, '2020-09-04 05:02:09', '2020-09-04 05:02:09'),
(896, 0, 315, 'Your post like by Asp', 0, 40, '2020-09-04 05:02:09', '2020-09-04 05:02:09'),
(897, 0, 315, 'Your post like by Asp', 0, 0, '2020-09-04 05:46:44', '2020-09-04 05:46:44'),
(898, 0, 315, 'Your post like by Asp', 0, 41, '2020-09-04 05:46:47', '2020-09-04 05:46:47'),
(899, 0, 315, 'Your post like by Asp', 0, 0, '2020-09-04 05:47:18', '2020-09-04 05:47:18'),
(900, 0, 315, 'Your post like by ', 0, 0, '2020-09-07 06:10:11', '2020-09-07 06:10:11'),
(901, 0, 0, 'your ad title: Valcrum Products compleate', 0, 0, '2020-09-07 06:23:53', '2020-09-07 06:23:53'),
(902, 0, 0, 'your ad title: Valcrum Products compleate', 0, 0, '2020-09-07 06:26:11', '2020-09-07 06:26:11'),
(903, 0, 315, 'Your post like by ', 0, 0, '2020-09-07 11:40:41', '2020-09-07 11:40:41'),
(904, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 11:40:43', '2020-09-07 11:40:43'),
(905, 0, 315, 'Your post like by ', 0, 0, '2020-09-07 11:40:45', '2020-09-07 11:40:45'),
(906, 0, 315, 'Your post like by ', 0, 0, '2020-09-07 11:40:47', '2020-09-07 11:40:47'),
(907, 0, 265, 'Your post like by ', 0, 0, '2020-09-07 11:40:51', '2020-09-07 11:40:51'),
(908, 0, 265, 'Your post like by ', 0, 0, '2020-09-07 11:40:53', '2020-09-07 11:40:53'),
(909, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 12:53:48', '2020-09-07 12:53:48'),
(910, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 12:55:02', '2020-09-07 12:55:02'),
(911, 0, 315, 'Your post like by ', 0, 39, '2020-09-07 12:55:30', '2020-09-07 12:55:30'),
(912, 0, 315, 'Your post like by ', 0, 39, '2020-09-07 12:56:02', '2020-09-07 12:56:02'),
(915, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 12:58:12', '2020-09-07 12:58:12'),
(917, 0, 225, 'Your post like by ', 0, 0, '2020-09-07 12:58:28', '2020-09-07 12:58:28'),
(924, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 13:00:53', '2020-09-07 13:00:53'),
(925, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 13:00:54', '2020-09-07 13:00:54'),
(926, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 13:00:56', '2020-09-07 13:00:56'),
(927, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 13:00:56', '2020-09-07 13:00:56'),
(928, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 13:00:57', '2020-09-07 13:00:57'),
(929, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 13:00:57', '2020-09-07 13:00:57'),
(930, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 13:01:00', '2020-09-07 13:01:00'),
(931, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 13:01:08', '2020-09-07 13:01:08'),
(932, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 13:01:08', '2020-09-07 13:01:08'),
(933, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 13:01:09', '2020-09-07 13:01:09'),
(942, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 13:01:26', '2020-09-07 13:01:26'),
(943, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 13:01:27', '2020-09-07 13:01:27'),
(944, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 13:01:27', '2020-09-07 13:01:27'),
(945, 0, 315, 'Your post like by ', 0, 40, '2020-09-07 13:01:28', '2020-09-07 13:01:28'),
(946, 0, 315, 'Your post like by ', 0, 40, '2020-09-07 13:01:29', '2020-09-07 13:01:29'),
(948, 0, 315, 'Your post like by ', 0, 40, '2020-09-07 13:01:46', '2020-09-07 13:01:46'),
(949, 0, 315, 'Your post like by ', 0, 40, '2020-09-07 13:01:46', '2020-09-07 13:01:46'),
(950, 0, 315, 'Your post like by ', 0, 40, '2020-09-07 13:01:47', '2020-09-07 13:01:47'),
(952, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 13:02:21', '2020-09-07 13:02:21'),
(953, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 13:02:21', '2020-09-07 13:02:21'),
(954, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 13:02:23', '2020-09-07 13:02:23'),
(955, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 13:02:24', '2020-09-07 13:02:24'),
(956, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 13:02:24', '2020-09-07 13:02:24'),
(957, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 13:02:24', '2020-09-07 13:02:24'),
(958, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 13:02:25', '2020-09-07 13:02:25'),
(959, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 13:02:25', '2020-09-07 13:02:25'),
(960, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 13:02:25', '2020-09-07 13:02:25'),
(961, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 13:02:25', '2020-09-07 13:02:25'),
(962, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 13:02:25', '2020-09-07 13:02:25'),
(963, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 13:02:29', '2020-09-07 13:02:29'),
(964, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 13:11:25', '2020-09-07 13:11:25'),
(965, 0, 315, 'Your post like by ', 0, 40, '2020-09-07 13:11:30', '2020-09-07 13:11:30'),
(967, 0, 315, 'Your post like by ', 0, 0, '2020-09-07 13:11:40', '2020-09-07 13:11:40'),
(968, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 15:54:46', '2020-09-07 15:54:46'),
(969, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 15:55:12', '2020-09-07 15:55:12'),
(970, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 15:55:14', '2020-09-07 15:55:14'),
(971, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 15:55:18', '2020-09-07 15:55:18'),
(974, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 16:07:28', '2020-09-07 16:07:28'),
(975, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 16:09:56', '2020-09-07 16:09:56'),
(976, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 16:10:12', '2020-09-07 16:10:12'),
(977, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 16:14:47', '2020-09-07 16:14:47'),
(978, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 16:15:36', '2020-09-07 16:15:36'),
(979, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 16:21:25', '2020-09-07 16:21:25'),
(980, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 16:21:28', '2020-09-07 16:21:28'),
(981, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 16:21:29', '2020-09-07 16:21:29'),
(982, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 16:21:30', '2020-09-07 16:21:30'),
(983, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 16:21:52', '2020-09-07 16:21:52'),
(984, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 16:21:53', '2020-09-07 16:21:53'),
(985, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 16:21:54', '2020-09-07 16:21:54'),
(986, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 16:21:56', '2020-09-07 16:21:56'),
(987, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 16:21:57', '2020-09-07 16:21:57'),
(988, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 16:24:05', '2020-09-07 16:24:05'),
(989, 0, 315, 'Your post like by ', 0, 40, '2020-09-07 16:24:08', '2020-09-07 16:24:08'),
(990, 0, 315, 'Your post like by ', 0, 42, '2020-09-07 16:24:11', '2020-09-07 16:24:11'),
(991, 0, 315, 'Your post like by ', 0, 40, '2020-09-07 16:24:14', '2020-09-07 16:24:14'),
(992, 0, 315, 'Your post like by ', 0, 41, '2020-09-07 16:25:13', '2020-09-07 16:25:13'),
(994, 0, 265, 'Your post like by ', 0, 32, '2020-09-07 16:46:31', '2020-09-07 16:46:31'),
(995, 0, 265, 'Your post like by ', 0, 32, '2020-09-07 16:46:41', '2020-09-07 16:46:41'),
(996, 0, 265, 'Your post like by ', 0, 32, '2020-09-07 16:46:43', '2020-09-07 16:46:43'),
(997, 0, 265, 'Your post like by ', 0, 32, '2020-09-07 16:46:48', '2020-09-07 16:46:48'),
(998, 0, 265, 'Your post like by ', 0, 32, '2020-09-07 16:46:50', '2020-09-07 16:46:50'),
(999, 0, 265, 'Your post like by ', 0, 31, '2020-09-07 16:49:57', '2020-09-07 16:49:57'),
(1000, 0, 265, 'Your post like by ', 0, 31, '2020-09-07 16:50:11', '2020-09-07 16:50:11'),
(1002, 0, 265, 'Your post like by ', 0, 31, '2020-09-07 16:52:48', '2020-09-07 16:52:48'),
(1003, 0, 265, 'Your post like by ', 0, 31, '2020-09-07 16:52:51', '2020-09-07 16:52:51'),
(1004, 0, 265, 'Your post like by ', 0, 31, '2020-09-07 16:52:54', '2020-09-07 16:52:54'),
(1005, 0, 265, 'Your post like by ', 0, 31, '2020-09-07 16:52:57', '2020-09-07 16:52:57'),
(1006, 0, 265, 'Your post like by ', 0, 32, '2020-09-07 16:53:47', '2020-09-07 16:53:47'),
(1007, 0, 265, 'Your post like by ', 0, 32, '2020-09-07 16:53:51', '2020-09-07 16:53:51'),
(1008, 0, 265, 'Your post like by ', 0, 31, '2020-09-07 16:53:58', '2020-09-07 16:53:58'),
(1009, 0, 265, 'Your post like by ', 0, 31, '2020-09-07 16:54:00', '2020-09-07 16:54:00'),
(1010, 0, 265, 'Your post like by ', 0, 32, '2020-09-07 17:02:34', '2020-09-07 17:02:34'),
(1012, 0, 265, 'Your post like by ', 0, 32, '2020-09-07 17:04:00', '2020-09-07 17:04:00'),
(1013, 0, 265, 'Your post like by ', 0, 32, '2020-09-07 17:04:02', '2020-09-07 17:04:02'),
(1014, 0, 265, 'Your post like by ', 0, 32, '2020-09-07 17:04:04', '2020-09-07 17:04:04'),
(1015, 0, 265, 'Your post like by ', 0, 32, '2020-09-07 17:04:06', '2020-09-07 17:04:06'),
(1016, 0, 265, 'Your post like by ', 0, 32, '2020-09-07 17:06:45', '2020-09-07 17:06:45'),
(1017, 0, 265, 'Your post like by ', 0, 32, '2020-09-07 17:06:50', '2020-09-07 17:06:50'),
(1018, 0, 265, 'Your post like by ', 0, 32, '2020-09-07 17:06:59', '2020-09-07 17:06:59'),
(1019, 0, 265, 'Your post like by ', 0, 32, '2020-09-07 17:07:02', '2020-09-07 17:07:02'),
(1020, 0, 265, 'Your post like by ', 0, 31, '2020-09-07 17:07:16', '2020-09-07 17:07:16'),
(1021, 0, 265, 'Your post like by ', 0, 31, '2020-09-07 17:07:17', '2020-09-07 17:07:17'),
(1022, 0, 265, 'Your post like by ', 0, 32, '2020-09-07 17:08:01', '2020-09-07 17:08:01'),
(1023, 0, 265, 'Your post like by ', 0, 32, '2020-09-07 17:08:03', '2020-09-07 17:08:03'),
(1024, 0, 265, 'Your post like by ', 0, 31, '2020-09-07 17:08:05', '2020-09-07 17:08:05'),
(1025, 0, 265, 'Your post like by ', 0, 31, '2020-09-07 17:08:06', '2020-09-07 17:08:06'),
(1026, 0, 265, 'Your post like by ', 0, 32, '2020-09-07 17:08:58', '2020-09-07 17:08:58'),
(1027, 0, 265, 'Your post like by ', 0, 32, '2020-09-07 17:09:01', '2020-09-07 17:09:01'),
(1028, 0, 265, 'Your post like by ', 0, 31, '2020-09-07 17:09:03', '2020-09-07 17:09:03'),
(1029, 0, 265, 'Your post like by ', 0, 31, '2020-09-07 17:09:05', '2020-09-07 17:09:05'),
(1032, 318, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-09-08 08:22:46', '2020-09-08 08:22:46'),
(1033, 346, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-09-08 08:22:47', '2020-09-08 08:22:47'),
(1034, 372, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-09-08 08:22:47', '2020-09-08 08:22:47'),
(1035, 383, 0, 'fghj ftgh fgh fgh fgh dfg cvb ng f dfgf  fd fh hh hffjghfgjf gfghghfj ghfhjf gjghfhh ffhhjghjg ghfjhfhjgfj', 0, 0, '2020-09-08 08:22:47', '2020-09-08 08:22:47'),
(1036, 0, 314, 'Your post like by ', 0, 0, '2020-09-08 17:50:36', '2020-09-08 17:50:36'),
(1037, 0, 314, 'Your post like by ', 0, 44, '2020-09-08 17:52:15', '2020-09-08 17:52:15'),
(1038, 0, 225, 'Your post like by ', 0, 3, '2020-09-08 17:53:22', '2020-09-08 17:53:22'),
(1040, 0, 314, 'Your post like by ', 0, 0, '2020-09-08 18:03:07', '2020-09-08 18:03:07'),
(1041, 0, 314, 'Your post like by ', 0, 45, '2020-09-08 18:04:07', '2020-09-08 18:04:07'),
(1042, 0, 314, 'Your post like by ', 0, 44, '2020-09-08 18:04:16', '2020-09-08 18:04:16'),
(1043, 0, 314, 'Your post like by ', 0, 45, '2020-09-08 18:04:19', '2020-09-08 18:04:19'),
(1044, 0, 314, 'Your post like by ', 0, 45, '2020-09-08 18:22:29', '2020-09-08 18:22:29'),
(1045, 0, 314, 'Your post like by ', 0, 44, '2020-09-08 18:22:33', '2020-09-08 18:22:33'),
(1049, 0, 235, 'Your Dealer is Reject by admin', 0, 0, '2020-09-11 04:21:08', '2020-09-11 04:21:08'),
(1074, 0, 265, 'Your Dealer is Approved by admin', 0, 0, '2020-09-16 13:15:43', '2020-09-16 13:15:43'),
(1080, 0, 0, 'your ad title: Natda compleate', 0, 0, '2020-09-21 14:34:12', '2020-09-21 14:34:12'),
(1081, 0, 0, 'your ad title: Valcrum Products compleate', 0, 0, '2020-09-21 14:34:16', '2020-09-21 14:34:16'),
(1082, 0, 0, 'your ad title: Valcrum Products compleate', 0, 0, '2020-09-21 14:36:49', '2020-09-21 14:36:49'),
(1083, 0, 0, 'your ad title: Valcrum Products compleate', 0, 0, '2020-09-21 14:36:49', '2020-09-21 14:36:49'),
(1084, 0, 0, 'your ad title: Valcrum Products compleate', 0, 0, '2020-09-21 14:36:49', '2020-09-21 14:36:49'),
(1085, 0, 0, 'your ad title: Valcrum Products compleate', 0, 0, '2020-09-21 14:36:50', '2020-09-21 14:36:50'),
(1086, 0, 0, 'your ad title: Valcrum Products compleate', 0, 0, '2020-09-21 14:36:50', '2020-09-21 14:36:50'),
(1087, 0, 0, 'your ad title: Valcrum Products compleate', 0, 0, '2020-09-21 14:36:50', '2020-09-21 14:36:50'),
(1088, 0, 0, 'your ad title: Valcrum Products compleate', 0, 0, '2020-09-21 14:36:50', '2020-09-21 14:36:50'),
(1089, 0, 0, 'your ad title: Valcrum Products compleate', 0, 0, '2020-09-21 14:36:50', '2020-09-21 14:36:50'),
(1090, 0, 0, 'your ad title: Natda compleate', 0, 0, '2020-09-21 14:40:56', '2020-09-21 14:40:56'),
(1091, 0, 0, 'your ad title: Natda compleate', 0, 0, '2020-09-21 14:45:09', '2020-09-21 14:45:09'),
(1092, 0, 0, 'your ad title: Natda compleate', 0, 0, '2020-09-21 15:06:27', '2020-09-21 15:06:27'),
(1093, 0, 0, 'your ad title: Valcrum Products compleate', 0, 0, '2020-09-21 15:06:42', '2020-09-21 15:06:42'),
(1094, 0, 0, 'your ad title: Valcrum Products2 compleate', 0, 0, '2020-09-21 15:13:25', '2020-09-21 15:13:25'),
(1095, 0, 0, 'your ad title: Valcrum Products compleate', 0, 0, '2020-09-21 15:13:39', '2020-09-21 15:13:39'),
(1096, 0, 0, 'your ad title: Valcrum Products2 compleate', 0, 0, '2020-09-21 15:13:48', '2020-09-21 15:13:48'),
(1097, 0, 314, 'Alton commented on your post', 0, 45, '2020-09-23 00:37:10', '2020-09-23 00:37:10'),
(1098, 0, 0, 'your ad title: Valcrum Products2 compleate', 0, 0, '2020-09-24 13:22:06', '2020-09-24 13:22:06'),
(1099, 0, 314, 'Your post like by Varun', 0, 0, '2020-09-29 10:44:18', '2020-09-29 10:44:18'),
(1100, 0, 314, 'Your post like by Varun', 0, 45, '2020-09-29 10:44:19', '2020-09-29 10:44:19'),
(1101, 0, 314, 'Your post like by Varun', 0, 0, '2020-09-30 04:28:06', '2020-09-30 04:28:06'),
(1102, 0, 314, 'Your post like by Varun', 0, 44, '2020-09-30 04:28:20', '2020-09-30 04:28:20'),
(1103, 0, 314, 'Your post like by Varun', 0, 44, '2020-09-30 04:28:22', '2020-09-30 04:28:22'),
(1104, 0, 265, 'Your post like by Varun', 0, 0, '2020-09-30 04:44:47', '2020-09-30 04:44:47'),
(1106, 0, 265, 'Varun commented on your post', 0, 32, '2020-09-30 06:51:42', '2020-09-30 06:51:42'),
(1107, 0, 265, 'Varun commented on your post', 0, 32, '2020-09-30 06:52:44', '2020-09-30 06:52:44'),
(1110, 0, 315, 'Varun commented on your post', 0, 42, '2020-09-30 07:05:20', '2020-09-30 07:05:20'),
(1111, 0, 0, 'your ad title: Valcrum Products compleate', 0, 0, '2020-10-06 15:23:35', '2020-10-06 15:23:35'),
(1112, 0, 259, 'Your post like by Protolabz', 0, 0, '2020-10-09 09:52:20', '2020-10-09 09:52:20'),
(1113, 0, 259, 'Your post like by Protolabz', 0, 59, '2020-10-09 09:52:21', '2020-10-09 09:52:21'),
(1114, 0, 259, 'Your post like by Protolabz', 0, 59, '2020-10-09 09:52:22', '2020-10-09 09:52:22'),
(1115, 0, 259, 'Your post like by Protolabz', 0, 59, '2020-10-09 09:52:29', '2020-10-09 09:52:29'),
(1116, 0, 309, 'Your post like by Alton', 0, 0, '2020-10-14 05:00:02', '2020-10-14 05:00:02'),
(1117, 0, 0, 'your ad title: Valcrum Products compleate', 0, 0, '2020-11-20 21:00:45', '2020-11-20 21:00:45'),
(1118, 0, 0, 'your ad title: Valcrum Products2 compleate', 0, 0, '2020-11-20 21:01:39', '2020-11-20 21:01:39'),
(1119, 0, 0, 'your ad title: Valcrum Products2 compleate', 0, 0, '2020-11-24 11:45:04', '2020-11-24 11:45:04'),
(1120, 0, 319, 'Your post like by ', 0, 0, '2020-12-03 07:07:44', '2020-12-03 07:07:44'),
(1121, 0, 0, 'your ad title: Valcrum Products compleate', 0, 0, '2020-12-03 07:55:47', '2020-12-03 07:55:47'),
(1122, 0, 320, 'drivers good morning', 0, 0, '2020-12-10 03:53:33', '2020-12-10 03:53:33'),
(1123, 0, 319, 'drivers good morning', 0, 0, '2020-12-10 03:53:34', '2020-12-10 03:53:34'),
(1124, 0, 318, 'drivers good morning', 0, 0, '2020-12-10 03:53:34', '2020-12-10 03:53:34'),
(1125, 0, 317, 'drivers good morning', 0, 0, '2020-12-10 03:53:34', '2020-12-10 03:53:34'),
(1126, 0, 316, 'drivers good morning', 0, 0, '2020-12-10 03:53:34', '2020-12-10 03:53:34'),
(1127, 0, 314, 'drivers good morning', 0, 0, '2020-12-10 03:53:34', '2020-12-10 03:53:34'),
(1128, 0, 313, 'drivers good morning', 0, 0, '2020-12-10 03:53:34', '2020-12-10 03:53:34'),
(1129, 0, 309, 'drivers good morning', 0, 0, '2020-12-10 03:53:35', '2020-12-10 03:53:35'),
(1130, 0, 308, 'drivers good morning', 0, 0, '2020-12-10 03:53:35', '2020-12-10 03:53:35'),
(1131, 0, 305, 'drivers good morning', 0, 0, '2020-12-10 03:53:35', '2020-12-10 03:53:35'),
(1132, 0, 302, 'drivers good morning', 0, 0, '2020-12-10 03:53:35', '2020-12-10 03:53:35'),
(1133, 0, 300, 'drivers good morning', 0, 0, '2020-12-10 03:53:35', '2020-12-10 03:53:35'),
(1134, 0, 299, 'drivers good morning', 0, 0, '2020-12-10 03:53:36', '2020-12-10 03:53:36'),
(1135, 0, 297, 'drivers good morning', 0, 0, '2020-12-10 03:53:36', '2020-12-10 03:53:36'),
(1136, 0, 296, 'drivers good morning', 0, 0, '2020-12-10 03:53:36', '2020-12-10 03:53:36'),
(1137, 0, 265, 'drivers good morning', 0, 0, '2020-12-10 03:53:36', '2020-12-10 03:53:36'),
(1138, 0, 262, 'drivers good morning', 0, 0, '2020-12-10 03:53:36', '2020-12-10 03:53:36'),
(1139, 0, 259, 'drivers good morning', 0, 0, '2020-12-10 03:53:37', '2020-12-10 03:53:37'),
(1140, 0, 225, 'drivers good morning', 0, 0, '2020-12-10 03:53:37', '2020-12-10 03:53:37'),
(1141, 0, 40, 'drivers good morning', 0, 0, '2020-12-10 03:53:37', '2020-12-10 03:53:37'),
(1142, 0, 320, 'drivers good morning', 0, 0, '2020-12-10 03:53:43', '2020-12-10 03:53:43'),
(1143, 0, 319, 'drivers good morning', 0, 0, '2020-12-10 03:53:44', '2020-12-10 03:53:44'),
(1144, 0, 318, 'drivers good morning', 0, 0, '2020-12-10 03:53:44', '2020-12-10 03:53:44'),
(1145, 0, 317, 'drivers good morning', 0, 0, '2020-12-10 03:53:44', '2020-12-10 03:53:44'),
(1146, 0, 316, 'drivers good morning', 0, 0, '2020-12-10 03:53:44', '2020-12-10 03:53:44'),
(1147, 0, 314, 'drivers good morning', 0, 0, '2020-12-10 03:53:44', '2020-12-10 03:53:44'),
(1148, 0, 313, 'drivers good morning', 0, 0, '2020-12-10 03:53:45', '2020-12-10 03:53:45'),
(1149, 0, 309, 'drivers good morning', 0, 0, '2020-12-10 03:53:45', '2020-12-10 03:53:45'),
(1150, 0, 308, 'drivers good morning', 0, 0, '2020-12-10 03:53:45', '2020-12-10 03:53:45'),
(1151, 0, 305, 'drivers good morning', 0, 0, '2020-12-10 03:53:45', '2020-12-10 03:53:45'),
(1152, 0, 302, 'drivers good morning', 0, 0, '2020-12-10 03:53:46', '2020-12-10 03:53:46'),
(1153, 0, 300, 'drivers good morning', 0, 0, '2020-12-10 03:53:46', '2020-12-10 03:53:46'),
(1154, 0, 299, 'drivers good morning', 0, 0, '2020-12-10 03:53:46', '2020-12-10 03:53:46'),
(1155, 0, 297, 'drivers good morning', 0, 0, '2020-12-10 03:53:46', '2020-12-10 03:53:46'),
(1156, 0, 296, 'drivers good morning', 0, 0, '2020-12-10 03:53:47', '2020-12-10 03:53:47'),
(1157, 0, 265, 'drivers good morning', 0, 0, '2020-12-10 03:53:47', '2020-12-10 03:53:47'),
(1158, 0, 262, 'drivers good morning', 0, 0, '2020-12-10 03:53:47', '2020-12-10 03:53:47'),
(1159, 0, 259, 'drivers good morning', 0, 0, '2020-12-10 03:53:47', '2020-12-10 03:53:47'),
(1160, 0, 225, 'drivers good morning', 0, 0, '2020-12-10 03:53:48', '2020-12-10 03:53:48'),
(1161, 0, 40, 'drivers good morning', 0, 0, '2020-12-10 03:53:48', '2020-12-10 03:53:48');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `dealer_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `dealer_id`, `product_name`, `img`, `url`, `price`, `created_at`) VALUES
(2, 6, 'pname', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/demy.jpg', '1231232', '', '2020-03-27 11:13:15'),
(3, 163, 'pname', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins19903.jpg', '1231232', '', '2020-03-27 11:13:34'),
(4, 6, 'pname', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins65033.jpg', '', '', '2020-03-27 11:13:53'),
(5, 41, 'pname', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins58072.jpg', 'www.googe.com', '', '2020-03-28 04:52:39'),
(6, 167, 'pname', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins78916.jpg', 'Hdhdh', '', '2020-03-28 06:43:58'),
(7, 168, 'pname', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins61815.jpg', 'Test', '', '2020-03-30 06:36:23'),
(8, 170, 'pname', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins31864.jpg', 'http://trailer.com', '', '2020-04-01 12:26:45'),
(9, 6, 'pname', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins94150.jpg', 'Pet Lover', '', '2020-04-02 17:41:16'),
(10, 0, 'pname', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/demy.jpg', 'This is demo', '', '2020-04-03 06:47:25'),
(11, 0, 'pname', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/demy.jpg', 'Rahul', '', '2020-04-03 06:50:36'),
(14, 0, 'pname', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins91637.jpg', 'Bakery ', '', '2020-04-03 07:03:14'),
(15, 165, 'pname', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins28116.jpg', 'Bakery ', '', '2020-04-03 07:11:45'),
(16, 6, 'pname', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins89705.JPG', 'hiii', '', '2020-04-03 10:10:42'),
(17, 6, 'pname', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins19460.JPG', 'hiii', '', '2020-04-03 10:10:45'),
(18, 6, 'pname', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins95910.png', 'www.haini.com', '', '2020-04-04 07:22:45'),
(19, 164, 'Test', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins22432.jpg', 'http:google.com', '', '2020-04-04 07:44:38'),
(20, 165, 'demo', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins23664.png', 'www.haini.com', '', '2020-04-06 09:35:36'),
(21, 304, 'Location ', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins11302.jpg', 'Mapping', '', '2020-04-07 07:05:09'),
(22, 304, 'Chocolate cake ', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins90969.jpg', 'Bakery', '', '2020-04-14 05:07:41'),
(23, 304, 'Rangoli', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins60289.jpg', 'Colors', '', '2020-04-16 12:49:40'),
(24, 335, 'Varun', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins89525.jpg', 'Varun Business', '', '2020-06-22 10:40:26'),
(25, 304, '', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins86507.jpg', '', '', '2020-07-01 05:09:42'),
(26, 346, 'Bzbzzb', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins50325.jpg', 'Hshssjsj', '', '2020-07-08 07:38:40'),
(27, 346, 'varun', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins37223.png', 'text', '20', '2020-07-09 04:51:38'),
(28, 346, 'Varun Product', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins40061.jpg', 'This Is Used For Abc', '20', '2020-07-09 05:02:08'),
(29, 346, 'varun', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins85980.png', 'text', '20', '2020-07-28 15:15:42'),
(30, 6, 'Tes', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins87401.jpg', 'Jsjsjs', '$25', '2020-07-31 06:54:19'),
(31, 6, 'asdf asdf sadff asdf asdf dgafs asdf asdfd', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins19019.png', 'asdf asdf asdf asdf asdf asddf asdf asdf asdf asdf asdf', '4', '2020-07-31 07:00:24'),
(32, 372, 'Testing', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins83290.jpg', 'Testing Purpose', '20', '2020-07-31 08:23:14'),
(33, 372, 'Testing2', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins72013.jpg', 'Testy Chicken', '10', '2020-07-31 08:41:51'),
(34, 383, 'Testing', 'http://phpstack-102119-1169738.cloudwaysapps.com/img/location/ins89315.jpg', 'I M Demo', '2', '2020-10-13 06:01:50');

-- --------------------------------------------------------

--
-- Table structure for table `product_query`
--

CREATE TABLE `product_query` (
  `id` int(11) NOT NULL,
  `driver_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_query`
--

INSERT INTO `product_query` (`id`, `driver_id`, `product_id`, `create_at`) VALUES
(1, '40', '2', '2020-07-20 12:02:31'),
(2, '177', '1', '2020-07-20 12:17:40'),
(3, '259', '346', '2020-07-20 12:38:15'),
(4, '259', '164', '2020-07-20 12:38:57'),
(5, '259', '335', '2020-07-20 12:39:44'),
(6, '259', '6', '2020-07-20 12:39:53'),
(7, '259', '167', '2020-07-20 12:42:47'),
(8, '302', '346', '2020-07-23 09:27:51'),
(9, '177', '346', '2020-07-23 12:41:08'),
(10, '177', '6', '2020-07-23 12:43:18'),
(11, '177', '335', '2020-07-23 12:44:02'),
(12, '307', '346', '2020-07-24 03:56:05'),
(13, '177', '164', '2020-07-29 06:27:07'),
(14, '177', '2', '2020-07-29 06:30:15'),
(15, '177', '167', '2020-07-29 10:34:17'),
(16, '177', '163', '2020-07-29 10:36:45'),
(17, '308', '346', '2020-07-30 10:38:26'),
(18, '265', '346', '2020-07-30 12:24:16'),
(19, '225', '346', '2020-07-31 05:05:57'),
(20, '265', '372', '2020-07-31 12:13:03'),
(21, '259', '372', '2020-07-31 12:38:36'),
(22, '265', '6', '2020-08-22 10:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `report_post`
--

CREATE TABLE `report_post` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `review_dealer`
--

CREATE TABLE `review_dealer` (
  `id` int(11) NOT NULL,
  `dealer_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `review` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review_dealer`
--

INSERT INTO `review_dealer` (`id`, `dealer_id`, `driver_id`, `location_id`, `review`, `create_at`) VALUES
(2, 1, 51, 0, 'good dealer', '2020-03-04 05:57:17'),
(4, 6, 41, 0, 'okay', '2020-03-04 06:38:11'),
(5, 6, 41, 7, 'this is testing review any that', '2020-03-04 09:16:05'),
(6, 6, 42, 9, 'hello for review testint that zvhshd', '2020-03-04 09:44:56'),
(7, 6, 41, 7, 'ffs hdhdhh gxghdbdh', '2020-03-04 11:33:52'),
(9, 4, 41, 8, 'cccv g hd hg gv HGc ch', '2020-03-04 11:53:51'),
(10, 4, 41, 9, 'd fd fffg dh gf gg fd hh xf dg gg', '2020-03-04 11:54:13'),
(14, 4, 41, 0, 'vvv chhbbbj', '2020-03-04 12:03:10'),
(15, 1, 41, 7, 'cz vfgzgz ggdgsg ffsvzvab', '2020-03-04 12:05:04'),
(16, 4, 41, 0, 'cz ch shsh HC HC hx', '2020-03-04 12:09:47'),
(17, 4, 41, 8, 'xxggxxvcg sdhfuu hxxh', '2020-03-04 12:39:43'),
(18, 6, 41, 0, 'hello', '2020-03-04 12:47:02'),
(19, 2, 57, 0, 'hello', '2020-03-04 12:59:23'),
(21, 2, 41, 7, 'hello ggs hssh', '2020-03-05 04:34:54'),
(22, 1, 41, 6, 'okay', '2020-03-09 05:21:15'),
(23, 6, 41, 8, 'this is review this location', '2020-03-09 07:00:11'),
(24, 6, 41, 10, 'testing one', '2020-03-09 07:32:12'),
(25, 6, 41, 10, 'testing one', '2020-03-09 07:32:12'),
(27, 165, 41, 8, 'phase 8  location update', '2020-03-09 07:51:21'),
(28, 165, 63, 21, 'Good service.', '2020-03-09 11:32:34'),
(33, 6, 174, 11, 'very great person', '2020-04-01 10:34:38'),
(34, 6, 187, 8, 'Very great person \n', '2020-04-01 12:14:40'),
(35, 6, 187, 8, 'Happy to work', '2020-04-01 12:18:49'),
(36, 6, 187, 9, 'Great personality \n', '2020-04-01 12:26:13'),
(169, 6, 41, 8, 'there are testing gdh gdhdh', '2020-03-09 07:38:39'),
(170, 304, 187, 26, 'Nyc place\n\n', '2020-04-16 12:45:26'),
(171, 6, 265, 22, 'good services...', '2020-08-24 10:25:44'),
(172, 6, 40, 19, 'its beautiful ðŸ˜ place', '2020-08-24 10:27:13'),
(173, 6, 265, 23, 'excellent services...', '2020-08-24 12:40:45'),
(174, 6, 265, 14, 'bsbsbdjd', '2020-08-25 05:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `accesstoken` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id`, `accesstoken`, `created_at`, `updated_at`) VALUES
(1, '123hg213g123hg231hg321h123fgj', '2020-02-26 05:06:41', '2020-02-26 05:06:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_location`
--
ALTER TABLE `add_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ades`
--
ALTER TABLE `ades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_noti`
--
ALTER TABLE `admin_noti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_product`
--
ALTER TABLE `admin_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_price`
--
ALTER TABLE `ads_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `block_driver`
--
ALTER TABLE `block_driver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_details`
--
ALTER TABLE `card_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_post`
--
ALTER TABLE `comment_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dealer_crunt_location`
--
ALTER TABLE `dealer_crunt_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dealer_membership`
--
ALTER TABLE `dealer_membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_membership`
--
ALTER TABLE `driver_membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_posts`
--
ALTER TABLE `driver_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_posts_file`
--
ALTER TABLE `driver_posts_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fav_dealer`
--
ALTER TABLE `fav_dealer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `free_dealer`
--
ALTER TABLE `free_dealer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `like_dealer`
--
ALTER TABLE `like_dealer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `like_post`
--
ALTER TABLE `like_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_query`
--
ALTER TABLE `product_query`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_post`
--
ALTER TABLE `report_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_dealer`
--
ALTER TABLE `review_dealer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_location`
--
ALTER TABLE `add_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `ades`
--
ALTER TABLE `ades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_noti`
--
ALTER TABLE `admin_noti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_product`
--
ALTER TABLE `admin_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `ads_price`
--
ALTER TABLE `ads_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `block_driver`
--
ALTER TABLE `block_driver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `card_details`
--
ALTER TABLE `card_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `comment_post`
--
ALTER TABLE `comment_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `dealer`
--
ALTER TABLE `dealer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;

--
-- AUTO_INCREMENT for table `dealer_crunt_location`
--
ALTER TABLE `dealer_crunt_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `dealer_membership`
--
ALTER TABLE `dealer_membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `driver_membership`
--
ALTER TABLE `driver_membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `driver_posts`
--
ALTER TABLE `driver_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `driver_posts_file`
--
ALTER TABLE `driver_posts_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `fav_dealer`
--
ALTER TABLE `fav_dealer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `free_dealer`
--
ALTER TABLE `free_dealer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `like_dealer`
--
ALTER TABLE `like_dealer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `like_post`
--
ALTER TABLE `like_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1162;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product_query`
--
ALTER TABLE `product_query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `report_post`
--
ALTER TABLE `report_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_dealer`
--
ALTER TABLE `review_dealer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
