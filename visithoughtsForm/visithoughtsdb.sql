-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2023 at 09:15 AM
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
-- Database: `visithoughtsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add form insert', 7, 'add_forminsert'),
(26, 'Can change form insert', 7, 'change_forminsert'),
(27, 'Can delete form insert', 7, 'delete_forminsert'),
(28, 'Can view form insert', 7, 'view_forminsert'),
(29, 'Can add text data', 8, 'add_textdata'),
(30, 'Can change text data', 8, 'change_textdata'),
(31, 'Can delete text data', 8, 'delete_textdata'),
(32, 'Can view text data', 8, 'view_textdata'),
(33, 'Can add department', 9, 'add_department'),
(34, 'Can change department', 9, 'change_department'),
(35, 'Can delete department', 9, 'delete_department'),
(36, 'Can view department', 9, 'view_department'),
(37, 'Can add showdepartment', 10, 'add_showdepartment'),
(38, 'Can change showdepartment', 10, 'change_showdepartment'),
(39, 'Can delete showdepartment', 10, 'delete_showdepartment'),
(40, 'Can view showdepartment', 10, 'view_showdepartment'),
(41, 'Can add member', 11, 'add_member'),
(42, 'Can change member', 11, 'change_member'),
(43, 'Can delete member', 11, 'delete_member'),
(44, 'Can view member', 11, 'view_member'),
(45, 'Can add staff', 12, 'add_staff'),
(46, 'Can change staff', 12, 'change_staff'),
(47, 'Can delete staff', 12, 'delete_staff'),
(48, 'Can view staff', 12, 'view_staff'),
(49, 'Can add feedback', 11, 'add_feedback'),
(50, 'Can change feedback', 11, 'change_feedback'),
(51, 'Can delete feedback', 11, 'delete_feedback'),
(52, 'Can view feedback', 11, 'view_feedback'),
(53, 'Can add department credentials', 13, 'add_departmentcredentials'),
(54, 'Can change department credentials', 13, 'change_departmentcredentials'),
(55, 'Can delete department credentials', 13, 'delete_departmentcredentials'),
(56, 'Can view department credentials', 13, 'view_departmentcredentials'),
(57, 'Can add user', 14, 'add_customuser'),
(58, 'Can change user', 14, 'change_customuser'),
(59, 'Can delete user', 14, 'delete_customuser'),
(60, 'Can view user', 14, 'view_customuser');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
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
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$ZzaF1DDXcRC72OIdc8CLsl$Gk6KS+oDRLPECtXjo/lfkx72NgT5krdny4YQq6t8ruI=', '2023-11-12 05:50:11.032862', 1, 'admin', 'admin', '', '', 1, 1, '2023-10-17 12:11:47.578318'),
(2, 'pbkdf2_sha256$600000$kWA1K7n7jQlyMazhDz3Zm2$e9sSGRP1bZM3dwr4s0/N5HX2UgZVLmqFvGcifydgxRw=', '2023-11-12 06:16:18.236294', 0, 'ComputerStudies', 'Department Of Computer Studies', '', '', 0, 1, '2023-10-28 09:32:00.213303'),
(3, 'pbkdf2_sha256$600000$U4jIwHEYX6AuLQIHkI4trV$E1FMhxk053bmDCUCseiDGOX+UiPmCdq6PwEJHhzHNwM=', '2023-11-12 06:16:33.807448', 0, 'ArtsandSciences', 'Department of Arts and Sciences', '', '', 0, 1, '2023-10-29 00:07:05.000000'),
(5, 'pbkdf2_sha256$600000$NLqCZMKmkjFolE7sN3rI4v$6Z2ABWXXybGuWX9vW+6upU4IGfUjFP9wQaRdLWoBHaQ=', '2023-11-12 06:26:43.760464', 0, 'administrator', 'administrator', '', '', 0, 1, '2023-10-31 08:50:22.000000'),
(6, 'pbkdf2_sha256$600000$P41lgeREWdYyw4K7uk6H2q$XqwM1WqGWDhWi2Hq42I4vfPaRuSZ41AjdAia0tapLD0=', '2023-11-12 06:16:48.292773', 0, 'DTeacherEducation', 'Department of Teacher Education', '', '', 0, 1, '2023-11-12 05:45:06.000000'),
(7, 'pbkdf2_sha256$600000$ScxoZFw56qjlTfMtX4vw0P$6C/8vCL++gx6/cDiq6glzhCkfBMuN6y/UaOcKLXTn/M=', '2023-11-12 06:17:01.085037', 0, 'DManagementStudies', 'Department of Management Studies', '', '', 0, 1, '2023-11-12 05:47:17.000000'),
(8, 'pbkdf2_sha256$600000$2M2oPdngP8yX30XAPgsozb$52ggULpe7u3hSvr6+NgCnkklfa39J80t27pITUmbSuc=', '2023-11-12 06:17:14.735005', 0, 'DEngineering', 'Department of Engineering', '', '', 0, 1, '2023-11-12 05:58:27.000000'),
(9, 'pbkdf2_sha256$600000$X42YWDjxBZzSrMifwzEfCa$E2bF/9fDVC3p+N6jNDHOrsQyPAIu6bKzy4T6KXrXy/w=', '2023-11-12 06:17:46.714229', 0, 'DIndustrialTechnology', 'Department of Industrial Technology', '', '', 0, 1, '2023-11-12 06:00:32.000000'),
(10, 'pbkdf2_sha256$600000$waoFRE3ITTDKOidZTMIirH$An3WYgpXEwrX4YO0ognqLQF7gdVS+L9ZCMEzHrcIisY=', '2023-11-12 06:18:06.267460', 0, 'Library', 'Library', '', '', 0, 1, '2023-11-12 06:01:36.000000'),
(11, 'pbkdf2_sha256$600000$Pxg1xqNWu5ScYs5l21IBmH$6r3e2N2Z25+t+FVgXOVMrobh3l03rOke8uwtEHUW2TU=', '2023-11-12 06:18:21.033389', 0, 'Mismis', 'MIS', '', '', 0, 1, '2023-11-12 06:02:22.000000'),
(12, 'pbkdf2_sha256$600000$CE9y70ydIJdBUd9iXaq0rC$jpz5E5dKnKwXHEu36zwSAQbXsWlSIkNtAujmgXw8F7I=', '2023-11-12 06:18:40.826591', 0, 'Ocaoca', 'OCA', '', '', 0, 1, '2023-11-12 06:03:07.000000'),
(13, 'pbkdf2_sha256$600000$tMKu8uCRrWhff02XMq9S9T$sXM9MRv9YAdHcFJqjaox2ybQV12Ivmx0FcIyyB6afg4=', '2023-11-12 06:18:56.371486', 0, 'HumanResource', 'Human Resource', '', '', 0, 1, '2023-11-12 06:03:43.000000'),
(14, 'pbkdf2_sha256$600000$vwZQrVwZvg5AJCIoH5ZKZq$SijhVityxoIxfduTqTKmMSiALTuBUmThqrr2OLvNiQ0=', '2023-11-12 06:19:13.151008', 0, 'CashierCash', 'Cashier', '', '', 0, 1, '2023-11-12 06:04:03.000000'),
(15, 'pbkdf2_sha256$600000$XCC2ui8Dg8UGjjP2kbJ0CF$3n77bA8anUzwD3YuwSOVyZ6jfQuumxyFSIA+RQ9JRBM=', '2023-11-12 06:19:34.259148', 0, 'Accounting', 'Accounting', '', '', 0, 1, '2023-11-12 06:04:28.000000'),
(16, 'pbkdf2_sha256$600000$SGspyC3EPH6FTTVliHtL1G$tn8pNDlp5cZboaNLNUTzE3sgnuZDdFnvoJBHpd8iz8c=', '2023-11-12 06:19:51.629354', 0, 'Registrar', 'Registrar', '', '', 0, 1, '2023-11-12 06:04:51.000000'),
(17, 'pbkdf2_sha256$600000$7ZAekS6xVbL3H5yFlMYx7F$vHruTToH3zFzaqWxGmlv+g5Z5b/Z1Yj9Es4CQjE66v0=', '2023-11-12 06:20:05.755391', 0, 'Odiodi', 'ODI', '', '', 0, 1, '2023-11-12 06:05:08.000000'),
(18, 'pbkdf2_sha256$600000$3OZO7MVhtimrDSXCBRDBcO$TA7w66stN4DiZKUsGQFjofXf+d6RT3faAFLnWBxZK6M=', '2023-11-12 06:23:19.159284', 0, 'Accreditation', 'Accreditation', '', '', 0, 1, '2023-11-12 06:05:30.000000'),
(19, 'pbkdf2_sha256$600000$G0FnpZtdMsq3LpJfIGGItp$fTo73RNnKTzp2t/vqY2wRI5tbXV43lSHcGgHlyjYBJk=', '2023-11-12 06:23:35.287529', 0, 'Gadgad', 'GAD', '', '', 0, 1, '2023-11-12 06:05:39.000000'),
(20, 'pbkdf2_sha256$600000$KvlDCFUM4an4CJrxIvEJNY$mLhAFS21n001/CD2z6MEF02rtuT43MGztPeARxBVClY=', '2023-11-12 06:23:47.217970', 0, 'Supply', 'Supply', '', '', 0, 1, '2023-11-12 06:05:49.000000'),
(21, 'pbkdf2_sha256$600000$KoPKwR91vXyfeW5BsC0vx7$fjWu+y3tAdyCZbL0Av4jnluZ1ZYHdwTN9SE8dlyJdHk=', '2023-11-12 06:24:01.457908', 0, 'Ppsspp', 'PPSS', '', '', 0, 1, '2023-11-12 06:06:00.000000'),
(22, 'pbkdf2_sha256$600000$SA0SIOGTjdksGuQxxXbzo4$pIn/4zO09XySNeSE0rkRZGVpowazQdZAoFlr6A6pgXk=', '2023-11-12 06:24:17.256851', 0, 'Clinic', 'Clinic', '', '', 0, 1, '2023-11-12 06:06:09.000000'),
(23, 'pbkdf2_sha256$600000$LGAMRd5ZcWUdxHnC2aIjIE$zvRYtMf5qZ0j9LVfwvQVXPqubfZ4sLYYHyJeBJZQo9s=', '2023-11-12 06:24:30.420673', 0, 'Ebaeba', 'EBA', '', '', 0, 1, '2023-11-12 06:06:45.000000'),
(24, 'pbkdf2_sha256$600000$nJi12bzWbgTyjxtLqglPNI$3OXU8/e0sSQ5ZG+jZvk5lA5/sSvwbrkpZf4JDixGYbE=', '2023-11-12 06:25:05.934623', 0, 'ResearchandExtension', 'Research and Extension', '', '', 0, 1, '2023-11-12 06:07:07.000000'),
(25, 'pbkdf2_sha256$600000$6NhtLXzIgv9ufzdK21pCBh$41zG/Mo9vxSnkD6ZsTAWNJIMyv4JOGuUTzrOA/nxH9w=', '2023-11-12 06:25:19.554521', 0, 'Ojtojt', 'OJT', '', '', 0, 1, '2023-11-12 06:07:27.000000'),
(26, 'pbkdf2_sha256$600000$Ye0vWkT8yKjpYpGvI2mxuE$Tc7vwHM4vkw6FW3gFeGdyB7LB4Ajje4150fqzqpDrWk=', '2023-11-12 06:25:31.547714', 0, 'Planningplan', 'Planning', '', '', 0, 1, '2023-11-12 06:07:45.000000'),
(27, 'pbkdf2_sha256$600000$iSXPANf5elwD2VAKBZIaGI$HTInzb2IdY2LTtaPz1JsZkVeMlqo/ShGLoIk3+y1lBc=', '2023-11-12 06:25:43.830329', 0, 'Tesda', 'Tesda', '', '', 0, 1, '2023-11-12 06:07:58.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
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
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-10-17 12:13:51.766658', '1', 'Department of Computer Studies', 1, '[{\"added\": {}}]', 9, 1),
(2, '2023-10-17 12:14:10.035940', '2', 'Department of Arts and Sciences', 1, '[{\"added\": {}}]', 9, 1),
(3, '2023-10-17 12:14:53.410501', '1', 'Ms. Abad, Jenerry Y.', 1, '[{\"added\": {}}]', 12, 1),
(4, '2023-10-17 12:15:22.688206', '2', 'Mr. Cabarles, Axel G.', 1, '[{\"added\": {}}]', 12, 1),
(5, '2023-10-17 12:15:43.803038', '3', 'Ms. Dulay, Joevilyn M.', 1, '[{\"added\": {}}]', 12, 1),
(6, '2023-10-17 12:16:00.242462', '4', 'Mr. Baes, Mico Agustin D.', 1, '[{\"added\": {}}]', 12, 1),
(7, '2023-10-17 16:30:02.667520', '5', 'Ms. Dulay, Joevilyn M.', 1, '[{\"added\": {}}]', 12, 1),
(8, '2023-10-18 07:39:58.845536', '20', 'Ms. Clarito, angela C.', 1, '[{\"added\": {}}]', 12, 1),
(9, '2023-10-18 07:40:52.701373', '21', 'Ms. Cruz, Janessa Marielle S', 1, '[{\"added\": {}}]', 12, 1),
(10, '2023-10-18 07:41:03.741981', '21', 'Ms. Dela Cruz, Mary grace P.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(11, '2023-10-18 07:41:21.828037', '21', 'Ms. Driza, Renjie G.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(12, '2023-10-18 07:41:42.235768', '21', 'Ms. Driza, Renjie G.', 2, '[]', 12, 1),
(13, '2023-10-19 03:11:10.634464', '43', 'Ms. Batoon, Sheena Mistee A.', 1, '[{\"added\": {}}]', 12, 1),
(14, '2023-10-19 03:11:20.914328', '43', 'Ms. Belandrez, Jelyn L.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(15, '2023-10-19 03:11:31.240483', '43', 'Ms. Bernal, Melissa M.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(16, '2023-10-19 03:11:45.360756', '43', 'Mr. Biares, Ryan John A.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(17, '2023-10-19 03:11:53.075437', '43', 'Mr. Binayug, Jeffrey', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(18, '2023-10-19 03:12:02.402549', '43', 'Ms. Calazan, Rhiza Mae', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(19, '2023-10-19 03:12:11.486888', '43', 'Ms. Costales, Janine R.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(20, '2023-10-19 03:12:22.892897', '43', 'Ms. Corral, Mari Daisy O.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(21, '2023-10-19 03:12:32.595792', '43', 'Ms. Custodio, Janice R.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(22, '2023-10-19 03:12:43.994240', '43', 'Mr. Emberador, John Lexter L.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(23, '2023-10-19 03:12:51.629078', '43', 'Mr. Dayoc, Jotit P.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(24, '2023-10-19 03:13:00.135983', '43', 'Mr. Dela Cruz, Mar-jay P.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(25, '2023-10-19 03:13:08.209251', '43', 'Ms. Durumpili, Angel Joyce D.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(26, '2023-10-19 03:13:15.345682', '43', 'Ms. Echenique, Willyn S.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(27, '2023-10-19 03:13:24.332522', '43', 'Ms. Peraniel, Honeybee', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(28, '2023-10-19 03:13:36.659405', '43', 'Ms. Gonzales, Judilyn E.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(29, '2023-10-19 03:13:43.744011', '43', 'Marquez, Janice D', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(30, '2023-10-19 03:13:55.087328', '43', 'Ms. Mirabel, Bridget I.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(31, '2023-10-19 03:14:07.455882', '43', 'Ms. Niviar, Angelu D.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(32, '2023-10-19 03:14:21.414468', '43', 'Ms. Oropilla, Mancel I.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(33, '2023-10-19 03:14:28.239698', '43', 'Ms. Pamaos, Rommel', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(34, '2023-10-19 03:14:33.726063', '43', 'Mr. Quilos, Roldan R.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(35, '2023-10-19 03:14:39.079591', '43', 'Ms. Roncale, Liza P.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(36, '2023-10-19 03:14:43.817091', '43', 'Mr. Salluian,  John Francis D.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(37, '2023-10-19 03:14:51.301677', '43', 'Ms. Sierra, Micaela I.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(38, '2023-10-19 03:15:19.308441', '44', 'Ms. Sugatan, Jazel Joy B.', 1, '[{\"added\": {}}]', 12, 1),
(39, '2023-10-19 03:15:26.234882', '44', 'Ms. Tamayo, Christian H.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(40, '2023-10-19 03:15:32.004193', '44', 'Mr. Velasco, Mark Lyndon E.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(41, '2023-10-19 03:15:39.105166', '44', 'Mr. Villareal, Albert P.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(42, '2023-10-19 03:15:45.991519', '44', 'Ms. Geronimo, Annabelle SI.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(43, '2023-10-21 08:08:49.203411', '5', 'Feedback object (5)', 2, '[{\"changed\": {\"fields\": [\"Sentiment\"]}}]', 11, 1),
(44, '2023-10-23 06:48:47.557382', '81', 'Ms. Abad, Juvie B.', 1, '[{\"added\": {}}]', 12, 1),
(45, '2023-10-23 06:49:15.509491', '81', 'Ms. Abug, Nerissa B.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(46, '2023-10-23 06:50:39.355700', '81', 'Mr. Alonzo, Ryan Christian M.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(47, '2023-10-23 06:50:51.405651', '81', 'Ms. Agacer, Hazel Ann G.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(48, '2023-10-23 06:51:06.923448', '81', 'Mr. Ambas, Arman M.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(49, '2023-10-23 06:51:22.725140', '81', 'Ms. Arabit, Michelle Alexandra A.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(50, '2023-10-23 06:51:37.743171', '81', 'Mr. Baricante, Jayson L.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(51, '2023-10-23 06:51:51.436828', '81', 'Mr. Cupino, Jefferson John S.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(52, '2023-10-23 06:52:02.410311', '81', 'Mr. Dela Rea, Kirk T.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(53, '2023-10-23 06:52:13.525049', '81', 'Mr. Delos Trinos, Jhustyn Ryerson C.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(54, '2023-10-23 06:52:24.572341', '81', 'Ms. Ducha, Aiza M.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(55, '2023-10-23 06:52:35.030506', '81', 'Dr. Dumlao, Elizabeth R.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(56, '2023-10-23 06:52:46.210718', '81', 'Ms. Geronimo, Abigail S.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(57, '2023-10-23 06:52:58.335288', '81', 'Ms. Gonzales, Mary Grace E.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(58, '2023-10-23 06:53:14.645768', '81', 'Ms. Macaranas, Maggie Mae P.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(59, '2023-10-23 06:53:26.158089', '81', 'Mr. Manuel, Laarnie R.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(60, '2023-10-23 06:53:37.115668', '81', 'Mr. Mendoza, Xavier Lawrence D.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(61, '2023-10-23 06:53:50.460156', '81', 'Ms. Navales, Bhrendelyn B.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(62, '2023-10-23 06:54:06.936305', '81', 'Mr. Padilla, Ralph Danielle C.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(63, '2023-10-23 06:54:16.404427', '81', 'Ms. Parcon, Hernaly C.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(64, '2023-10-23 06:54:33.435418', '81', 'Mr. Perez, Richard P.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(65, '2023-10-23 06:54:44.656834', '81', 'Ms. Solis, Gerico G.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(66, '2023-10-23 06:54:54.893874', '81', 'Ms. Sto.Tomas, Emelita', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(67, '2023-10-23 06:55:04.956775', '81', 'Mr. Tadeo, Jerico B.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(68, '2023-10-23 06:55:14.494914', '81', 'Mr. Tan, Christian P.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(69, '2023-10-23 06:55:26.238039', '81', 'Ms. Villa, John Leo-vy P.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(70, '2023-10-23 06:56:04.182647', '81', 'Ms. Villa, John Leo-vy P.', 2, '[]', 12, 1),
(71, '2023-10-23 06:57:13.342990', '81', 'Ms. Abad, Juvie B.', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(72, '2023-10-23 06:58:45.660105', '82', 'Ms. Abug, Nerissa B.', 1, '[{\"added\": {}}]', 12, 1),
(73, '2023-10-23 06:59:10.181994', '83', 'Mr. Alonzo, Ryan Christian M.', 1, '[{\"added\": {}}]', 12, 1),
(74, '2023-10-23 06:59:36.087310', '84', 'Ms. Agacer, Hazel Ann G.', 1, '[{\"added\": {}}]', 12, 1),
(75, '2023-10-23 06:59:55.570180', '85', 'Mr. Ambas, Arman M.', 1, '[{\"added\": {}}]', 12, 1),
(76, '2023-10-23 07:00:13.613803', '86', 'Ms. Arabit, Michelle Alexandra A.', 1, '[{\"added\": {}}]', 12, 1),
(77, '2023-10-23 07:00:34.633370', '87', 'Mr. Baricante, Jayson L.', 1, '[{\"added\": {}}]', 12, 1),
(78, '2023-10-23 07:00:48.934619', '88', 'Mr. Cupino, Jefferson John S.', 1, '[{\"added\": {}}]', 12, 1),
(79, '2023-10-23 07:01:05.361276', '89', 'Mr. Dela Rea, Kirk T.', 1, '[{\"added\": {}}]', 12, 1),
(80, '2023-10-23 07:01:19.109232', '90', 'Mr. Delos Trinos, Jhustyn Ryerson C.', 1, '[{\"added\": {}}]', 12, 1),
(81, '2023-10-23 07:01:32.048107', '91', 'Ms. Ducha, Aiza M.', 1, '[{\"added\": {}}]', 12, 1),
(82, '2023-10-23 07:01:59.628853', '92', 'Dr. Dumlao, Elizabeth R.', 1, '[{\"added\": {}}]', 12, 1),
(83, '2023-10-23 07:02:11.205482', '93', 'Ms. Geronimo, Abigail S.', 1, '[{\"added\": {}}]', 12, 1),
(84, '2023-10-23 07:02:22.702647', '94', 'Ms. Gonzales, Mary Grace E.', 1, '[{\"added\": {}}]', 12, 1),
(85, '2023-10-23 07:02:34.989068', '95', 'Ms. Macaranas, Maggie Mae P.', 1, '[{\"added\": {}}]', 12, 1),
(86, '2023-10-23 07:02:48.350003', '96', 'Mr. Manuel, Laarnie R.', 1, '[{\"added\": {}}]', 12, 1),
(87, '2023-10-23 07:03:02.017716', '97', 'Mr. Mendoza, Xavier Lawrence D.', 1, '[{\"added\": {}}]', 12, 1),
(88, '2023-10-23 07:03:15.774559', '98', 'Ms. Navales, Bhrendelyn B.', 1, '[{\"added\": {}}]', 12, 1),
(89, '2023-10-23 07:03:26.811535', '99', 'Mr. Padilla, Ralph Danielle C.', 1, '[{\"added\": {}}]', 12, 1),
(90, '2023-10-23 07:03:38.922514', '100', 'Ms. Parcon, Hernaly C.', 1, '[{\"added\": {}}]', 12, 1),
(91, '2023-10-23 07:03:53.742001', '101', 'Mr. Perez, Richard P.', 1, '[{\"added\": {}}]', 12, 1),
(92, '2023-10-23 07:04:08.859167', '102', 'Ms. Solis, Gerico G.', 1, '[{\"added\": {}}]', 12, 1),
(93, '2023-10-23 07:04:21.332652', '103', 'Ms. Sto.Tomas, Emelita', 1, '[{\"added\": {}}]', 12, 1),
(94, '2023-10-23 07:04:38.399240', '104', 'Mr. Tadeo, Jerico B.', 1, '[{\"added\": {}}]', 12, 1),
(95, '2023-10-23 07:04:50.042250', '105', 'Mr. Tan, Christian P.', 1, '[{\"added\": {}}]', 12, 1),
(96, '2023-10-23 07:05:03.676865', '106', 'Ms. Villa, John Leo-vy P.', 1, '[{\"added\": {}}]', 12, 1),
(97, '2023-10-26 04:50:41.528763', '1', 'DepartmentCredentials object (1)', 1, '[{\"added\": {}}]', 13, 1),
(98, '2023-10-26 06:02:32.807487', '2', 'DepartmentCredentials object (2)', 1, '[{\"added\": {}}]', 13, 1),
(99, '2023-10-28 09:32:00.607281', '2', 'ComputerStudies', 1, '[{\"added\": {}}]', 4, 1),
(100, '2023-10-29 00:07:05.821355', '3', 'ArtsandSciences', 1, '[{\"added\": {}}]', 4, 1),
(101, '2023-10-29 00:07:44.851520', '3', 'ArtsandSciences', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(102, '2023-10-29 02:27:15.269687', '3', 'ArtsandSciences', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(103, '2023-10-30 15:21:21.156009', '4', 'administrator', 1, '[{\"added\": {}}]', 4, 1),
(104, '2023-10-30 15:21:40.893375', '4', 'administrator', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(105, '2023-10-30 15:24:44.752425', '4', 'administrator', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(106, '2023-10-30 15:39:28.465866', '4', 'administrator123', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(107, '2023-10-30 15:51:55.195512', '3', 'ArtsandSciences', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(108, '2023-10-30 15:52:21.355558', '4', 'administrator123', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(109, '2023-10-30 16:00:12.908307', '4', 'administrator123', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(110, '2023-10-30 16:02:21.779304', '4', 'administrator123', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(111, '2023-10-30 16:04:45.001280', '4', 'administrator123', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(112, '2023-10-31 06:21:51.221728', '4', 'administrator123', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(113, '2023-10-31 06:47:50.226387', '4', 'administrator123', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(114, '2023-10-31 07:04:11.115716', '4', 'administrator123', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(115, '2023-10-31 07:04:56.393067', '4', 'administrator123', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(116, '2023-10-31 07:22:01.735458', '4', 'administrator123', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(117, '2023-10-31 07:29:00.618443', '4', 'administrator123', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(118, '2023-10-31 07:47:58.466341', '4', 'administrator123', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(119, '2023-10-31 08:49:57.319530', '4', 'administrator123', 3, '', 4, 1),
(120, '2023-10-31 08:50:23.237652', '5', 'administrator123', 1, '[{\"added\": {}}]', 4, 1),
(121, '2023-10-31 08:50:43.713140', '5', 'administrator123', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(122, '2023-11-12 05:17:53.803823', '21', 'Research and Extension', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1),
(123, '2023-11-12 05:45:07.736946', '6', 'DTeacherEducation', 1, '[{\"added\": {}}]', 4, 1),
(124, '2023-11-12 05:45:58.061183', '6', 'DTeacherEducation', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(125, '2023-11-12 05:47:18.682062', '7', 'DManagementStudies', 1, '[{\"added\": {}}]', 4, 1),
(126, '2023-11-12 05:47:35.817681', '7', 'DManagementStudies', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(127, '2023-11-12 05:49:17.081163', '7', 'DManagementStudies', 2, '[]', 4, 1),
(128, '2023-11-12 05:58:28.318947', '8', 'DEngineering', 1, '[{\"added\": {}}]', 4, 1),
(129, '2023-11-12 06:00:14.267495', '8', 'DEngineering', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(130, '2023-11-12 06:00:33.528586', '9', 'DIndustrialTechnology', 1, '[{\"added\": {}}]', 4, 1),
(131, '2023-11-12 06:00:45.955933', '9', 'DIndustrialTechnology', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(132, '2023-11-12 06:01:37.415692', '10', 'Library', 1, '[{\"added\": {}}]', 4, 1),
(133, '2023-11-12 06:01:52.022514', '10', 'Library', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(134, '2023-11-12 06:02:24.009909', '11', 'Mismis', 1, '[{\"added\": {}}]', 4, 1),
(135, '2023-11-12 06:02:32.885345', '11', 'Mismis', 2, '[]', 4, 1),
(136, '2023-11-12 06:03:07.717676', '12', 'Ocaoca', 1, '[{\"added\": {}}]', 4, 1),
(137, '2023-11-12 06:03:44.410515', '13', 'HumanResource', 1, '[{\"added\": {}}]', 4, 1),
(138, '2023-11-12 06:04:03.658584', '14', 'CashierCash', 1, '[{\"added\": {}}]', 4, 1),
(139, '2023-11-12 06:04:28.669375', '15', 'Accounting', 1, '[{\"added\": {}}]', 4, 1),
(140, '2023-11-12 06:04:52.153631', '16', 'Registrar', 1, '[{\"added\": {}}]', 4, 1),
(141, '2023-11-12 06:05:08.595140', '17', 'Odiodi', 1, '[{\"added\": {}}]', 4, 1),
(142, '2023-11-12 06:05:31.334543', '18', 'Accreditation', 1, '[{\"added\": {}}]', 4, 1),
(143, '2023-11-12 06:05:40.265284', '19', 'Gadgad', 1, '[{\"added\": {}}]', 4, 1),
(144, '2023-11-12 06:05:50.471943', '20', 'Supply', 1, '[{\"added\": {}}]', 4, 1),
(145, '2023-11-12 06:06:00.931323', '21', 'Ppsspp', 1, '[{\"added\": {}}]', 4, 1),
(146, '2023-11-12 06:06:10.299469', '22', 'Clinic', 1, '[{\"added\": {}}]', 4, 1),
(147, '2023-11-12 06:06:45.799000', '23', 'Ebaeba', 1, '[{\"added\": {}}]', 4, 1),
(148, '2023-11-12 06:07:08.236344', '24', 'ResearchandExtension', 1, '[{\"added\": {}}]', 4, 1),
(149, '2023-11-12 06:07:28.435257', '25', 'Ojtojt', 1, '[{\"added\": {}}]', 4, 1),
(150, '2023-11-12 06:07:45.602867', '26', 'Planningplan', 1, '[{\"added\": {}}]', 4, 1),
(151, '2023-11-12 06:07:58.951620', '27', 'Tesda', 1, '[{\"added\": {}}]', 4, 1),
(152, '2023-11-12 06:09:13.789820', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(153, '2023-11-12 06:12:15.800961', '11', 'Mismis', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(154, '2023-11-12 06:12:30.176493', '12', 'Ocaoca', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(155, '2023-11-12 06:12:46.200649', '13', 'HumanResource', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(156, '2023-11-12 06:12:58.309561', '14', 'CashierCash', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(157, '2023-11-12 06:13:10.097382', '15', 'Accounting', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(158, '2023-11-12 06:13:22.817653', '16', 'Registrar', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(159, '2023-11-12 06:13:34.583281', '17', 'Odiodi', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(160, '2023-11-12 06:13:44.459246', '18', 'Accreditation', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(161, '2023-11-12 06:13:56.651656', '19', 'Gadgad', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(162, '2023-11-12 06:14:07.517478', '20', 'Supply', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(163, '2023-11-12 06:14:15.775127', '21', 'Ppsspp', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(164, '2023-11-12 06:14:24.611428', '22', 'Clinic', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(165, '2023-11-12 06:14:33.931161', '23', 'Ebaeba', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(166, '2023-11-12 06:14:45.044983', '24', 'ResearchandExtension', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(167, '2023-11-12 06:14:52.387047', '25', 'Ojtojt', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(168, '2023-11-12 06:14:59.866266', '26', 'Planningplan', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(169, '2023-11-12 06:15:06.148229', '27', 'Tesda', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(14, 'visithoughtsForm', 'customuser'),
(9, 'VisithoughtsForm', 'department'),
(13, 'visithoughtsForm', 'departmentcredentials'),
(11, 'visithoughtsForm', 'feedback'),
(7, 'VisithoughtsForm', 'forminsert'),
(10, 'VisithoughtsForm', 'showdepartment'),
(12, 'visithoughtsForm', 'staff'),
(8, 'VisithoughtsForm', 'textdata');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-03 08:35:57.424540'),
(2, 'auth', '0001_initial', '2023-10-03 08:35:57.910718'),
(3, 'admin', '0001_initial', '2023-10-03 08:35:58.044059'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-03 08:35:58.050045'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-03 08:35:58.060835'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-10-03 08:35:58.151443'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-10-03 08:35:58.204557'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-10-03 08:35:58.234848'),
(9, 'auth', '0004_alter_user_username_opts', '2023-10-03 08:35:58.242678'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-10-03 08:35:58.299102'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-10-03 08:35:58.301100'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-10-03 08:35:58.312381'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-10-03 08:35:58.337963'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-10-03 08:35:58.372917'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-10-03 08:35:58.400705'),
(16, 'auth', '0011_update_proxy_permissions', '2023-10-03 08:35:58.407988'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-10-03 08:35:58.437592'),
(18, 'sessions', '0001_initial', '2023-10-03 08:35:58.480837'),
(19, 'VisithoughtsForm', '0001_initial', '2023-10-06 14:19:07.949064'),
(20, 'visithoughtsForm', '0001_initial', '2023-10-17 11:43:18.867301'),
(21, 'visithoughtsForm', '0002_department_staff_alter_member_city_and_more', '2023-10-17 11:43:20.095696'),
(22, 'visithoughtsForm', '0003_rename_country_member_department_and_more', '2023-10-17 11:43:20.717428'),
(23, 'visithoughtsForm', '0004_rename_member_feedback', '2023-10-17 15:18:27.969183'),
(24, 'visithoughtsForm', '0002_customuser', '2023-10-28 09:59:30.086855'),
(25, 'visithoughtsForm', '0003_alter_customuser_groups_and_more', '2023-10-28 10:14:23.692830'),
(26, 'visithoughtsForm', '0004_delete_customuser', '2023-10-28 10:27:26.906203'),
(27, 'visithoughtsForm', '0002_alter_feedback_comment', '2023-11-08 05:14:22.534266');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2532oe6yh0vw0zvwyp0mn1w1yz9osvzw', 'e30:1qwi1a:3nT9kr1gHaAG7sw9ntEiDBlbNr3Mwbqai1sLBtCMRbA', '2023-11-11 12:02:42.144523'),
('25lk3atd802kcqa1nkw8y05jlazohahn', 'e30:1qwgoc:PAGtZLg9hyMRhitx5K5g8gip_dYV_MjNNGrQODajV7g', '2023-11-11 10:45:14.359673'),
('4pn5p574n3m99d48rpixrwrdoaprym79', 'e30:1qwhrN:Aqp9QTN-csPvGfwrgBNS_a4n9CoeNlzo6TvQ7SyGeNE', '2023-11-11 11:52:09.254498'),
('7ppz4cq1026r86p0016c8e34uxyrxw72', 'e30:1qwhhZ:aEuhQiydZUcrlfD_RHu-mZl97UmjQB69DO-o226qQAE', '2023-11-11 11:42:01.574180'),
('90lckku3xev4nr9cbqqs9chaqc1qeboc', 'e30:1qwhxe:C4XDlFa9uHjp8T0zsaBhz36jyp3-MhISgS1RQENz8DA', '2023-11-11 11:58:38.749143'),
('9jmbgmm1achi399a0twl2outjw2rb9oj', 'e30:1qwhvW:miSbPskDlpnaiTydAaoyZTE86mellEaiHL50Mnc7ZcU', '2023-11-11 11:56:26.463019'),
('bb632lt4fv9f3lp3bs1r6abue4lptagr', 'e30:1qwi0a:_xkF7DW3fSVnTzYDBt1Z6RUqiaMJ9fRWni3OtLRZVqE', '2023-11-11 12:01:40.375206'),
('dh32twprkoaqg79c4bc63rvhyyoq47ck', '.eJxVjDkOwjAUBe_iGlle4u9ASc8ZrL_YOIASKU4qxN1JpBTQvpl5b5VwXWpaW57TIOqigjr9boT8zOMO5IHjfdI8jcs8kN4VfdCmb5Pk1_Vw_w4qtrrVJDZQiV0EYsYC0gfj7ZkZoCvek0BwaD0BGXTOIATxuTcMmxFdzOrzBfimOCM:1qyt60:6pYcCtF4KUDRjVg2zO-EeDPWZpCNFZP-CDV7LaMZI7c', '2023-11-17 12:16:16.198030'),
('g1j59pnudvyu30telqb2zaedk1e2135x', '.eJxVjDsOwjAQBe_iGlle-StKes4QPa_XOIBiKZ8KcXeIlALaNzPvpQZsaxu2ReZhLOqsSJ1-twx-yLSDcsd065r7tM5j1ruiD7roay_yvBzu30HD0r51SoAzzoLFUyVmW4AgHojVc4rkQmaxMUAQfCSulbKhlEJN3vig3h8EoThb:1qxkTp:3NdW9SVsXbAgxmZCy5lo9uf_glZPHGa96cJT5Gq-uMI', '2023-11-14 08:52:09.168349'),
('gxbkoo1egj1hyxelp5yqd0z8ectx2a04', '.eJxVjDEOgzAMRe_iuYoaB0LC2L1nQCa2C22VSBCmqndvkVhY_3vvf4CpEvR4gYG2Og3bKsswM_Tg4LSNlF6Sd8BPyo9iUsl1mUezK-agq7kXlvftcE8HE63Tv7ZKIaBFRSJh23Yhts43Yj2rV8fdiByElViaNgayTjCqSwmvPpIP8P0BpQQ6vA:1qwvQl:kAVyPYPdhoKC_QuTIqfVO3IIo1lzI55JbAPD4DvtqQY', '2023-11-12 02:21:35.158820'),
('kfuyd2z9w8rpglvm9tiae6ensqk9ckug', '.eJxVjDkOwjAUBe_iGlle4u9ASc8ZrL_YOIASKU4qxN1JpBTQvpl5b5VwXWpaW57TIOqigjr9boT8zOMO5IHjfdI8jcs8kN4VfdCmb5Pk1_Vw_w4qtrrVJDZQiV0EYsYC0gfj7ZkZoCvek0BwaD0BGXTOIATxuTcMmxFdzOrzBfimOCM:1r23vf:YXtu0KnxFufj5eh8pt269QfQgKIss6nHTXgcigHwHFY', '2023-11-26 06:26:43.763693'),
('ln0o55njzfn4redbosqw9txgduis1jrb', '.eJxVjDkOgzAURO_y68gCvIoyfc5g_Y1AEhkJTBXl7gGJhnLmvZkvCFaEvrtBxq2OeVt1yZNADxYuHSG_tRxAXlies-G51GUicyjmpKt5zKKf--leDkZcx30dA2qTBt-qeuetxI64ScFpZEtMA7FDGULU4NuoThsSCnuM7JlscvD7A7QDO0Q:1qwvQm:b5snhx45k4zQt05OoePZoTHYtciwk9WIGENogsV4nH0', '2023-11-12 02:21:36.935862'),
('nofnhd2ckujft4p0fmfjccflk0hhkn0u', 'e30:1qwgg6:dghHayhP7G-m1z-K7AQOYzzwel88aSpAlxGviUuUqiE', '2023-11-11 10:36:26.709172'),
('nyyo3fl6fchiao1rl93pe2j4ypogp4a5', 'e30:1qwhun:sK1mhKwo7zYKpJVGI2_UpBdqquyfEjk12-ZHLBEgbkg', '2023-11-11 11:55:41.409815'),
('oytwca3yxxz04ze5rtxhig0hkg85vix7', '.eJxVjDsOwjAQBe_iGlle-StKes4QPa_XOIBiKZ8KcXeIlALaNzPvpQZsaxu2ReZhLOqsSJ1-twx-yLSDcsd065r7tM5j1ruiD7roay_yvBzu30HD0r51SoAzzoLFUyVmW4AgHojVc4rkQmaxMUAQfCSulbKhlEJN3vig3h8EoThb:1qzeam:GIUSrGVxFv0D2_E_V9RYH08E8aYGwvwTkSgZExKcWZE', '2023-11-19 14:59:12.347785'),
('qdjngsaaxrtu2shp14iycmczlgqkpjk0', 'e30:1qwg6h:EYCEIesvu97lrL1qxj8bHOgFHFGRpWBsTaeWhsq0NkU', '2023-11-11 09:59:51.966361'),
('ug9pjoss8eumf4lbwcus4cfpttrof8du', 'eyJkYXRhIjoxfQ:1qwbtC:0elvDpx5FWyBm3hK2TgB2ZI34SqYAENklrfEitVXvuM', '2023-11-11 05:29:38.992572'),
('yvwbfi0eamfgxj0tugo2ld08xa91eqpk', 'e30:1qwiBi:upFVTng0lvrJWP0NWEzohjCaAPuP3pr4VULOgj40RNI', '2023-11-11 12:13:10.291413'),
('zymlqm45ppw0jp1iirpy1devf9r5axik', '.eJxVjEEOgyAQRe8y64YAU0Rcdu8ZzMAMxbbRRHHV9O7VxI3b997_X2CqBJ25wUBbLcO2yjKMDB1YuLBI6S3TIfhF03NWaZ7qMkZ1JOq0q-pnls_jbC8Hhdayr5NnTMHqaLRYzLEN1nqTDe6E75LFBXJNkz0GZnY6C1oOJrQaUXzU8PsDkiE6Fg:1qxkZm:Njy79XQLByP3ibNOLJvmDsI9JmwGRDFgWRKVhIRXaf0', '2023-11-14 08:58:18.841669');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `clientName` varchar(150) DEFAULT NULL,
  `clientAgency` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `purposeOfVisit` varchar(150) DEFAULT NULL,
  `dateOfVisit` date DEFAULT NULL,
  `concernedDepartment` varchar(150) DEFAULT NULL,
  `attendingStaff` varchar(150) DEFAULT NULL,
  `courtesy` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `timeless` int(11) DEFAULT NULL,
  `efficiency` int(11) DEFAULT NULL,
  `cleanliness` int(11) DEFAULT NULL,
  `comfort` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `sentiment` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `clientName`, `clientAgency`, `email`, `purposeOfVisit`, `dateOfVisit`, `concernedDepartment`, `attendingStaff`, `courtesy`, `quality`, `timeless`, `efficiency`, `cleanliness`, `comfort`, `comment`, `sentiment`) VALUES
(47, 'Monkey D. Luffy', 'Straw Hat Pirates', 'luffy@gmail.com', 'One Piece', '2023-10-12', 'Department of Computer Studies', 'Ms. Abad, Jenerry Y.', 5, 4, 3, 2, 3, 1, 'The services is good as well as the attending staff is also accomodating.', 'Positive Sentiment'),
(48, 'zxczxc', 'zxczxc', 'zxczxc@gmail.com', 'xzcxczxc', '2023-12-12', 'Department of Computer Studies', 'Ms. Abad, Jenerry Y.', 1, 1, 1, 1, 1, 1, 'zxczxc', 'Neutral Sentiment'),
(49, 'zxczxc', 'zxczxc', 'zxczxc@gmail.com', 'xzcxczxc', '2023-12-12', 'Department of Computer Studies', 'Ms. Abad, Jenerry Y.', 1, 1, 1, 1, 1, 1, 'zxczxc', 'Neutral Sentiment'),
(50, 'zzxc', 'czxc', 'zxczxc@gmail.com', 'zxczx', '2023-12-12', 'Department of Arts and Sciences', 'Mr. Cabarles, Axel G.', 1, 1, 1, 1, 1, 1, 'zxczxc', 'Neutral Sentiment'),
(51, 'asda', 'asdas', 'asdas@gmail.com', 'asdas', '2023-12-12', 'Department of Arts and Sciences', 'Mr. Cabarles, Axel G.', 1, 1, 1, 1, 1, 1, 'asdasd', 'Neutral Sentiment'),
(52, 'asda', 'asdas', 'asdas@gmail.com', 'asdas', '2023-12-12', 'Department of Computer Studies', 'Ms. Abad, Jenerry Y.', 1, 1, 1, 1, 1, 1, 'asdasd', 'Neutral Sentiment'),
(53, 'asda', 'asdas', 'asdas@gmail.com', 'asdas', '2023-12-12', 'Department of Arts and Sciences', 'Mr. Cabarles, Axel G.', 1, 1, 1, 1, 1, 1, 'asdasd', 'Neutral Sentiment'),
(54, 'asda', 'asdas', 'asdas@gmail.com', 'asdas', '2023-12-12', 'Department of Arts and Sciences', 'Mr. Cabarles, Axel G.', 1, 1, 1, 1, 1, 1, 'asdasd', 'Neutral Sentiment'),
(55, 'asda', 'asdas', 'asdas@gmail.com', 'asdas', '2023-12-12', 'Department of Computer Studies', 'Ms. Abad, Jenerry Y.', 1, 1, 1, 1, 1, 1, 'asdasd', 'Neutral Sentiment'),
(56, 'asda', 'asdas', 'asdas@gmail.com', 'asdas', '2023-12-12', 'Department of Arts and Sciences', 'Mr. Cabarles, Axel G.', 1, 1, 1, 1, 1, 1, 'asdasd', 'Neutral Sentiment'),
(57, 'aasd', 'asdasd', 'asdasd@gmail.com', 'asdasd', '2023-12-12', 'Department of Arts and Sciences', 'Mr. Cabarles, Axel G.', 5, 4, 3, 1, 3, 2, 'asdasda', 'Neutral Sentiment'),
(58, 'aasd', 'asdasd', 'asdasd@gmail.com', 'asdasd', '2023-12-12', 'Department of Arts and Sciences', 'Mr. Cabarles, Axel G.', 5, 4, 3, 1, 3, 2, 'asdasda', 'Neutral Sentiment'),
(59, 'asd', 'asd', 'asdasd@gmail.com', 'asdaqwe', '2023-12-12', 'Department of Arts and Sciences', 'Mr. Cabarles, Axel G.', 1, 1, 1, 1, 1, 1, 'qweqweqw', 'Neutral Sentiment'),
(60, 'asdasd', 'asdasd', 'asdasd@gmail.com', 'asdasd', '2023-12-12', 'Department of Computer Studies', '', 1, 1, 1, 1, 1, 1, 'asdasd', 'Neutral Sentiment'),
(61, 'asdasd', 'asdasd', 'asdasd@gmail.com', 'asdasd', '2023-12-12', 'Department of Computer Studies', '', 1, 1, 1, 1, 1, 1, 'asdasd', 'Neutral Sentiment'),
(62, 'asdas', 'dasdas', 'dasd@gmail.com', 'asd', '2009-12-12', 'Department of Computer Studies', '', 1, 1, 1, 1, 1, 1, 'asdasdasd', 'Neutral Sentiment'),
(63, 'asdas', 'dasdas', 'dasd@gmail.com', 'asd', '2009-12-12', 'Department of Computer Studies', 'Ms. Abad, Jenerry Y.', 1, 1, 1, 1, 1, 1, 'asdasdasd', 'Neutral Sentiment'),
(64, 'qweqwe', 'qweqwe', 'qweqwe@gmai.com', 'qweqwe', '2023-12-12', 'Department of Arts and Sciences', 'Mr. Cabarles, Axel G.', 2, 5, 4, 3, 1, 2, 'qqweqweqweqweqwe', 'Neutral Sentiment'),
(65, 'asdasda', 'asdasdasdasd', 'asdas@gmail.com', 'asdasd', '2023-10-16', 'Department of Computer Studies', 'Ms. Abad, Jenerry Y.', 4, 3, 2, 2, 3, 3, 'The session is good.\r\n', 'Positive Sentiment'),
(66, 'Lunasa Prismriver', 'Gensokyou', 'lunasa.prismriver@mail.com', 'Exorcism', '2023-01-01', 'Department of Arts and Sciences', 'Mr. Cabarles, Axel G.', 5, 5, 5, 5, 5, 5, 'THis is a test. Please disregard.', 'Positive Sentiment'),
(67, 'Lunasa Prismriver', 'Gensokyou', 'lunasa.prismriver@mail.com', 'Exorcism', '2023-01-01', 'Department of Arts and Sciences', 'Mr. Cabarles, Axel G.', 5, 5, 5, 5, 5, 5, 'THis is a test. Please disregard.', 'Positive Sentiment'),
(68, 'Lunasa Prismriver', 'Gensokyou', 'lunasa.prismriver@mail.com', 'Exorcism', '2023-01-01', 'Department of Arts and Sciences', 'Mr. Cabarles, Axel G.', 5, 5, 5, 5, 5, 5, 'THis is a test. Please disregard.', 'Positive Sentiment'),
(69, 'Reimu Hakurei', 'Gensokyou', 'reimu.hakurei@mail.com', 'Exorcism 2', '2023-02-01', 'Department of Arts and Sciences', 'Ms. Abad, Jenerry Y.', 4, 4, 4, 4, 4, 4, 'Please disregard.', 'Positive Sentiment'),
(70, 'Reimu Hakurei', 'Gensokyou', 'reimu.hakurei@mail.com', 'Exorcism 2', '2023-02-01', 'Department of Arts and Sciences', 'Ms. Abad, Jenerry Y.', 4, 4, 4, 4, 4, 4, 'Please disregard.', 'Positive Sentiment'),
(71, 'Reimu Hakurei', 'Gensokyou', 'reimu.hakurei@mail.com', 'Exorcism 2', '2023-02-01', 'Department of Arts and Sciences', 'Ms. Abad, Jenerry Y.', 4, 4, 4, 4, 4, 4, 'Please disregard.', 'Positive Sentiment'),
(72, 'Reimu Hakurei', 'Gensokyou', 'reimu.hakurei@mail.com', 'Exorcism 2', '2023-01-01', 'Department of Computer Studies', 'Mr. Estonilo, Christopher G.', 3, 3, 3, 3, 3, 3, 'PLease disregard.', 'Positive Sentiment'),
(73, 'Reimu Hakurei', 'Gensokyou', 'reimu.hakurei@mail.com', 'Exorcism 42069', '2023-01-01', 'Department of Computer Studies', 'Ms. Abad, Jenerry Y.', 3, 3, 3, 3, 3, 3, 'Please disregard.', 'Positive Sentiment'),
(74, 'qwe', 'qwe', 'qweqwe@gmai.com', 'qweqw', '2023-12-12', 'Department of Computer Studies', 'Ms. Abad, Jenerry Y.', 1, 1, 1, 1, 1, 1, 'the services is good and amazing.', 'Positive Sentiment'),
(75, 'vinsmoke sanji', 'baratie', 'sanji@gmail.com', 'cooking', '2023-10-17', 'Department of Computer Studies', 'Ms. Abad, Jenerry Y.', 2, 3, 4, 5, 1, 4, 'The cooking is good and the good is delicious.', 'Positive Sentiment'),
(76, 'juan', 'juan agency', 'juan@gmail.com', 'juan request', '2023-02-12', 'Department of Computer Studies', 'Ms. Abad, Jenerry Y.', 2, 3, 4, 5, 3, 4, 'The request is good.', 'Positive Sentiment');

-- --------------------------------------------------------

--
-- Table structure for table `visithoughtsform_department`
--

CREATE TABLE `visithoughtsform_department` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visithoughtsform_department`
--

