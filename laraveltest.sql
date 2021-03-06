-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 08, 2014 at 06:45 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laraveltest`
--
CREATE DATABASE IF NOT EXISTS `laraveltest` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laraveltest`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_03_01_171109_create_nerds_table', 1),
('2014_03_02_064711_create_users_table', 2),
('2014_03_08_053748_create_sticky_data_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `nerds`
--

CREATE TABLE IF NOT EXISTS `nerds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nerd_level` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nerds`
--

INSERT INTO `nerds` (`id`, `name`, `email`, `nerd_level`, `created_at`, `updated_at`) VALUES
(1, 'maulik', 'kanani.maulikb@gmail.com', 2, '2014-03-01 12:02:29', '2014-03-01 12:07:06');

-- --------------------------------------------------------

--
-- Table structure for table `sticky_data`
--

CREATE TABLE IF NOT EXISTS `sticky_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sitck_data` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `sticky_data`
--

INSERT INTO `sticky_data` (`id`, `sitck_data`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '', 2, '2014-03-08 00:58:35', '2014-03-08 00:58:35'),
(2, '', 2, '2014-03-08 01:00:43', '2014-03-08 01:00:43'),
(3, '', 2, '2014-03-08 01:04:41', '2014-03-08 01:04:41'),
(4, '', 2, '2014-03-08 01:04:45', '2014-03-08 01:04:45'),
(5, '', 2, '2014-03-08 01:04:47', '2014-03-08 01:04:47'),
(6, '', 2, '2014-03-08 01:04:49', '2014-03-08 01:04:49'),
(7, '', 2, '2014-03-08 01:04:52', '2014-03-08 01:04:52'),
(8, '', 2, '2014-03-08 01:04:58', '2014-03-08 01:04:58'),
(9, '', 2, '2014-03-08 01:05:00', '2014-03-08 01:05:00'),
(10, '', 2, '2014-03-08 01:05:05', '2014-03-08 01:05:05'),
(11, '', 2, '2014-03-08 01:05:07', '2014-03-08 01:05:07'),
(12, '', 2, '2014-03-08 01:05:09', '2014-03-08 01:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(150) NOT NULL,
  `username` varchar(32) NOT NULL,
  `email` varchar(320) NOT NULL,
  `lastname` varchar(150) DEFAULT NULL,
  `password` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `username`, `email`, `lastname`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Chris Sevilleja', 'sevilayha', 'chris@scotch.io', NULL, '$2y$10$iBzAQ6D9sKhJHahvuHe.Jud/45jWlaHCBjTwRczqWopGYRepbPUru', '2014-03-02 01:23:49', '2014-03-02 01:23:49'),
(2, 'Maulik kanai', 'test', 'mk@mk.com', NULL, '$2y$10$aKN0ohIwgDF1yzhSusOZkedBNBVsehP06IknOqy0QidDTlvrTv/R.', '2014-03-02 01:23:49', '2014-03-02 01:23:49');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
