-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2025 at 05:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cscs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(3, 'Hot', 'Includes all your classic and signature hot coffee options such as espresso, cappuccinos, lattes, and more.', 1, 0, '2025-01-14 22:31:10', '2025-01-14 22:54:44'),
(4, 'Cold', 'Perfect for warm weather or a refreshing experience, from iced lattes to cold brew.', 1, 0, '2025-01-14 22:32:32', '2025-01-14 22:54:54'),
(5, 'Desserts', 'Sweet treats like cakes, cookies, and pastries to complement your drink.', 1, 0, '2025-01-14 22:33:28', '2025-01-14 22:33:28'),
(6, 'Snacks', 'Savory options like sandwiches, wraps, or croissants to enjoy with your coffee.', 1, 0, '2025-01-14 22:33:52', '2025-01-14 22:33:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` float(15,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `category_id`, `name`, `description`, `price`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(12, 3, 'Espresso Shot', 'A strong, rich coffee made from freshly brewed espresso beans, perfect for a quick pick-me-up.', 250.00, 1, 0, '2025-01-14 22:19:52', '2025-01-14 22:34:37'),
(13, 3, 'Caramel Macchiato', 'A sweet and creamy espresso drink topped with steamed milk and a drizzle of caramel syrup.', 450.00, 1, 0, '2025-01-14 22:22:06', '2025-01-14 22:34:19'),
(14, 4, 'Vanilla Bean Frappuccino', 'A creamy, icy blend of vanilla flavor, milk, and ice, topped with whipped cream for an indulgent treat.', 500.00, 1, 1, '2025-01-14 22:22:41', '2025-01-14 22:40:23'),
(15, 3, 'Chai Latte', 'A spiced tea blend with steamed milk, offering a warming, aromatic flavor perfect for cozy moments.\r\n', 400.00, 1, 0, '2025-01-14 22:25:23', '2025-01-14 22:34:28'),
(16, 3, 'Mocha Delight', 'A decadent blend of espresso, hot chocolate, and steamed milk, topped with whipped cream for a chocolatey indulgence.', 500.00, 1, 0, '2025-01-14 22:26:21', '2025-01-14 22:35:06'),
(17, 3, 'Flat White', 'A smooth, velvety drink made with espresso and steamed milk, giving a strong yet mellow flavor.\r\n', 400.00, 1, 0, '2025-01-14 22:26:47', '2025-01-14 22:34:46'),
(18, 4, 'Nitro Cold Brew', 'Cold brew coffee infused with nitrogen for a smooth, creamy texture and rich flavor.', 475.00, 1, 1, '2025-01-14 22:27:11', '2025-01-14 22:40:06'),
(19, 3, 'Hot Chocolate', 'A comforting cup of creamy hot chocolate made with premium cocoa and milk, topped with whipped cream.', 350.00, 1, 0, '2025-01-14 22:27:53', '2025-01-14 22:34:56'),
(20, 3, 'Affogato', 'A rich espresso poured over a scoop of vanilla ice cream, offering a perfect blend of hot and cold sensations.', 550.00, 1, 0, '2025-01-14 22:28:32', '2025-01-14 22:34:09'),
(21, 4, 'Cold Brew with Sweet Cream', 'A chilled, smooth cold brew coffee served with a splash of sweet cream for a rich, indulgent flavor.', 450.00, 1, 1, '2025-01-14 22:29:03', '2025-01-14 22:40:12'),
(22, 5, 'Chocolate Lava Cake', ' A rich and decadent chocolate cake with a molten center, served warm with a scoop of vanilla ice cream.', 350.00, 1, 0, '2025-01-14 22:36:00', '2025-01-14 22:36:00'),
(23, 5, 'Vanilla Cheesecake', 'A creamy and smooth cheesecake on a buttery graham cracker crust, topped with a hint of vanilla flavor.', 400.00, 1, 0, '2025-01-14 22:36:24', '2025-01-14 22:36:24'),
(24, 6, 'Cheese Croissant', 'A buttery, flaky croissant filled with melted cheese, perfect for a savory snack.', 250.00, 1, 0, '2025-01-14 22:36:50', '2025-01-14 22:36:50'),
(25, 6, 'Veggie Sandwich', 'Freshly baked bread filled with a variety of seasonal veggies, cheese, and a tangy dressing.', 300.00, 1, 0, '2025-01-14 22:37:16', '2025-01-14 22:37:16'),
(26, 6, 'Chili Cheese Fries', ' Crispy fries topped with chili and melted cheese, a flavorful and indulgent snack.', 350.00, 1, 0, '2025-01-14 22:37:44', '2025-01-14 22:37:44'),
(27, 4, 'Iced Coconut Milk Latte', 'A dairy-free version of a classic latte made with coconut milk, offering a tropical twist.', 475.00, 1, 0, '2025-01-14 22:43:57', '2025-01-14 22:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `sale_list`
--

CREATE TABLE `sale_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `client_name` text NOT NULL,
  `amount` float(15,2) NOT NULL DEFAULT 0.00,
  `tendered` float(15,2) NOT NULL DEFAULT 0.00,
  `payment_type` tinyint(1) NOT NULL COMMENT '1 = Cash,\r\n2 = Debit Card,\r\n3 = Credit Card',
  `payment_code` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_list`
--

INSERT INTO `sale_list` (`id`, `user_id`, `code`, `client_name`, `amount`, `tendered`, `payment_type`, `payment_code`, `date_created`, `date_updated`) VALUES
(3, 1, '202501150001', 'Guest', 350.00, 0.00, 1, '', '2025-01-14 22:41:32', '2025-01-14 22:41:32'),
(4, 1, '202501150002', 'Guest', 1100.00, 0.00, 2, '4675', '2025-01-14 22:42:16', '2025-01-14 22:42:16'),
(5, 1, '202501150003', 'Guest', 4950.00, 50.00, 2, '9876', '2025-01-14 22:45:28', '2025-01-14 22:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `sale_products`
--

CREATE TABLE `sale_products` (
  `sale_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` float(15,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_products`
--

INSERT INTO `sale_products` (`sale_id`, `product_id`, `qty`, `price`) VALUES
(3, 22, 1, 350.00),
(4, 24, 1, 250.00),
(4, 23, 1, 400.00),
(4, 13, 1, 450.00),
(5, 27, 6, 475.00),
(5, 22, 6, 350.00);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Coffee Shop Cashiering System'),
(6, 'short_name', 'CSCS'),
(11, 'logo', 'uploads/logo.png?v=1650590302'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1650590309');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatars/1.png?v=1649834664', NULL, 1, '2021-01-20 14:02:37', '2022-04-13 15:24:24'),
(5, 'John', 'Devinson', 'John', '6e0b7076126a29d5dfcbd54835387b7b', NULL, NULL, 2, '2025-01-14 22:46:52', '2025-01-14 22:46:52'),
(6, 'Zara', 'Smith', 'Zara', '96419ae06051c8469fd2fd9169bee6a3', NULL, NULL, 3, '2025-01-14 22:48:32', '2025-01-14 22:48:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `sale_list`
--
ALTER TABLE `sale_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sale_products`
--
ALTER TABLE `sale_products`
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sale_list`
--
ALTER TABLE `sale_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `category_id_fk_pl` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `sale_list`
--
ALTER TABLE `sale_list`
  ADD CONSTRAINT `user_id_fk_sl` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `sale_products`
--
ALTER TABLE `sale_products`
  ADD CONSTRAINT `product_id_fk_sp` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `sale_id_fk_sp` FOREIGN KEY (`sale_id`) REFERENCES `sale_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
