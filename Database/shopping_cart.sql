-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 30, 2018 at 09:55 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopping_cart`
--
CREATE DATABASE IF NOT EXISTS `shopping_cart` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shopping_cart`;

-- --------------------------------------------------------

--
-- Table structure for table `cat_tbl`
--

CREATE TABLE IF NOT EXISTS `cat_tbl` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `cat_tbl`
--

INSERT INTO `cat_tbl` (`cat_id`, `cat_name`) VALUES
(1, 'Fast Food'),
(2, 'Men'),
(3, 'Women'),
(4, 'Watch'),
(7, 'Home-kitchen'),
(8, 'Mobile-Accessories'),
(9, 'Computers'),
(10, 'Travel-luggage'),
(11, 'Books'),
(12, 'Retail'),
(13, 'Beauty-Perfumes'),
(14, 'Wallet');

-- --------------------------------------------------------

--
-- Table structure for table `order_tbl`
--

CREATE TABLE IF NOT EXISTS `order_tbl` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_amount` int(11) DEFAULT NULL,
  `order_date` varchar(50) DEFAULT NULL,
  `fk_pro_id` int(11) DEFAULT NULL,
  `fk_email_id` varchar(50) DEFAULT NULL,
  `order_qty` int(11) DEFAULT NULL,
  `flag` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=197 ;

--
-- Dumping data for table `order_tbl`
--

INSERT INTO `order_tbl` (`order_id`, `order_amount`, `order_date`, `fk_pro_id`, `fk_email_id`, `order_qty`, `flag`) VALUES
(176, 350, '24/06/2016', 8, 'shahritu@gmail.com', 1, 'order'),
(177, 3000, '24/06/2016', 20, 'shahritu@gmail.com', 1, 'order'),
(178, 350, '24/06/2016', 15, 'shahritu@gmail.com', 1, 'order'),
(179, 500, '27/06/16', 6, 'shahritu@gmail.com', 1, 'order'),
(185, 5000, '27/06/16', 21, 'shahritu@gmail.com', 1, 'cart'),
(186, 1500, '24/06/2016', 18, 'shahritu@gmail.com', 1, 'cart'),
(191, 3000, '27/06/16', 37, 'shahritu@gmail.com', 1, 'order'),
(195, 200, '27/06/16', 12, 'shahritu@gmail.com', 1, 'cart'),
(196, 40000, '13/07/16', 5, 'shahritu@gmail.com', 1, 'cart');

-- --------------------------------------------------------

--
-- Table structure for table `pro_tbl`
--

CREATE TABLE IF NOT EXISTS `pro_tbl` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_photo` varchar(200) DEFAULT NULL,
  `pro_name` varchar(50) NOT NULL,
  `pro_price` int(11) NOT NULL,
  `pro_soh` int(11) DEFAULT NULL,
  `pro_mfg` varchar(50) DEFAULT NULL,
  `pro_warrenty` varchar(50) DEFAULT NULL,
  `pro_color` varchar(40) DEFAULT NULL,
  `pro_detail` varchar(200) DEFAULT NULL,
  `fk_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `pro_tbl`
--

INSERT INTO `pro_tbl` (`pro_id`, `pro_photo`, `pro_name`, `pro_price`, `pro_soh`, `pro_mfg`, `pro_warrenty`, `pro_color`, `pro_detail`, `fk_cat_id`) VALUES
(5, '../images/laptop.jpg', 'Laptop', 40000, 10, 'DELL', '1 year', 'Black', '4GB RAM/1 TB hd', 9),
(6, '../images/mouse.jpg', 'Mouse', 500, 50, 'Ubon', '6 month', 'Silver', 'Wireless Mouse', 8),
(8, '../images/harry.jpg', 'Harry potter', 350, 40, 'publisher', 'Lifetime', 'Silver', 'Book for all reading lover', 11),
(9, '../images/wshirt.jpg', 'Women Shirt', 250, 20, 'La-Zear Fashion Brand', '5 Years', 'Black', 'For women for look beautiful', 3),
(10, '../images/dwatch.jpg', 'Rado', 1500, 10, 'Rado', '1 year', 'Black', 'Digital watch for men and women', 4),
(11, '../images/lipstick.jpg', 'Lipstick', 100, 40, 'Lakme', '2 years', 'Rose Pink', 'All color is available', 13),
(12, '../images/tshirt.jpg', 'T-shirt', 200, 10, 'mvc', '10 Years', 'Black', 'For only men', 2),
(13, '../images/perfume.jpg', 'Escada', 350, 40, 'escada', '10year', 'Black', 'Perfumes ', 13),
(14, '../images/goldwatch.jpg', 'Watch', 1000, 80, 'Titan', '1 year', 'Golden', 'For only women', 4),
(15, '../images/bag.jpg', 'Ladies Bag', 350, 4, '', '6 month', 'Black', 'For only women', 10),
(16, '../images/top.jpg', 'Top', 200, 80, 'abc.pvt.ltd', '1 year', 'Pink', 'Fashion lover', 3),
(17, '../images/2states.jpg', '2 states', 400, 500, 'chetan bhagat', '', 'Red', 'Book for reading lover', 11),
(18, '../images/anu.jpg', 'Top', 1500, 25, 'Fashion', '5 Years', 'Golden', 'Anushka Lovers', 3),
(19, '../images/anu1.jpg', 'Top', 2500, 25, 'Brand Fashion', '10 Years', 'Purple', 'Brand Fashion', 3),
(20, '../images/anu2.jpg', 'Best Top', 3000, 14, 'Brand Fashion', '5 Years', 'Golden', 'Brand Fashion', 3),
(21, '../images/bag.jpg', 'Bag', 5000, 500, 'American-Tourister', '10 Years', 'Purple', 'American-Tourister', 10),
(22, '../images/bag1.jpeg', 'Bag', 4000, 40, 'American-Tourister', '5 Years', 'Black', 'American-Tourister', 10),
(23, '../images/bag2.jpg', 'Bag', 2500, 25, 'American-Tourister', '5 Years', 'Rose Pink', 'American-Tourister', 10),
(24, '../images/bag3.jpg', 'Bag', 400, 500, 'American-Tourister', '5 Years', 'Black', 'American-Tourister', 10),
(25, '../images/boy.jpg', 'Mens Wear', 1500, 25, 'La-Zear Fashion Brand', '2 Years', 'Silver', 'La-Zear Fashion Brand', 2),
(26, '../images/boy1.jpg', 'Mens Wear', 1000, 20, 'La-Zear Fashion Brand', '3 Years', 'Black', 'La-Zear Fashion Brand', 2),
(27, '../images/boy2.jpg', 'Mens Wear', 1500, 40, 'La-Zear Fashion Brand', '2 Years', 'Golden', 'La-Zear Fashion Brand', 2),
(28, '../images/boy4.jpg', 'Boys Cool Fashion', 3000, 500, 'La-Zear Fashion Brand', '4 Years', 'Silver', 'Boys Cool Fashion', 2),
(29, '../images/boy5.jpg', 'Boys Cool Fashion', 1800, 40, 'Brand Fashion', '2 Years', 'Silver', 'Boys Cool Fashion', 2),
(30, '../images/boy6.jpg', 'Boys Cool Fashion', 1500, 20, 'Boys Cool Fashion', '3 Years', 'Purple', 'Boys Cool Fashion', 2),
(31, '../images/boy7.jpg', 'Virat Kohli', 3000, 25, 'Boys Cool Fashion', '3 Years', 'Rose Pink', 'Boys Cool Fashion', 2),
(33, '../images/dress.jpg', 'Women', 6000, 40, 'Girls Cool Fashion', '5 Years', 'Red', 'Girls Cool Fashion', 3),
(34, '../images/dress1.jpg', 'Girls Cool Fashion', 3000, 500, 'La-Zear Fashion Brand', '5 Years', 'Rose Pink', 'Girls Cool Fashion', 3),
(35, '../images/dress4.jpg', 'Women', 3000, 40, 'La-Zear Fashion Brand', '10 Years', 'Black', 'La-Zear Fashion Brand', 3),
(36, '../images/makup.jpg', 'Lakme', 1500, 25, 'Brand Fashion', '3 Years', 'Golden', 'Girls Cool Fashion', 13),
(37, '../images/makup2.jpg', 'Makup', 3000, 25, 'Brand Fashion', '2 Years', 'Golden', 'Girls Cool Fashion', 13),
(38, '../images/makup2.jpg', 'Makup', 1500, 500, 'La-Zear Fashion Brand', '2 Years', 'Golden', 'Girls Cool Fashion', 13),
(39, '../images/purse.jpg', 'Purse', 1500, 25, 'Brand Fashion', '5 Years', 'Golden', 'Girls Cool Fashion', 7),
(40, '../images/top.jpg', 'Top', 2500, 20, 'La-Zear Fashion Brand', '2 Years', 'Black', 'Girls Cool Fashion', 3),
(41, '../images/top1.jpg', 'Top', 2500, 500, 'Brand Fashion', '5 Years', 'Red', 'La-Zear Fashion Brand', 3),
(42, '../images/top3.jpg', 'Top', 3000, 500, 'La-Zear Fashion Brand', '2 Years', 'Golden', 'Girls Cool Fashion', 3),
(43, '../images/purse1.jpg', 'Purse', 1500, 25, 'La-Zear Fashion Brand', '5 Years', 'Rose Pink', 'Girls Cool Fashion', 7),
(44, '../images/purse3.jpg', 'Purse', 150, 25, 'Brand Fashion', '5 Years', 'Golden', 'Girls Cool Fashion', 7),
(45, '../images/wallet.jpg', 'Wallet', 800, 10, 'Raymond', '5 Years', 'Black', 'Brand Fashion', 14),
(46, '../images/wallet1.jpg', 'Wallet', 400, 14, 'Brand Fashion', '5 Years', 'Black', 'Boys Cool Fashion', 14),
(47, '../images/watch.jpg', 'Titan', 1500, 500, 'La-Zear Fashion Brand', '5 Years', 'Black', 'La-Zear Fashion Brand', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE IF NOT EXISTS `user_tbl` (
  `email_id` varchar(50) NOT NULL,
  `profile_photo` varchar(200) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`email_id`, `profile_photo`, `user_name`, `password`, `mobile_no`, `city`, `gender`, `type`) VALUES
('devi@gmail.com', '', 'Devisha', '4567', '256478', 'Baroda', 'Female', 'User'),
('preet@gmail.com', '', 'Preet', '12345', '589746', 'Mumbai', 'Female', 'User'),
('priyansh@gmail.com', '', 'Priyansh', '1234', '8905106525', 'Ahmedabad', 'Male', 'Admin'),
('priyanshsheth1997@gmail.com', '', 'Priyansh', 'Priyansh', '1234', 'Ahmedabad', 'Male', 'User'),
('riya@gmail.com', '', 'Akdu', 'riya', '123456', 'Mumbai', 'Female', 'User'),
('rutvi@gmail.com', '', 'Rutvi', 'rutvi', '589746', 'Ahmedabad', 'Female', 'Admin'),
('shahritu@gmail.com', '../profilephoto/Rutvi.JPG', 'Rutvi', '1234', '9427711474', 'Ahmedabad', 'Female', 'User'),
('sheez_swara@gmail.com', '../profilephoto/Swara.png', 'swara', '1234', '1234567', 'Mumbai', 'Female', 'User');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
