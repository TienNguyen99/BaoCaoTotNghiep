-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 14, 2021 lúc 10:52 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `datvexemphim`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2021-03-02 20:07:52', '2021-03-02 20:07:52'),
(2, NULL, 1, 'Category 2', 'category-2', '2021-03-02 20:07:52', '2021-03-02 20:07:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `country`
--

CREATE TABLE `country` (
  `couid` int(10) UNSIGNED NOT NULL,
  `nameco` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `country`
--

INSERT INTO `country` (`couid`, `nameco`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Việt Nam', 1, '2021-03-04 00:15:55', '2021-03-04 00:15:55'),
(6, 'Thái lan', 1, '2021-03-04 00:18:07', '2021-03-04 00:18:07'),
(7, 'Mỹ', 1, '2021-03-04 02:59:11', '2021-03-04 02:59:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_birth` date DEFAULT NULL,
  `customer_status` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `customer_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_film` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_seat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `email`, `password`, `customer_phone`, `customer_address`, `remember_token`, `created_at`, `updated_at`, `customer_birth`, `customer_status`, `email_verified_at`, `customer_avatar`, `custom_film`, `custom_seat`, `custom_date`) VALUES
(1, 'Tiến', 'tiennm99@gmail.com', '$2y$10$A.8H.XkpS.MCqIq0L4zghOq1OPwwj095/fgiaYT38viV/NlTVMfwS', '0967829808', '286b/1 Bình Thung 2', NULL, '2021-03-13 23:11:01', '2021-03-13 23:11:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Tiến', 'tien123@gmail.com', '$2y$10$BoUaptg2WJqoA7P0a28E9u9pA2ZYIHd2ZFhGZhKeGm0NlDdXh/PHS', '0967829808', '286b/1 Bình Thung 2', NULL, '2021-03-13 23:21:07', '2021-03-13 23:21:07', '2021-03-19', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Minh 12323', 'quanly123@gmail.com', '$2y$10$7E3Rzywe9CJsNdV4ljryaOYCs46.2pmg7PaZTyEMQfB2wHKOJD4ha', '0967829808', '286b/1 Bình Thung 2', NULL, '2021-03-16 21:40:57', '2021-03-16 21:40:57', '2021-03-06', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Minh 123123123', 'quanly321@gmail.com', '$2y$10$NU6oXDz4DZxe7m1uhUJ60eqEgovo9Tf66YxbOPXWfZEbqSvo8Y4MG', '0967829808', '286b/1 Bình Thung 2', NULL, '2021-03-16 22:17:12', '2021-03-16 22:17:12', '2021-03-04', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'tiến 1', 'tien1@gmail.com', '$2y$10$zkvjoVeZ22MjWQjTrqUtUe9dZE6OfvLQdKh01CUsqD5F2wdOn.Chu', '0123456789', '286b/1 Bình Thung 2', NULL, '2021-03-16 22:29:46', '2021-03-16 22:29:46', '1999-01-01', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Cuong', 'cuongem@gmail.com', '$2y$10$zKi6HOuokNKPeEK4E98Ty.JVYifYxJdSoMOcVKDbZxa1ySl58OF3a', '0967829808', '286b/1 Bình Thung 2', NULL, '2021-03-17 02:04:33', '2021-03-17 02:04:33', '1199-11-11', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'Tiến', 'tiennguyen99@gmail.com', '123456789', '0967829808', '286b/1 Bình Thung 2', NULL, '2021-03-17 18:38:12', '2021-03-17 18:38:12', '1999-08-10', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'Tiến', 'tien5@gmail.com', '123456', '0967829808', '286b/1 Bình Thung 2', NULL, '2021-03-17 20:03:19', '2021-03-17 20:03:19', '1999-11-11', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'tien', 'tien6@gmail.com', '$2y$10$mSJe3uDg5XyV1hUjr5gXp.60Co/HDdA/FLqTMk9CcFMu4mH/uAb.a', '0967829808', '286b/1 Bình Thung 2', NULL, '2021-03-17 20:08:00', '2021-05-03 23:15:16', '1999-02-11', 0, NULL, 'customer\\March2021\\oN8wbMX05KdUSbrAtniV.jpg', 'Bố già', NULL, NULL),
(51, 'Cường em', 'quanly@gmail.com', '123456789', '0967829808', '286b/1 Bình Thung 2', NULL, '2021-03-23 20:24:00', '2021-03-29 01:16:11', '1999-08-10', 0, NULL, NULL, NULL, NULL, NULL),
(54, 'Minh 123', 'tien7@gmail.com', '$2y$10$OM.sakFKwN4Oo0DXCunpUuH7l7bjgfvqfTd31cQcgCoxYOKp0Ct8S', '0967829808', '286b/1 Bình Thung 2', NULL, '2021-03-29 01:17:49', '2021-03-29 01:17:49', '1999-08-10', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'Tiến', 'tien10@gmail.com', '$2y$10$TlpyME.GKxBjKO0t8EOzo.y6.E1wb.4ugredkPUG4Rva5wNkCF6aG', '0967829808', '286b/1 Bình Thung 2', NULL, '2021-03-31 20:44:00', '2021-05-11 23:57:12', '2012-11-11', 0, NULL, 'customer\\May2021\\ykDb7UobXbAk28Bo8Vrs.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 10, 'idproduct', 'text', 'Idproduct', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 10, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(59, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(76, 16, 'filid', 'text', 'Mã phim', 1, 1, 1, 0, 0, 0, '{}', 1),
(79, 16, 'namef', 'text', 'Tên phim', 0, 1, 1, 1, 1, 1, '{}', 2),
(80, 16, 'director', 'text', 'Đạo diễn', 0, 1, 1, 1, 1, 1, '{}', 5),
(81, 16, 'actor', 'text', 'Diễn viên', 0, 1, 1, 1, 1, 1, '{}', 6),
(82, 16, 'duration', 'time', 'Thời lượng', 0, 1, 1, 1, 1, 1, '{}', 7),
(83, 16, 'description', 'text_area', 'Mô tả', 0, 0, 0, 1, 1, 1, '{}', 8),
(84, 16, 'detail', 'rich_text_box', 'Chi tiết', 0, 0, 0, 1, 1, 1, '{}', 9),
(85, 16, 'picture', 'image', 'Ảnh nhỏ', 0, 1, 1, 1, 1, 1, '{}', 10),
(86, 16, 'picturebig', 'image', 'Ảnh lớn', 0, 0, 0, 1, 1, 1, '{}', 11),
(87, 16, 'youtube', 'text', 'Youtube', 0, 0, 0, 1, 1, 1, '{}', 12),
(88, 16, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"0\":\"deactive\",\"1\":\"active\"}}', 13),
(89, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 15),
(90, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 20),
(97, 16, 'film_belongsto_country_relationship', 'relationship', 'Quốc gia', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Country\",\"table\":\"country\",\"type\":\"belongsTo\",\"column\":\"film_idcountry\",\"key\":\"couid\",\"label\":\"nameco\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(98, 16, 'film_idcountry', 'text', 'Film Idcountry', 0, 0, 0, 1, 1, 1, '{}', 14),
(99, 16, 'film_idtype', 'text', 'Film Idtype', 0, 0, 0, 1, 1, 1, '{}', 17),
(100, 16, 'film_belongsto_typefilm_relationship', 'relationship', 'Thể loại', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Typefilm\",\"table\":\"typefilm\",\"type\":\"belongsTo\",\"column\":\"film_idtype\",\"key\":\"typid\",\"label\":\"namet\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(101, 17, 'couid', 'text', 'Couid', 1, 1, 1, 0, 0, 0, '{}', 1),
(102, 17, 'nameco', 'text', 'Tên quốc gia', 1, 1, 1, 1, 1, 1, '{}', 2),
(103, 17, 'status', 'select_dropdown', 'Tình trạng', 0, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"0\":\"deactive\",\"1\":\"active\"}}', 3),
(104, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(105, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(106, 18, 'typid', 'text', 'Typid', 1, 0, 0, 0, 0, 0, '{}', 1),
(107, 18, 'namet', 'text', 'Tên thể loại', 1, 1, 1, 1, 1, 1, '{}', 2),
(108, 18, 'status', 'select_dropdown', 'Tình trạng', 0, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"0\":\"deactive\",\"1\":\"active\"}}', 3),
(109, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(110, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(111, 19, 'feedid', 'text', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(112, 19, 'comment', 'text_area', 'Bình luận', 0, 1, 1, 1, 1, 1, '{}', 2),
(113, 19, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 3),
(114, 19, 'fullname', 'text', 'Tên', 0, 1, 1, 1, 1, 1, '{}', 4),
(115, 19, 'status', 'select_dropdown', 'Tình trạng', 0, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"0\":\"deactive\",\"1\":\"active\"}}', 6),
(116, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(117, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(118, 19, 'rate', 'number', 'Đánh giá', 0, 1, 1, 1, 1, 1, '{}', 5),
(120, 16, 'film_feedid', 'text', 'ID Binh Luan ,phim', 0, 0, 0, 1, 1, 1, '{}', 16),
(121, 16, 'count_view', 'text', 'Count View', 0, 1, 1, 1, 1, 1, '{}', 21),
(122, 16, 'count_comment', 'text', 'Count Comment', 0, 0, 0, 1, 1, 1, '{}', 22),
(123, 21, 'slider_id', 'text', 'Slider Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(124, 21, 'slider_name', 'text', 'Tên slider', 0, 1, 1, 1, 1, 1, '{}', 2),
(125, 21, 'slider_image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 3),
(126, 21, 'slider_status', 'select_dropdown', 'Tình trạng', 0, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"0\":\"deactive\",\"1\":\"active\"}}', 4),
(127, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(128, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(142, 23, 'customer_id', 'text', 'Customer Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(143, 23, 'customer_name', 'text', 'Customer Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(144, 23, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(145, 23, 'password', 'text', 'Password', 0, 0, 0, 1, 1, 1, '{}', 4),
(146, 23, 'customer_phone', 'text', 'Customer Phone', 0, 1, 1, 1, 1, 1, '{}', 5),
(147, 23, 'customer_address', 'text', 'Customer Address', 0, 1, 1, 1, 1, 1, '{}', 6),
(148, 23, 'remember_token', 'text', 'Remember Token', 0, 1, 1, 1, 1, 1, '{}', 7),
(149, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(150, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(151, 23, 'customer_birth', 'date', 'Customer Birth', 0, 1, 1, 1, 1, 1, '{}', 10),
(152, 23, 'customer_status', 'select_dropdown', 'Customer Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"0\":\"deactive\",\"1\":\"active\"}}', 11),
(153, 23, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 0, 0, 0, 0, 0, '{}', 12),
(154, 24, 'showtime_id', 'text', 'Showtime Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(155, 24, 'showtime_date', 'date', 'Showtime Date', 0, 1, 1, 1, 1, 1, '{}', 2),
(156, 24, 'showtime_hour', 'time', 'Showtime Hour', 0, 1, 1, 1, 1, 1, '{}', 3),
(157, 24, 'showtime_status', 'select_dropdown', 'Showtime Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"0\":\"deactive\",\"1\":\"active\"}}', 5),
(158, 24, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(159, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(163, 19, 'feedback_belongsto_film_relationship', 'relationship', 'Tên phim', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Film\",\"table\":\"film\",\"type\":\"belongsTo\",\"column\":\"film_idF\",\"key\":\"filid\",\"label\":\"namef\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(164, 19, 'film_idF', 'text', 'Film IdF', 0, 1, 1, 1, 1, 1, '{}', 9),
(165, 23, 'customer_avatar', 'image', 'Customer Avatar', 0, 1, 1, 1, 1, 1, '{}', 13),
(166, 16, 'film_showing', 'select_dropdown', 'Phim đang chiếu', 0, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"0\":\"deactive\",\"1\":\"active\"}}', 18),
(167, 16, 'film_upcoming', 'select_dropdown', 'Phim sắp chiếu', 0, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"0\":\"deactive\",\"1\":\"active\"}}', 19),
(168, 16, 'film_belongsto_feedback_relationship', 'relationship', 'feedback', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Feedback\",\"table\":\"feedback\",\"type\":\"belongsTo\",\"column\":\"film_feedid\",\"key\":\"feedid\",\"label\":\"feedid\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 23),
(169, 16, 'film_hotby', 'select_dropdown', 'Phim Hot', 0, 1, 1, 1, 1, 1, '{\"default\":\"Ng\\u00e0y\",\"options\":{\"day\":\"Ng\\u00e0y\",\"week\":\"Tu\\u1ea7n\",\"month\":\"Th\\u00e1ng\",\"years\":\"N\\u0103m\"}}', 21),
(170, 24, 'showtime_belongsto_film_relationship', 'relationship', 'Tên phim', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Film\",\"table\":\"film\",\"type\":\"belongsTo\",\"column\":\"showtime_film_id\",\"key\":\"filid\",\"label\":\"namef\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(171, 24, 'showtime_film_id', 'text', 'Showtime Film Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(180, 26, 'ticket_id', 'text', 'Ticket Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(181, 26, 'order_customername', 'text', 'Tên khách hàng', 0, 1, 1, 1, 1, 1, '{}', 3),
(182, 26, 'order_filmname', 'text', 'Tên phim', 0, 1, 1, 1, 1, 1, '{}', 4),
(183, 26, 'order_seat', 'text', 'Vị trí ghế', 0, 1, 1, 1, 1, 1, '{}', 5),
(184, 26, 'status', 'checkbox', 'Tình trạng', 0, 1, 1, 1, 1, 1, '{\"on\":\"\\u0110\\u00e3 thanh to\\u00e1n\",\"off\":\"Ch\\u01b0a thanh to\\u00e1n\",\"checked\":false}', 6),
(185, 26, 'order_customerid', 'text', 'Id khách hàng', 0, 1, 1, 1, 1, 1, '{}', 2),
(186, 26, 'created_at', 'timestamp', 'Ngày đặt', 0, 1, 1, 1, 0, 1, '{}', 7),
(187, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(188, 26, 'order_phone', 'text', 'SDT', 0, 1, 1, 1, 1, 1, '{}', 9),
(189, 26, 'order_address', 'text_area', 'Địa chỉ', 0, 1, 1, 1, 1, 1, '{}', 10),
(190, 26, 'order_birth', 'date', 'Ngày sinh', 0, 1, 1, 1, 1, 1, '{}', 11),
(191, 23, 'customer_belongsto_ticketorder_relationship', 'relationship', 'FilmHistory', 0, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"custom_film\",\"label\":\"order_filmname\"},\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"model\":\"App\\\\Ticket\",\"table\":\"ticketorder\",\"type\":\"belongsTo\",\"column\":\"custom_film\",\"key\":\"order_filmname\",\"label\":\"order_filmname\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 17),
(192, 23, 'custom_film', 'text', 'Custom Film', 0, 0, 0, 1, 1, 1, '{}', 14),
(193, 23, 'custom_seat', 'text', 'Custom Seat', 0, 0, 0, 1, 1, 1, '{}', 15),
(194, 23, 'custom_date', 'text', 'Custom Date', 0, 0, 0, 1, 1, 1, '{}', 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-03-02 20:07:05', '2021-03-02 20:07:05'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-03-02 20:07:06', '2021-03-02 20:07:06'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-03-02 20:07:06', '2021-03-02 20:07:06'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-03-02 20:07:47', '2021-03-02 20:07:47'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-03-02 20:07:54', '2021-03-02 20:07:54'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-03-02 20:08:01', '2021-03-02 20:08:01'),
(10, 'products', 'products', 'Product', 'Products', NULL, 'App\\Product', NULL, '\\TCG\\Voyager\\Http\\Controllers\\VoyagerBaseController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-02 22:18:46', '2021-03-10 01:05:20'),
(16, 'film', 'film', 'Film', 'Films', 'voyager-harddrive', 'App\\Film', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-03 21:15:25', '2021-03-23 21:24:44'),
(17, 'country', 'country', 'Country', 'Countries', 'voyager-home', 'App\\Country', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-04 00:12:19', '2021-03-04 00:17:21'),
(18, 'typefilm', 'typefilm', 'Typefilm', 'Typefilms', 'voyager-harddrive', 'App\\Typefilm', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-04 00:13:09', '2021-03-04 00:13:09'),
(19, 'feedback', 'feedback', 'Feedback', 'Feedback', NULL, 'App\\Feedback', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-10 19:50:07', '2021-03-20 19:02:02'),
(21, 'slider', 'slider', 'Slider', 'Sliders', 'voyager-star-two', 'App\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-13 17:30:44', '2021-03-13 17:43:34'),
(23, 'customer', 'customer', 'Customer', 'Customers', NULL, 'App\\Customer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-18 23:36:45', '2021-05-03 23:27:05'),
(24, 'showtime', 'showtime', 'Showtime', 'Showtimes', 'voyager-world', 'App\\Showtime', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-19 01:41:23', '2021-03-29 00:52:49'),
(26, 'ticketorder', 'ticketorder', 'Ticketorder', 'Ticketorders', NULL, 'App\\Ticket', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-03 22:17:48', '2021-05-03 22:31:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `feedid` int(10) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `film_idF` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`feedid`, `comment`, `avatar`, `fullname`, `status`, `created_at`, `updated_at`, `rate`, `film_idF`) VALUES
(1, 'Phim hay qua', 'feedback\\March2021\\WnY2nctzBxjKttWKgOrT.gif', 'Tiến', 1, '2021-03-19 04:50:00', '2021-03-20 19:09:31', 4, 1),
(2, 'Phim hay', 'feedback\\March2021\\82UUXCivkM1Mc2El05sP.jpg', 'Minh', 1, '2021-03-20 19:02:43', '2021-03-20 19:02:43', 5, 5),
(3, 'Hay qua', 'feedback\\March2021\\cTPkCWytzwatI15wld4n.jpg', 'Tiến Minh', 1, '2021-03-20 19:11:46', '2021-03-20 19:11:46', 3, 2),
(6, 'hahadasd', 'customer\\March2021\\6Rn0vWFfRIb314MoIPMx.jpg', 'tien', 1, '2021-03-21 01:50:51', '2021-03-21 01:50:51', NULL, 1),
(7, 'ABC', 'customer\\March2021\\oN8wbMX05KdUSbrAtniV.jpg', 'tien', 1, '2021-03-22 23:39:23', '2021-03-22 23:39:23', NULL, 5),
(8, 'a', 'feedback\\March2021\\qYm899aX43fTx7wnwj2V.jpg', 'Cường', 1, '2021-03-23 00:11:49', '2021-03-23 00:11:49', 5, 6),
(9, 'b', NULL, 'Tiến', 1, '2021-03-23 00:42:00', '2021-03-23 00:43:05', 4, 7),
(10, 'dead', NULL, 'Cường em', 1, '2021-03-23 20:25:10', '2021-03-23 20:25:10', NULL, 6),
(11, '123abc', 'customer\\March2021\\oN8wbMX05KdUSbrAtniV.jpg', 'tien', 1, '2021-03-23 21:02:35', '2021-03-23 21:02:35', NULL, 6),
(12, 'ljjb', 'customer\\March2021\\oN8wbMX05KdUSbrAtniV.jpg', 'tien', 1, '2021-03-23 23:49:23', '2021-03-23 23:49:23', NULL, 6),
(13, 'aaa', 'customer\\March2021\\oN8wbMX05KdUSbrAtniV.jpg', 'tien', 1, '2021-03-28 21:49:03', '2021-03-28 21:49:03', NULL, 7),
(14, '123', 'customer\\March2021\\oN8wbMX05KdUSbrAtniV.jpg', 'tien', 1, '2021-03-29 01:44:48', '2021-03-29 01:44:48', NULL, 7),
(15, 'sad', 'customer\\March2021\\oN8wbMX05KdUSbrAtniV.jpg', 'tien', 1, '2021-03-30 02:48:16', '2021-03-30 02:48:16', NULL, 7),
(16, 'cho tien', 'customer\\March2021\\oN8wbMX05KdUSbrAtniV.jpg', 'tien', 1, '2021-03-30 02:53:03', '2021-03-30 02:53:03', NULL, 2),
(17, 'bấy bì à, phim hay đók', 'customer\\March2021\\oN8wbMX05KdUSbrAtniV.jpg', 'tien', 1, '2021-03-30 22:43:51', '2021-03-30 22:43:51', NULL, 2),
(18, 'aaaaaa', 'customer\\March2021\\oN8wbMX05KdUSbrAtniV.jpg', 'tien', 1, '2021-04-03 00:54:00', '2021-04-03 00:54:00', NULL, 7),
(19, 'Top rate', 'feedback\\May2021\\usUTTnq5A7d9O1JxbUH0.jpg', 'Minh Hoàng', 1, '2021-05-11 23:49:00', '2021-05-11 23:49:00', NULL, 8),
(20, 'Phim hay Rate 5', 'feedback\\May2021\\AhWdf7xW9cZ0QBca7OGy.jpg', 'Khuê', 1, '2021-05-12 00:02:19', '2021-05-12 00:02:19', 5, 9),
(21, 'Alo 123', 'customer\\May2021\\ykDb7UobXbAk28Bo8Vrs.jpg', 'Tiến', 1, '2021-05-12 23:17:20', '2021-05-12 23:17:20', NULL, 7),
(22, 'Phim hay', 'customer\\May2021\\ykDb7UobXbAk28Bo8Vrs.jpg', 'Tiến', 1, '2021-05-13 19:58:11', '2021-05-13 19:58:11', NULL, 1),
(23, 'abcsd', 'customer\\March2021\\oN8wbMX05KdUSbrAtniV.jpg', 'tien', 1, '2021-05-13 19:59:32', '2021-05-13 19:59:32', NULL, 1),
(24, 'test test test', 'feedback\\May2021\\iJnyrYRafSe2V55FabZG.jpg', 'Nam', 1, '2021-05-13 20:26:03', '2021-05-13 20:26:03', 4, 10),
(25, 'sddawdwadaw', 'customer\\March2021\\oN8wbMX05KdUSbrAtniV.jpg', 'tien', 1, '2021-05-14 00:18:08', '2021-05-14 00:18:08', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `film`
--

CREATE TABLE `film` (
  `filid` int(10) UNSIGNED NOT NULL,
  `namef` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picturebig` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `film_idcountry` int(11) DEFAULT NULL,
  `film_idtype` int(11) DEFAULT NULL,
  `count_view` double DEFAULT NULL,
  `count_comment` int(11) DEFAULT NULL,
  `film_feedid` int(11) DEFAULT NULL,
  `film_showing` int(11) DEFAULT NULL,
  `film_upcoming` int(11) DEFAULT NULL,
  `film_hotby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `film`
--

INSERT INTO `film` (`filid`, `namef`, `director`, `actor`, `duration`, `description`, `detail`, `picture`, `picturebig`, `youtube`, `status`, `created_at`, `updated_at`, `film_idcountry`, `film_idtype`, `count_view`, `count_comment`, `film_feedid`, `film_showing`, `film_upcoming`, `film_hotby`) VALUES
(1, 'Bố già', 'Vũ Ngọc Đãng , Trấn Thành', 'Trấn Thành Ngọc', '03:30:00', 'Bố già là một bộ phim điện ảnh hài tình cảm ra mắt vào dịp Tết Nguyên Đán 2021 do đạo diễn Vũ Ngọc Đãng thực hiện và Trấn Thành cùng với HKFlim Galaxy Studio sản xuất.[2] Phim dựa trên bộ phim chiếu mạng cùng tên của nghệ sĩ Trấn Thành được công chiếu vào dịp Tết Nguyên Đán 2020. Phim có sự tham gia của Trấn Thành, NSND Ngọc Giàu, Tuấn Trần, Ngân Chi, Lê Giang, Hoàng Mèo, Lan Phương, La Thành, Lê Trang, Quốc Khánh, A Quay và Bảo Phúc.[3][4] Phim dự kiến khởi chiếu trên các cụm rạp toàn quốc vào ngày 12 tháng 2 năm 2021[5][6][7] nhưng đã bị hoãn chiếu do đại dịch COVID-19. Sau đó, phim được thông báo sẽ tiếp tục quay lại khởi chiếu vào ngày 12 tháng 3 năm 2021.', '<p>Bố gi&agrave; l&agrave; một bộ phim điện ảnh h&agrave;i t&igrave;nh cảm ra mắt v&agrave;o dịp Tết Nguy&ecirc;n Đ&aacute;n 2021 do đạo diễn Vũ Ngọc Đ&atilde;ng thực hiện v&agrave; Trấn Th&agrave;nh c&ugrave;ng với HKFlim Galaxy Studio sản xuất.[2] Phim dựa tr&ecirc;n bộ phim chiếu mạng c&ugrave;ng t&ecirc;n của nghệ sĩ Trấn Th&agrave;nh được c&ocirc;ng chiếu v&agrave;o dịp Tết Nguy&ecirc;n Đ&aacute;n 2020. Phim c&oacute; sự tham gia của Trấn Th&agrave;nh, NSND Ngọc Gi&agrave;u, Tuấn Trần, Ng&acirc;n Chi, L&ecirc; Giang, Ho&agrave;ng M&egrave;o, Lan Phương, La Th&agrave;nh, L&ecirc; Trang, Quốc Kh&aacute;nh, A Quay v&agrave; Bảo Ph&uacute;c.[3][4] Phim dự kiến khởi chiếu tr&ecirc;n c&aacute;c cụm rạp to&agrave;n quốc v&agrave;o ng&agrave;y 12 th&aacute;ng 2 năm 2021[5][6][7] nhưng đ&atilde; bị ho&atilde;n chiếu do đại dịch COVID-19. Sau đ&oacute;, phim được th&ocirc;ng b&aacute;o sẽ tiếp tục quay lại khởi chiếu v&agrave;o ng&agrave;y 12 th&aacute;ng 3 năm 2021.</p>', 'film\\March2021\\8I8V7hjvSr5JMegTmvw1.jpg', 'film\\March2021\\ifK2I5kcIINLB34utsyc.jpg', 'https://www.youtube.com/embed/jluSu8Rw6YE', 1, '2021-03-04 08:00:00', '2021-03-22 23:54:31', 5, 4, 2, 3, 3, 0, 1, NULL),
(2, 'Bố già 2', 'Vũ Ngọc Đãng , Trấn Thành', 'Trấn Thành', '01:30:00', 'mô tả', NULL, 'film\\March2021\\QMfZ4qXQ4VK8em6LYDTw.jpg', NULL, 'https://www.youtube.com/embed/VjGuJKYHdIM', 1, '2021-03-05 02:50:00', '2021-03-22 23:54:19', 5, 8, 3, 3, 3, 0, 1, NULL),
(5, 'HÀNH TINH HỖN LOẠN', 'Doug Liman', 'Tom Holland, Daisy Ridley, Mads Mikkelsen, Ray McKinnon, David Oyelowo, Nick Jonas, Demián Bichir, Cynthia Erivo, Kurt Sutter', '02:09:00', 'Todd Hewwitt (Tom Holland) tình cờ phát hiện ra Viola (Daisy Ridley)- một cô gái sống sót sau khi phi thuyền của cô gặp nạn và rơi xuống hành tinh của cậu. Hành tinh này không hề có bóng dáng phụ nữ, còn đàn ông thì bị ảnh hưởng bởi \'Tiếng Ồn\' - một thế lực thể hiện toàn bộ suy nghĩ của họ ra bên ngoài. Vì là cô gái duy nhất trên hành tinh kì lạ này, tính mạng của Viola bị đe dọa. Todd quyết tâm bảo vệ Viola và cả hai bị cuốn vào cuộc phiêu lưu nguy hiểm. Từ đó, Todd dần khám phá ra năng lực đặc biệt của mình, và phát hiện ra những bí mật đen tối của hành tinh mà cậu đang sống.', NULL, 'film\\March2021\\nv6nRw56Rg6t1A8QJ6BN.jpg', NULL, 'https://www.youtube.com/embed/jluSu8Rw6YE', 1, '2021-03-19 04:53:00', '2021-05-12 00:06:13', 7, 5, NULL, NULL, NULL, 1, 0, 'month'),
(6, 'RAYA VÀ RỒNG THẦN CUỐI CÙNG', 'Don Hall, Carlos López Estrada', 'Awkwafina, Kelly Marie Tran', '01:54:00', 'Raya và Rồng Thần Cuối Cùng kể về một vương quốc huyền bí có tên là Kumandra – vùng đất mà loài rồng và con người sống hòa thuận với nhau. Nhưng rồi một thế lực đen tối bỗng đe dọa bình yên nơi đây, loài rồng buộc phải hi sinh để cứu lấy loài người. 500 năm sau, thế lực ấy bỗng trỗi dậy và một lần nữa, Raya là chiến binh duy nhất mang trong mình trọng trách đi tìm Rồng Thần cuối cùng trong truyền thuyết nhằm hàn gắn lại khối ngọc đã vỡ để cứu lấy vương quốc. Thông qua cuộc hành trình, Raya nhận ra loài người cần nhiều hơn những gì họ nghĩ, đó chính là lòng tin và sự đoàn kết.', NULL, 'film\\March2021\\60AJNOGWxd6clnzcFY03.jpg', NULL, 'https://www.youtube.com/embed/p1kgwxcCslY', 1, '2021-03-23 00:10:00', '2021-03-23 00:57:54', 5, 9, NULL, NULL, NULL, 1, 0, NULL),
(7, 'TOM & JERRY: QUẬY TUNG NEW YORK', 'Tim Story', 'Chloë Grace Moretz, Michael Peña, Rob Delaney', '01:41:00', 'Sau nhiều năm chành chọe, nay cặp kỳ phùng địch thủ nổi tiếng nhất thế giới Tom và Jerry đã làm hòa, khăn gói rời khỏi mái nhà chung, và bắt đầu hành trình của riêng mình. Chuột Jerry nay trú ngụ tại một khách sạn sang trọng, nơi chuẩn bị tổ chức một đám cưới Thế kỷ. Cô nhân viên mới Kayla được giao cho nhiệm vụ đuổi Jerry đi nên mang về một chàng mèo “mình đầy kinh nghiệm” đối phó với chuột, không ai khác chính là Tom. Và thế là cuộc chiến mèo - chuột lại nổ ra, kéo theo loạt rắc rối cho khách sạn, và biết bao tình huống dở khóc dở cười.', NULL, 'film\\March2021\\MlJDHEKop7lKPD7Sg0rm.jpg', NULL, 'https://www.youtube.com/embed/8GC05mFVRTw', 1, '2021-03-23 00:33:00', '2021-03-23 21:26:38', 7, 9, NULL, NULL, 1, 1, 0, 'years'),
(8, 'TRÙM CUỐI SIÊU ĐẲNG', 'Joe Carnahan', 'Frank Grillo, Mel Gibson, Naomi Watts, Dương Tử Quỳnh, Annabelle Wallis, Ken Jeong, Will Sasso, ….', '01:31:00', 'Mắc kẹt trong một vòng lặp thời gian ngay đúng ngày anh ta bị giết chết, một cựu đặc vụ Roy Pulver (Frank Gillo) đã phát hiện ra manh mới về một dự án bí mật của chính phủ có thể giải đáp bí ẩn đằng sau cái chết vô thời hạn của anh ta. Roy buộc lòng phải chạy đua với thời gian và truy bắt tên Colonel Ventor (Mel Gibson), đầu sỏ của dự án chính phủ này. Trong lúc đó, anh phải thoát khỏi cuộc vây bắt của những tên sát thủ tàn ác quyết tâm ngăn cản Roy tìm ra được sự thật. Liệu Roy Pulver có thể thoát khỏi vòng lặp này và cứu lấy gia đình đồng thời sống lại một lần nữa vào ngày mai?', NULL, 'film\\May2021\\pVDSKk2T0Cm8BrTyNEo8.jpg', NULL, 'https://www.youtube.com/embed/6LnHog3E59U', 1, '2021-05-11 23:47:00', '2021-05-11 23:49:20', 7, 4, NULL, NULL, 19, 0, 1, 'month'),
(9, 'ONG NHÍ PHIÊU LƯU KÝ: GIẢI CỨU CÔNG CHÚA KIẾN', 'Noel Cleary', 'Coco Jack Gillies, Evie Gillies, Benson Jack Anthony, Justine Clarke, Shane Dundas; David Collins', '01:21:00', 'Quá háo hức chào đón mùa xuân, Maya và Willy đã thức dậy khỏi giấc ngủ đông sớm hơn thời gian dự định. Từ đây, đôi bạn vô tình phải nhận một nhiệm vụ đặc biệt – bảo vệ và đưa quả trứng vàng đến ngôi nhà mới. Tuy nhiên, mọi rắc rối bắt đầu ập đến khi quả trứng nứt và cô công chúa kiến bé nhỏ ra đời. Maya, Willy và những người bạn đồng hành phải phối hợp cùng nhau để chăm sóc và bảo vệ công chúa kiến khỏi vô vàn nguy hiểm xung quanh. Trong hành trình đầy bất ngờ và gian nan này, Willy dần dần khám phá được một khía cạnh khác của bản thân – dịu dàng và kiên nhẫn với cô công chúa nhỏ. Bộ đôi Maya và Willy cũng đã trưởng thành hơn và tình bạn giữa họ càng trở nên thêm khăng khít và gắn bó.', NULL, 'film\\May2021\\aAv7XdlyztrSL9Fi9jGS.jpg', NULL, 'https://www.youtube.com/embed/RVzlfJ2vWLY', 1, '2021-05-12 00:01:00', '2021-05-12 00:02:32', 7, 9, NULL, NULL, 20, 1, 0, 'week'),
(10, 'CHIẾN BINH CUỐI CÙNG: CỘI NGUỒN CỦA QUỶ', 'Dmitriy Dyachenko', 'Viktor Khorinyak, Mila Sivatskaya, Ekaterina Vilkova', '02:02:00', 'Hòa bình đã được thiết lập tại Belogorie sau khi cái ác bị đánh bại và Ivan đang tận hưởng sự nổi tiếng mà anh xứng đáng. Không chỉ có được sự tín nhiệm từ gia đình, bạn bè và những điều mới lạ từ thế giới hiện đại đã mang tới cho anh một cuộc sống thoải mái, Ivan còn may mắn sở hữu thanh gươm phép thuật giúp việc di chuyển giữa hai thế giới trở nên thuận tiện hơn. Song, sự trỗi dậy của một ác quỷ cổ đại đã đe dọa thế giới ma thuật, Ivan quyết định hợp tác với những người bạn cũ và đối thủ của mình để bắt đầu cuộc hành trình dài tới vùng không gian mới, nhằm tìm cách đánh bạn kẻ thù cũng như trả lại hòa bình cho Belogorie.', NULL, 'film\\May2021\\qoogeWRZFPjaCfli5rtX.jpg', NULL, 'https://www.youtube.com/embed/8CeTSmoMGm8', 1, '2021-05-13 20:24:00', '2021-05-13 20:26:28', 7, 4, NULL, NULL, 24, 1, 0, 'month');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-03-02 20:07:11', '2021-03-02 20:07:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-03-02 20:07:11', '2021-03-02 20:07:11', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 6, '2021-03-02 20:07:12', '2021-05-03 22:02:08', 'voyager.media.index', NULL),
(3, 1, 'Quản lý người dùng', '', '_self', 'voyager-person', '#000000', 29, 1, '2021-03-02 20:07:12', '2021-03-13 22:31:00', 'voyager.users.index', 'null'),
(4, 1, 'Phân quyền', '', '_self', 'voyager-lock', '#000000', NULL, 2, '2021-03-02 20:07:12', '2021-03-03 20:41:19', 'voyager.roles.index', 'null'),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-03-02 20:07:12', '2021-05-03 22:02:08', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-03-02 20:07:13', '2021-03-03 20:41:04', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-03-02 20:07:13', '2021-03-03 20:41:04', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-03-02 20:07:13', '2021-03-03 20:41:04', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-03-02 20:07:15', '2021-03-03 20:41:04', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2021-03-02 20:07:15', '2021-05-03 22:02:08', 'voyager.settings.index', NULL),
(11, 1, 'Quản lý chuyên mục', '', '_self', 'voyager-categories', '#000000', 29, 2, '2021-03-02 20:07:51', '2021-03-13 22:31:02', 'voyager.categories.index', 'null'),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 7, '2021-03-02 20:07:57', '2021-05-03 22:02:08', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 8, '2021-03-02 20:08:04', '2021-05-03 22:02:08', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2021-03-02 20:08:16', '2021-03-03 20:41:04', 'voyager.hooks', NULL),
(22, 1, 'Quản lý phim', '', '_self', 'voyager-tv', '#000000', 29, 3, '2021-03-03 21:15:25', '2021-03-13 22:31:03', 'voyager.film.index', 'null'),
(23, 1, 'Quản lý quốc gia', '', '_self', 'voyager-home', '#000000', 29, 5, '2021-03-04 00:12:20', '2021-03-13 22:31:05', 'voyager.country.index', 'null'),
(24, 1, 'Quản lý thể loại phim', '', '_self', 'voyager-harddrive', '#000000', 29, 4, '2021-03-04 00:13:09', '2021-03-13 22:31:04', 'voyager.typefilm.index', 'null'),
(25, 1, 'Quản lý bình luận', '', '_self', 'voyager-mail', '#000000', 29, 6, '2021-03-10 19:50:07', '2021-03-13 22:31:07', 'voyager.feedback.index', 'null'),
(27, 1, 'Quản lý slider', '', '_self', 'voyager-star-two', '#000000', 29, 7, '2021-03-13 17:30:44', '2021-03-13 22:31:08', 'voyager.slider.index', 'null'),
(29, 1, 'Quản lý', '', '_self', 'voyager-sort', '#000000', NULL, 3, '2021-03-13 22:30:51', '2021-03-13 22:30:58', NULL, ''),
(30, 1, 'Quản lý khách hàng', '', '_self', 'voyager-person', '#000000', 29, 8, '2021-03-18 23:36:45', '2021-03-18 23:37:54', 'voyager.customer.index', 'null'),
(31, 1, 'Quản lý suất chiếu', '', '_self', 'voyager-world', '#000000', NULL, 4, '2021-03-19 01:41:24', '2021-03-19 01:42:02', 'voyager.showtime.index', 'null'),
(33, 1, 'Quản lý đơn đặt vé', '', '_self', 'voyager-ticket', '#000000', NULL, 5, '2021-05-03 22:17:49', '2021-05-03 22:18:49', 'voyager.ticketorder.index', 'null');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2016_01_01_000000_add_voyager_user_fields', 2),
(5, '2016_01_01_000000_create_data_types_table', 2),
(6, '2016_05_19_173453_create_menu_table', 2),
(7, '2016_10_21_190000_create_roles_table', 2),
(8, '2016_10_21_190000_create_settings_table', 2),
(9, '2016_11_30_135954_create_permission_table', 2),
(10, '2016_11_30_141208_create_permission_role_table', 2),
(11, '2016_12_26_201236_data_types__add__server_side', 2),
(12, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(13, '2017_01_14_005015_create_translations_table', 2),
(14, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(15, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(16, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(17, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(18, '2017_08_05_000000_add_group_to_settings_table', 2),
(19, '2017_11_26_013050_add_user_role_relationship', 2),
(20, '2017_11_26_015000_create_user_roles_table', 2),
(21, '2018_03_11_000000_add_user_settings', 2),
(22, '2018_03_14_000000_add_details_to_data_types_table', 2),
(23, '2018_03_16_000000_make_settings_value_nullable', 2),
(24, '2016_01_01_000000_create_pages_table', 3),
(25, '2016_01_01_000000_create_posts_table', 3),
(26, '2016_02_15_204651_create_categories_table', 3),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-03-02 20:08:08', '2021-03-02 20:08:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-03-02 20:07:21', '2021-03-02 20:07:21'),
(2, 'browse_bread', NULL, '2021-03-02 20:07:21', '2021-03-02 20:07:21'),
(3, 'browse_database', NULL, '2021-03-02 20:07:21', '2021-03-02 20:07:21'),
(4, 'browse_media', NULL, '2021-03-02 20:07:22', '2021-03-02 20:07:22'),
(5, 'browse_compass', NULL, '2021-03-02 20:07:22', '2021-03-02 20:07:22'),
(6, 'browse_menus', 'menus', '2021-03-02 20:07:22', '2021-03-02 20:07:22'),
(7, 'read_menus', 'menus', '2021-03-02 20:07:22', '2021-03-02 20:07:22'),
(8, 'edit_menus', 'menus', '2021-03-02 20:07:23', '2021-03-02 20:07:23'),
(9, 'add_menus', 'menus', '2021-03-02 20:07:23', '2021-03-02 20:07:23'),
(10, 'delete_menus', 'menus', '2021-03-02 20:07:24', '2021-03-02 20:07:24'),
(11, 'browse_roles', 'roles', '2021-03-02 20:07:24', '2021-03-02 20:07:24'),
(12, 'read_roles', 'roles', '2021-03-02 20:07:24', '2021-03-02 20:07:24'),
(13, 'edit_roles', 'roles', '2021-03-02 20:07:24', '2021-03-02 20:07:24'),
(14, 'add_roles', 'roles', '2021-03-02 20:07:24', '2021-03-02 20:07:24'),
(15, 'delete_roles', 'roles', '2021-03-02 20:07:24', '2021-03-02 20:07:24'),
(16, 'browse_users', 'users', '2021-03-02 20:07:25', '2021-03-02 20:07:25'),
(17, 'read_users', 'users', '2021-03-02 20:07:25', '2021-03-02 20:07:25'),
(18, 'edit_users', 'users', '2021-03-02 20:07:25', '2021-03-02 20:07:25'),
(19, 'add_users', 'users', '2021-03-02 20:07:25', '2021-03-02 20:07:25'),
(20, 'delete_users', 'users', '2021-03-02 20:07:26', '2021-03-02 20:07:26'),
(21, 'browse_settings', 'settings', '2021-03-02 20:07:26', '2021-03-02 20:07:26'),
(22, 'read_settings', 'settings', '2021-03-02 20:07:26', '2021-03-02 20:07:26'),
(23, 'edit_settings', 'settings', '2021-03-02 20:07:26', '2021-03-02 20:07:26'),
(24, 'add_settings', 'settings', '2021-03-02 20:07:26', '2021-03-02 20:07:26'),
(25, 'delete_settings', 'settings', '2021-03-02 20:07:26', '2021-03-02 20:07:26'),
(26, 'browse_categories', 'categories', '2021-03-02 20:07:51', '2021-03-02 20:07:51'),
(27, 'read_categories', 'categories', '2021-03-02 20:07:51', '2021-03-02 20:07:51'),
(28, 'edit_categories', 'categories', '2021-03-02 20:07:51', '2021-03-02 20:07:51'),
(29, 'add_categories', 'categories', '2021-03-02 20:07:51', '2021-03-02 20:07:51'),
(30, 'delete_categories', 'categories', '2021-03-02 20:07:51', '2021-03-02 20:07:51'),
(31, 'browse_posts', 'posts', '2021-03-02 20:07:57', '2021-03-02 20:07:57'),
(32, 'read_posts', 'posts', '2021-03-02 20:07:57', '2021-03-02 20:07:57'),
(33, 'edit_posts', 'posts', '2021-03-02 20:07:57', '2021-03-02 20:07:57'),
(34, 'add_posts', 'posts', '2021-03-02 20:07:58', '2021-03-02 20:07:58'),
(35, 'delete_posts', 'posts', '2021-03-02 20:07:59', '2021-03-02 20:07:59'),
(36, 'browse_pages', 'pages', '2021-03-02 20:08:04', '2021-03-02 20:08:04'),
(37, 'read_pages', 'pages', '2021-03-02 20:08:05', '2021-03-02 20:08:05'),
(38, 'edit_pages', 'pages', '2021-03-02 20:08:05', '2021-03-02 20:08:05'),
(39, 'add_pages', 'pages', '2021-03-02 20:08:07', '2021-03-02 20:08:07'),
(40, 'delete_pages', 'pages', '2021-03-02 20:08:07', '2021-03-02 20:08:07'),
(41, 'browse_hooks', NULL, '2021-03-02 20:08:16', '2021-03-02 20:08:16'),
(52, 'browse_products', 'products', '2021-03-02 22:18:46', '2021-03-02 22:18:46'),
(53, 'read_products', 'products', '2021-03-02 22:18:46', '2021-03-02 22:18:46'),
(54, 'edit_products', 'products', '2021-03-02 22:18:46', '2021-03-02 22:18:46'),
(55, 'add_products', 'products', '2021-03-02 22:18:46', '2021-03-02 22:18:46'),
(56, 'delete_products', 'products', '2021-03-02 22:18:46', '2021-03-02 22:18:46'),
(77, 'browse_film', 'film', '2021-03-03 21:15:25', '2021-03-03 21:15:25'),
(78, 'read_film', 'film', '2021-03-03 21:15:25', '2021-03-03 21:15:25'),
(79, 'edit_film', 'film', '2021-03-03 21:15:25', '2021-03-03 21:15:25'),
(80, 'add_film', 'film', '2021-03-03 21:15:25', '2021-03-03 21:15:25'),
(81, 'delete_film', 'film', '2021-03-03 21:15:25', '2021-03-03 21:15:25'),
(82, 'browse_country', 'country', '2021-03-04 00:12:20', '2021-03-04 00:12:20'),
(83, 'read_country', 'country', '2021-03-04 00:12:20', '2021-03-04 00:12:20'),
(84, 'edit_country', 'country', '2021-03-04 00:12:20', '2021-03-04 00:12:20'),
(85, 'add_country', 'country', '2021-03-04 00:12:20', '2021-03-04 00:12:20'),
(86, 'delete_country', 'country', '2021-03-04 00:12:20', '2021-03-04 00:12:20'),
(87, 'browse_typefilm', 'typefilm', '2021-03-04 00:13:09', '2021-03-04 00:13:09'),
(88, 'read_typefilm', 'typefilm', '2021-03-04 00:13:09', '2021-03-04 00:13:09'),
(89, 'edit_typefilm', 'typefilm', '2021-03-04 00:13:09', '2021-03-04 00:13:09'),
(90, 'add_typefilm', 'typefilm', '2021-03-04 00:13:09', '2021-03-04 00:13:09'),
(91, 'delete_typefilm', 'typefilm', '2021-03-04 00:13:09', '2021-03-04 00:13:09'),
(92, 'browse_feedback', 'feedback', '2021-03-10 19:50:07', '2021-03-10 19:50:07'),
(93, 'read_feedback', 'feedback', '2021-03-10 19:50:07', '2021-03-10 19:50:07'),
(94, 'edit_feedback', 'feedback', '2021-03-10 19:50:07', '2021-03-10 19:50:07'),
(95, 'add_feedback', 'feedback', '2021-03-10 19:50:07', '2021-03-10 19:50:07'),
(96, 'delete_feedback', 'feedback', '2021-03-10 19:50:07', '2021-03-10 19:50:07'),
(102, 'browse_slider', 'slider', '2021-03-13 17:30:44', '2021-03-13 17:30:44'),
(103, 'read_slider', 'slider', '2021-03-13 17:30:44', '2021-03-13 17:30:44'),
(104, 'edit_slider', 'slider', '2021-03-13 17:30:44', '2021-03-13 17:30:44'),
(105, 'add_slider', 'slider', '2021-03-13 17:30:44', '2021-03-13 17:30:44'),
(106, 'delete_slider', 'slider', '2021-03-13 17:30:44', '2021-03-13 17:30:44'),
(112, 'browse_customer', 'customer', '2021-03-18 23:36:45', '2021-03-18 23:36:45'),
(113, 'read_customer', 'customer', '2021-03-18 23:36:45', '2021-03-18 23:36:45'),
(114, 'edit_customer', 'customer', '2021-03-18 23:36:45', '2021-03-18 23:36:45'),
(115, 'add_customer', 'customer', '2021-03-18 23:36:45', '2021-03-18 23:36:45'),
(116, 'delete_customer', 'customer', '2021-03-18 23:36:45', '2021-03-18 23:36:45'),
(117, 'browse_showtime', 'showtime', '2021-03-19 01:41:24', '2021-03-19 01:41:24'),
(118, 'read_showtime', 'showtime', '2021-03-19 01:41:24', '2021-03-19 01:41:24'),
(119, 'edit_showtime', 'showtime', '2021-03-19 01:41:24', '2021-03-19 01:41:24'),
(120, 'add_showtime', 'showtime', '2021-03-19 01:41:24', '2021-03-19 01:41:24'),
(121, 'delete_showtime', 'showtime', '2021-03-19 01:41:24', '2021-03-19 01:41:24'),
(127, 'browse_ticketorder', 'ticketorder', '2021-05-03 22:17:49', '2021-05-03 22:17:49'),
(128, 'read_ticketorder', 'ticketorder', '2021-05-03 22:17:49', '2021-05-03 22:17:49'),
(129, 'edit_ticketorder', 'ticketorder', '2021-05-03 22:17:49', '2021-05-03 22:17:49'),
(130, 'add_ticketorder', 'ticketorder', '2021-05-03 22:17:49', '2021-05-03 22:17:49'),
(131, 'delete_ticketorder', 'ticketorder', '2021-05-03 22:17:49', '2021-05-03 22:17:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(3, 3),
(4, 1),
(4, 3),
(5, 1),
(5, 3),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 3),
(9, 1),
(9, 3),
(10, 1),
(10, 3),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(13, 3),
(14, 1),
(14, 3),
(15, 1),
(15, 3),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 1),
(20, 3),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(24, 3),
(25, 1),
(25, 3),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(40, 3),
(41, 1),
(41, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(79, 3),
(80, 1),
(80, 3),
(81, 1),
(81, 3),
(82, 1),
(82, 3),
(83, 1),
(83, 3),
(84, 1),
(84, 3),
(85, 1),
(85, 3),
(86, 1),
(86, 3),
(87, 1),
(87, 3),
(88, 1),
(88, 3),
(89, 1),
(89, 3),
(90, 1),
(90, 3),
(91, 1),
(91, 3),
(92, 1),
(92, 3),
(93, 1),
(93, 3),
(94, 1),
(94, 3),
(95, 1),
(95, 3),
(96, 1),
(96, 3),
(102, 1),
(102, 3),
(103, 1),
(103, 3),
(104, 1),
(104, 3),
(105, 1),
(105, 3),
(106, 1),
(106, 3),
(112, 1),
(112, 3),
(113, 1),
(113, 3),
(114, 1),
(114, 3),
(115, 1),
(115, 3),
(116, 1),
(116, 3),
(117, 1),
(117, 3),
(118, 1),
(118, 3),
(119, 1),
(119, 3),
(120, 1),
(120, 3),
(121, 1),
(121, 3),
(127, 1),
(127, 3),
(128, 1),
(128, 3),
(129, 1),
(129, 3),
(130, 1),
(130, 3),
(131, 1),
(131, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-03-02 20:08:00', '2021-03-02 20:08:00'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-03-02 20:08:01', '2021-03-02 20:08:01'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-03-02 20:08:01', '2021-03-02 20:08:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `idproduct` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`idproduct`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Goldrim123', '2021-03-02 22:19:00', '2021-03-02 22:23:35'),
(2, 'awdajwd', '2021-03-02 23:13:52', '2021-03-02 23:13:52'),
(3, 'Phim gi gi do', '2021-03-02 23:14:33', '2021-03-02 23:14:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-03-02 20:07:20', '2021-03-02 20:07:20'),
(2, 'user', 'Normal User', '2021-03-02 20:07:20', '2021-03-02 20:07:20'),
(3, 'quanly', 'Manager', '2021-03-02 21:07:22', '2021-03-02 21:07:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\March2021\\6Y0taJzkp2efGwpHCyQA.jpg', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\March2021\\fByl6pGoEhhgowHRfQwI.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Chào mừng trở lại', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Trang quản trị', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\March2021\\q03vDNMXbI8aU1X1RrKa.jpg', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '369149581495-ha92u7ccgvqcbqd75rs40cltmrpe4mrr.apps.googleusercontent.com', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `showtime`
--

CREATE TABLE `showtime` (
  `showtime_id` int(10) UNSIGNED NOT NULL,
  `showtime_date` date DEFAULT NULL,
  `showtime_hour` time DEFAULT NULL,
  `showtime_status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `showtime_film_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `showtime`
--

INSERT INTO `showtime` (`showtime_id`, `showtime_date`, `showtime_hour`, `showtime_status`, `created_at`, `updated_at`, `showtime_film_id`) VALUES
(1, '2021-03-19', '15:30:00', 0, '2021-03-19 01:45:00', '2021-03-29 00:56:54', 5),
(2, '2021-03-20', '14:30:00', 0, '2021-03-19 01:45:00', '2021-03-29 00:56:11', 1),
(3, '2021-04-11', '18:00:00', 0, '2021-04-10 22:14:20', '2021-04-10 22:14:20', 1),
(4, '2021-04-15', '06:00:00', 0, '2021-04-10 22:14:54', '2021-04-10 22:14:54', 1),
(5, '2021-05-19', '18:00:00', 0, '2021-05-04 02:07:33', '2021-05-04 02:07:33', 5),
(6, '2021-05-06', '16:00:00', 0, '2021-05-04 02:08:17', '2021-05-04 02:08:17', 6),
(7, '2021-05-05', '14:00:00', 0, '2021-05-04 02:08:43', '2021-05-04 02:08:43', 7),
(8, '2021-05-22', '19:00:00', 0, '2021-05-04 02:16:44', '2021-05-04 02:16:44', 7),
(9, '2021-05-23', '13:30:00', 1, '2021-05-13 20:12:00', '2021-05-13 20:12:00', 9),
(10, '2021-05-17', '14:30:00', 1, '2021-05-13 20:12:20', '2021-05-13 20:12:20', 5),
(11, '2021-05-18', '16:00:00', 0, '2021-05-13 20:12:00', '2021-05-13 20:12:49', 8),
(12, '2021-05-18', '15:00:00', 0, '2021-05-13 20:13:11', '2021-05-13 20:13:11', 8),
(13, '2021-05-19', '18:30:00', 0, '2021-05-13 20:13:37', '2021-05-13 20:13:37', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(10) UNSIGNED NOT NULL,
  `slider_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_image` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_name`, `slider_image`, `slider_status`, `created_at`, `updated_at`) VALUES
(1, 'tên 1', 'slider\\March2021\\NOHiLERki3suSDHwA4QY.jpg', 1, '2021-03-13 17:43:49', '2021-03-13 17:43:49'),
(2, 'tên 2', 'slider\\March2021\\qpCR7U7r4EHoIewccAbt.png', 1, '2021-03-13 17:44:27', '2021-03-13 17:44:27'),
(3, 'tên w', 'slider\\March2021\\KEP12x8ZX3VaOsA9HhcK.jpg', 1, '2021-03-13 17:44:41', '2021-03-13 17:44:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `test`
--

CREATE TABLE `test` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ticketorder`
--

CREATE TABLE `ticketorder` (
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `order_customername` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_filmname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_seat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_customerid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ticketorder`
--

INSERT INTO `ticketorder` (`ticket_id`, `order_customername`, `order_filmname`, `order_seat`, `status`, `order_customerid`, `created_at`, `updated_at`, `order_phone`, `order_address`, `order_birth`) VALUES
(3, 'tien', 'Bố già', 'A7', 1, 41, '2021-05-03 22:24:00', '2021-05-03 22:31:58', '0967829808', '286b/1 Bình Thung 2', '1999-02-11'),
(4, 'tien', 'TOM & JERRY: QUẬY TUNG NEW YORK', 'A6', NULL, 41, '2021-05-04 02:18:38', '2021-05-04 02:18:38', '0967829808', '286b/1 Bình Thung 2', '1999-02-11'),
(5, 'tien', 'Bố già', 'E6,E5', NULL, 41, '2021-05-11 21:31:39', '2021-05-11 21:31:39', '0967829808', '286b/1 Bình Thung 2', '1999-02-11'),
(6, 'tien', 'TOM & JERRY: QUẬY TUNG NEW YORK', 'A7,J7', NULL, 41, '2021-05-11 22:21:12', '2021-05-11 22:21:12', '0967829808', '286b/1 Bình Thung 2', '1999-02-11'),
(7, 'tien', 'Bố già', 'G6,G7', NULL, 55, '2021-05-12 16:46:37', '2021-05-12 16:46:37', '0967829808', '286b/1 Bình Thung 2', '2012-11-11'),
(8, 'Tiến', 'Bố già', 'C7,C6,D6', NULL, 55, '2021-05-12 23:26:40', '2021-05-12 23:26:40', '0967829808', '286b/1 Bình Thung 2', '2012-11-11'),
(9, 'tien', 'Bố già', 'C7,C6,C5,C4', 1, 41, '2021-05-13 20:01:00', '2021-05-13 20:05:22', '0967829808', '286b/1 Bình Thung 2', '1999-02-11'),
(10, NULL, NULL, NULL, NULL, NULL, '2021-05-13 23:38:33', '2021-05-13 23:38:33', NULL, NULL, NULL),
(11, 'Tiến', 'TOM & JERRY: QUẬY TUNG NEW YORK', 'A7,G7,G6', 1, 41, '2021-05-14 00:16:00', '2021-05-14 00:17:32', '0967829808', '286b/1 Bình Thung 2', '1999-02-11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-03-02 20:08:08', '2021-03-02 20:08:08'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-03-02 20:08:08', '2021-03-02 20:08:08'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-03-02 20:08:09', '2021-03-02 20:08:09'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-03-02 20:08:09', '2021-03-02 20:08:09'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-03-02 20:08:09', '2021-03-02 20:08:09'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-03-02 20:08:10', '2021-03-02 20:08:10'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-03-02 20:08:10', '2021-03-02 20:08:10'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-03-02 20:08:10', '2021-03-02 20:08:10'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-03-02 20:08:11', '2021-03-02 20:08:11'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-03-02 20:08:11', '2021-03-02 20:08:11'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-03-02 20:08:11', '2021-03-02 20:08:11'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-03-02 20:08:11', '2021-03-02 20:08:11'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-03-02 20:08:11', '2021-03-02 20:08:11'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-03-02 20:08:11', '2021-03-02 20:08:11'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-03-02 20:08:12', '2021-03-02 20:08:12'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-03-02 20:08:12', '2021-03-02 20:08:12'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-03-02 20:08:12', '2021-03-02 20:08:12'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-03-02 20:08:12', '2021-03-02 20:08:12'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-03-02 20:08:12', '2021-03-02 20:08:12'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-03-02 20:08:13', '2021-03-02 20:08:13'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-03-02 20:08:13', '2021-03-02 20:08:13'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-03-02 20:08:13', '2021-03-02 20:08:13'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-03-02 20:08:13', '2021-03-02 20:08:13'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-03-02 20:08:13', '2021-03-02 20:08:13'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-03-02 20:08:13', '2021-03-02 20:08:13'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-03-02 20:08:13', '2021-03-02 20:08:13'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-03-02 20:08:13', '2021-03-02 20:08:13'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-03-02 20:08:14', '2021-03-02 20:08:14'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-03-02 20:08:14', '2021-03-02 20:08:14'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-03-02 20:08:14', '2021-03-02 20:08:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `typefilm`
--

CREATE TABLE `typefilm` (
  `typid` int(10) UNSIGNED NOT NULL,
  `namet` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `typefilm`
--

INSERT INTO `typefilm` (`typid`, `namet`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Hành động', 1, '2021-03-04 00:16:25', '2021-03-04 00:16:25'),
(5, 'Khoa học viễn tưởng', 1, '2021-03-04 00:16:35', '2021-03-04 00:16:35'),
(6, 'Kinh dị', 1, '2021-03-04 00:17:51', '2021-03-04 00:17:51'),
(7, 'Phiêu lưu', 1, '2021-03-04 00:49:49', '2021-03-04 00:49:49'),
(8, 'Hành động, Hài kịch', 1, '2021-03-19 03:28:35', '2021-03-19 03:28:35'),
(9, 'Hoạt hình,Phiêu lưu', 1, '2021-03-23 00:13:18', '2021-03-23 00:13:18'),
(10, 'Kỳ ảo', 1, '2021-05-11 23:54:39', '2021-05-11 23:54:39'),
(11, 'Tình cảm, Lãng mạn', 1, '2021-05-11 23:54:00', '2021-05-11 23:55:58'),
(12, 'Trinh thám', 1, '2021-05-11 23:55:04', '2021-05-11 23:55:04'),
(13, 'Hồi hộp, Hành động, Kinh dị', 1, '2021-05-11 23:55:00', '2021-05-11 23:56:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\March2021\\RNyG6eI0uRc4ZNKEH21N.jpg', NULL, '$2y$10$jRBifaAJosIeldUSHFvyqexPiW0mGUhwA/1myRrISgJrq.R5Vbq76', 'UfmZUOh8ETMz3W6O6bCEHNTMPV0fLMC5HcUE3eaHXOal3gHNLaVd15yP6CHf', '{\"locale\":\"en\"}', '2021-03-02 20:07:53', '2021-03-02 20:25:39'),
(3, 3, 'Quản trị viên', 'quanly@gmail.com', 'users\\March2021\\J3G8DbVtWHvg6FE8m6f6.jpg', NULL, '$2y$10$FFY4RuNuarSuGlVeYPFwCeHZnxRiBQtAWCOk6VhGSD3WkSuXrOnC.', NULL, '{\"locale\":\"en\"}', '2021-03-02 21:07:59', '2021-03-17 19:22:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`couid`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_customer_email_unique` (`email`);

--
-- Chỉ mục cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Chỉ mục cho bảng `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedid`);

--
-- Chỉ mục cho bảng `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`filid`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Chỉ mục cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`idproduct`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Chỉ mục cho bảng `showtime`
--
ALTER TABLE `showtime`
  ADD PRIMARY KEY (`showtime_id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Chỉ mục cho bảng `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ticketorder`
--
ALTER TABLE `ticketorder`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Chỉ mục cho bảng `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Chỉ mục cho bảng `typefilm`
--
ALTER TABLE `typefilm`
  ADD PRIMARY KEY (`typid`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `country`
--
ALTER TABLE `country`
  MODIFY `couid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT cho bảng `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `film`
--
ALTER TABLE `film`
  MODIFY `filid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `idproduct` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `showtime`
--
ALTER TABLE `showtime`
  MODIFY `showtime_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `test`
--
ALTER TABLE `test`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ticketorder`
--
ALTER TABLE `ticketorder`
  MODIFY `ticket_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `typefilm`
--
ALTER TABLE `typefilm`
  MODIFY `typid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
