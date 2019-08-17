-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2019 at 09:11 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dropdown_filter`
--

-- --------------------------------------------------------

--
-- Table structure for table `framework`
--

CREATE TABLE `framework` (
  `framework_id` int(11) NOT NULL,
  `framework_name` varchar(100) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `framework`
--

INSERT INTO `framework` (`framework_id`, `framework_name`, `language_id`, `created_on`) VALUES
(1, 'Laravel', 1, '2019-08-15 17:01:35'),
(2, 'CodeIgniter', 1, '2019-08-15 17:01:35'),
(3, 'Symfony', 1, '2019-08-15 17:01:35'),
(4, 'CakePHP', 1, '2019-08-15 17:01:35'),
(5, 'Yii', 1, '2019-08-15 17:01:35'),
(6, 'Zend Framework', 1, '2019-08-15 17:01:35'),
(7, 'Phalcon', 1, '2019-08-15 17:01:35'),
(8, 'FuelPHP', 1, '2019-08-15 17:01:35'),
(9, 'PHPixie', 1, '2019-08-15 17:01:35'),
(10, 'Slim', 1, '2019-08-15 17:01:35'),
(11, 'dJango', 2, '2019-08-15 17:01:35'),
(12, 'Pyramid  ', 2, '2019-08-15 17:01:35'),
(13, 'TurboGears', 2, '2019-08-15 17:01:35'),
(14, 'Web2py', 2, '2019-08-15 17:01:35'),
(15, 'Flask', 2, '2019-08-15 17:01:35'),
(16, 'Bottle', 2, '2019-08-15 17:01:35'),
(17, 'CherryPy', 2, '2019-08-15 17:01:35'),
(18, 'Sanic', 2, '2019-08-15 17:01:35'),
(19, 'Tornado', 2, '2019-08-15 17:01:35'),
(20, 'Dash', 2, '2019-08-15 17:01:35');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` int(11) NOT NULL,
  `language_name` varchar(100) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `language_name`, `added_on`) VALUES
(1, 'PHP', '2019-08-15 16:58:18'),
(2, 'Python', '2019-08-15 16:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `version`
--

CREATE TABLE `version` (
  `version_id` int(10) NOT NULL,
  `version` varchar(5) NOT NULL,
  `framework_id` int(10) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `version`
--

INSERT INTO `version` (`version_id`, `version`, `framework_id`, `added_on`) VALUES
(1, '5.8', 1, '2019-08-15 18:51:17'),
(2, '3.1.1', 2, '2019-08-15 18:51:17'),
(3, '4.6.4', 3, '2019-08-15 19:01:32'),
(4, '3.8', 4, '2019-08-15 19:01:32'),
(5, '2.0.2', 5, '2019-08-15 19:01:32'),
(6, '2.4.9', 6, '2019-08-15 19:01:32'),
(7, '4.0', 7, '2019-08-15 19:01:32'),
(8, '1.8.2', 8, '2019-08-15 19:01:32'),
(9, '2.x', 9, '2019-08-15 19:01:32'),
(10, '4.1.0', 10, '2019-08-15 19:01:32'),
(11, '2.2.4', 11, '2019-08-15 19:01:32'),
(12, '1.10', 12, '2019-08-15 19:01:32'),
(13, '2.4.0', 13, '2019-08-16 16:20:34'),
(14, '2.18', 14, '2019-08-16 16:21:24'),
(15, '1.1.x', 15, '2019-08-16 16:23:22'),
(16, '0.12', 16, '2019-08-16 16:24:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `framework`
--
ALTER TABLE `framework`
  ADD PRIMARY KEY (`framework_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `version`
--
ALTER TABLE `version`
  ADD PRIMARY KEY (`version_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `framework`
--
ALTER TABLE `framework`
  MODIFY `framework_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `version`
--
ALTER TABLE `version`
  MODIFY `version_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