INSERT INTO `visithoughtsform_department` (`id`, `name`) VALUES
(1, 'Department of Computer Studies'),
(2, 'Department of Arts and Sciences'),
(3, 'Department of Teacher Education'),
(4, 'Department of Management Studies'),
(5, 'Department of Engineering'),
(6, 'Department of Industrial Technology'),
(7, 'Library'),
(8, 'MIS'),
(9, 'OCA'),
(10, 'HR'),
(11, 'Cashier'),
(12, 'Accounting'),
(13, 'Registrar'),
(14, 'ODI'),
(15, 'Accreditation'),
(16, 'GAD'),
(17, 'Supply'),
(18, 'PPSS'),
(19, 'Clinic'),
(20, 'EBA'),
(21, 'Research and Extension'),
(22, 'OJT'),
(23, 'Planning'),
(24, 'Tesda');

-- --------------------------------------------------------

--
-- Table structure for table `visithoughtsform_feedback`
--

CREATE TABLE `visithoughtsform_feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `agency` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `purposeOfVisit` varchar(255) DEFAULT NULL,
  `dateOfVisit` date DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `staff` varchar(255) DEFAULT NULL,
  `courtesy` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `timeless` int(11) DEFAULT NULL,
  `efficiency` int(11) DEFAULT NULL,
  `cleanliness` int(11) DEFAULT NULL,
  `comfort` int(11) DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `sentiment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visithoughtsform_feedback`
--

INSERT INTO `visithoughtsform_feedback` (`id`, `name`, `agency`, `email`, `purposeOfVisit`, `dateOfVisit`, `department`, `staff`, `courtesy`, `quality`, `timeless`, `efficiency`, `cleanliness`, `comfort`, `comment`, `sentiment`) VALUES
(1, 'qwe', 'qwe', 'qweqwe@gmai.com', 'qwe', '2023-10-18', 'Department of Computer Studies', 'Mr. Cabarles, Axel G.', 2, 4, 3, 1, 5, 5, 'asdasdasd', 'Neutral Sentiment'),
(2, 'Monkey D. Luffy', 'Straw Hats Pirates', 'luffy@gmail.com', 'One Piece', '2023-10-18', 'Department of Arts and Sciences', 'Ms. Hernandez, Melita D.', 5, 4, 3, 2, 4, 1, 'The food is great and the services is fun.', 'Positive Sentiment'),
(3, 'Monkey D. Luffy', 'Straw Hats Pirates', 'luffy@gmail.com', 'One Piece', '2023-10-18', 'Department of Computer Studies', 'Ms. Abad, Jenerry Y.', 5, 4, 3, 2, 4, 1, 'The food is great and the services is fun.', 'Positive Sentiment'),
(4, 'asd', 'asda', 'asdasd@gmail.com', 'asd', '2023-12-12', 'Department of Arts and Sciences', 'Ms. Hernandez, Melita D.', 1, 1, 1, 1, 1, 1, 'The services is good and amazing', 'Positive Sentiment'),
(5, 'asd', 'asda', 'asdasd@gmail.com', 'asd', '2023-12-12', 'Department of Computer Studies', 'Mr. Cabarles, Axel G.', 1, 1, 1, 1, 1, 1, 'The services is good and amazing', 'Positive Sentiment'),
(6, 'Vinsmoke Sanji', 'Straw Hats Pirates', 'sanji@gmail.com', 'Cooking', '2023-10-18', 'Department of Arts and Sciences', 'Ms. Dulay, Joevilyn M.', 2, 3, 4, 5, 3, 4, 'The ingredients provided is decaying and the place is very dirty.', 'Negative Sentiment'),
(7, 'Vinsmoke Sanji', 'Straw Hats Pirates', 'sanji@gmail.com', 'Cooking', '2023-10-18', 'Department of Arts and Sciences', 'Ms. Dulay, Joevilyn M.', 2, 2, 2, 2, 2, 2, 'The ingredients provided is decaying and the place.', 'Negative Sentiment'),
(8, 'asd', 'asd', 'asdasd@gmail.com', '1qwe', '2023-12-12', 'Department of Computer Studies', 'Mr. Muyot, Allen Jhon C.', 3, 1, 1, 1, 1, 1, 'The services is neutral', 'Neutral Sentiment'),
(9, 'Nico Robin', 'Straw Hats Pirates', 'robin@gmail.com', 'cup of tea', '2023-10-18', 'Department of Arts and Sciences', 'Ms. Paricio, Mary Jane', 1, 2, 3, 4, 5, 3, 'The cup size is ovesized and not good for tea, the tea also is in not good condition although the smell is good but the taste is awful.', 'Negative Sentiment'),
(10, 'Tony Tony Chopper', 'Straw Hats Pirates', 'chopper@gmail.com', 'Medicine Trainingg', '2023-12-12', 'Department of Teacher Education', 'Mr. Binayug, Jeffrey', 5, 4, 3, 2, 3, 1, 'The medicine is well stored. The medicine is highly sealed also. The area is clean and good for practicing medicine or medical procedures.', 'Positive Sentiment'),
(11, 'Rouge D. Ace', 'White Beards Pirates', 'ace@gmail.com', 'puplic execution', '2023-10-19', 'Department of Arts and Sciences', 'Ms. Quilapio, Ladylyn L.', 1, 2, 3, 4, 5, 2, 'White beard pirates are comming to save me. Many people die in all-out war between the marines and the whitebear pirates and its allies.', 'Negative Sentiment'),
(12, 'asd', 'asd', 'asdasd@gmail.com', 'asd', '2023-12-12', 'Department of Teacher Education', 'Ms. Durumpili, Angel Joyce D.', 1, 1, 1, 1, 1, 1, 'ajbjsbdajsdbajshdb', 'Neutral Sentiment'),
(13, 'asd', 'asd', 'asdasd@gmail.com', 'asd', '2023-12-12', 'Department of Teacher Education', 'Ms. Durumpili, Angel Joyce D.', 1, 1, 1, 1, 1, 1, 'ajbjsbdajsdbajshdb', 'Neutral Sentiment'),
(14, 'qweqwe', 'eqwe', 'qweqwe@gmai.com', 'qweqwe', '2022-12-12', 'Department of Teacher Education', 'Mr. Biares, Ryan John A.', 1, 1, 1, 1, 1, 1, 'wqweqweqwpoeiqwpoeiqw', 'Neutral Sentiment'),
(15, 'qweqwe', 'eqwe', 'qweqwe@gmai.com', 'qweqwe', '2022-12-12', 'Department of Teacher Education', 'Mr. Biares, Ryan John A.', 1, 1, 1, 1, 1, 1, 'wqweqweqwpoeiqwpoeiqw', 'Neutral Sentiment'),
(16, 'Cutty Flam', 'Straw Hats Pirates', 'franky@gmail.com', 'cyborg body parts replacements', '2023-10-19', 'Department of Computer Studies', 'Mr. Nolledo, Mark Ednane F.', 5, 5, 5, 5, 5, 5, 'The parts are all new and in a very good condition. There are also no missing parts, price is also nice. I feel stronger now.', 'Positive Sentiment'),
(17, 'Cart Burglar', 'Straw Hats Pirates', 'nami@gmail.com', 'Clima Takt Upgrade', '2023-10-20', 'Department of Computer Studies', 'Mr. Gelera, Aries M.', 5, 4, 3, 2, 2, 1, 'The clima takt is now upgraded but i can still see some issues, it slips to my hand and maybe more upgrade needed. However it undeniably gets stronger.', 'Positive Sentiment'),
(18, 'Cart Burglar', 'Straw Hats Pirates', 'nami@gmail.com', 'Clima Takt Upgrade', '2023-10-20', 'Department of Arts and Sciences', 'Mr. Martinez, Darelle Anro', 5, 4, 3, 2, 2, 1, 'The clima takt is now upgraded but i can still see some issues, it slips to my hand and maybe more upgrade needed. However it undeniably gets stronger.', 'Positive Sentiment'),
(19, 'Red Haired Shanks', 'Red Haired Pirates', 'shanks@gmail.com', 'One Piece', '2023-10-21', 'Department of Teacher Education', 'Ms. Gonzales, Judilyn E.', 1, 2, 3, 4, 1, 5, 'i will claim the one piece very soon. and face luffy at the final war. The one piece the instruction given is very clear.', 'Negative Sentiment'),
(20, 'Red Haired Shanks', 'Red Haired Pirates', 'shanks@gmail.com', 'One Piece', '2023-10-21', 'Department of Teacher Education', 'Ms. Gonzales, Judilyn E.', 1, 2, 3, 4, 1, 5, 'The one piece the instruction given is very clear. i will claim the one piece very soon. and face luffy at the final war.', 'Negative Sentiment'),
(21, 'asd', 'asd', 'asdas@gmail.com', 'asdasd', '2023-10-21', 'Department of Computer Studies', 'Mr. Cabarles, Axel G.', 2, 2, 2, 2, 2, 2, 'asdasdasd', 'Neutral Sentiment'),
(22, 'asd', 'asd', 'asdas@gmail.com', 'asdasd', '2023-10-21', 'Department of Computer Studies', 'Mr. Cabarles, Axel G.', 3, 3, 3, 3, 3, 3, 'asdasdasd', 'Neutral Sentiment'),
(23, 'Nami', 'Straw Hats Pirates', 'nami@gmail.com', 'asdasdasd', '2023-10-21', 'Department of Computer Studies', 'Mr. Muyot, Allen Jhon C.', 2, 3, 1, 1, 1, 5, 'it so funny like hahaha hehehe hihihi hohoh huhuhu', 'Positive Sentiment'),
(24, 'brooklyn', 'Straw Hats Pirates', 'brklyn@gmail.com', 'asdasdasd', '2023-10-21', 'Department of Computer Studies', 'Mr. Gelera, Aries M.', 1, 1, 1, 1, 1, 1, 'I dont like it', 'Negative Sentiment'),
(25, 'Brook', 'Straw Hats Pirates', 'brook@gmail.com', 'Pan...', '2023-10-22', 'Department of Computer Studies', 'Ms. Turla, Chrisa Mae', 4, 3, 2, 5, 1, 3, 'The services is nuetral.', 'Neutral Sentiment'),
(26, 'test', 'test', 'test@gmail.com', 'test', '2023-12-12', 'Department of Computer Studies', 'Ms. Abad, Jenerry Y.', 5, 5, 5, 5, 5, 5, 'The services is nuetral', 'Neutral Sentiment'),
(27, 'Lunasa Prismriver', 'Gensokyou Spirit Services', 'lunasa.prismriver@mail.com', 'Exorcism', '2023-11-01', 'Department of Computer Studies', 'Mr. Nabablit, Karlo Jose E.', 3, 3, 3, 3, 3, 3, 'The office looks amazing but the service is terrible.', 'Negative Sentiment'),
(28, 'Reimu Hakurei', 'Gensokyou Spirit Services', 'reimu.hakurei@mail.com', 'Exorcism', '2023-11-01', 'Department of Arts and Sciences', 'Ms. Lim, Bernadette H.', 4, 4, 4, 4, 4, 4, 'I don\'t know what to aklsdaklsdlaskdksahfkjhasjdjaskljd say. Okay, I guess.', 'Positive Sentiment'),
(29, 'Monkey D. Garp', 'Marines', 'garp@gmail.com', 'thesis consultation', '2023-10-23', 'Department of Computer Studies', 'Mr. Nolledo, Mark Ednane F.', 5, 5, 5, 5, 5, 5, 'The consultation went well. how ever there are thing that i dont know yet. But he suggest all the things that will be good for my thesis. What I need now is to find a way to apply it and make my system much better.', 'Positive Sentiment'),
(30, 'pedro', 'pedroagency', 'pedro@gmail.com', 'pedro request', '2023-10-23', 'Department of Computer Studies', 'Ms. Nocon, Yvana Jardine R.', 1, 1, 1, 1, 1, 1, 'The services is poor.', 'Negative Sentiment'),
(31, 'dipper pines', 'Gravity Falls', 'dipper@gmail.com', 'claiming of the 3rd mystery book', '2023-10-24', 'Department of Computer Studies', 'Ms. Driza, Renjie G.', 3, 3, 3, 3, 3, 3, 'The claiming of the 3rd mystery book went well, but there are some mysteries to be solved. there are a lot of thing that remain unexplained.', 'Positive Sentiment'),
(32, 'Mr Ponkardas', 'youtube', 'ponkardas@gmail.com', 'case hearing', '2023-10-24', 'Department of Computer Studies', 'Mr. Gelera, Aries M.', 5, 4, 3, 2, 1, 3, 'Mr ponkarda\'s case is solve but he need to give the money back he scam from the american citizen. Even though the officers of the court is a filipino citizen they show no bias between the filipino and american citizen.', 'Negative Sentiment'),
(33, 'Mr Ponkardas', 'youtube', 'ponkardas@gmail.com', 'case hearing', '2023-10-24', 'Department of Computer Studies', 'Mr. Gelera, Aries M.', 5, 4, 3, 2, 1, 3, 'The american citizen is good and the court justice system is fair. Mr ponkarda\'s case is solve but he need to give the money back he scam from the american citizen. Even though the officers of the court is a filipino citizen they show no bias between the.', 'Negative Sentiment'),
(34, 'Akainu Sakazuki', 'Marines', 'akainu@gmail.com', 'Ace Execution', '2023-10-24', 'Department of Computer Studies', 'Ms. Obon, Ana Marie', 1, 2, 3, 4, 5, 1, 'Ace execution will result in a huge war, Whitebeards gonna bring all his family or crewmates, many marines and pirates gonna die, it is an all out war for the whitebeard pirates.', 'Negative Sentiment'),
(35, 'Kuzan Aokiji', 'Marines', 'aokiji@gmail.com', 'Ace Execution', '2023-10-24', 'Department of Computer Studies', 'Mr. Villanueva, Lester D.', 1, 2, 3, 4, 1, 1, 'Im here to fight incase whitebeard cause havic at marineford.', 'Negative Sentiment'),
(36, 'geto', 'gojo', 'geto@gmail.com', 'basic inquiry', '2023-10-25', 'Department of Teacher Education', 'Ms. Gonzales, Judilyn E.', 5, 5, 4, 3, 2, 3, 'This is basic inquiry', 'Neutral Sentiment'),
(37, 'geto', 'gojo', 'geto@gmail.com', 'basic inquiry', '2023-10-25', 'Department of Teacher Education', 'Ms. Gonzales, Judilyn E.', 5, 5, 4, 3, 2, 3, 'This is basic inquiry', 'Neutral Sentiment'),
(38, 'karding', 'karding agency', 'karding@gmail.com', 'sweets notification', '2023-10-25', 'Department of Computer Studies', 'Ms. Dela Cruz, Mary grace P.', 5, 4, 3, 2, 3, 1, 'This is for the sweet notification.', 'Positive Sentiment'),
(39, 'karding', 'karding agency', 'karding@gmail.com', 'sweets notification', '2023-10-25', 'Department of Arts and Sciences', 'Ms. Hernandez, Melita D.', 5, 4, 3, 2, 3, 1, 'This is for the sweet notification.', 'Positive Sentiment'),
(40, 'karding', 'karding agency', 'karding@gmail.com', 'sweets notification', '2023-10-25', 'Department of Arts and Sciences', 'Ms. Hernandez, Melita D.', 5, 4, 3, 2, 3, 1, 'This is for the sweet notification.', 'Positive Sentiment'),
(41, 'alert test', 'alert test', 'alerttest@gmail.com', 'alert test', '2023-10-25', 'Department of Teacher Education', 'Mr. Biares, Ryan John A.', 5, 5, 5, 5, 5, 5, 'Alert testing is fun and exciting.', 'Positive Sentiment'),
(42, 'alert test', 'alert test', 'alerttest@gmail.com', 'alert test', '2023-10-25', 'Department of Teacher Education', 'Mr. Biares, Ryan John A.', 5, 5, 5, 5, 5, 5, 'Alert testing is fun and exciting.', 'Positive Sentiment'),
(43, 'alert test', 'alert test', 'alerttest@gmail.com', 'alert test', '2023-10-25', 'Department of Teacher Education', 'Mr. Biares, Ryan John A.', 5, 5, 5, 5, 5, 5, 'Alert testing is fun and exciting.', 'Positive Sentiment'),
(44, 'alert test', 'alert test', 'alerttest@gmail.com', 'alert test', '2023-10-25', 'Department of Teacher Education', 'Mr. Biares, Ryan John A.', 5, 5, 5, 5, 5, 5, 'Alert testing is fun and exciting.', 'Positive Sentiment'),
(45, 'alert test', 'alert test', 'alerttest@gmail.com', 'alert test', '2023-10-25', 'Department of Computer Studies', 'Ms. Gerios, Marie Angeli B.', 3, 3, 3, 3, 3, 3, 'Testing alert is fun and exciting, but how does it work?', 'Positive Sentiment'),
(46, 'alert test', 'alert test', 'alerttest@gmail.com', 'alert test', '2023-10-25', 'Department of Computer Studies', 'Ms. Gerios, Marie Angeli B.', 3, 3, 3, 3, 3, 3, 'Testing alert is fun and exciting, but how does it work?', 'Positive Sentiment'),
(47, 'alert test', 'alert test', 'alerttest@gmail.com', 'alert test', '2023-10-25', 'Department of Computer Studies', 'Ms. Gerios, Marie Angeli B.', 3, 3, 3, 3, 3, 3, 'Testing alert is fun and exciting, but how does it work?', 'Positive Sentiment'),
(48, 'alert test', 'alert test', 'alerttest@gmail.com', 'alert test', '2023-10-25', 'Department of Computer Studies', 'Mr. Nabablit, Karlo Jose E.', 3, 3, 3, 3, 3, 3, 'Testing alert is fun and exciting, but how does it work? Help me please', 'Positive Sentiment'),
(49, 'alert test', 'alert test', 'alerttest@gmail.com', 'alert test', '2023-10-25', 'Department of Computer Studies', 'Ms. Melitante, Girlie', 5, 5, 5, 5, 5, 5, 'Alert test is fun but im getting tired i cant make it right.', 'Negative Sentiment'),
(50, 'alert test', 'alert test', 'alerttest@gmail.com', 'alert test', '2023-10-25', 'Department of Computer Studies', 'Ms. Melitante, Girlie', 5, 5, 5, 5, 5, 5, 'Alert test is fun but im getting tired i cant make it right.', 'Negative Sentiment'),
(51, 'alert test', 'alert test', 'alerttest@gmail.com', 'alert test', '2023-10-25', 'Department of Computer Studies', 'Ms. Melitante, Girlie', 5, 5, 5, 5, 5, 5, 'Alert test is fun but im getting tired i cant make it right.', 'Negative Sentiment'),
(52, 'alert test', 'alert test', 'alerttest@gmail.com', 'alert test', '2023-10-25', 'Department of Computer Studies', 'Ms. Melitante, Girlie', 5, 5, 5, 5, 5, 5, 'Alert test is fun but im getting tired i cant make it right.', 'Negative Sentiment'),
(53, 'alert test', 'alert test', 'alerttest@gmail.com', 'alert test', '2023-10-25', 'Department of Computer Studies', 'Ms. Gerios, Marie Angeli B.', 3, 3, 3, 3, 3, 3, 'Alert fails on day 1, What I am gonna do?', 'Negative Sentiment'),
(54, 'Keybii', 'weserv', 'testv1@gmail.com', 'tambay', '2023-10-26', 'Department of Computer Studies', 'Mr. Muyot, Allen Jhon C.', 1, 1, 1, 1, 1, 1, 'binigyan ako tres neto', 'Neutral Sentiment'),
(55, 'Keybii', 'weserv', 'testv1@gmail.com', 'tambay', '2023-10-26', 'Department of Computer Studies', 'Mr. Muyot, Allen Jhon C.', 1, 1, 1, 1, 1, 1, 'he gaves me 3 points', 'Neutral Sentiment'),
(56, 'keys', 'dcs', 'testo@gmail.com', 'tambay lang lit', '2023-10-27', 'Department of Computer Studies', 'Mr. Nolledo, Mark Ednane F.', 4, 5, 4, 5, 4, 5, 'He is a good friend of mine. He smart because his name is mark. Back when we are in college his is so early going to school.', 'Positive Sentiment'),
(57, 'wevdev', 'wevdev', 'webdev@gmail.com', 'wevdev', '2023-10-29', 'Department of Computer Studies', 'Ms. Clarito, angela C.', 5, 4, 3, 2, 1, 3, 'The wev development is almost done, admin dashboard and crud are left to be develop, bu i think the form is already done as well as perdepartments dashboards as well as the login page and user authentication. i hope this project would not be destroyed.', 'Positive Sentiment'),
(58, 'formsubmitted', 'formsubmitted', 'formsubmitted@gmail.com', 'formsubmitted', '2023-10-29', 'Department of Computer Studies', 'Ms. Dela Cruz, Mary grace P.', 5, 5, 5, 5, 5, 5, 'form submitted animation is amazing, recycling animation is nice HAHAH', 'Positive Sentiment'),
(59, 'sol', 'sol', 'sol@gmail.com', 'sol', '2023-10-29', 'Department of Computer Studies', 'Ms. Ignaco, Mary Ann E.', 5, 4, 3, 2, 3, 4, 'This is the last testing for today.', 'Neutral Sentiment'),
(60, 'xshot', 'xshot', 'xshot@gmail.com', 'xshot', '2023-10-31', 'Department of Computer Studies', 'Ms. Cruz, Janessa Marielle S.', 1, 1, 1, 1, 1, 1, 'xshot is so itchy when it hits you.', 'Negative Sentiment'),
(61, 'wanda', 'wandalang', 'wanda@gmail.com', 'wandavisit', '2023-11-03', 'Department of Arts and Sciences', 'Mr. Mariano, Rommel', 4, 3, 5, 2, 1, 4, 'The quick brown fox jumps over the lazy dog', 'Negative Sentiment'),
(62, 'Karl Jan S. Reginaldo', 'Dcs', 'reginaldokarljan@gmail.com', 'Wala lang. pwede na to? oo wala yan palang atang tatlo sa unahan', '2023-11-06', 'Department of Computer Studies', 'Ms. Abad, Jenerry Y.', 4, 3, 3, 4, 2, 2, 'i love the attending staff for giving me such a good day with her smile. and i think services quality was good and it pretty fast transactions. but i must say that the environment is not really good in my eyes so i guess they have to clean it.', 'Positive Sentiment'),
(63, 'Krzysz', 'QAAC', 'krldlcrz1418@gmail.com', 'Borrow documents', '2023-11-07', 'Department of Teacher Education', 'Ms. Bernal, Melissa M.', 5, 5, 5, 5, 5, 5, 'Thank you for the services.', 'Positive Sentiment'),
(64, 'long text', 'longtext', 'longtext@gmail.com', 'long text', '2023-11-08', 'Department of Computer Studies', 'Ms. Cruz, Janessa Marielle S.', 5, 5, 5, 5, 5, 5, 'As they rounded a bend in the path that ran beside the river, Lara recognized the silhouette of a fig tree atop a nearby hill. The weather was hot and the days were long. The fig tree was in full leaf, but not yet bearing fruit.\r\nSoon Lara spotted other landmarks—an outcropping of limestone beside the path that had a silhouette like a man’s face, a marshy spot beside the river where the waterfowl were easily startled, a tall tree that looked like a man with his arms upraised. They were drawing near to the place where there was an island in the river. The island was a good spot to make camp. They would sleep on the island tonight.\r\nLara had been back and forth along the river path many times in her short life. Her people had not created the path—it had always been there, like the river—but their deerskin-shod feet and the wooden wheels of their handcarts kept the path well worn. Lara’s people were salt traders, and their livelihood took them on a continual journey.\r\nAt the mouth of the river, the little group of half a dozen intermingled families gathered salt from the great salt beds beside the sea. They groomed and sifted the salt and loaded it into handcarts. When the carts were full, most of the group would stay behind, taking shelter amid rocks and simple lean-tos, while a band of fifteen or so of the heartier members set out on the path that ran alongside the river.\r\nWith their precious cargo of salt, the travelers crossed the coastal lowlands and traveled toward the mountains. But Lara’s people never reached the mountaintops; they traveled only as far as the foothills. Many people lived in the forests and grassy meadows of the foothills, gathered in small villages. In return for salt, these people would give Lara’s people dried meat, animal skins, cloth spun from wool, clay pots, needles and scraping tools carved from bone, and little toys made of wood.', 'Positive Sentiment'),
(65, 'test change', 'test change', 'testchange@gmail.com', 'test change', '2023-11-12', 'Department of Computer Studies', 'Mr. Nolledo, Mark Ednane F.', 5, 5, 5, 5, 5, 5, 'This i greet, i will take over now.', 'Positive Sentiment'),
(66, 'tryfourth', 'tryfourth', 'tryfourth@gmail.com', 'tryfourth', '2023-11-12', 'Department of Management Studies', 'Ms. Ducha, Aiza M.', 5, 5, 5, 5, 5, 5, 'try only fourth dept', 'Neutral Sentiment'),
(67, 'testfifth', 'testfifth', 'testfifth@gmail.com', 'testfifth', '2023-11-12', 'Department of Engineering', 'Mr. Lim, John Jordan J.', 5, 5, 5, 5, 5, 5, 'test fifth', 'Neutral Sentiment'),
(68, 'test sixth', 'test sixth', 'testsixth@gmail.com', 'test sixth', '2023-11-12', 'Department of Industrial Technology', 'Ms. Aguirre, Gretchen D.', 5, 5, 5, 5, 5, 5, 'test sixth', 'Neutral Sentiment');

-- --------------------------------------------------------

--
-- Table structure for table `visithoughtsform_staff`
--

CREATE TABLE `visithoughtsform_staff` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `department_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visithoughtsform_staff`
--

INSERT INTO `visithoughtsform_staff` (`id`, `name`, `department_id`) VALUES
(1, 'Ms. Abad, Jenerry Y.', 1),
(2, 'Mr. Cabarles, Axel G.', 1),
(3, 'Ms. Clarito, angela C.', 1),
(4, 'Ms. Cruz, Janessa Marielle S.', 1),
(5, 'Ms. Dela Cruz, Mary grace P.', 1),
(6, 'Ms. Driza, Renjie G.', 1),
(7, 'Mr. Estonilo, Christopher G.', 1),
(8, 'Mr. Gelera, Aries M.', 1),
(9, 'Ms. Gerios, Marie Angeli B.', 1),
(10, 'Ms. Ignaco, Mary Ann E.', 1),
(11, 'Ms. Melitante, Girlie', 1),
(12, 'Mr. Muyot, Allen Jhon C.', 1),
(13, 'Mr. Nabablit, Karlo Jose E.', 1),
(14, 'Mr. Nolledo, Mark Ednane F.', 1),
(15, 'Ms. Nocon, Yvana Jardine R.', 1),
(16, 'Ms. Obon, Ana Marie', 1),
(17, 'Ms. Turla, Chrisa Mae', 1),
(18, 'Mr. Villanueva, Lester D.', 1),
(19, 'Ms. Dulay, Joevilyn M.', 2),
(20, 'Mr. Baes, Mico Agustin D.', 2),
(21, 'Mr. Dela Cruz Jr., Emmanuel P.', 2),
(22, 'Ms. Abadilla, Aira Camille', 2),
(23, 'Ms. Hernandez, Melita D.', 2),
(24, 'Ms. Lim, Bernadette H.', 2),
(25, 'Ms. Lavandero, Aireen L.', 2),
(26, 'Mr. Letriro, Wilbert A.', 2),
(27, 'Mr. Mariano, Rommel', 2),
(28, 'Mr. Martinez, Darelle Anro', 2),
(29, 'Mr. Pegos, Efren E.', 2),
(30, 'Ms. Paricio, Mary Jane', 2),
(31, 'Ms. Quilapio, Ladylyn L.', 2),
(32, 'Ms. Ragay, Danica Kate S.', 2),
(33, 'Ms. Recana, Anamarie R.', 2),
(34, 'Mr. Rodriguez, Aaron John M.', 2),
(35, 'Ms. Rodriguez, Abigail L.', 2),
(36, 'Ms. Samaniego, Francene O.', 2),
(37, 'Ms. Sequina, Jenny B.', 2),
(38, 'Ms. Sumagang, Caryl Joy M.', 2),
(39, 'Ms. Victa Ma. Soccoro D.', 2),
(40, 'Ms. Batoon, Sheena Mistee A.', 3),
(41, 'Ms. Belandrez, Jelyn L.', 3),
(42, 'Ms. Bernal, Melissa M.', 3),
(43, 'Mr. Biares, Ryan John A.', 3),
(44, 'Mr. Binayug, Jeffrey', 3),
(45, 'Ms. Calazan, Rhiza Mae', 3),
(46, 'Ms. Costales, Janine R.', 3),
(47, 'Ms. Corral, Mari Daisy O.', 3),
(48, 'Ms. Custodio, Janice R.', 3),
(49, 'Mr. Emberador, John Lexter L.', 3),
(50, 'Mr. Dayoc, Jotit P.', 3),
(51, 'Mr. Dela Cruz, Mar-jay P.', 3),
(52, 'Ms. Durumpili, Angel Joyce D.', 3),
(53, 'Ms. Echenique, Willyn S.', 3),
(54, 'Ms. Peraniel, Honeybee', 3),
(55, 'Ms. Gonzales, Judilyn E.', 3),
(56, 'Ms. Marquez, Janice D.', 3),
(57, 'Ms. Mirabel, Bridget I.', 3),
(58, 'Ms. Niviar, Angelu D.', 3),
(59, 'Ms. Oropilla, Mancel I.', 3),
(60, 'Ms. Pamaos, Rommel', 3),
(61, 'Mr. Quilos, Roldan R.', 3),
(62, 'Ms. Roncale, Liza P.', 3),
(63, 'Mr. Salluian,  John Francis D.', 3),
(64, 'Ms. Sierra, Micaela I.', 3),
(65, 'Ms. Sugatan, Jazel Joy B.', 3),
(66, 'Ms. Tamayo, Christian H.', 3),
(67, 'Ms. Geronimo, Annabelle SI.', 3),
(68, 'Mr. Velasco, Mark Lyndon E.', 3),
(69, 'Mr. Villareal, Albert P.', 3),
(70, 'Ms. Abad, Juvie B.', 4),
(71, 'Ms. Abug, Nerissa B.', 4),
(72, 'Mr. Alonzo, Ryan Christian M.', 4),
(73, 'Ms. Agacer, Hazel Ann G.', 4),
(74, 'Mr. Ambas, Arman M.', 4),
(75, 'Ms. Arabit, Michelle Alexandra A.', 4),
(76, 'Mr. Baricante, Jayson L.', 4),
(77, 'Mr. Cupino, Jefferson John S.', 4),
(78, 'Mr. Dela Rea, Kirk T.', 4),
(79, 'Mr. Delos Trinos, Jhustyn Ryerson C.', 4),
(80, 'Ms. Ducha, Aiza M.', 4),
(81, 'Dr. Dumlao, Elizabeth R.', 4),
(82, 'Ms. Geronimo, Abigail S.', 4),
(83, 'Ms. Gonzales, Mary Grace E.', 4),
(84, 'Ms. Macaranas, Maggie Mae P.', 4),
(85, 'Mr. Manuel, Laarnie R.', 4),
(86, 'Mr. Mendoza, Xavier Lawrence D.', 4),
(87, 'Ms. Navales, Bhrendelyn B.', 4),
(88, 'Mr. Padilla, Ralph Danielle C.', 4),
(89, 'Ms. Parcon, Hernaly C.', 4),
(90, 'Mr. Perez, Richard P.', 4),
(91, 'Ms. Solis, Gerico G.', 4),
(92, 'Ms. Sto.Tomas, Emelita', 4),
(93, 'Mr. Tadeo, Jerico B.', 4),
(94, 'Mr. Tan, Christian P.', 4),
(95, 'Ms. Villa, John Leo-vy P.', 4),
(96, 'Ms. Arayata, Diane P.', 5),
(97, 'Engr. Arive, Ariesthotle D.', 5),
(98, 'Engr. Arellano, Kristian Dalle', 5),
(99, 'Engr. Armintia, Michael Edward T.', 5),
(100, 'Engr. Bartolome, Gee Jay C.', 5),
(101, 'Engr. Belen, Anthony A.', 5),
(102, 'Engr. Briones, John Robert G.', 5),
(103, 'Engr. De Mesa, Jhon Patrick S.', 5),
(104, 'Engr. Gammayao, Joel C.', 5),
(105, 'Mr. Garcia, Roel B.', 5),
(106, 'Mr. Grapani, Joshua', 5),
(107, 'Mr. Juyad, Princess Yna D.', 5),
(108, 'Ms. Legaspi, Hama Haqui H.', 5),
(109, 'Mr. Lim, John Jordan J.', 5),
(110, 'Mr. Prudente, Marc Joshua', 5),
(111, 'Mr. Ramos, Jr. Michael M.', 5),
(112, 'Engr. Saavedra, Leandro T.', 5),
(113, 'Ms. Saavedra, Rosemary V.', 5),
(114, 'Mr. Sarreal, Rommel H.', 5),
(115, 'Engr. Soberano, Orlando P.', 5),
(116, 'Ms. Aguirre, Gretchen D.', 6),
(117, 'Mr. Almuestro, Jonard A.', 6),
(118, 'Mr. Alfaro, John Guiller C.', 6),
(119, 'Mr. Ambayec, Josefino E.', 6),
(120, 'Mr. Arca, Jalfred B.', 6),
(121, 'Mr. Bicua, Deo Paulo M.', 6),
(122, 'Mr. Cielo, Fernando M.', 6),
(123, 'Mr. Crudo, Aldwin M.', 6),
(124, 'Mr. Delos Reyes, Regic C.', 6),
(125, 'Mr. Evangelista, Nicky Jay R.', 6),
(126, 'Mr. Gonzaga, Vincent M.', 6),
(127, 'Ms. Gianan, Anna M.', 6),
(128, 'Mr. Hernandez, DennMar I.', 6),
(129, 'Dr. Lubong, Rodel B.', 6),
(130, 'Dr. Luseco, William P.', 6),
(131, 'Ms. Luya, Jenilyn D.', 6),
(132, 'Mr. Onsana, Marvin V.', 6),
(133, 'Mr. Padron, Reymart P.', 6),
(134, 'Ms. Panaguiton, Paean T.', 6),
(135, 'Mr. Parallag, Merlito B.', 6),
(136, 'Dr. Pascua, Lauro B.', 6),
(137, 'Mr. Paulino, Jurick P.', 6),
(138, 'Mr. Resultay, Mark Jason R.', 6),
(139, 'Dr. Santos, Ariel G.', 6),
(140, 'Dr. Santos, Ma. Daisy A.', 6),
(141, 'Ms. Sunga, Prima Joy Amor S.', 6),
(142, 'Ms. Tabelisma, Mana Elizabeth M.', 6),
(143, 'Engr. Zonio, Gedeon O.', 6);

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
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visithoughtsform_department`
--
ALTER TABLE `visithoughtsform_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visithoughtsform_feedback`
--
ALTER TABLE `visithoughtsform_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visithoughtsform_staff`
--
ALTER TABLE `visithoughtsform_staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visithoughtsForm_sta_department_id_57727e1e_fk_visithoug` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `visithoughtsform_department`
--
ALTER TABLE `visithoughtsform_department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `visithoughtsform_feedback`
--
ALTER TABLE `visithoughtsform_feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `visithoughtsform_staff`
--
ALTER TABLE `visithoughtsform_staff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `visithoughtsform_staff`
--
ALTER TABLE `visithoughtsform_staff`
  ADD CONSTRAINT `visithoughtsForm_sta_department_id_57727e1e_fk_visithoug` FOREIGN KEY (`department_id`) REFERENCES `visithoughtsform_department` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
