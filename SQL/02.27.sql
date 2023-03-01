-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.27-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for online_rest
CREATE DATABASE IF NOT EXISTS `online_rest` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `online_rest`;

-- Dumping structure for table online_rest.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `adm_id` int(222) NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`adm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table online_rest.admin: ~2 rows (approximately)
INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
	(6, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', '', '2018-04-09 07:36:18'),
	(8, 'abc888', '6d0361d5777656072438f6e314a852bc', 'abc@gmail.com', 'QX5ZMN', '2018-04-13 18:12:30');

-- Dumping structure for table online_rest.admin_codes
CREATE TABLE IF NOT EXISTS `admin_codes` (
  `id` int(222) NOT NULL AUTO_INCREMENT,
  `codes` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table online_rest.admin_codes: ~6 rows (approximately)
INSERT INTO `admin_codes` (`id`, `codes`) VALUES
	(1, 'QX5ZMN'),
	(2, 'QFE6ZM'),
	(3, 'QMZR92'),
	(4, 'QPGIOV'),
	(5, 'QSTE52'),
	(6, 'QMTZ2J');

-- Dumping structure for table online_rest.dishes
CREATE TABLE IF NOT EXISTS `dishes` (
  `d_id` int(222) NOT NULL AUTO_INCREMENT,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table online_rest.dishes: ~7 rows (approximately)
INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
	(11, 48, 'Bonefish', 'Three ounces of lightly seasoned fresh tilapia ', 55.77, '5ad7582e2ec9c.jpg'),
	(12, 48, 'Hard Rock Cafe', 'A mix of chopped lettuces, shredded cheese, chicken cubes', 22.12, '5ad7590d9702b.jpg'),
	(13, 49, 'Uno Pizzeria & Grill', 'Kids can choose their pasta shape, type of sauce, favorite veggies (like broccoli or mushrooms)', 12.35, '5ad7597aa0479.jpg'),
	(14, 50, 'Red Robins Chick on a Stick', 'Plain grilled chicken breast? Blah.', 34.99, '5ad759e1546fc.jpg'),
	(15, 51, 'Lyfe Kitchens Tofu Taco', 'This chain, known for a wide selection of vegetarian and vegan choices', 11.99, '5ad75a1869e93.jpg'),
	(16, 52, 'Houlihans Mini Cheeseburger', 'Creekstone Farms, where no antibiotics or growth hormones are used', 22.55, '5ad75a5dbb329.jpg'),
	(17, 53, 'jklmno', 'great taste great whatever', 17.99, '5ad79fcf59e66.jpg');

-- Dumping structure for table online_rest.remark
CREATE TABLE IF NOT EXISTS `remark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table online_rest.remark: ~9 rows (approximately)
INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
	(62, 32, 'in process', 'hi', '2018-04-18 17:35:52'),
	(63, 32, 'closed', 'cc', '2018-04-18 17:36:46'),
	(64, 32, 'in process', 'fff', '2018-04-18 18:01:37'),
	(65, 32, 'closed', 'its delv', '2018-04-18 18:08:55'),
	(66, 34, 'in process', 'on a way', '2018-04-18 18:56:32'),
	(67, 35, 'closed', 'ok', '2018-04-18 18:59:08'),
	(68, 37, 'in process', 'on the way!', '2018-04-18 19:50:06'),
	(69, 37, 'rejected', 'if admin cancel for any reason this box is for remark only for buter perposes', '2018-04-18 19:51:19'),
	(70, 37, 'closed', 'delivered success', '2018-04-18 19:51:50'),
	(71, 39, 'in process', '????????????', '2023-02-27 13:15:47'),
	(72, 40, 'closed', '?? ??', '2023-02-27 13:16:31'),
	(73, 38, 'rejected', '?????????', '2023-02-27 13:16:59'),
	(74, 61, 'in process', 'gogo', '2023-02-27 13:46:53'),
	(75, 62, 'closed', 'fast', '2023-02-27 13:47:13');

