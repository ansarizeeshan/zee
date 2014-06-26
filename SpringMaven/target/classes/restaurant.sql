-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2014 at 05:14 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_details`
--

CREATE TABLE IF NOT EXISTS `category_details` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(40) NOT NULL,
  `category_description` text NOT NULL,
  `category_image` text NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table to list all present categories';

--
-- Dumping data for table `category_details`
--

INSERT INTO `category_details` (`category_id`, `category_title`, `category_description`, `category_image`) VALUES
(1, 'Starters', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `category_item_mapping`
--

CREATE TABLE IF NOT EXISTS `category_item_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table to store category item mapping' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `employee_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `position_id` (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Lists the employees of the restaurant';

-- --------------------------------------------------------

--
-- Table structure for table `employee_details`
--

CREATE TABLE IF NOT EXISTS `employee_details` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `employee_dob` date NOT NULL,
  `employee_address` text NOT NULL,
  `employee_phone` varchar(10) NOT NULL,
  `current_status` int(11) NOT NULL COMMENT 'Employee availability status',
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table to store employee details';

-- --------------------------------------------------------

--
-- Table structure for table `inventory_category_mapping`
--

CREATE TABLE IF NOT EXISTS `inventory_category_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_id` (`inventory_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table to map categories to inventory' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_details`
--

CREATE TABLE IF NOT EXISTS `inventory_details` (
  `inventory_id` int(11) NOT NULL,
  `inventory_title` text NOT NULL,
  `inventory_description` text NOT NULL,
  PRIMARY KEY (`inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Details about the inventory';

-- --------------------------------------------------------

--
-- Table structure for table `item_details`
--

CREATE TABLE IF NOT EXISTS `item_details` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(40) NOT NULL,
  `item_description` text NOT NULL,
  `item_price` decimal(10,0) NOT NULL,
  `item_photo` text NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table for Item details';

-- --------------------------------------------------------

--
-- Table structure for table `position_details`
--

CREATE TABLE IF NOT EXISTS `position_details` (
  `position_id` int(11) NOT NULL,
  `position_title` varchar(40) NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Details about the positions that an employee can have';

-- --------------------------------------------------------

--
-- Table structure for table `tables_info`
--

CREATE TABLE IF NOT EXISTS `tables_info` (
  `table_id` int(11) NOT NULL,
  `no_of_chairs` int(11) NOT NULL,
  `current_status_id` int(11) NOT NULL COMMENT 'Availability status of the table',
  PRIMARY KEY (`table_id`),
  KEY `current_status_id` (`current_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Information about the diningh tables';

-- --------------------------------------------------------

--
-- Table structure for table `table_status`
--

CREATE TABLE IF NOT EXISTS `table_status` (
  `current_status_id` int(11) NOT NULL COMMENT 'Status ID as used in tables_info table',
  `status` varchar(30) NOT NULL COMMENT 'Description of status id',
  PRIMARY KEY (`current_status_id`),
  UNIQUE KEY `current_status_id` (`current_status_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Description of status id';

-- --------------------------------------------------------

--
-- Table structure for table `table_track`
--

CREATE TABLE IF NOT EXISTS `table_track` (
  `table_id` int(11) NOT NULL,
  `current_status_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`table_id`),
  KEY `current_status_id` (`current_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Keeping tracks of tables';

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE IF NOT EXISTS `user_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='User Login details' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `user_id`, `password`, `employee_id`) VALUES
(1, 'w101', 'password', 101);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_item_mapping`
--
ALTER TABLE `category_item_mapping`
  ADD CONSTRAINT `category_item_mapping_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item_details` (`item_id`),
  ADD CONSTRAINT `category_item_mapping_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_details` (`category_id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee_details` (`employee_id`),
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `position_details` (`position_id`);

--
-- Constraints for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD CONSTRAINT `employee_details_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `inventory_category_mapping`
--
ALTER TABLE `inventory_category_mapping`
  ADD CONSTRAINT `inventory_category_mapping_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category_details` (`category_id`),
  ADD CONSTRAINT `inventory_category_mapping_ibfk_1` FOREIGN KEY (`inventory_id`) REFERENCES `inventory_details` (`inventory_id`);

--
-- Constraints for table `tables_info`
--
ALTER TABLE `tables_info`
  ADD CONSTRAINT `tables_info_ibfk_1` FOREIGN KEY (`current_status_id`) REFERENCES `table_status` (`current_status_id`);

--
-- Constraints for table `table_track`
--
ALTER TABLE `table_track`
  ADD CONSTRAINT `table_track_ibfk_1` FOREIGN KEY (`table_id`) REFERENCES `tables_info` (`table_id`),
  ADD CONSTRAINT `table_track_ibfk_2` FOREIGN KEY (`current_status_id`) REFERENCES `table_status` (`current_status_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
