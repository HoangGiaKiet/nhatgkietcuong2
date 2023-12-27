-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 27, 2023 lúc 04:43 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(59, 'High quality pants', '1', '2023-12-13 15:31:20', '2023-12-13 20:49:16'),
(62, 'High quality t-shirts', '1', '2023-12-14 02:47:03', '2023-12-14 02:47:03'),
(63, 'High quality hat', '1', '2023-12-14 02:47:51', '2023-12-13 20:49:22'),
(64, 'High quality dress', '1', '2023-12-14 02:50:53', '2023-12-14 02:50:53'),
(65, 'There are other sample images', '1', '2023-12-14 02:51:40', '2023-12-14 02:51:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `url`) VALUES
(1, '/hinh.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `isFeatured` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `created_at`, `updated_at`, `isFeatured`) VALUES
(58, 'Half Running Set', 'Half Running Set', 199, '/storage/1.jpg', '2023-12-14 02:39:37', '2023-12-14 02:39:37', NULL),
(59, 'Formal Men Lowes', 'Formal Men Lowes', 189, '/storage/2.jpg', '2023-12-14 02:41:07', '2023-12-14 02:41:07', NULL),
(60, 'Half Running Suit', 'Half Running Suit', 235, '/storage/3.jpg', '2023-12-14 02:41:56', '2023-12-14 02:41:56', NULL),
(62, 'Flix Flox jeans', 'Flix Flox jeans', 213, '/storage/5.jpg', '2023-12-14 02:42:55', '2023-12-14 02:42:55', NULL),
(63, 'Half Running Lady Dress', 'Half Running Lady Dress', 215, '/storage/4.jpg', '2023-12-14 02:43:17', '2023-12-14 02:43:17', NULL),
(64, 'Fancy Salawar Suits', 'Fancy Salawar Suits', 268, '/storage/6.jpg', '2023-12-14 02:43:42', '2023-12-14 02:43:42', NULL),
(67, 'Collot Full Dress', 'Collot Full Dress', 235, '/storage/8.jpg', '2023-12-14 02:44:48', '2023-12-14 02:44:48', NULL),
(72, 'Printed Straight Kurta', 'Printed Straight Kurta', 225, '/storage/7.jpg', '2023-12-15 10:40:54', '2023-12-15 10:40:54', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `usersname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `usersname`, `email`, `password`, `created_at`, `updated_at`) VALUES
(24, 'nhat123', 'demo@gmail.com', '12345678', '2023-12-16 08:20:03', '2023-12-22 20:46:46'),
(42, ' nhat123', 'degea@gmail.com', '12345678', '2023-12-25 07:17:14', '2023-12-25 07:17:14');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
