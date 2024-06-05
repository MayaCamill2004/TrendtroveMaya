-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 05, 2024 at 03:47 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Trendtrove`
--

-- --------------------------------------------------------

--
-- Table structure for table `Analytics`
--

CREATE TABLE `Analytics` (
  `analytic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `interaction_type` varchar(50) NOT NULL,
  `timestamp` datetime NOT NULL,
  `associated_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Analytics`
--

INSERT INTO `Analytics` (`analytic_id`, `user_id`, `interaction_type`, `timestamp`, `associated_id`) VALUES
(1, 1, 'view', '2024-05-05 08:59:10', 1),
(2, 4, 'like', '2024-05-05 09:10:23', 1),
(3, 8, 'comment', '2024-05-05 11:10:36', 1),
(6, 18, 'view', '2024-06-04 21:12:58', 4);

-- --------------------------------------------------------

--
-- Table structure for table `Boards`
--

CREATE TABLE `Boards` (
  `board_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Boards`
--

INSERT INTO `Boards` (`board_id`, `user_id`, `name`, `description`) VALUES
(1, 3, 'SummerFits', NULL),
(2, 4, 'Autumn Fits', NULL),
(3, 2, 'Winter aesthetic', NULL),
(4, 18, '', NULL),
(5, 18, 'Spain outfits', NULL),
(6, 18, 'spain outfit', NULL),
(7, 18, 'spring outfits', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `board_pins`
--

CREATE TABLE `board_pins` (
  `board_pin_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  `pin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `board_pins`
--

INSERT INTO `board_pins` (`board_pin_id`, `board_id`, `pin_id`) VALUES
(1, 5, 4),
(2, 5, 4),
(3, 6, 2),
(4, 7, 12),
(5, 5, 22),
(6, 6, 22),
(7, 5, 20);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `pin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `pin_id`, `user_id`, `content`, `timestamp`) VALUES
(1, 1, 6, 'Nice fit', '2024-05-04 15:47:08'),
(2, 2, 18, 'love it', '2024-05-30 11:55:23'),
(3, 2, 18, 'fav outfit', '2024-05-30 11:55:36'),
(5, 3, 4, 'love it ', '2024-05-30 12:53:32'),
(6, 1, 18, 'lovely', '2024-05-30 12:59:39'),
(7, 1, 18, 'lovely', '2024-05-30 13:00:44'),
(8, 1, 18, 'lovely', '2024-05-30 13:05:25'),
(9, 1, 18, 'lovely', '2024-05-30 13:05:54'),
(10, 1, 18, 'lovely', '2024-05-30 13:07:20'),
(11, 1, 18, 'lovely', '2024-05-30 13:07:50'),
(25, 2, 18, 'love', '2024-05-30 13:41:06'),
(26, 2, 17, 'cute', '2024-05-30 13:41:55'),
(27, 4, 18, 'lovely', '2024-05-30 14:23:10'),
(28, 7, 32, 'Nice one', '2024-05-31 13:55:52'),
(29, 13, 18, 'cute', '2024-06-02 12:31:21'),
(30, 1, 18, 'where jeans from?\r\n', '2024-06-04 18:29:03');

-- --------------------------------------------------------

--
-- Table structure for table `Followers`
--

CREATE TABLE `Followers` (
  `follower_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `follower_user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Followers`
--

INSERT INTO `Followers` (`follower_id`, `user_id`, `follower_user_id`, `created_at`) VALUES
(2, 32, 33, '2024-05-31 09:26:49'),
(5, 31, 32, '2024-05-31 13:50:32'),
(6, 33, 32, '2024-05-31 14:14:11'),
(10, 18, 18, '2024-06-04 17:45:52'),
(11, 18, 18, '2024-06-04 17:45:54'),
(16, 33, 18, '2024-06-05 14:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `Messages`
--

CREATE TABLE `Messages` (
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Messages`
--

INSERT INTO `Messages` (`message_id`, `sender_id`, `receiver_id`, `content`, `timestamp`) VALUES
(1, 4, 8, 'Loved Kim K new outfit from the vlog ', '2024-05-04 15:46:34'),
(2, 18, 8, 'I liked your last post ', '2024-05-30 13:00:33'),
(3, 18, 18, 'where did you buy your last outfit?', '2024-05-30 13:01:57'),
(5, 18, 2, 'love it', '2024-05-31 05:19:26'),
(6, 31, 33, 'Nice outfit\r\n', '2024-05-31 05:38:19'),
(7, 33, 33, 'thank you', '2024-05-31 06:05:17'),
(8, 33, 33, 'thank you', '2024-05-31 06:05:18'),
(9, 33, 33, 'thank you', '2024-05-31 06:05:19'),
(10, 31, 31, 'thanks', '2024-05-31 06:25:12'),
(11, 31, 31, 'thanks', '2024-05-31 06:25:19'),
(12, 32, 32, 'ok', '2024-05-31 06:49:30'),
(13, 18, 18, 'hi', '2024-06-02 11:09:25'),
(14, 18, 18, 'hi', '2024-06-02 11:09:28'),
(15, 18, 18, 'love', '2024-06-04 14:10:15'),
(16, 18, 18, 'love', '2024-06-04 14:10:17'),
(17, 18, 33, 'm', '2024-06-04 15:20:00'),
(18, 18, 18, 'ok', '2024-06-04 15:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `Notifications`
--

CREATE TABLE `Notifications` (
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `timestamp` datetime NOT NULL,
  `read` tinyint(4) NOT NULL,
  `associated_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Notifications`
--

INSERT INTO `Notifications` (`notification_id`, `user_id`, `type`, `content`, `timestamp`, `read`, `associated_id`) VALUES
(1, 4, 'message', 'You have a new message', '2024-05-05 08:17:36', 1, 0),
(2, 8, 'pin', 'Martina and others saved your pin', '2024-05-05 08:19:41', 1, 0),
(3, 9, 'comment', 'Jordon commented on your pin ', '2024-05-05 08:24:58', 1, 0),
(4, 7, 'comment', 'User with ID 18 commented on your pin.', '2024-05-30 13:07:50', 0, 0),
(5, 18, 'comment', 'User with ID 18 commented on your pin.', '2024-05-30 14:23:10', 0, 0),
(6, 33, 'message', 'You have received a new message from user ID 33.', '2024-05-31 08:05:17', 0, 0),
(7, 33, 'message', 'You have received a new message from user ID 33.', '2024-05-31 08:05:18', 0, 0),
(8, 33, 'message', 'You have received a new message from user ID 33.', '2024-05-31 08:05:19', 0, 0),
(9, 31, 'message', 'You have received a new message from user ID 31.', '2024-05-31 08:25:12', 0, 0),
(10, 31, 'message', 'You have received a new message from user ID 31.', '2024-05-31 08:25:19', 0, 0),
(11, 32, 'message', 'You have received a new message from user ID 32.', '2024-05-31 08:49:30', 0, 0),
(12, 32, 'follow', 'User with ID 33 followed you.', '2024-05-31 09:18:13', 0, 0),
(13, 32, 'follow', 'User with ID 33 followed you.', '2024-05-31 09:26:49', 0, 0),
(14, 31, 'follow', 'User with ID 32 followed you.', '2024-05-31 09:49:20', 0, 0),
(15, 31, 'follow', 'User with ID 32 followed you.', '2024-05-31 09:53:00', 0, 0),
(16, 31, 'follow', 'User with ID 32 followed you.', '2024-05-31 13:50:32', 0, 0),
(17, 31, 'comment', 'User with ID 32 commented on your pin.', '2024-05-31 13:55:52', 0, 0),
(18, 33, 'follow', 'User with ID 32 followed you.', '2024-05-31 14:14:11', 0, 0),
(19, 33, 'follow', 'User with ID 18 followed you.', '2024-06-01 15:21:45', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Pins`
--

CREATE TABLE `Pins` (
  `pin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `description` text,
  `tags` text,
  `season_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Pins`
--

INSERT INTO `Pins` (`pin_id`, `user_id`, `image_url`, `description`, `tags`, `season_id`) VALUES
(1, 32, 'https://i.pinimg.com/564x/a5/da/35/a5da357df724314336ccf4dd2950a79a.jpg', 'Bape T-shirt', 'Bape', 0),
(2, 33, 'https://i.pinimg.com/736x/49/35/d1/4935d1326f686f4569d7890eef637b35.jpg', 'Spring ', 'lovespring', 0),
(4, 18, 'https://i.pinimg.com/564x/a4/cd/c6/a4cdc616e6880649a28a476492e6fcd2.jpg', 'love this outfit ', NULL, 1),
(6, 31, 'uploads/man.jpeg', 'Linen fit', 'Linen', 3),
(7, 31, 'uploads/spring.jpeg', 'Green', '', 3),
(10, 31, 'https://i.pinimg.com/564x/0d/df/20/0ddf207e792745d075901b0c3902db3b.jpg', 'Basic fit', 'Nike', 1),
(11, 31, 'https://i.pinimg.com/736x/57/3f/a5/573fa50d4c0df07e506592f4eed1f861.jpg', 'jumper', NULL, 1),
(12, 32, 'https://i.pinimg.com/564x/58/e9/ae/58e9ae68f3f283d9323c3ae32fad18bf.jpg', NULL, NULL, 2),
(13, 32, 'https://i.pinimg.com/564x/9d/be/81/9dbe819330a161261057ad68c57c45f3.jpg', NULL, NULL, 4),
(14, 32, 'https://i.pinimg.com/564x/41/8f/67/418f67b6574d99f44223bf0e4458da4e.jpg', NULL, NULL, 3),
(15, 32, 'https://i.pinimg.com/736x/f5/8c/ed/f58ced881f7cebe606dab9b3cca3fa4b.jpg', NULL, NULL, 4),
(16, 33, 'https://i.pinimg.com/564x/4b/46/40/4b464063cf4760b5598c1af92614d13a.jpg', NULL, NULL, 2),
(17, 33, 'https://i.pinimg.com/564x/d2/0c/b9/d20cb93e4f0a7ed7c74a24f7f29da954.jpg', NULL, NULL, 1),
(19, 33, 'https://i.pinimg.com/736x/e5/b9/a2/e5b9a2562fafca85ed9d1aead303141d.jpg', NULL, NULL, 2),
(20, 33, 'https://i.pinimg.com/564x/aa/3f/80/aa3f8063bd2d46fbd7f2df9e454866e1.jpg', NULL, NULL, 2),
(21, 33, 'https://i.pinimg.com/564x/36/fa/eb/36faeb1385d3f0e7c2aec3085829f5d7.jpg', NULL, NULL, 2),
(22, 33, 'https://i.pinimg.com/736x/2c/6f/0a/2c6f0a67de696daf0b8285d1df39e38d.jpg', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `SeasonCollection`
--

CREATE TABLE `SeasonCollection` (
  `season_id` int(11) NOT NULL,
  `season` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SeasonCollection`
--

INSERT INTO `SeasonCollection` (`season_id`, `season`, `description`) VALUES
(1, 'Spring collection ', 'Spring, embrace fresh blooms and soft pastels for a delicate touch'),
(2, 'Summer collection ', 'Summer brings vibrant colours and breezy styles, perfect for sun-soaked days'),
(3, 'Winter Collection', 'Winter offers the magic of elegant textures and sophisticated layers, keeping you stylishly warm. '),
(4, 'Autumn collection', 'As autumn approaches, indulge in warm earth tones and cozy layers to transition in style. ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_picture` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `cover_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `name`, `email`, `password`, `profile_picture`, `bio`, `cover_photo`) VALUES
(1, 'May', 'may2004@gmail.com', '1234', '0', '', ''),
(2, 'Maya', 'maya03@gmail.com', 'maya03', '0', '', ''),
(3, 'Jordan ', 'Jordan00@gmail.com', 'jor090', '0', '', ''),
(4, 'Bernice', 'Bernice56@gmail.com', '12345', '0', '', ''),
(5, 'Nicole', 'nicole8@gmail.com', '1234', '0', '', ''),
(6, 'Liam', 'liamdebono90@gmail.com', 'liam89', '0', '', ''),
(7, 'Ronan', 'ronanabela3@gmail.com', '1m23', '0', '', ''),
(8, 'Karen', 'karehatherly@gmail.com', 'hat009', 'https://i.pinimg.com/564x/12/88/ba/1288ba7ff3c35080afe90dccf47fe0ac.jpg', '', ''),
(9, 'LeoPerkins', 'perkins2@gmail.com', '12345', '0', '', ''),
(10, 'maya', 'maya2005@gmail.com', '$2y$10$koOFfQUDeoC20Fx35xgfYep/xPuXLBPLgmTWDY4M9XVhTP4bY8bSS', '0', '', ''),
(11, 'maya', 'maya@gmail.com', '$2y$10$WJLMWANnI4QFB2ga2.kZhuJa43FmBscp8RGm4my081h6iw17OREDW', '0', '', ''),
(12, 'luke', 'luke@gmail.com', '$2y$10$rfO19nZ56UZyVAXdplZt/OxBDBoxgI6MEXyAhTXECsA6kU74Jm2da', '0', '', ''),
(16, 'maya', 'mayhl@gmail.com', '$2y$10$TOJ9swUKmUFCDoc2ofG7G.CJo1Vx/PYhTu2d0VqfrZlmWmeUL37Ia', '', '', ''),
(17, 'naya', 'naya@gmail.com', '$2y$10$wPcS0e2kCMoPQPvpJZbs2.XpAuPwq0M/PyRT5XCD8kwjpGsdQCJU6', '', '', ''),
(18, 'Julia', 'julia@gmail.com', '$2y$10$hMDvcoJ8PZzEX8lDMcr6ne04BAVE8zjsMDw8vm/pLfuSvn8zZ8.ea', 'https://i.pinimg.com/564x/b5/ed/d1/b5edd1770d6366f9db7e2c1ae8315daa.jpg', '19 year old', 'https://i.pinimg.com/564x/63/bc/9f/63bc9ff3122d289b10458b239bfc36f9.jpg'),
(19, 'kacy', 'kacy@gmail.com', '$2y$10$ORHApc96xtq1MgFl5XtS7ePdjrLmrcc8iSlr9ZPfgATcyfE4liVFS', '', '', ''),
(30, 'Julia', 'julia12@gmail.com', '1234', 'https://i.pinimg.com/564x/dd/43/e9/dd43e93f36e61a85d2a0c9ec5304dc66.jpg', 'Love summer', ''),
(31, 'Julian Grech', 'Julian@gmail.com', '$2y$10$RNN2LUzWgDfzJMv0e8tYveUt2oQK3Hx999LOiD8ZMj1EKdX9j9vGK', 'https://i.pinimg.com/564x/4d/51/db/4d51db057196b7a560c0660333760e3b.jpg', '', ''),
(32, 'Martina Portelli', 'martina@gmail.com', '$2y$10$wH3hcgVRSRJgfA/HMUY/q.hMiBBIxdlNRX7eeUw5JHox6GTbu3Q6.', 'https://i.pinimg.com/564x/f6/cc/af/f6ccaff276b64d1c3abb659873787e38.jpg', 'love fits', ''),
(33, 'Kianna Abela', 'kianna@gmail.com', '$2y$10$STrYM4K5U2ZPWr1PG/Np5upSEuNCNZcKXNPKe6C2.wMrVXW03F.J2', 'https://i.pinimg.com/736x/36/47/d8/3647d8e4118c0d707c5130c2322c1522.jpg', '20', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Analytics`
--
ALTER TABLE `Analytics`
  ADD PRIMARY KEY (`analytic_id`),
  ADD KEY `analytics_ibfk_4` (`associated_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Boards`
--
ALTER TABLE `Boards`
  ADD PRIMARY KEY (`board_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `board_pins`
--
ALTER TABLE `board_pins`
  ADD PRIMARY KEY (`board_pin_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comments_ibfk_1` (`pin_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Followers`
--
ALTER TABLE `Followers`
  ADD PRIMARY KEY (`follower_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `follower_user_id` (`follower_user_id`);

--
-- Indexes for table `Messages`
--
ALTER TABLE `Messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `messages_ibfk_1` (`receiver_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `Notifications`
--
ALTER TABLE `Notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Pins`
--
ALTER TABLE `Pins`
  ADD PRIMARY KEY (`pin_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `SeasonCollection`
--
ALTER TABLE `SeasonCollection`
  ADD PRIMARY KEY (`season_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Analytics`
--
ALTER TABLE `Analytics`
  MODIFY `analytic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `Boards`
--
ALTER TABLE `Boards`
  MODIFY `board_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `board_pins`
--
ALTER TABLE `board_pins`
  MODIFY `board_pin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `Followers`
--
ALTER TABLE `Followers`
  MODIFY `follower_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `Messages`
--
ALTER TABLE `Messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `Notifications`
--
ALTER TABLE `Notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `Pins`
--
ALTER TABLE `Pins`
  MODIFY `pin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `SeasonCollection`
--
ALTER TABLE `SeasonCollection`
  MODIFY `season_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Analytics`
--
ALTER TABLE `Analytics`
  ADD CONSTRAINT `analytics_ibfk_3` FOREIGN KEY (`associated_id`) REFERENCES `Pins` (`pin_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `analytics_ibfk_4` FOREIGN KEY (`associated_id`) REFERENCES `Boards` (`board_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `analytics_ibfk_5` FOREIGN KEY (`user_id`) REFERENCES `users` (`users_id`) ON UPDATE CASCADE;

--
-- Constraints for table `Boards`
--
ALTER TABLE `Boards`
  ADD CONSTRAINT `boards_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`users_id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`users_id`) ON UPDATE CASCADE;

--
-- Constraints for table `Followers`
--
ALTER TABLE `Followers`
  ADD CONSTRAINT `followers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`users_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `followers_ibfk_2` FOREIGN KEY (`follower_user_id`) REFERENCES `users` (`users_id`) ON UPDATE CASCADE;

--
-- Constraints for table `Messages`
--
ALTER TABLE `Messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`users_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `users` (`users_id`) ON UPDATE CASCADE;

--
-- Constraints for table `Notifications`
--
ALTER TABLE `Notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`users_id`) ON UPDATE CASCADE;

--
-- Constraints for table `Pins`
--
ALTER TABLE `Pins`
  ADD CONSTRAINT `pins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`users_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
