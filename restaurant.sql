-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2024 at 06:14 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `dish_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`dish_id`, `name`, `description`, `category`) VALUES
(1, 'Dish A1', 'Delicious dish A1', 'Main'),
(2, 'Dish B1', 'Tasty dish B1', 'Main'),
(3, 'Dish A2', 'Nice dish A2', 'Appetizer'),
(4, 'Dish B2', 'Tasty dish B2', 'Main'),
(5, 'Dish E1', 'Great dish E1', 'Dessert'),
(6, 'Dish F1', 'Savory dish F1', 'Main'),
(7, 'Dish G1', 'Heavenly dish G1', 'Main'),
(8, 'Dish H1', 'Delicious dish H1', 'Main'),
(9, 'Dish I1', 'Tasty dish I1', 'Appetizer'),
(10, 'Dish J1', 'Amazing dish J1', 'Dessert'),
(11, 'Dish K1', 'Savory dish K1', 'Main'),
(12, 'Dish L1', 'Heavenly dish L1', 'Main'),
(13, 'Dish M1', 'Great dish M1', 'Appetizer'),
(14, 'Dish N1', 'Scrumptious dish N1', 'Dessert'),
(15, 'Dish O1', 'Superb dish O1', 'Main'),
(16, 'Dish P1', 'Awesome dish P1', 'Main'),
(17, 'Dish Q1', 'Wonderful dish Q1', 'Appetizer'),
(18, 'Dish R1', 'Yummy dish R1', 'Dessert'),
(19, 'Dish S1', 'Savory dish S1', 'Main'),
(20, 'Dish T1', 'Outstanding dish T1', 'Appetizer');

-- --------------------------------------------------------

--
-- Table structure for table `dish_comments`
--

CREATE TABLE `dish_comments` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_content` text DEFAULT NULL,
  `dish_rate` decimal(3,2) DEFAULT NULL,
  `comment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `restaurant_id` int(11) NOT NULL,
  `dish_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dish_comments`
--

INSERT INTO `dish_comments` (`comment_id`, `user_id`, `comment_content`, `dish_rate`, `comment_date`, `restaurant_id`, `dish_id`) VALUES
(1, 1, 'Delicious dish, really enjoyed it!', 4.50, '2024-12-01 03:00:00', 1, 1),
(2, 2, 'Tasty but a bit salty for my taste.', 3.80, '2024-12-01 04:00:00', 1, 2),
(3, 3, 'Great appetizer, very fresh!', 5.00, '2024-12-01 05:00:00', 2, 5),
(4, 4, 'The taste was good, but could be more flavorful.', 4.00, '2024-12-01 06:00:00', 2, 4),
(5, 5, 'A great dessert, I would definitely order it again.', 4.70, '2024-12-01 07:00:00', 3, 8),
(6, 6, 'Not too bad, but the texture could improve.', 3.50, '2024-12-01 08:00:00', 3, 9),
(7, 7, 'Heavenly dish, loved the spices!', 5.00, '2024-12-01 09:00:00', 4, 12),
(8, 8, 'Good but needs more seasoning.', 3.60, '2024-12-02 02:00:00', 5, 14),
(9, 9, 'Amazing dish, perfect combination of flavors.', 5.00, '2024-12-02 03:00:00', 5, 15),
(10, 10, 'Not my favorite, but still decent.', 3.20, '2024-12-02 04:00:00', 6, 17),
(11, 11, 'Nice dish, but it lacked some crunch.', 4.10, '2024-12-02 05:00:00', 6, 17),
(12, 12, 'Perfect dessert, would highly recommend!', 4.90, '2024-12-02 06:00:00', 7, 19),
(13, 13, 'The dish was too sweet for my liking.', 2.80, '2024-12-02 07:00:00', 7, 20);

-- --------------------------------------------------------

--
-- Table structure for table `dish_ingredients`
--

CREATE TABLE `dish_ingredients` (
  `dish_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dish_ingredients`
--

INSERT INTO `dish_ingredients` (`dish_id`, `ingredient_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `ingredient_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`ingredient_id`, `name`, `description`) VALUES
(1, 'Chicken', 'Fresh chicken'),
(2, 'Beef', 'Premium beef'),
(3, 'Pork', 'Fresh pork'),
(4, 'Lettuce', 'Organic lettuce'),
(5, 'Tomato', 'Juicy tomato'),
(6, 'Potato', 'Golden potato'),
(7, 'Mushroom', 'Fresh mushrooms');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `restaurant_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `menu` text DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`restaurant_id`, `name`, `address`, `contact`, `menu`, `rating`, `image_url`, `latitude`, `longitude`) VALUES
(1, 'Restaurant A', '123 Street', '123456789', 'Menu A', 4.50, 'image1.jpg', 10.762622, 106.660172),
(2, 'Restaurant B', '456 Avenue', '987654321', 'Menu B', 4.00, 'image2.jpg', 10.780423, 106.700423),
(3, 'Restaurant C', '789 Road', '123123123', 'Menu C', 4.20, 'image3.jpg', 10.781234, 106.711234),
(4, 'Restaurant D', '101 Street', '321321321', 'Menu D', 4.80, 'image4.jpg', 10.762800, 106.659800),
(5, 'Restaurant E', '234 Lane', '555666777', 'Menu E', 4.10, 'image5.jpg', 10.782000, 106.665000),
(6, 'Restaurant F', '567 Square', '444555666', 'Menu F', 3.90, 'image6.jpg', 10.800500, 106.650200),
(7, 'Restaurant G', '890 Boulevard', '111222333', 'Menu G', 4.70, 'image7.jpg', 10.700100, 106.680600);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_dishes`
--

CREATE TABLE `restaurant_dishes` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `rate` decimal(3,2) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant_dishes`
--

