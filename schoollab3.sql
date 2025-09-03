-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03 سبتمبر 2025 الساعة 15:00
-- إصدار الخادم: 12.0.2-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoollab3`
--

-- --------------------------------------------------------

--
-- بنية الجدول `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'student');

-- --------------------------------------------------------

--
-- بنية الجدول `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 2, 28);

-- --------------------------------------------------------

--
-- بنية الجدول `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add student', 7, 'add_student'),
(26, 'Can change student', 7, 'change_student'),
(27, 'Can delete student', 7, 'delete_student'),
(28, 'Can view student', 7, 'view_student'),
(29, 'Can add classroom', 8, 'add_classroom'),
(30, 'Can change classroom', 8, 'change_classroom'),
(31, 'Can delete classroom', 8, 'delete_classroom'),
(32, 'Can view classroom', 8, 'view_classroom');

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1000000$AgMqxTOr0zZoZLL2kDwjpl$wY01xXLPpYJHXEHjO6NB9PqNd32GVvpD0YMvILVu0QY=', '2025-08-31 10:28:54.000000', 1, 'malek', '', '', '', 1, 1, '2025-08-15 19:52:57.000000'),
(2, 'pbkdf2_sha256$1000000$gH6QwuIWxo8cRA6xoslqCl$w+f+T+nJGZOQBOBCY5XJdjKr3G9+5KoZ5aNOkXRznLQ=', NULL, 0, 'Ali', '', '', 'ali@gmail.com', 0, 1, '2025-08-29 22:35:45.000000'),
(3, 'pbkdf2_sha256$1000000$5KzdaUQfzpXYAeLiZ4R6Gq$Ger6ouksDJ5uK3ArL9HbPZrtSbkW1dg5Ff4nOrK7QoU=', '2025-08-29 22:53:50.477037', 0, 'Samy', '', '', 'Saeed@gmail.com', 0, 1, '2025-08-29 22:39:00.198718'),
(4, 'pbkdf2_sha256$1000000$nfh4bRUzTQQXNGsa53cEmT$pMjuykewcjTM0D/JTW/rFunQjcvzPlvEklnfYuFlRAc=', '2025-08-29 23:04:36.045045', 0, 'ahmed', '', '', 'ahmed.alhaj@gmail.com', 0, 1, '2025-08-29 23:02:18.000000'),
(5, 'pbkdf2_sha256$1000000$LzGipza0BivusBfOUCLdQF$Htw8XnR2WFrLOpOM0H09v//X/HMBl8o/E1W9dhLI2Tc=', '2025-08-29 23:43:34.466703', 0, 'Samy11', '', '', 'samy@gmail.com', 0, 1, '2025-08-29 23:12:30.161821'),
(6, 'pbkdf2_sha256$1000000$07Oi3f4j38KYmLzjsBtbN0$0h+faIKRkEsJfCbKq0WeQ2Hv9H+WJdRG9sHz2PS0K5o=', '2025-08-30 06:57:37.000000', 0, 'Mohammed', '', '', 'mohammedabdo@gmail.com', 0, 0, '2025-08-30 06:38:15.000000'),
(7, 'pbkdf2_sha256$1000000$oexVzRT5owaXQ8qux2uXkD$1YOAmub5/G//5xpJbeWq+xTCIg3sye2sWAwepK/U3Xc=', '2025-08-31 10:42:21.844208', 0, 'Mohammed11', '', '', 'mohammed@gmail.com', 1, 1, '2025-08-31 10:06:15.000000');

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 1),
(2, 4, 1),
(4, 7, 1);

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `classroom_classroom`
--

