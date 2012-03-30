-- phpMyAdmin SQL Dump
-- version 3.4.5deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 30, 2012 at 06:20 PM
-- Server version: 5.1.61
-- PHP Version: 5.3.6-13ubuntu3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cakephp`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `description` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`) VALUES
(1, 'My First Post', 'great posting with lots of information'),
(2, 'Another Post', 'another interesting article'),
(3, '', ''),
(4, 'My First Post', 'great posting with lots of information'),
(5, 'Another Post', 'another interesting article'),
(6, '', ''),
(7, 'My First Post', 'great posting with lots of information'),
(8, 'Another Post', 'another interesting article'),
(9, '', ''),
(10, 'My First Post', 'great posting with lots of information'),
(11, 'Another Post', 'another interesting article'),
(12, '', ''),
(13, 'My First Post', 'great posting with lots of information'),
(14, 'Another Post', 'another interesting article'),
(15, '', ''),
(16, 'My First Post', 'great posting with lots of information'),
(17, 'Another Post', 'another interesting article'),
(18, '', ''),
(19, 'My First Post', 'great posting with lots of information'),
(20, 'Another Post', 'another interesting article'),
(21, '', ''),
(22, 'My First Post', 'great posting with lots of information'),
(23, 'Another Post', 'another interesting article'),
(24, '', ''),
(25, 'My First Post', 'great posting with lots of information'),
(26, 'Another Post', 'another interesting article'),
(27, '', ''),
(28, 'My First Post', 'great posting with lots of information'),
(29, 'Another Post', 'another interesting article'),
(30, '', ''),
(31, 'My First Post', 'great posting with lots of information'),
(32, 'Another Post', 'another interesting article'),
(33, '', ''),
(34, 'My First Post', 'great posting with lots of information'),
(35, 'Another Post', 'another interesting article'),
(36, '', ''),
(37, 'My First Post', 'great posting with lots of information'),
(38, 'Another Post', 'another interesting article');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