INSERT INTO `restaurant_dishes` (`id`, `restaurant_id`, `dish_id`, `rate`, `price`) VALUES
(1, 1, 1, 4.50, 150000.00),
(2, 1, 2, 4.20, 120000.00),
(3, 1, 3, 3.80, 100000.00),
(4, 2, 4, 4.70, 170000.00),
(5, 2, 5, 4.10, 110000.00),
(6, 2, 6, 3.90, 95000.00),
(7, 2, 7, 4.30, 180000.00),
(8, 3, 8, 4.00, 130000.00),
(9, 3, 9, 3.70, 75000.00),
(10, 3, 10, 4.80, 200000.00),
(11, 4, 11, 4.60, 160000.00),
(12, 4, 12, 4.30, 125000.00),
(13, 4, 13, 4.00, 90000.00),
(14, 5, 14, 4.40, 155000.00),
(15, 5, 15, 4.10, 105000.00),
(16, 5, 16, 4.50, 135000.00),
(17, 6, 17, 4.20, 140000.00),
(18, 6, 18, 3.90, 115000.00),
(19, 7, 19, 4.70, 175000.00),
(20, 7, 20, 4.00, 80000.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`) VALUES
(1, 'user1@example.com', 'password1'),
(2, 'user2@example.com', 'password2'),
(3, 'user3@example.com', 'password3'),
(4, 'user4@example.com', 'password4'),
(5, 'user5@example.com', 'password5'),
(6, 'user6@example.com', 'password6'),
(7, 'user7@example.com', 'password7'),
(8, 'user8@example.com', 'password8'),
(9, 'user9@example.com', 'password9'),
(10, 'user10@example.com', 'password10'),
(11, 'user11@example.com', 'password11'),
(12, 'user12@example.com', 'password12'),
(13, 'user13@example.com', 'password13');

-- --------------------------------------------------------

--
-- Table structure for table `user_favorites`
--

CREATE TABLE `user_favorites` (
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_favorites`
--

INSERT INTO `user_favorites` (`user_id`, `restaurant_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 2),
(2, 7),
(3, 1),
(3, 2),
(3, 3),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(5, 3),
(5, 5),
(5, 6),
(6, 1),
(6, 2),
(6, 4),
(6, 6),
(7, 5),
(7, 6),
(7, 7),
(8, 2),
(8, 3),
(9, 1),
(9, 3),
(9, 6),
(9, 7),
(10, 4),
(10, 5),
(11, 6),
(11, 7),
(12, 3),
(12, 5),
(12, 7),
(13, 1),
(13, 2),
(13, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user_search_history`
--

CREATE TABLE `user_search_history` (
  `user_id` int(11) DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `last_search_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `search_count` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_search_history`
--

INSERT INTO `user_search_history` (`user_id`, `restaurant_id`, `last_search_date`, `search_count`) VALUES
(1, 1, '2024-12-01 05:00:00', 5),
(2, 2, '2024-12-02 07:30:00', 3),
(3, 1, '2024-12-01 06:00:00', 2),
(4, 2, '2024-12-02 08:00:00', 1),
(5, 5, '2024-12-03 09:30:00', 5),
(6, 6, '2024-12-04 05:45:00', 3),
(7, 7, '2024-12-05 07:20:00', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`dish_id`);

--
-- Indexes for table `dish_comments`
--
ALTER TABLE `dish_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `fk_dish_comment_user` (`user_id`),
  ADD KEY `fk_restaurant_dish` (`restaurant_id`,`dish_id`);

--
-- Indexes for table `dish_ingredients`
--
ALTER TABLE `dish_ingredients`
  ADD PRIMARY KEY (`dish_id`,`ingredient_id`),
  ADD KEY `ingredient_id` (`ingredient_id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`ingredient_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`restaurant_id`);

--
-- Indexes for table `restaurant_dishes`
--
ALTER TABLE `restaurant_dishes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dish_id` (`dish_id`),
  ADD KEY `idx_restaurant_dish` (`restaurant_id`,`dish_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_favorites`
--
ALTER TABLE `user_favorites`
  ADD PRIMARY KEY (`user_id`,`restaurant_id`),
  ADD KEY `restaurant_id` (`restaurant_id`);

--
-- Indexes for table `user_search_history`
--
ALTER TABLE `user_search_history`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `fk_restaurant_id` (`restaurant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `dish_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `dish_comments`
--
ALTER TABLE `dish_comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `ingredient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `restaurant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `restaurant_dishes`
--
ALTER TABLE `restaurant_dishes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dish_comments`
--
ALTER TABLE `dish_comments`
  ADD CONSTRAINT `fk_dish_comment_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_restaurant_dish` FOREIGN KEY (`restaurant_id`,`dish_id`) REFERENCES `restaurant_dishes` (`restaurant_id`, `dish_id`);

--
-- Constraints for table `dish_ingredients`
--
ALTER TABLE `dish_ingredients`
  ADD CONSTRAINT `dish_ingredients_ibfk_1` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`dish_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dish_ingredients_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`ingredient_id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurant_dishes`
--
ALTER TABLE `restaurant_dishes`
  ADD CONSTRAINT `restaurant_dishes_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`),
  ADD CONSTRAINT `restaurant_dishes_ibfk_2` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`dish_id`);

--
-- Constraints for table `user_favorites`
--
ALTER TABLE `user_favorites`
  ADD CONSTRAINT `user_favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_favorites_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_search_history`
--
ALTER TABLE `user_search_history`
  ADD CONSTRAINT `fk_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_search_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