CREATE TABLE `classroom_classroom` (
  `id` bigint(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `floor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `classroom_classroom`
--

INSERT INTO `classroom_classroom` (`id`, `name`, `floor`) VALUES
(1, '10th', 5),
(2, '10th', 5),
(3, '9th', 4),
(4, '7', 2),
(5, '6', 1),
(6, '11th', 4);

-- --------------------------------------------------------

--
-- بنية الجدول `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-08-15 19:54:41.821931', '1', 'أحمد الهاشمي', 1, '[{\"added\": {}}]', 7, 1),
(2, '2025-08-15 19:55:19.092323', '2', 'محمد الحضرمي', 1, '[{\"added\": {}}]', 7, 1),
(3, '2025-08-15 19:55:58.539738', '3', 'فهد القاسمي', 1, '[{\"added\": {}}]', 7, 1),
(4, '2025-08-22 20:05:10.853601', '9', 'omer Ali', 2, '[{\"changed\": {\"fields\": [\"File report\", \"Image\", \"Classroom\"]}}]', 7, 1),
(5, '2025-08-22 20:05:29.685266', '6', 'Aymeen Alosaby', 2, '[{\"changed\": {\"fields\": [\"File report\", \"Image\", \"Classroom\"]}}]', 7, 1),
(6, '2025-08-29 22:56:31.057717', '1', 'admin', 1, '[{\"added\": {}}]', 3, 1),
(7, '2025-08-29 23:03:28.280212', '2', 'Ali', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(8, '2025-08-29 23:04:17.889049', '4', 'ahmed', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(9, '2025-08-30 06:56:05.383623', '6', 'Mohammed', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(10, '2025-08-30 06:58:46.805422', '6', 'Mohammed', 2, '[{\"changed\": {\"fields\": [\"Active\", \"Staff status\"]}}]', 4, 1),
(11, '2025-08-30 06:59:03.039186', '6', 'Mohammed', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(12, '2025-08-30 07:03:08.477128', '6', 'Mohammed', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(13, '2025-08-31 10:29:56.350846', '2', 'student', 1, '[{\"added\": {}}]', 3, 1),
(14, '2025-08-31 10:30:22.938790', '2', 'student', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 1),
(15, '2025-08-31 10:31:55.736893', '7', 'Mohammed11', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]', 4, 1),
(16, '2025-08-31 10:41:45.376588', '1', 'malek', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(17, '2025-08-31 10:42:31.996820', '1', 'malek', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 7);

-- --------------------------------------------------------

--
-- بنية الجدول `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'classroom', 'classroom'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'student', 'student');

-- --------------------------------------------------------

--
-- بنية الجدول `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-08-08 23:27:59.439006'),
(2, 'auth', '0001_initial', '2025-08-08 23:27:59.832006'),
(3, 'admin', '0001_initial', '2025-08-08 23:27:59.912004'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-08-08 23:27:59.922004'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-08-08 23:27:59.933005'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-08-08 23:28:00.020006'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-08-08 23:28:00.056004'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-08-08 23:28:00.077003'),
(9, 'auth', '0004_alter_user_username_opts', '2025-08-08 23:28:00.087005'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-08-08 23:28:00.128005'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-08-08 23:28:00.131004'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-08-08 23:28:00.140003'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-08-08 23:28:00.163003'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-08-08 23:28:00.202004'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-08-08 23:28:00.232006'),
(16, 'auth', '0011_update_proxy_permissions', '2025-08-08 23:28:00.253005'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-08-08 23:28:00.282007'),
(18, 'sessions', '0001_initial', '2025-08-08 23:28:00.311004'),
(19, 'student', '0001_initial', '2025-08-08 23:30:09.910836'),
(20, 'student', '0002_student_file_report_student_image', '2025-08-22 18:18:45.287142'),
(21, 'classroom', '0001_initial', '2025-08-22 19:33:14.620767'),
(22, 'student', '0003_student_classroom', '2025-08-22 19:33:14.665765'),
(23, 'student', '0004_alter_student_f_name', '2025-08-29 20:03:24.489051'),
(24, 'student', '0005_alter_student_f_name', '2025-08-29 20:14:01.660008');

-- --------------------------------------------------------

--
-- بنية الجدول `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4umuzpp37wnfrazji6e86laws8pp7vv2', '.eJxVjDsOwjAQBe_iGlnYrD-hpOcM0Xp3jQPIluKkQtwdIqWA9s3Me6kR16WMa5d5nFidlVGH3y0hPaRugO9Yb01Tq8s8Jb0peqddXxvL87K7fwcFe_nWQhhQhAAtORiyi8ZDxuTDSWJwUY4WwHDM1qEAMLlgozB5w-IGMur9AQKZOHE:1upY07:yCWo_18yIuGx01TmIPRqHSFH5NUoPqmJg6108Y0ZKAo', '2025-09-05 20:04:39.407098'),
('sa6g2nf5mprb4kkyjnvevhey2z5vvk2e', '.eJxVjDsOwjAQBe_iGlnYrD-hpOcM0Xp3jQPIluKkQtwdIqWA9s3Me6kR16WMa5d5nFidlVGH3y0hPaRugO9Yb01Tq8s8Jb0peqddXxvL87K7fwcFe_nWQhhQhAAtORiyi8ZDxuTDSWJwUY4WwHDM1qEAMLlgozB5w-IGMur9AQKZOHE:1upjGK:10KWJ_zTch-d_I7X-Ef2QOrJSQD_-uQNodeHQeSrFfA', '2025-09-06 08:06:08.988531'),
('wzwvx969hq3an79zbt05co1iujghkd3d', '.eJxVjDsOwjAQBe_iGlnYrD-hpOcM0Xp3jQPIluKkQtwdIqWA9s3Me6kR16WMa5d5nFidlVGH3y0hPaRugO9Yb01Tq8s8Jb0peqddXxvL87K7fwcFe_nWQhhQhAAtORiyi8ZDxuTDSWJwUY4WwHDM1qEAMLlgozB5w-IGMur9AQKZOHE:1un0UI:dewySjRzguuPmDH2qEtmaSAv-A-6FwL_lILixE27tzU', '2025-08-29 19:53:18.696118'),
('ysuc12ntz9r6etag9lx0zlmyw25zoyit', '.eJxVjMEOwiAQRP-FsyGssmA9evcbyC4sUjU0Ke3J-O_SpAed45s381aB1qWEtckcxqQuyqvDL2OKT6lbkR5U75OOU13mkfWm6L1t-jYleV139--gUCt9nRkcJeEI6MlF20OMgxl8RnY5Gy-28xzPFsCg5aMzgOYkiAAJnPp8AfrkN5E:1usfVt:1V7k9bJ8nR7RwOgWBXGmtQLUmmbCuL7-nRGx3pahJLA', '2025-09-14 10:42:21.849276');

-- --------------------------------------------------------

--
-- بنية الجدول `student_student`
--

CREATE TABLE `student_student` (
  `id` bigint(20) NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `level` varchar(20) NOT NULL,
  `gpa` decimal(4,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `report` longtext DEFAULT NULL,
  `file_report` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `classroom_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `student_student`
--

INSERT INTO `student_student` (`id`, `f_name`, `l_name`, `age`, `level`, `gpa`, `status`, `report`, `file_report`, `image`, `classroom_id`) VALUES
(9, 'omer', 'Ali', 20, '2nd', 80.00, 0, 'yyy', 'Files/25/08/WebDev_lab6_SF6Sotz.pdf', 'images/25/08/USILogo.png', 1),
(14, 'Dheya', 'Alhadremy', 22, '4th', 90.00, 1, 'Very Good', 'Files/25/08/N8N.pdf', 'images/25/08/EmpIcon.png', 2),
(26, 'Malek', 'Almosanif', 24, '5th', 80.00, 1, 'GooooooooD', 'Files/25/08/WebDev_lab6.pdf', 'images/25/08/USILogo_kkLdFtO.png', 6),
(27, 'Fateh', 'Moteheer', 22, '1st', 70.00, 1, 'Gosood', 'Files/25/08/database.pdf', 'images/25/08/read-image.png', 5),
(28, 'Malek', 'Almosanif', 24, '5th', 60.00, 1, 'bbb', 'Files/25/08/N8N_PtJMs0j.pdf', 'images/25/08/read-image.png', 4),
(29, 'Malek', 'Almosanif', 24, '5th', 90.00, 1, 'bbb', 'Files/25/08/WebDev_lab6.pdf', 'images/25/08/read-image_S9wohVp.png', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `classroom_classroom`
--
ALTER TABLE `classroom_classroom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `student_student`
--
ALTER TABLE `student_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_student_classroom_id_a689082e_fk_classroom_classroom_id` (`classroom_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classroom_classroom`
--
ALTER TABLE `classroom_classroom`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `student_student`
--
ALTER TABLE `student_student`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- قيود الجداول المُلقاة.
--

--
-- قيود الجداول `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- قيود الجداول `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- قيود الجداول `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `student_student`
--
ALTER TABLE `student_student`
  ADD CONSTRAINT `student_student_classroom_id_a689082e_fk_classroom_classroom_id` FOREIGN KEY (`classroom_id`) REFERENCES `classroom_classroom` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
