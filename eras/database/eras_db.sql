-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2020 at 09:44 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eras_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_registrar`
--

CREATE TABLE `assigned_registrar` (
  `id` int(30) NOT NULL,
  `event_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assigned_registrar`
--

INSERT INTO `assigned_registrar` (`id`, `event_id`, `user_id`) VALUES
(6, 1, 2),
(7, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `attendees`
--

CREATE TABLE `attendees` (
  `id` int(30) NOT NULL,
  `event_id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Awaiting/Absent=1=Present',
  `date_created` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendees`
--

INSERT INTO `attendees` (`id`, `event_id`, `firstname`, `lastname`, `middlename`, `contact`, `gender`, `email`, `address`, `status`, `date_created`) VALUES
(2, 1, 'Mike', 'Williams', 'G', '+18456-5455-55', 'Male', 'mwilliams@sample.com', 'Sample Address', 1, 2147483647),
(3, 1, 'adsasd', 'asda', 'asda', '+14526-5455-44', 'Male', 'cblake@sample.com', 'asdasdasdasd', 1, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(30) NOT NULL,
  `event_datetime` datetime NOT NULL,
  `event` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `venue` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 Pending, 1=Open,2=Done',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_datetime`, `event`, `description`, `venue`, `status`, `date_created`) VALUES
(1, '2020-11-13 08:00:00', 'Sample Only', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vitae nunc eros. Etiam porttitor lacinia velit a fringilla. Vivamus molestie imperdiet nulla, quis varius ante finibus sed. In sit amet ex iaculis, vulputate diam laoreet, pulvinar velit. Donec accumsan risus vitae sapien vehicula, eget blandit nisi faucibus. Etiam placerat accumsan est, sit amet tempus erat vulputate ut. Suspendisse fermentum consectetur odio non auctor. Mauris sit amet imperdiet libero. Phasellus tempor, turpis vitae interdum blandit, nulla sem consectetur metus, in dictum est diam sed mi. Proin et vulputate neque, lacinia lacinia elit. Etiam elementum nunc nibh, gravida malesuada nisi varius nec. Integer at odio eu augue gravida vestibulum sed a risus. Cras volutpat ante sit amet vehicula convallis.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Mauris eget metus sit amet ante facilisis accumsan. Suspendisse nunc quam, egestas at lorem quis, pretium fringilla elit. Ut nec elit urna. Etiam neque ante, semper nec turpis at, aliquet condimentum lectus. Etiam id nibh at est molestie porta. In non scelerisque massa. Cras bibendum venenatis est et mattis. Donec ante diam, mollis quis lectus eget, bibendum interdum est.</p>															', 'Sample Venue', 2, '2020-11-13 10:04:10'),
(2, '2020-11-14 12:00:00', 'Event 2', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vitae nunc eros. Etiam porttitor lacinia velit a fringilla. Vivamus molestie imperdiet nulla, quis varius ante finibus sed. In sit amet ex iaculis, vulputate diam laoreet, pulvinar velit. Donec accumsan risus vitae sapien vehicula, eget blandit nisi faucibus. Etiam placerat accumsan est, sit amet tempus erat vulputate ut. Suspendisse fermentum consectetur odio non auctor. Mauris sit amet imperdiet libero. Phasellus tempor, turpis vitae interdum blandit, nulla sem consectetur metus, in dictum est diam sed mi. Proin et vulputate neque, lacinia lacinia elit. Etiam elementum nunc nibh, gravida malesuada nisi varius nec. Integer at odio eu augue gravida vestibulum sed a risus. Cras volutpat ante sit amet vehicula convallis.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Mauris eget metus sit amet ante facilisis accumsan. Suspendisse nunc quam, egestas at lorem quis, pretium fringilla elit. Ut nec elit urna. Etiam neque ante, semper nec turpis at, aliquet condimentum lectus. Etiam id nibh at est molestie porta. In non scelerisque massa. Cras bibendum venenatis est et mattis. Donec ante diam, mollis quis lectus eget, bibendum interdum est.</p>															', 'Venue 2', 0, '2020-11-13 13:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Admin,2= users',
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(1, 'Admin', 'Admin', '', '+12354654787', 'Sample', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, '', '2020-11-11 15:35:19'),
(2, 'John', 'Smith', 'C', '+18456-5455-55', 'Sample Address', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 2, '1605246720_avatar.jpg', '2020-11-13 13:40:15'),
(3, 'George', 'Wilson', 'D', '+6948 8542 623', 'Sample', 'gwilson@sample.com', 'd40242fb23c45206fadee4e2418f274f', 2, '1605249300_no-image-available.png', '2020-11-13 14:35:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned_registrar`
--
ALTER TABLE `assigned_registrar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendees`
--
ALTER TABLE `attendees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigned_registrar`
--
ALTER TABLE `assigned_registrar`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attendees`
--
ALTER TABLE `attendees`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