-- Dumping structure for table online_rest.restaurant
CREATE TABLE IF NOT EXISTS `restaurant` (
  `rs_id` int(222) NOT NULL AUTO_INCREMENT,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`rs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table online_rest.restaurant: ~6 rows (approximately)
INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
	(48, 5, 'Hari Burger', 'HariBurger@gmail.com', ' 090412 64676', 'HariBurger.com', '7am', '4pm', 'mon-tue', ' Palace,   natwar jalandhar', '5ad74ce37c383.jpg', '2018-04-18 13:49:23'),
	(49, 5, 'The Great Kabab Factory', 'kwbab@gmail.com', '011 2677 9070', 'kwbab.com', '6am', '5pm', 'mon-fri', 'Radisson Blu Plaza Hotel, Delhi Airport, NH-8, New Delhi, 110037', '5ad74de005016.jpg', '2018-04-18 13:53:36'),
	(50, 6, 'Aarkay Vaishno Dhaba', 'Vaishno@gmail.com', '090410 35147', 'Vaishno.com', '6am', '6pm', 'mon-sat', 'Bhargav Nagar, Jalandhar - Nakodar Rd, Jalandhar, Punjab 144003', '5ad74e5310ae4.jpg', '2018-04-18 13:55:31'),
	(51, 7, 'Martini', 'martin@gmail.com', '3454345654', 'martin.com', '8am', '4pm', 'mon-thu', '399 L Near Apple Showroom, Model Town,', '5ad74ebf1d103.jpg', '2018-04-18 13:57:19'),
	(52, 8, 'hudson', 'hud@gmail.com', '2345434567', 'hudson.com', '6am', '7pm', 'mon-fri', 'Opposite Lovely Sweets, Nakodar Road, Jalandhar, Punjab 144001', '5ad756f1429e3.jpg', '2018-04-18 14:32:17'),
	(53, 9, 'kriyana store', 'kari@gmail.com', '4512545784', 'kari.com', '7am', '7pm', 'mon-sat', 'near kalu gali hotel india what everrrr.', '5ad79e7d01c5a.jpg', '2018-04-18 19:37:33');

-- Dumping structure for table online_rest.res_category
CREATE TABLE IF NOT EXISTS `res_category` (
  `c_id` int(222) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table online_rest.res_category: ~5 rows (approximately)
INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
	(5, 'grill', '2018-04-14 18:45:28'),
	(6, 'pizza', '2018-04-14 18:44:56'),
	(7, 'pasta', '2018-04-14 18:45:13'),
	(8, 'thaifood', '2018-04-14 18:32:56'),
	(9, 'fish', '2018-04-14 18:44:33');

-- Dumping structure for table online_rest.users
CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int(222) NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table online_rest.users: ~3 rows (approximately)
INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
	(31, 'navjot789', 'navjot', 'singh', 'ns949405@gmail.com', '9041240385', '6d0361d5777656072438f6e314a852bc', 'badri col phase 2', 1, '2018-04-18 10:05:03'),
	(32, 'navjot890', 'nav', 'singh', 'nds949405@gmail.com', '6232125458', '6d0361d5777656072438f6e314a852bc', 'badri col phase 1', 1, '2018-04-18 09:50:56'),
	(33, 'test', 'test', 'test', '1234@gmail.com', '0123456789', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, '2023-02-27 13:01:51');

-- Dumping structure for table online_rest.users_orders
CREATE TABLE IF NOT EXISTS `users_orders` (
  `o_id` int(222) NOT NULL AUTO_INCREMENT,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table online_rest.users_orders: ~2 rows (approximately)
INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
	(61, 33, 'Hard Rock Cafe', 1, 22.12, 'in process', '2023-02-27 13:46:53'),
	(62, 33, 'Uno Pizzeria & Grill', 1, 12.35, 'closed', '2023-02-27 13:47:13');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
