-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 14 2020 г., 01:39
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `finalwork`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wdsfsdfsdsdfsdfp_commentmeta`
--

CREATE TABLE `wdsfsdfsdsdfsdfp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wdsfsdfsdsdfsdfp_comments`
--

CREATE TABLE `wdsfsdfsdsdfsdfp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wdsfsdfsdsdfsdfp_comments`
--

INSERT INTO `wdsfsdfsdsdfsdfp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Коментатор WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-05-09 01:20:29', '2020-05-08 22:20:29', 'Привіт! Це коментар.\nЩоб почати модерувати, редагувати і видаляти коментарі, перейдіть в розділ Коментарів у Майстерні.\nАватари авторів коментарів завантажуються з сервісу<a href=\"https://uk.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wdsfsdfsdsdfsdfp_links`
--

CREATE TABLE `wdsfsdfsdsdfsdfp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wdsfsdfsdsdfsdfp_options`
--

CREATE TABLE `wdsfsdfsdsdfsdfp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wdsfsdfsdsdfsdfp_options`
--

INSERT INTO `wdsfsdfsdsdfsdfp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/finalwork', 'yes'),
(2, 'home', 'http://localhost/finalwork', 'yes'),
(3, 'blogname', 'finalwork', 'yes'),
(4, 'blogdescription', 'Просто ще один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'andrey.elle@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:91:\"all-in-one-wp-migration-unlimited-extension/all-in-one-wp-migration-unlimited-extension.php\";i:2;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:3;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:63:\"C:\\xampp\\htdocs\\FinalWork/wp-content/themes/finalwork/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'finalwork', 'yes'),
(41, 'stylesheet', 'finalwork', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', 'Europe/Kiev', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '11', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1604528428', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wdsfsdfsdsdfsdfp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ru_RU', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:8:{i:1589413870;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589415630;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1589451630;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1589494829;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589494982;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589494983;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589667629;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1589063827;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(126, '_site_transient_timeout_browser_31f552011cd49d12bc3cd930bb193459', '1589581382', 'no'),
(127, '_site_transient_browser_31f552011cd49d12bc3cd930bb193459', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"81.0.4044.138\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(128, '_site_transient_timeout_php_check_f9714bbe413cc376a70847d9c1f86fcc', '1589581383', 'no'),
(129, '_site_transient_php_check_f9714bbe413cc376a70847d9c1f86fcc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(137, 'can_compress_scripts', '1', 'no'),
(166, 'new_admin_email', 'andrey.elle@gmail.com', 'yes'),
(175, '_transient_health-check-site-status-result', '{\"good\":\"11\",\"recommended\":\"6\",\"critical\":\"0\"}', 'yes'),
(187, 'current_theme', 'finalwork', 'yes'),
(188, 'theme_mods_finalwork', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(189, 'theme_switched', '', 'yes'),
(190, 'recovery_mode_email_last_sent', '1589064110', 'yes'),
(191, 'category_children', 'a:0:{}', 'yes'),
(195, 'recently_activated', 'a:0:{}', 'yes'),
(205, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1589408479;s:15:\"version_checked\";s:5:\"5.4.1\";s:12:\"translations\";a:0:{}}', 'no'),
(207, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1589408481;s:7:\"checked\";a:1:{s:9:\"finalwork\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(208, 'ai1wm_secret_key', 'x23MQVDvJ7QU', 'yes'),
(211, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(215, 'ai1wm_updater', 'a:1:{s:43:\"all-in-one-wp-migration-unlimited-extension\";a:13:{s:4:\"name\";s:19:\"Unlimited Extension\";s:4:\"slug\";s:19:\"unlimited-extension\";s:8:\"homepage\";s:51:\"https://servmask.com/extensions/unlimited-extension\";s:13:\"download_link\";s:29:\"https://servmask.com/purchase\";s:7:\"version\";s:4:\"2.37\";s:6:\"author\";s:8:\"ServMask\";s:15:\"author_homepage\";s:20:\"https://servmask.com\";s:8:\"sections\";a:1:{s:11:\"description\";s:259:\"<ul class=\"description\"><li>Remove the import limit of 512MB</li><li>Lifetime license with lifetime updates</li><li>Use on any number of websites that you own</li><li>Unlimited Extension included</li><li>WP CLI commands</li><li>Premium support</li></ul><br />\";}s:7:\"banners\";a:2:{s:3:\"low\";s:65:\"https://servmask.com/img/products/unlimited-extension-772x250.png\";s:4:\"high\";s:66:\"https://servmask.com/img/products/unlimited-extension-1544x500.png\";}s:5:\"icons\";a:3:{s:2:\"1x\";s:65:\"https://servmask.com/img/products/unlimited-extension-128x128.png\";s:2:\"2x\";s:65:\"https://servmask.com/img/products/unlimited-extension-256x256.png\";s:7:\"default\";s:65:\"https://servmask.com/img/products/unlimited-extension-256x256.png\";}s:6:\"rating\";i:99;s:11:\"num_ratings\";i:309;s:10:\"downloaded\";i:40188;}}', 'yes'),
(223, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:329:\"<a href=\"http://localhost/finalwork/wp-content/ai1wm-backups/localhost-finalwork-20200513-233157-r0vwgd.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"localhost\" download=\"localhost-finalwork-20200513-233157-r0vwgd.wpress\"><span>Загрузить localhost</span><em>Размер: 30 MB</em></a>\";}', 'yes'),
(233, 'acf_version', '5.8.9', 'yes'),
(293, '_transient_timeout_acf_plugin_updates', '1589581280', 'no'),
(294, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.8.11\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.4.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.9\";}}', 'no'),
(295, '_site_transient_timeout_theme_roots', '1589410281', 'no'),
(296, '_site_transient_theme_roots', 'a:1:{s:9:\"finalwork\";s:7:\"/themes\";}', 'no'),
(297, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1589412637;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.8.11\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.4.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.21\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.21.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2246309\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2246309\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2246309\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2246309\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wdsfsdfsdsdfsdfp_postmeta`
--

CREATE TABLE `wdsfsdfsdsdfsdfp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wdsfsdfsdsdfsdfp_postmeta`
--

INSERT INTO `wdsfsdfsdsdfsdfp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1589411441:1'),
(5, 5, '_wp_page_template', 'page-about.php'),
(6, 3, '_wp_trash_meta_status', 'draft'),
(7, 3, '_wp_trash_meta_time', '1589100336'),
(8, 3, '_wp_desired_post_slug', 'privacy-policy'),
(9, 2, '_wp_trash_meta_status', 'publish'),
(10, 2, '_wp_trash_meta_time', '1589100340'),
(11, 2, '_wp_desired_post_slug', 'sample-page'),
(12, 9, '_menu_item_type', 'custom'),
(13, 9, '_menu_item_menu_item_parent', '0'),
(14, 9, '_menu_item_object_id', '9'),
(15, 9, '_menu_item_object', 'custom'),
(16, 9, '_menu_item_target', ''),
(17, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 9, '_menu_item_xfn', ''),
(19, 9, '_menu_item_url', 'http://localhost/finalwork/'),
(21, 10, '_menu_item_type', 'post_type'),
(22, 10, '_menu_item_menu_item_parent', '0'),
(23, 10, '_menu_item_object_id', '5'),
(24, 10, '_menu_item_object', 'page'),
(25, 10, '_menu_item_target', ''),
(26, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 10, '_menu_item_xfn', ''),
(28, 10, '_menu_item_url', ''),
(30, 11, '_edit_last', '1'),
(31, 11, '_edit_lock', '1589322486:1'),
(32, 11, '_wp_page_template', 'front-page.php'),
(37, 16, '_edit_last', '1'),
(38, 16, '_edit_lock', '1589323578:1'),
(39, 21, '_wp_attached_file', '2020/05/slide1.jpg'),
(40, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:650;s:4:\"file\";s:18:\"2020/05/slide1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slide1-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"slide1-1024x416.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slide1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slide1-768x312.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:312;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"slide1-1536x624.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 22, '_wp_attached_file', '2020/05/slide2.jpg'),
(42, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:650;s:4:\"file\";s:18:\"2020/05/slide2.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slide2-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"slide2-1024x416.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slide2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slide2-768x312.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:312;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"slide2-1536x624.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 21, '_wp_attachment_image_alt', 'slide1'),
(44, 22, '_wp_attachment_image_alt', 'slide2'),
(45, 11, 'slider__slide_0_slider__img', '21'),
(46, 11, '_slider__slide_0_slider__img', 'field_5eb9ad58bd74f'),
(47, 11, 'slider__slide_0_slider_head', 'Lian Creative Agency'),
(48, 11, '_slider__slide_0_slider_head', 'field_5eb9ae3fbd750'),
(49, 11, 'slider__slide_0_slider_text', 'Minimal Freelance Portfolio'),
(50, 11, '_slider__slide_0_slider_text', 'field_5eb9ae8fbd751'),
(51, 11, 'slider__slide_1_slider__img', '22'),
(52, 11, '_slider__slide_1_slider__img', 'field_5eb9ad58bd74f'),
(53, 11, 'slider__slide_1_slider_head', 'Design & Branding'),
(54, 11, '_slider__slide_1_slider_head', 'field_5eb9ae3fbd750'),
(55, 11, 'slider__slide_1_slider_text', 'We Deliver Quality Results'),
(56, 11, '_slider__slide_1_slider_text', 'field_5eb9ae8fbd751'),
(57, 11, 'slider__slide', '3'),
(58, 11, '_slider__slide', 'field_5eb9ad0ebd74e'),
(59, 23, 'slider__slide_0_slider__img', '21'),
(60, 23, '_slider__slide_0_slider__img', 'field_5eb9ad58bd74f'),
(61, 23, 'slider__slide_0_slider_head', 'Lian Creative Agency'),
(62, 23, '_slider__slide_0_slider_head', 'field_5eb9ae3fbd750'),
(63, 23, 'slider__slide_0_slider_text', 'Minimal Freelance Portfolio'),
(64, 23, '_slider__slide_0_slider_text', 'field_5eb9ae8fbd751'),
(65, 23, 'slider__slide_1_slider__img', '22'),
(66, 23, '_slider__slide_1_slider__img', 'field_5eb9ad58bd74f'),
(67, 23, 'slider__slide_1_slider_head', 'Design & Branding'),
(68, 23, '_slider__slide_1_slider_head', 'field_5eb9ae3fbd750'),
(69, 23, 'slider__slide_1_slider_text', 'We Deliver Quality Results'),
(70, 23, '_slider__slide_1_slider_text', 'field_5eb9ae8fbd751'),
(71, 23, 'slider__slide', '2'),
(72, 23, '_slider__slide', 'field_5eb9ad0ebd74e'),
(73, 24, 'slider__slide_0_slider__img', '21'),
(74, 24, '_slider__slide_0_slider__img', 'field_5eb9ad58bd74f'),
(75, 24, 'slider__slide_0_slider_head', 'Lian Creative Agencyzcxzczxczxczxc'),
(76, 24, '_slider__slide_0_slider_head', 'field_5eb9ae3fbd750'),
(77, 24, 'slider__slide_0_slider_text', 'Minimal Freelance Portfolio'),
(78, 24, '_slider__slide_0_slider_text', 'field_5eb9ae8fbd751'),
(79, 24, 'slider__slide_1_slider__img', '22'),
(80, 24, '_slider__slide_1_slider__img', 'field_5eb9ad58bd74f'),
(81, 24, 'slider__slide_1_slider_head', 'Design & Branding'),
(82, 24, '_slider__slide_1_slider_head', 'field_5eb9ae3fbd750'),
(83, 24, 'slider__slide_1_slider_text', 'We Deliver Quality Results'),
(84, 24, '_slider__slide_1_slider_text', 'field_5eb9ae8fbd751'),
(85, 24, 'slider__slide', '2'),
(86, 24, '_slider__slide', 'field_5eb9ad0ebd74e'),
(87, 25, '_wp_attached_file', '2020/05/about.png'),
(88, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:350;s:4:\"file\";s:17:\"2020/05/about.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"about-300x66.png\";s:5:\"width\";i:300;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"about-1024x224.png\";s:5:\"width\";i:1024;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"about-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"about-768x168.png\";s:5:\"width\";i:768;s:6:\"height\";i:168;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"about-1536x336.png\";s:5:\"width\";i:1536;s:6:\"height\";i:336;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(89, 25, '_wp_attachment_image_alt', 'about'),
(90, 11, 'slider__slide_2_slider__img', '25'),
(91, 11, '_slider__slide_2_slider__img', 'field_5eb9ad58bd74f'),
(92, 11, 'slider__slide_2_slider_head', 'dsfsdfsdfsdfs'),
(93, 11, '_slider__slide_2_slider_head', 'field_5eb9ae3fbd750'),
(94, 11, 'slider__slide_2_slider_text', 'sdfsdfsdfsesef d s'),
(95, 11, '_slider__slide_2_slider_text', 'field_5eb9ae8fbd751'),
(96, 26, 'slider__slide_0_slider__img', '21'),
(97, 26, '_slider__slide_0_slider__img', 'field_5eb9ad58bd74f'),
(98, 26, 'slider__slide_0_slider_head', 'Lian Creative Agency'),
(99, 26, '_slider__slide_0_slider_head', 'field_5eb9ae3fbd750'),
(100, 26, 'slider__slide_0_slider_text', 'Minimal Freelance Portfolio'),
(101, 26, '_slider__slide_0_slider_text', 'field_5eb9ae8fbd751'),
(102, 26, 'slider__slide_1_slider__img', '22'),
(103, 26, '_slider__slide_1_slider__img', 'field_5eb9ad58bd74f'),
(104, 26, 'slider__slide_1_slider_head', 'Design & Branding'),
(105, 26, '_slider__slide_1_slider_head', 'field_5eb9ae3fbd750'),
(106, 26, 'slider__slide_1_slider_text', 'We Deliver Quality Results'),
(107, 26, '_slider__slide_1_slider_text', 'field_5eb9ae8fbd751'),
(108, 26, 'slider__slide', '3'),
(109, 26, '_slider__slide', 'field_5eb9ad0ebd74e'),
(110, 26, 'slider__slide_2_slider__img', '25'),
(111, 26, '_slider__slide_2_slider__img', 'field_5eb9ad58bd74f'),
(112, 26, 'slider__slide_2_slider_head', 'dsfsdfsdfsdfs'),
(113, 26, '_slider__slide_2_slider_head', 'field_5eb9ae3fbd750'),
(114, 26, 'slider__slide_2_slider_text', 'sdfsdfsdfsesef d s'),
(115, 26, '_slider__slide_2_slider_text', 'field_5eb9ae8fbd751'),
(116, 31, '_wp_attached_file', '2020/05/work1.png'),
(117, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:350;s:4:\"file\";s:17:\"2020/05/work1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"work1-300x292.png\";s:5:\"width\";i:300;s:6:\"height\";i:292;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"work1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 31, '_wp_attachment_image_alt', 'work1'),
(119, 32, '_wp_attached_file', '2020/05/work3.png'),
(120, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:450;s:4:\"file\";s:17:\"2020/05/work3.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"work3-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"work3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 33, '_wp_attached_file', '2020/05/work2.png'),
(122, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:250;s:4:\"file\";s:17:\"2020/05/work2.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"work2-300x208.png\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"work2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 34, '_wp_attached_file', '2020/05/work4.png'),
(124, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:250;s:4:\"file\";s:17:\"2020/05/work4.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"work4-300x208.png\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"work4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 35, '_wp_attached_file', '2020/05/work5.png'),
(126, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:352;s:4:\"file\";s:17:\"2020/05/work5.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"work5-300x293.png\";s:5:\"width\";i:300;s:6:\"height\";i:293;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"work5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 36, '_wp_attached_file', '2020/05/work6.png'),
(128, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:250;s:4:\"file\";s:17:\"2020/05/work6.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"work6-300x208.png\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"work6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 37, '_wp_attached_file', '2020/05/work7.png'),
(130, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:350;s:4:\"file\";s:17:\"2020/05/work7.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"work7-300x292.png\";s:5:\"width\";i:300;s:6:\"height\";i:292;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"work7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 38, '_wp_attached_file', '2020/05/work8.png'),
(132, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:450;s:4:\"file\";s:17:\"2020/05/work8.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"work8-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"work8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 39, '_wp_attached_file', '2020/05/work9.png'),
(134, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:250;s:4:\"file\";s:17:\"2020/05/work9.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"work9-300x208.png\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"work9-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 40, '_wp_attached_file', '2020/05/work10.png'),
(136, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:350;s:4:\"file\";s:18:\"2020/05/work10.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"work10-300x292.png\";s:5:\"width\";i:300;s:6:\"height\";i:292;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"work10-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 33, '_wp_attachment_image_alt', 'work2'),
(138, 32, '_wp_attachment_image_alt', 'work3'),
(139, 34, '_wp_attachment_image_alt', 'work4'),
(140, 11, 'work__item_0_works_pic', '31'),
(141, 11, '_work__item_0_works_pic', 'field_5eb9c493932d9'),
(142, 11, 'work__item_0_overlay', '+'),
(143, 11, '_work__item_0_overlay', 'field_5eb9c4c2932da'),
(144, 11, 'work__item_0_data-category', 'logo'),
(145, 11, '_work__item_0_data-category', 'field_5eb9c500932db'),
(146, 11, 'work__item_1_works_pic', '33'),
(147, 11, '_work__item_1_works_pic', 'field_5eb9c493932d9'),
(148, 11, 'work__item_1_overlay', '++'),
(149, 11, '_work__item_1_overlay', 'field_5eb9c4c2932da'),
(150, 11, 'work__item_1_data-category', 'wordpress'),
(151, 11, '_work__item_1_data-category', 'field_5eb9c500932db'),
(152, 11, 'work__item_2_works_pic', '32'),
(153, 11, '_work__item_2_works_pic', 'field_5eb9c493932d9'),
(154, 11, 'work__item_2_overlay', '+++'),
(155, 11, '_work__item_2_overlay', 'field_5eb9c4c2932da'),
(156, 11, 'work__item_2_data-category', 'web design'),
(157, 11, '_work__item_2_data-category', 'field_5eb9c500932db'),
(158, 11, 'work__item_3_works_pic', '34'),
(159, 11, '_work__item_3_works_pic', 'field_5eb9c493932d9'),
(160, 11, 'work__item_3_overlay', '+_+'),
(161, 11, '_work__item_3_overlay', 'field_5eb9c4c2932da'),
(162, 11, 'work__item_3_data-category', 'logo'),
(163, 11, '_work__item_3_data-category', 'field_5eb9c500932db'),
(164, 11, 'work__item', '4'),
(165, 11, '_work__item', 'field_5eb9c41c932d8'),
(166, 41, 'slider__slide_0_slider__img', '21'),
(167, 41, '_slider__slide_0_slider__img', 'field_5eb9ad58bd74f'),
(168, 41, 'slider__slide_0_slider_head', 'Lian Creative Agency'),
(169, 41, '_slider__slide_0_slider_head', 'field_5eb9ae3fbd750'),
(170, 41, 'slider__slide_0_slider_text', 'Minimal Freelance Portfolio'),
(171, 41, '_slider__slide_0_slider_text', 'field_5eb9ae8fbd751'),
(172, 41, 'slider__slide_1_slider__img', '22'),
(173, 41, '_slider__slide_1_slider__img', 'field_5eb9ad58bd74f'),
(174, 41, 'slider__slide_1_slider_head', 'Design & Branding'),
(175, 41, '_slider__slide_1_slider_head', 'field_5eb9ae3fbd750'),
(176, 41, 'slider__slide_1_slider_text', 'We Deliver Quality Results'),
(177, 41, '_slider__slide_1_slider_text', 'field_5eb9ae8fbd751'),
(178, 41, 'slider__slide', '3'),
(179, 41, '_slider__slide', 'field_5eb9ad0ebd74e'),
(180, 41, 'slider__slide_2_slider__img', '25'),
(181, 41, '_slider__slide_2_slider__img', 'field_5eb9ad58bd74f'),
(182, 41, 'slider__slide_2_slider_head', 'dsfsdfsdfsdfs'),
(183, 41, '_slider__slide_2_slider_head', 'field_5eb9ae3fbd750'),
(184, 41, 'slider__slide_2_slider_text', 'sdfsdfsdfsesef d s'),
(185, 41, '_slider__slide_2_slider_text', 'field_5eb9ae8fbd751'),
(186, 41, 'work__item_0_works_pic', '31'),
(187, 41, '_work__item_0_works_pic', 'field_5eb9c493932d9'),
(188, 41, 'work__item_0_overlay', '+'),
(189, 41, '_work__item_0_overlay', 'field_5eb9c4c2932da'),
(190, 41, 'work__item_0_data-category', 'logo'),
(191, 41, '_work__item_0_data-category', 'field_5eb9c500932db'),
(192, 41, 'work__item_1_works_pic', '33'),
(193, 41, '_work__item_1_works_pic', 'field_5eb9c493932d9'),
(194, 41, 'work__item_1_overlay', '++'),
(195, 41, '_work__item_1_overlay', 'field_5eb9c4c2932da'),
(196, 41, 'work__item_1_data-category', 'wordpress'),
(197, 41, '_work__item_1_data-category', 'field_5eb9c500932db'),
(198, 41, 'work__item_2_works_pic', '32'),
(199, 41, '_work__item_2_works_pic', 'field_5eb9c493932d9'),
(200, 41, 'work__item_2_overlay', '+++'),
(201, 41, '_work__item_2_overlay', 'field_5eb9c4c2932da'),
(202, 41, 'work__item_2_data-category', 'web design'),
(203, 41, '_work__item_2_data-category', 'field_5eb9c500932db'),
(204, 41, 'work__item_3_works_pic', '34'),
(205, 41, '_work__item_3_works_pic', 'field_5eb9c493932d9'),
(206, 41, 'work__item_3_overlay', '+_+'),
(207, 41, '_work__item_3_overlay', 'field_5eb9c4c2932da'),
(208, 41, 'work__item_3_data-category', 'logo'),
(209, 41, '_work__item_3_data-category', 'field_5eb9c500932db'),
(210, 41, 'work__item', '4'),
(211, 41, '_work__item', 'field_5eb9c41c932d8'),
(212, 11, 'works_cat_0_work_cat', 'All'),
(213, 11, '_works_cat_0_work_cat', 'field_5eb9cec6d0f7d'),
(214, 11, 'works_cat_1_work_cat', 'Logo'),
(215, 11, '_works_cat_1_work_cat', 'field_5eb9cec6d0f7d'),
(216, 11, 'works_cat_2_work_cat', 'Web Design'),
(217, 11, '_works_cat_2_work_cat', 'field_5eb9cec6d0f7d'),
(218, 11, 'works_cat_3_work_cat', 'WordPress'),
(219, 11, '_works_cat_3_work_cat', 'field_5eb9cec6d0f7d'),
(220, 11, 'works_cat', '4'),
(221, 11, '_works_cat', 'field_5eb9cea0d0f7c'),
(222, 44, 'slider__slide_0_slider__img', '21'),
(223, 44, '_slider__slide_0_slider__img', 'field_5eb9ad58bd74f'),
(224, 44, 'slider__slide_0_slider_head', 'Lian Creative Agency'),
(225, 44, '_slider__slide_0_slider_head', 'field_5eb9ae3fbd750'),
(226, 44, 'slider__slide_0_slider_text', 'Minimal Freelance Portfolio'),
(227, 44, '_slider__slide_0_slider_text', 'field_5eb9ae8fbd751'),
(228, 44, 'slider__slide_1_slider__img', '22'),
(229, 44, '_slider__slide_1_slider__img', 'field_5eb9ad58bd74f'),
(230, 44, 'slider__slide_1_slider_head', 'Design & Branding'),
(231, 44, '_slider__slide_1_slider_head', 'field_5eb9ae3fbd750'),
(232, 44, 'slider__slide_1_slider_text', 'We Deliver Quality Results'),
(233, 44, '_slider__slide_1_slider_text', 'field_5eb9ae8fbd751'),
(234, 44, 'slider__slide', '3'),
(235, 44, '_slider__slide', 'field_5eb9ad0ebd74e'),
(236, 44, 'slider__slide_2_slider__img', '25'),
(237, 44, '_slider__slide_2_slider__img', 'field_5eb9ad58bd74f'),
(238, 44, 'slider__slide_2_slider_head', 'dsfsdfsdfsdfs'),
(239, 44, '_slider__slide_2_slider_head', 'field_5eb9ae3fbd750'),
(240, 44, 'slider__slide_2_slider_text', 'sdfsdfsdfsesef d s'),
(241, 44, '_slider__slide_2_slider_text', 'field_5eb9ae8fbd751'),
(242, 44, 'work__item_0_works_pic', '31'),
(243, 44, '_work__item_0_works_pic', 'field_5eb9c493932d9'),
(244, 44, 'work__item_0_overlay', '+'),
(245, 44, '_work__item_0_overlay', 'field_5eb9c4c2932da'),
(246, 44, 'work__item_0_data-category', 'logo'),
(247, 44, '_work__item_0_data-category', 'field_5eb9c500932db'),
(248, 44, 'work__item_1_works_pic', '33'),
(249, 44, '_work__item_1_works_pic', 'field_5eb9c493932d9'),
(250, 44, 'work__item_1_overlay', '++'),
(251, 44, '_work__item_1_overlay', 'field_5eb9c4c2932da'),
(252, 44, 'work__item_1_data-category', 'wordpress'),
(253, 44, '_work__item_1_data-category', 'field_5eb9c500932db'),
(254, 44, 'work__item_2_works_pic', '32'),
(255, 44, '_work__item_2_works_pic', 'field_5eb9c493932d9'),
(256, 44, 'work__item_2_overlay', '+++'),
(257, 44, '_work__item_2_overlay', 'field_5eb9c4c2932da'),
(258, 44, 'work__item_2_data-category', 'web design'),
(259, 44, '_work__item_2_data-category', 'field_5eb9c500932db'),
(260, 44, 'work__item_3_works_pic', '34'),
(261, 44, '_work__item_3_works_pic', 'field_5eb9c493932d9'),
(262, 44, 'work__item_3_overlay', '+_+'),
(263, 44, '_work__item_3_overlay', 'field_5eb9c4c2932da'),
(264, 44, 'work__item_3_data-category', 'logo'),
(265, 44, '_work__item_3_data-category', 'field_5eb9c500932db'),
(266, 44, 'work__item', '4'),
(267, 44, '_work__item', 'field_5eb9c41c932d8'),
(268, 44, 'works_cat_0_work_cat', 'All'),
(269, 44, '_works_cat_0_work_cat', 'field_5eb9cec6d0f7d'),
(270, 44, 'works_cat_1_work_cat', 'Logo'),
(271, 44, '_works_cat_1_work_cat', 'field_5eb9cec6d0f7d'),
(272, 44, 'works_cat_2_work_cat', 'Web Design'),
(273, 44, '_works_cat_2_work_cat', 'field_5eb9cec6d0f7d'),
(274, 44, 'works_cat_3_work_cat', 'WordPress'),
(275, 44, '_works_cat_3_work_cat', 'field_5eb9cec6d0f7d'),
(276, 44, 'works_cat', '4'),
(277, 44, '_works_cat', 'field_5eb9cea0d0f7c'),
(280, 46, '_edit_last', '1'),
(281, 46, '_edit_lock', '1589315376:1'),
(282, 47, '_edit_last', '1'),
(283, 47, '_wp_page_template', 'page-contact.php'),
(284, 47, '_edit_lock', '1589408490:1'),
(285, 46, '_wp_trash_meta_status', 'draft'),
(286, 46, '_wp_trash_meta_time', '1589315549'),
(287, 46, '_wp_desired_post_slug', ''),
(288, 50, '_menu_item_type', 'post_type'),
(289, 50, '_menu_item_menu_item_parent', '0'),
(290, 50, '_menu_item_object_id', '47'),
(291, 50, '_menu_item_object', 'page'),
(292, 50, '_menu_item_target', ''),
(293, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(294, 50, '_menu_item_xfn', ''),
(295, 50, '_menu_item_url', ''),
(297, 51, '_edit_last', '1'),
(298, 51, '_edit_lock', '1589406975:1'),
(299, 47, 'office_hours', 'Mon-Friday 8am - 10pm'),
(300, 47, '_office_hours', 'field_5ebb22fb5cdaf'),
(301, 47, 'office_adress', 'gbalangao, Bugasong, Antique'),
(302, 47, '_office_adress', 'field_5ebb23205cdb0'),
(303, 47, 'office_tel', '123-456-7890'),
(304, 47, '_office_tel', 'field_5ebb23315cdb1'),
(305, 47, 'office_fax', '123-456-7899'),
(306, 47, '_office_fax', 'field_5ebb233f5cdb2'),
(307, 56, 'office_hours', 'Mon-Friday 8am - 10pm'),
(308, 56, '_office_hours', 'field_5ebb22fb5cdaf'),
(309, 56, 'office_adress', 'gbalangao, Bugasong, Antique'),
(310, 56, '_office_adress', 'field_5ebb23205cdb0'),
(311, 56, 'office_tel', '123-456-7890'),
(312, 56, '_office_tel', 'field_5ebb23315cdb1'),
(313, 56, 'office_fax', '123-456-7899'),
(314, 56, '_office_fax', 'field_5ebb233f5cdb2'),
(315, 47, 'values_title', 'Our Values'),
(316, 47, '_values_title', 'field_5ebc5792db30a'),
(317, 47, 'values_test', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.'),
(318, 47, '_values_test', 'field_5ebc57a8db30b'),
(319, 61, 'office_hours', 'Mon-Friday 8am - 10pm'),
(320, 61, '_office_hours', 'field_5ebb22fb5cdaf'),
(321, 61, 'office_adress', 'gbalangao, Bugasong, Antique'),
(322, 61, '_office_adress', 'field_5ebb23205cdb0'),
(323, 61, 'office_tel', '123-456-7890'),
(324, 61, '_office_tel', 'field_5ebb23315cdb1'),
(325, 61, 'office_fax', '123-456-7899'),
(326, 61, '_office_fax', 'field_5ebb233f5cdb2'),
(327, 61, 'values_title', 'Our Values ha-ha-ha'),
(328, 61, '_values_title', 'field_5ebc5792db30a'),
(329, 61, 'values_test', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.'),
(330, 61, '_values_test', 'field_5ebc57a8db30b'),
(331, 62, 'office_hours', 'Mon-Friday 8am - 10pm'),
(332, 62, '_office_hours', 'field_5ebb22fb5cdaf'),
(333, 62, 'office_adress', 'gbalangao, Bugasong, Antique'),
(334, 62, '_office_adress', 'field_5ebb23205cdb0'),
(335, 62, 'office_tel', '123-456-7890'),
(336, 62, '_office_tel', 'field_5ebb23315cdb1'),
(337, 62, 'office_fax', '123-456-7899'),
(338, 62, '_office_fax', 'field_5ebb233f5cdb2'),
(339, 62, 'values_title', 'Our Values'),
(340, 62, '_values_title', 'field_5ebc5792db30a'),
(341, 62, 'values_test', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.'),
(342, 62, '_values_test', 'field_5ebc57a8db30b'),
(343, 70, '_wp_attached_file', '2020/05/contact_val1.png'),
(344, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:354;s:6:\"height\";i:248;s:4:\"file\";s:24:\"2020/05/contact_val1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"contact_val1-300x210.png\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"contact_val1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(345, 71, '_wp_attached_file', '2020/05/contact_val2.png'),
(346, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:354;s:6:\"height\";i:248;s:4:\"file\";s:24:\"2020/05/contact_val2.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"contact_val2-300x210.png\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"contact_val2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(347, 72, '_wp_attached_file', '2020/05/contact_val3.png'),
(348, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:354;s:6:\"height\";i:248;s:4:\"file\";s:24:\"2020/05/contact_val3.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"contact_val3-300x210.png\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"contact_val3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(349, 47, 'values_item_0_values_img', '70'),
(350, 47, '_values_item_0_values_img', 'field_5ebc5f00eb742'),
(351, 47, 'values_item_0_values_text_h6', 'Who We Are'),
(352, 47, '_values_item_0_values_text_h6', 'field_5ebc5f0deb743'),
(353, 47, 'values_item_0_values_text_p', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam.'),
(354, 47, '_values_item_0_values_text_p', 'field_5ebc5f1eeb744'),
(355, 47, 'values_item_1_values_img', '71'),
(356, 47, '_values_item_1_values_img', 'field_5ebc5f00eb742'),
(357, 47, 'values_item_1_values_text_h6', 'Our Vision'),
(358, 47, '_values_item_1_values_text_h6', 'field_5ebc5f0deb743'),
(359, 47, 'values_item_1_values_text_p', 'Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me.'),
(360, 47, '_values_item_1_values_text_p', 'field_5ebc5f1eeb744'),
(361, 47, 'values_item_2_values_img', '72'),
(362, 47, '_values_item_2_values_img', 'field_5ebc5f00eb742'),
(363, 47, 'values_item_2_values_text_h6', 'Our Mission'),
(364, 47, '_values_item_2_values_text_h6', 'field_5ebc5f0deb743'),
(365, 47, 'values_item_2_values_text_p', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan.'),
(366, 47, '_values_item_2_values_text_p', 'field_5ebc5f1eeb744'),
(367, 47, 'values_item', '3'),
(368, 47, '_values_item', 'field_5ebc5ee4eb741'),
(369, 73, 'office_hours', 'Mon-Friday 8am - 10pm'),
(370, 73, '_office_hours', 'field_5ebb22fb5cdaf'),
(371, 73, 'office_adress', 'gbalangao, Bugasong, Antique'),
(372, 73, '_office_adress', 'field_5ebb23205cdb0'),
(373, 73, 'office_tel', '123-456-7890'),
(374, 73, '_office_tel', 'field_5ebb23315cdb1'),
(375, 73, 'office_fax', '123-456-7899'),
(376, 73, '_office_fax', 'field_5ebb233f5cdb2'),
(377, 73, 'values_title', 'Our Values'),
(378, 73, '_values_title', 'field_5ebc5792db30a'),
(379, 73, 'values_test', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.'),
(380, 73, '_values_test', 'field_5ebc57a8db30b'),
(381, 73, 'values_item_0_values_img', '70'),
(382, 73, '_values_item_0_values_img', 'field_5ebc5f00eb742'),
(383, 73, 'values_item_0_values_text_h6', 'Who We Are'),
(384, 73, '_values_item_0_values_text_h6', 'field_5ebc5f0deb743'),
(385, 73, 'values_item_0_values_text_p', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam.'),
(386, 73, '_values_item_0_values_text_p', 'field_5ebc5f1eeb744'),
(387, 73, 'values_item_1_values_img', '71'),
(388, 73, '_values_item_1_values_img', 'field_5ebc5f00eb742'),
(389, 73, 'values_item_1_values_text_h6', 'Our Vision'),
(390, 73, '_values_item_1_values_text_h6', 'field_5ebc5f0deb743'),
(391, 73, 'values_item_1_values_text_p', 'Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me.'),
(392, 73, '_values_item_1_values_text_p', 'field_5ebc5f1eeb744'),
(393, 73, 'values_item_2_values_img', '72'),
(394, 73, '_values_item_2_values_img', 'field_5ebc5f00eb742'),
(395, 73, 'values_item_2_values_text_h6', 'Our Mission'),
(396, 73, '_values_item_2_values_text_h6', 'field_5ebc5f0deb743'),
(397, 73, 'values_item_2_values_text_p', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan.'),
(398, 73, '_values_item_2_values_text_p', 'field_5ebc5f1eeb744'),
(399, 73, 'values_item', '3'),
(400, 73, '_values_item', 'field_5ebc5ee4eb741'),
(401, 70, '_wp_attachment_image_alt', 'contact_val1'),
(402, 71, '_wp_attachment_image_alt', 'contact_val2'),
(403, 72, '_wp_attachment_image_alt', 'contact_val3'),
(404, 74, 'office_hours', 'Mon-Friday 8am - 10pm'),
(405, 74, '_office_hours', 'field_5ebb22fb5cdaf'),
(406, 74, 'office_adress', 'gbalangao, Bugasong, Antique'),
(407, 74, '_office_adress', 'field_5ebb23205cdb0'),
(408, 74, 'office_tel', '123-456-7890'),
(409, 74, '_office_tel', 'field_5ebb23315cdb1'),
(410, 74, 'office_fax', '123-456-7899'),
(411, 74, '_office_fax', 'field_5ebb233f5cdb2'),
(412, 74, 'values_title', 'Our Values'),
(413, 74, '_values_title', 'field_5ebc5792db30a'),
(414, 74, 'values_test', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.'),
(415, 74, '_values_test', 'field_5ebc57a8db30b'),
(416, 74, 'values_item_0_values_img', '70'),
(417, 74, '_values_item_0_values_img', 'field_5ebc5f00eb742'),
(418, 74, 'values_item_0_values_text_h6', 'Who We Are 111'),
(419, 74, '_values_item_0_values_text_h6', 'field_5ebc5f0deb743'),
(420, 74, 'values_item_0_values_text_p', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam.'),
(421, 74, '_values_item_0_values_text_p', 'field_5ebc5f1eeb744'),
(422, 74, 'values_item_1_values_img', '71'),
(423, 74, '_values_item_1_values_img', 'field_5ebc5f00eb742'),
(424, 74, 'values_item_1_values_text_h6', 'Our Vision 222'),
(425, 74, '_values_item_1_values_text_h6', 'field_5ebc5f0deb743'),
(426, 74, 'values_item_1_values_text_p', 'Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me.'),
(427, 74, '_values_item_1_values_text_p', 'field_5ebc5f1eeb744'),
(428, 74, 'values_item_2_values_img', '72'),
(429, 74, '_values_item_2_values_img', 'field_5ebc5f00eb742'),
(430, 74, 'values_item_2_values_text_h6', 'Our Mission 333'),
(431, 74, '_values_item_2_values_text_h6', 'field_5ebc5f0deb743'),
(432, 74, 'values_item_2_values_text_p', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan.'),
(433, 74, '_values_item_2_values_text_p', 'field_5ebc5f1eeb744'),
(434, 74, 'values_item', '3'),
(435, 74, '_values_item', 'field_5ebc5ee4eb741'),
(436, 39, '_wp_attachment_image_alt', 'work9'),
(443, 75, 'office_hours', 'Mon-Friday 8am - 10pm'),
(444, 75, '_office_hours', 'field_5ebb22fb5cdaf'),
(445, 75, 'office_adress', 'gbalangao, Bugasong, Antique'),
(446, 75, '_office_adress', 'field_5ebb23205cdb0'),
(447, 75, 'office_tel', '123-456-7890'),
(448, 75, '_office_tel', 'field_5ebb23315cdb1'),
(449, 75, 'office_fax', '123-456-7899'),
(450, 75, '_office_fax', 'field_5ebb233f5cdb2'),
(451, 75, 'values_title', 'Our Values'),
(452, 75, '_values_title', 'field_5ebc5792db30a'),
(453, 75, 'values_test', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.'),
(454, 75, '_values_test', 'field_5ebc57a8db30b'),
(455, 75, 'values_item_0_values_img', '70'),
(456, 75, '_values_item_0_values_img', 'field_5ebc5f00eb742'),
(457, 75, 'values_item_0_values_text_h6', 'Who We Are'),
(458, 75, '_values_item_0_values_text_h6', 'field_5ebc5f0deb743'),
(459, 75, 'values_item_0_values_text_p', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam.'),
(460, 75, '_values_item_0_values_text_p', 'field_5ebc5f1eeb744'),
(461, 75, 'values_item_1_values_img', '71'),
(462, 75, '_values_item_1_values_img', 'field_5ebc5f00eb742'),
(463, 75, 'values_item_1_values_text_h6', 'Our Vision'),
(464, 75, '_values_item_1_values_text_h6', 'field_5ebc5f0deb743'),
(465, 75, 'values_item_1_values_text_p', 'Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me.'),
(466, 75, '_values_item_1_values_text_p', 'field_5ebc5f1eeb744'),
(467, 75, 'values_item_2_values_img', '72'),
(468, 75, '_values_item_2_values_img', 'field_5ebc5f00eb742'),
(469, 75, 'values_item_2_values_text_h6', 'Our Mission'),
(470, 75, '_values_item_2_values_text_h6', 'field_5ebc5f0deb743'),
(471, 75, 'values_item_2_values_text_p', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan.'),
(472, 75, '_values_item_2_values_text_p', 'field_5ebc5f1eeb744'),
(473, 75, 'values_item', '4'),
(474, 75, '_values_item', 'field_5ebc5ee4eb741'),
(475, 75, 'values_item_3_values_img', '39'),
(476, 75, '_values_item_3_values_img', 'field_5ebc5f00eb742'),
(477, 75, 'values_item_3_values_text_h6', 'Our Pic'),
(478, 75, '_values_item_3_values_text_h6', 'field_5ebc5f0deb743'),
(479, 75, 'values_item_3_values_text_p', 'asaSfasdvasdvsadvsdvsadvsaDVsasdvsvsd'),
(480, 75, '_values_item_3_values_text_p', 'field_5ebc5f1eeb744'),
(481, 76, 'office_hours', 'Mon-Friday 8am - 10pm'),
(482, 76, '_office_hours', 'field_5ebb22fb5cdaf'),
(483, 76, 'office_adress', 'gbalangao, Bugasong, Antique'),
(484, 76, '_office_adress', 'field_5ebb23205cdb0'),
(485, 76, 'office_tel', '123-456-7890'),
(486, 76, '_office_tel', 'field_5ebb23315cdb1'),
(487, 76, 'office_fax', '123-456-7899'),
(488, 76, '_office_fax', 'field_5ebb233f5cdb2'),
(489, 76, 'values_title', 'Our Values'),
(490, 76, '_values_title', 'field_5ebc5792db30a'),
(491, 76, 'values_test', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.'),
(492, 76, '_values_test', 'field_5ebc57a8db30b'),
(493, 76, 'values_item_0_values_img', '70'),
(494, 76, '_values_item_0_values_img', 'field_5ebc5f00eb742'),
(495, 76, 'values_item_0_values_text_h6', 'Who We Are'),
(496, 76, '_values_item_0_values_text_h6', 'field_5ebc5f0deb743'),
(497, 76, 'values_item_0_values_text_p', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam.'),
(498, 76, '_values_item_0_values_text_p', 'field_5ebc5f1eeb744'),
(499, 76, 'values_item_1_values_img', '71'),
(500, 76, '_values_item_1_values_img', 'field_5ebc5f00eb742'),
(501, 76, 'values_item_1_values_text_h6', 'Our Vision'),
(502, 76, '_values_item_1_values_text_h6', 'field_5ebc5f0deb743'),
(503, 76, 'values_item_1_values_text_p', 'Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me.'),
(504, 76, '_values_item_1_values_text_p', 'field_5ebc5f1eeb744'),
(505, 76, 'values_item_2_values_img', '72'),
(506, 76, '_values_item_2_values_img', 'field_5ebc5f00eb742'),
(507, 76, 'values_item_2_values_text_h6', 'Our Mission'),
(508, 76, '_values_item_2_values_text_h6', 'field_5ebc5f0deb743'),
(509, 76, 'values_item_2_values_text_p', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan.'),
(510, 76, '_values_item_2_values_text_p', 'field_5ebc5f1eeb744'),
(511, 76, 'values_item', '3'),
(512, 76, '_values_item', 'field_5ebc5ee4eb741'),
(513, 77, '_edit_last', '1'),
(514, 77, '_edit_lock', '1589411091:1'),
(515, 5, 'our_story_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.\r\n\r\nNam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. '),
(516, 5, '_our_story_text', 'field_5ebc71cb1b0fb'),
(517, 80, 'our_story_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.\r\nNam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in\r\niis qui facit eorum claritatem.'),
(518, 80, '_our_story_text', 'field_5ebc71cb1b0fb'),
(519, 81, 'our_story_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.\r\nNam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in\r\niis qui facit eorum claritatem.\r\nsfvszddsbdzbbxdbxxbcv bxcv  ffdxfgdxgfdfxfgdxgf'),
(520, 81, '_our_story_text', 'field_5ebc71cb1b0fb'),
(521, 82, 'our_story_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.\r\nNam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. \r\nsfvszddsbdzbbxdbxxbcv bxcv  ffdxfgdxgfdfxfgdxgf'),
(522, 82, '_our_story_text', 'field_5ebc71cb1b0fb'),
(523, 83, 'our_story_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.\r\n\r\nNam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. \r\n\r\nsfvszddsbdzbbxdbxxbcv bxcv  ffdxfgdxgfdfxfgdxgf'),
(524, 83, '_our_story_text', 'field_5ebc71cb1b0fb'),
(525, 84, 'our_story_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.\r\n\r\nNam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. '),
(526, 84, '_our_story_text', 'field_5ebc71cb1b0fb'),
(527, 5, 'team_title', 'Awesome Team'),
(528, 5, '_team_title', 'field_5ebc753c0b84a'),
(529, 5, 'team_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.'),
(530, 5, '_team_text', 'field_5ebc754c0b84b'),
(531, 87, 'our_story_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.\r\n\r\nNam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. '),
(532, 87, '_our_story_text', 'field_5ebc71cb1b0fb'),
(533, 87, 'team_title', 'Awesome Team'),
(534, 87, '_team_title', 'field_5ebc753c0b84a'),
(535, 87, 'team_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.'),
(536, 87, '_team_text', 'field_5ebc754c0b84b'),
(537, 88, 'our_story_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.\r\n\r\nNam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. '),
(538, 88, '_our_story_text', 'field_5ebc71cb1b0fb'),
(539, 88, 'team_title', 'Awesome Team ha-ha-ha'),
(540, 88, '_team_title', 'field_5ebc753c0b84a'),
(541, 88, 'team_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.'),
(542, 88, '_team_text', 'field_5ebc754c0b84b'),
(543, 89, 'our_story_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.\r\n\r\nNam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. '),
(544, 89, '_our_story_text', 'field_5ebc71cb1b0fb'),
(545, 89, 'team_title', 'Awesome Team'),
(546, 89, '_team_title', 'field_5ebc753c0b84a'),
(547, 89, 'team_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.'),
(548, 89, '_team_text', 'field_5ebc754c0b84b'),
(549, 95, '_wp_attached_file', '2020/05/about_team1.png'),
(550, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:358;s:6:\"height\";i:438;s:4:\"file\";s:23:\"2020/05/about_team1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"about_team1-245x300.png\";s:5:\"width\";i:245;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"about_team1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(551, 96, '_wp_attached_file', '2020/05/about_team2.png');
INSERT INTO `wdsfsdfsdsdfsdfp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(552, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:358;s:6:\"height\";i:438;s:4:\"file\";s:23:\"2020/05/about_team2.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"about_team2-245x300.png\";s:5:\"width\";i:245;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"about_team2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(553, 97, '_wp_attached_file', '2020/05/about_team3.png'),
(554, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:358;s:6:\"height\";i:438;s:4:\"file\";s:23:\"2020/05/about_team3.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"about_team3-245x300.png\";s:5:\"width\";i:245;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"about_team3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(555, 95, '_wp_attachment_image_alt', 'about_team1'),
(556, 96, '_wp_attachment_image_alt', 'about_team2'),
(557, 97, '_wp_attachment_image_alt', 'about_team3'),
(558, 5, 'team_item_0_team_img', '95'),
(559, 5, '_team_item_0_team_img', 'field_5ebc76214a09c'),
(560, 5, 'team_item_0_team_name', 'Lian Joy'),
(561, 5, '_team_item_0_team_name', 'field_5ebc763f4a09d'),
(562, 5, 'team_item_0_team_post', 'CEO/Founder'),
(563, 5, '_team_item_0_team_post', 'field_5ebc764e4a09e'),
(564, 5, 'team_item_0_team_descr', 'Lorem ipsum dolor sit amet, conse ctetuer adipi scing elit, sed diam nonu mmy nibh euis mod tinci'),
(565, 5, '_team_item_0_team_descr', 'field_5ebc769d4a09f'),
(566, 5, 'team_item_1_team_img', '96'),
(567, 5, '_team_item_1_team_img', 'field_5ebc76214a09c'),
(568, 5, 'team_item_1_team_name', 'Albert Thanh'),
(569, 5, '_team_item_1_team_name', 'field_5ebc763f4a09d'),
(570, 5, 'team_item_1_team_post', 'CEO/Founder'),
(571, 5, '_team_item_1_team_post', 'field_5ebc764e4a09e'),
(572, 5, 'team_item_1_team_descr', 'Lorem ipsum dolor sit amet, conse ctetuer adipi scing elit, sed diam nonu mmy nibh euis mod tinci'),
(573, 5, '_team_item_1_team_descr', 'field_5ebc769d4a09f'),
(574, 5, 'team_item_2_team_img', '97'),
(575, 5, '_team_item_2_team_img', 'field_5ebc76214a09c'),
(576, 5, 'team_item_2_team_name', 'Jenn Pereira'),
(577, 5, '_team_item_2_team_name', 'field_5ebc763f4a09d'),
(578, 5, 'team_item_2_team_post', 'CEO/Founder'),
(579, 5, '_team_item_2_team_post', 'field_5ebc764e4a09e'),
(580, 5, 'team_item_2_team_descr', 'Lorem ipsum dolor sit amet, conse ctetuer adipi scing elit, sed diam nonu mmy nibh euis mod tinci'),
(581, 5, '_team_item_2_team_descr', 'field_5ebc769d4a09f'),
(582, 5, 'team_item', '3'),
(583, 5, '_team_item', 'field_5ebc76044a09b'),
(584, 98, 'our_story_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.\r\n\r\nNam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. '),
(585, 98, '_our_story_text', 'field_5ebc71cb1b0fb'),
(586, 98, 'team_title', 'Awesome Team'),
(587, 98, '_team_title', 'field_5ebc753c0b84a'),
(588, 98, 'team_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.'),
(589, 98, '_team_text', 'field_5ebc754c0b84b'),
(590, 98, 'team_item_0_team_img', '95'),
(591, 98, '_team_item_0_team_img', 'field_5ebc76214a09c'),
(592, 98, 'team_item_0_team_name', 'Lian Joy'),
(593, 98, '_team_item_0_team_name', 'field_5ebc763f4a09d'),
(594, 98, 'team_item_0_team_post', 'CEO/Founder'),
(595, 98, '_team_item_0_team_post', 'field_5ebc764e4a09e'),
(596, 98, 'team_item_0_team_descr', 'Lorem ipsum dolor sit amet, conse ctetuer adipi scing elit, sed diam nonu mmy nibh euis mod tinci'),
(597, 98, '_team_item_0_team_descr', 'field_5ebc769d4a09f'),
(598, 98, 'team_item_1_team_img', '96'),
(599, 98, '_team_item_1_team_img', 'field_5ebc76214a09c'),
(600, 98, 'team_item_1_team_name', 'Albert Thanh'),
(601, 98, '_team_item_1_team_name', 'field_5ebc763f4a09d'),
(602, 98, 'team_item_1_team_post', 'CEO/Founder'),
(603, 98, '_team_item_1_team_post', 'field_5ebc764e4a09e'),
(604, 98, 'team_item_1_team_descr', 'Lorem ipsum dolor sit amet, conse ctetuer adipi scing elit, sed diam nonu mmy nibh euis mod tinci'),
(605, 98, '_team_item_1_team_descr', 'field_5ebc769d4a09f'),
(606, 98, 'team_item_2_team_img', '97'),
(607, 98, '_team_item_2_team_img', 'field_5ebc76214a09c'),
(608, 98, 'team_item_2_team_name', 'Jenn Pereira'),
(609, 98, '_team_item_2_team_name', 'field_5ebc763f4a09d'),
(610, 98, 'team_item_2_team_post', 'CEO/Founder'),
(611, 98, '_team_item_2_team_post', 'field_5ebc764e4a09e'),
(612, 98, 'team_item_2_team_descr', 'Lorem ipsum dolor sit amet, conse ctetuer adipi scing elit, sed diam nonu mmy nibh euis mod tinci'),
(613, 98, '_team_item_2_team_descr', 'field_5ebc769d4a09f'),
(614, 98, 'team_item', '3'),
(615, 98, '_team_item', 'field_5ebc76044a09b'),
(616, 99, 'our_story_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.\r\n\r\nNam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. '),
(617, 99, '_our_story_text', 'field_5ebc71cb1b0fb'),
(618, 99, 'team_title', 'Awesome Team'),
(619, 99, '_team_title', 'field_5ebc753c0b84a'),
(620, 99, 'team_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.'),
(621, 99, '_team_text', 'field_5ebc754c0b84b'),
(622, 99, 'team_item_0_team_img', '95'),
(623, 99, '_team_item_0_team_img', 'field_5ebc76214a09c'),
(624, 99, 'team_item_0_team_name', 'Lian Joy 111'),
(625, 99, '_team_item_0_team_name', 'field_5ebc763f4a09d'),
(626, 99, 'team_item_0_team_post', 'CEO/Founder'),
(627, 99, '_team_item_0_team_post', 'field_5ebc764e4a09e'),
(628, 99, 'team_item_0_team_descr', 'Lorem ipsum dolor sit amet, conse ctetuer adipi scing elit, sed diam nonu mmy nibh euis mod tinci'),
(629, 99, '_team_item_0_team_descr', 'field_5ebc769d4a09f'),
(630, 99, 'team_item_1_team_img', '96'),
(631, 99, '_team_item_1_team_img', 'field_5ebc76214a09c'),
(632, 99, 'team_item_1_team_name', 'Albert Thanh 222'),
(633, 99, '_team_item_1_team_name', 'field_5ebc763f4a09d'),
(634, 99, 'team_item_1_team_post', 'CEO/Founder'),
(635, 99, '_team_item_1_team_post', 'field_5ebc764e4a09e'),
(636, 99, 'team_item_1_team_descr', 'Lorem ipsum dolor sit amet, conse ctetuer adipi scing elit, sed diam nonu mmy nibh euis mod tinci'),
(637, 99, '_team_item_1_team_descr', 'field_5ebc769d4a09f'),
(638, 99, 'team_item_2_team_img', '97'),
(639, 99, '_team_item_2_team_img', 'field_5ebc76214a09c'),
(640, 99, 'team_item_2_team_name', 'Jenn Pereira 333'),
(641, 99, '_team_item_2_team_name', 'field_5ebc763f4a09d'),
(642, 99, 'team_item_2_team_post', 'CEO/Founder'),
(643, 99, '_team_item_2_team_post', 'field_5ebc764e4a09e'),
(644, 99, 'team_item_2_team_descr', 'Lorem ipsum dolor sit amet, conse ctetuer adipi scing elit, sed diam nonu mmy nibh euis mod tinci'),
(645, 99, '_team_item_2_team_descr', 'field_5ebc769d4a09f'),
(646, 99, 'team_item', '3'),
(647, 99, '_team_item', 'field_5ebc76044a09b'),
(648, 100, 'our_story_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.\r\n\r\nNam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. '),
(649, 100, '_our_story_text', 'field_5ebc71cb1b0fb'),
(650, 100, 'team_title', 'Awesome Team'),
(651, 100, '_team_title', 'field_5ebc753c0b84a'),
(652, 100, 'team_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.'),
(653, 100, '_team_text', 'field_5ebc754c0b84b'),
(654, 100, 'team_item_0_team_img', '95'),
(655, 100, '_team_item_0_team_img', 'field_5ebc76214a09c'),
(656, 100, 'team_item_0_team_name', 'Lian Joy'),
(657, 100, '_team_item_0_team_name', 'field_5ebc763f4a09d'),
(658, 100, 'team_item_0_team_post', 'CEO/Founder'),
(659, 100, '_team_item_0_team_post', 'field_5ebc764e4a09e'),
(660, 100, 'team_item_0_team_descr', 'Lorem ipsum dolor sit amet, conse ctetuer adipi scing elit, sed diam nonu mmy nibh euis mod tinci'),
(661, 100, '_team_item_0_team_descr', 'field_5ebc769d4a09f'),
(662, 100, 'team_item_1_team_img', '96'),
(663, 100, '_team_item_1_team_img', 'field_5ebc76214a09c'),
(664, 100, 'team_item_1_team_name', 'Albert Thanh'),
(665, 100, '_team_item_1_team_name', 'field_5ebc763f4a09d'),
(666, 100, 'team_item_1_team_post', 'CEO/Founder'),
(667, 100, '_team_item_1_team_post', 'field_5ebc764e4a09e'),
(668, 100, 'team_item_1_team_descr', 'Lorem ipsum dolor sit amet, conse ctetuer adipi scing elit, sed diam nonu mmy nibh euis mod tinci'),
(669, 100, '_team_item_1_team_descr', 'field_5ebc769d4a09f'),
(670, 100, 'team_item_2_team_img', '97'),
(671, 100, '_team_item_2_team_img', 'field_5ebc76214a09c'),
(672, 100, 'team_item_2_team_name', 'Jenn Pereira'),
(673, 100, '_team_item_2_team_name', 'field_5ebc763f4a09d'),
(674, 100, 'team_item_2_team_post', 'CEO/Founder'),
(675, 100, '_team_item_2_team_post', 'field_5ebc764e4a09e'),
(676, 100, 'team_item_2_team_descr', 'Lorem ipsum dolor sit amet, conse ctetuer adipi scing elit, sed diam nonu mmy nibh euis mod tinci'),
(677, 100, '_team_item_2_team_descr', 'field_5ebc769d4a09f'),
(678, 100, 'team_item', '3'),
(679, 100, '_team_item', 'field_5ebc76044a09b'),
(680, 5, 'team_item_0_team_socials_link_facebook', 'https://www.facebook.com/'),
(681, 5, '_team_item_0_team_socials_link_facebook', 'field_5ebc79638bb51'),
(682, 5, 'team_item_0_team_socials_link_twitter', 'https://twitter.com/home'),
(683, 5, '_team_item_0_team_socials_link_twitter', 'field_5ebc7b198424d'),
(684, 5, 'team_item_0_team_socials_link_google', 'https://www.google.com'),
(685, 5, '_team_item_0_team_socials_link_google', 'field_5ebc7b2b8424e'),
(686, 5, 'team_item_0_team_socials_link_linkedin', 'https://www.linkedin.com/'),
(687, 5, '_team_item_0_team_socials_link_linkedin', 'field_5ebc7b388424f'),
(688, 5, 'team_item_0_team_socials', '4'),
(689, 5, '_team_item_0_team_socials', 'field_5ebc792e8bb50'),
(690, 5, 'team_item_1_team_socials_link_facebook', 'https://www.facebook.com/'),
(691, 5, '_team_item_1_team_socials_link_facebook', 'field_5ebc79638bb51'),
(692, 5, 'team_item_1_team_socials_link_twitter', 'https://twitter.com/home'),
(693, 5, '_team_item_1_team_socials_link_twitter', 'field_5ebc7b198424d'),
(694, 5, 'team_item_1_team_socials_link_google', 'https://www.google.com'),
(695, 5, '_team_item_1_team_socials_link_google', 'field_5ebc7b2b8424e'),
(696, 5, 'team_item_1_team_socials_link_linkedin', 'https://www.linkedin.com/'),
(697, 5, '_team_item_1_team_socials_link_linkedin', 'field_5ebc7b388424f'),
(698, 5, 'team_item_1_team_socials', '3'),
(699, 5, '_team_item_1_team_socials', 'field_5ebc792e8bb50'),
(700, 5, 'team_item_2_team_socials_link_facebook', 'https://www.facebook.com/'),
(701, 5, '_team_item_2_team_socials_link_facebook', 'field_5ebc79638bb51'),
(702, 5, 'team_item_2_team_socials_link_twitter', 'https://twitter.com/home'),
(703, 5, '_team_item_2_team_socials_link_twitter', 'field_5ebc7b198424d'),
(704, 5, 'team_item_2_team_socials_link_google', 'https://www.google.com'),
(705, 5, '_team_item_2_team_socials_link_google', 'field_5ebc7b2b8424e'),
(706, 5, 'team_item_2_team_socials_link_linkedin', 'https://www.linkedin.com/'),
(707, 5, '_team_item_2_team_socials_link_linkedin', 'field_5ebc7b388424f'),
(708, 5, 'team_item_2_team_socials', '2'),
(709, 5, '_team_item_2_team_socials', 'field_5ebc792e8bb50'),
(710, 110, 'our_story_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.\r\n\r\nNam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. '),
(711, 110, '_our_story_text', 'field_5ebc71cb1b0fb'),
(712, 110, 'team_title', 'Awesome Team'),
(713, 110, '_team_title', 'field_5ebc753c0b84a'),
(714, 110, 'team_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.'),
(715, 110, '_team_text', 'field_5ebc754c0b84b'),
(716, 110, 'team_item_0_team_img', '95'),
(717, 110, '_team_item_0_team_img', 'field_5ebc76214a09c'),
(718, 110, 'team_item_0_team_name', 'Lian Joy'),
(719, 110, '_team_item_0_team_name', 'field_5ebc763f4a09d'),
(720, 110, 'team_item_0_team_post', 'CEO/Founder'),
(721, 110, '_team_item_0_team_post', 'field_5ebc764e4a09e'),
(722, 110, 'team_item_0_team_descr', 'Lorem ipsum dolor sit amet, conse ctetuer adipi scing elit, sed diam nonu mmy nibh euis mod tinci'),
(723, 110, '_team_item_0_team_descr', 'field_5ebc769d4a09f'),
(724, 110, 'team_item_1_team_img', '96'),
(725, 110, '_team_item_1_team_img', 'field_5ebc76214a09c'),
(726, 110, 'team_item_1_team_name', 'Albert Thanh'),
(727, 110, '_team_item_1_team_name', 'field_5ebc763f4a09d'),
(728, 110, 'team_item_1_team_post', 'CEO/Founder'),
(729, 110, '_team_item_1_team_post', 'field_5ebc764e4a09e'),
(730, 110, 'team_item_1_team_descr', 'Lorem ipsum dolor sit amet, conse ctetuer adipi scing elit, sed diam nonu mmy nibh euis mod tinci'),
(731, 110, '_team_item_1_team_descr', 'field_5ebc769d4a09f'),
(732, 110, 'team_item_2_team_img', '97'),
(733, 110, '_team_item_2_team_img', 'field_5ebc76214a09c'),
(734, 110, 'team_item_2_team_name', 'Jenn Pereira'),
(735, 110, '_team_item_2_team_name', 'field_5ebc763f4a09d'),
(736, 110, 'team_item_2_team_post', 'CEO/Founder'),
(737, 110, '_team_item_2_team_post', 'field_5ebc764e4a09e'),
(738, 110, 'team_item_2_team_descr', 'Lorem ipsum dolor sit amet, conse ctetuer adipi scing elit, sed diam nonu mmy nibh euis mod tinci'),
(739, 110, '_team_item_2_team_descr', 'field_5ebc769d4a09f'),
(740, 110, 'team_item', '3'),
(741, 110, '_team_item', 'field_5ebc76044a09b'),
(742, 110, 'team_item_0_team_socials_link_facebook', 'https://www.facebook.com/'),
(743, 110, '_team_item_0_team_socials_link_facebook', 'field_5ebc79638bb51'),
(744, 110, 'team_item_0_team_socials_link_twitter', 'https://twitter.com/home'),
(745, 110, '_team_item_0_team_socials_link_twitter', 'field_5ebc7b198424d'),
(746, 110, 'team_item_0_team_socials_link_google', 'https://www.google.com'),
(747, 110, '_team_item_0_team_socials_link_google', 'field_5ebc7b2b8424e'),
(748, 110, 'team_item_0_team_socials_link_linkedin', 'https://www.linkedin.com/'),
(749, 110, '_team_item_0_team_socials_link_linkedin', 'field_5ebc7b388424f'),
(750, 110, 'team_item_0_team_socials', ''),
(751, 110, '_team_item_0_team_socials', 'field_5ebc792e8bb50'),
(752, 110, 'team_item_1_team_socials_link_facebook', 'https://www.facebook.com/'),
(753, 110, '_team_item_1_team_socials_link_facebook', 'field_5ebc79638bb51'),
(754, 110, 'team_item_1_team_socials_link_twitter', 'https://twitter.com/home'),
(755, 110, '_team_item_1_team_socials_link_twitter', 'field_5ebc7b198424d'),
(756, 110, 'team_item_1_team_socials_link_google', 'https://www.google.com'),
(757, 110, '_team_item_1_team_socials_link_google', 'field_5ebc7b2b8424e'),
(758, 110, 'team_item_1_team_socials_link_linkedin', 'https://www.linkedin.com/'),
(759, 110, '_team_item_1_team_socials_link_linkedin', 'field_5ebc7b388424f'),
(760, 110, 'team_item_1_team_socials', ''),
(761, 110, '_team_item_1_team_socials', 'field_5ebc792e8bb50'),
(762, 110, 'team_item_2_team_socials_link_facebook', 'https://www.facebook.com/'),
(763, 110, '_team_item_2_team_socials_link_facebook', 'field_5ebc79638bb51'),
(764, 110, 'team_item_2_team_socials_link_twitter', 'https://twitter.com/home'),
(765, 110, '_team_item_2_team_socials_link_twitter', 'field_5ebc7b198424d'),
(766, 110, 'team_item_2_team_socials_link_google', 'https://www.google.com'),
(767, 110, '_team_item_2_team_socials_link_google', 'field_5ebc7b2b8424e'),
(768, 110, 'team_item_2_team_socials_link_linkedin', 'https://www.linkedin.com/'),
(769, 110, '_team_item_2_team_socials_link_linkedin', 'field_5ebc7b388424f'),
(770, 110, 'team_item_2_team_socials', ''),
(771, 110, '_team_item_2_team_socials', 'field_5ebc792e8bb50'),
(772, 5, 'team_item_0_team_socials_0_link_icon', '<i class=\"fa fa-facebook-f\"></i>'),
(773, 5, '_team_item_0_team_socials_0_link_icon', 'field_5ebc7c6e22a16'),
(774, 5, 'team_item_0_team_socials_0_link', 'https://www.facebook.com/'),
(775, 5, '_team_item_0_team_socials_0_link', 'field_5ebc7cbf22a17'),
(776, 5, 'team_item_0_team_socials_1_link_icon', '<i class=\"fa fa-twitter\"></i>'),
(777, 5, '_team_item_0_team_socials_1_link_icon', 'field_5ebc7c6e22a16'),
(778, 5, 'team_item_0_team_socials_1_link', 'https://twitter.com/home'),
(779, 5, '_team_item_0_team_socials_1_link', 'field_5ebc7cbf22a17'),
(780, 5, 'team_item_0_team_socials_2_link_icon', '<i class=\"fa fa-google-plus\"></i>'),
(781, 5, '_team_item_0_team_socials_2_link_icon', 'field_5ebc7c6e22a16'),
(782, 5, 'team_item_0_team_socials_2_link', 'https://www.google.com'),
(783, 5, '_team_item_0_team_socials_2_link', 'field_5ebc7cbf22a17'),
(784, 5, 'team_item_0_team_socials_3_link_icon', '<i class=\"fa fa-linkedin\"></i>'),
(785, 5, '_team_item_0_team_socials_3_link_icon', 'field_5ebc7c6e22a16'),
(786, 5, 'team_item_0_team_socials_3_link', 'https://www.linkedin.com/'),
(787, 5, '_team_item_0_team_socials_3_link', 'field_5ebc7cbf22a17'),
(788, 5, 'team_item_1_team_socials_0_link_icon', '<i class=\"fa fa-facebook-f\"></i>'),
(789, 5, '_team_item_1_team_socials_0_link_icon', 'field_5ebc7c6e22a16'),
(790, 5, 'team_item_1_team_socials_0_link', 'https://www.facebook.com/'),
(791, 5, '_team_item_1_team_socials_0_link', 'field_5ebc7cbf22a17'),
(792, 5, 'team_item_1_team_socials_1_link_icon', '<i class=\"fa fa-twitter\"></i>'),
(793, 5, '_team_item_1_team_socials_1_link_icon', 'field_5ebc7c6e22a16'),
(794, 5, 'team_item_1_team_socials_1_link', 'https://twitter.com/home'),
(795, 5, '_team_item_1_team_socials_1_link', 'field_5ebc7cbf22a17'),
(796, 5, 'team_item_1_team_socials_2_link_icon', '<i class=\"fa fa-linkedin\"></i>'),
(797, 5, '_team_item_1_team_socials_2_link_icon', 'field_5ebc7c6e22a16'),
(798, 5, 'team_item_1_team_socials_2_link', 'https://www.linkedin.com/'),
(799, 5, '_team_item_1_team_socials_2_link', 'field_5ebc7cbf22a17'),
(800, 5, 'team_item_2_team_socials_0_link_icon', '<i class=\"fa fa-facebook-f\"></i>'),
(801, 5, '_team_item_2_team_socials_0_link_icon', 'field_5ebc7c6e22a16'),
(802, 5, 'team_item_2_team_socials_0_link', 'https://www.facebook.com/'),
(803, 5, '_team_item_2_team_socials_0_link', 'field_5ebc7cbf22a17'),
(804, 5, 'team_item_2_team_socials_1_link_icon', '<i class=\"fa fa-linkedin\"></i>'),
(805, 5, '_team_item_2_team_socials_1_link_icon', 'field_5ebc7c6e22a16'),
(806, 5, 'team_item_2_team_socials_1_link', 'https://www.linkedin.com/'),
(807, 5, '_team_item_2_team_socials_1_link', 'field_5ebc7cbf22a17'),
(808, 113, 'our_story_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.\r\n\r\nNam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. '),
(809, 113, '_our_story_text', 'field_5ebc71cb1b0fb'),
(810, 113, 'team_title', 'Awesome Team'),
(811, 113, '_team_title', 'field_5ebc753c0b84a'),
(812, 113, 'team_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.'),
(813, 113, '_team_text', 'field_5ebc754c0b84b'),
(814, 113, 'team_item_0_team_img', '95'),
(815, 113, '_team_item_0_team_img', 'field_5ebc76214a09c'),
(816, 113, 'team_item_0_team_name', 'Lian Joy'),
(817, 113, '_team_item_0_team_name', 'field_5ebc763f4a09d'),
(818, 113, 'team_item_0_team_post', 'CEO/Founder'),
(819, 113, '_team_item_0_team_post', 'field_5ebc764e4a09e'),
(820, 113, 'team_item_0_team_descr', 'Lorem ipsum dolor sit amet, conse ctetuer adipi scing elit, sed diam nonu mmy nibh euis mod tinci'),
(821, 113, '_team_item_0_team_descr', 'field_5ebc769d4a09f'),
(822, 113, 'team_item_1_team_img', '96'),
(823, 113, '_team_item_1_team_img', 'field_5ebc76214a09c'),
(824, 113, 'team_item_1_team_name', 'Albert Thanh'),
(825, 113, '_team_item_1_team_name', 'field_5ebc763f4a09d'),
(826, 113, 'team_item_1_team_post', 'CEO/Founder'),
(827, 113, '_team_item_1_team_post', 'field_5ebc764e4a09e'),
(828, 113, 'team_item_1_team_descr', 'Lorem ipsum dolor sit amet, conse ctetuer adipi scing elit, sed diam nonu mmy nibh euis mod tinci'),
(829, 113, '_team_item_1_team_descr', 'field_5ebc769d4a09f'),
(830, 113, 'team_item_2_team_img', '97'),
(831, 113, '_team_item_2_team_img', 'field_5ebc76214a09c'),
(832, 113, 'team_item_2_team_name', 'Jenn Pereira'),
(833, 113, '_team_item_2_team_name', 'field_5ebc763f4a09d'),
(834, 113, 'team_item_2_team_post', 'CEO/Founder'),
(835, 113, '_team_item_2_team_post', 'field_5ebc764e4a09e'),
(836, 113, 'team_item_2_team_descr', 'Lorem ipsum dolor sit amet, conse ctetuer adipi scing elit, sed diam nonu mmy nibh euis mod tinci'),
(837, 113, '_team_item_2_team_descr', 'field_5ebc769d4a09f'),
(838, 113, 'team_item', '3'),
(839, 113, '_team_item', 'field_5ebc76044a09b'),
(840, 113, 'team_item_0_team_socials_link_facebook', 'https://www.facebook.com/'),
(841, 113, '_team_item_0_team_socials_link_facebook', 'field_5ebc79638bb51'),
(842, 113, 'team_item_0_team_socials_link_twitter', 'https://twitter.com/home'),
(843, 113, '_team_item_0_team_socials_link_twitter', 'field_5ebc7b198424d'),
(844, 113, 'team_item_0_team_socials_link_google', 'https://www.google.com'),
(845, 113, '_team_item_0_team_socials_link_google', 'field_5ebc7b2b8424e'),
(846, 113, 'team_item_0_team_socials_link_linkedin', 'https://www.linkedin.com/'),
(847, 113, '_team_item_0_team_socials_link_linkedin', 'field_5ebc7b388424f'),
(848, 113, 'team_item_0_team_socials', '4'),
(849, 113, '_team_item_0_team_socials', 'field_5ebc792e8bb50'),
(850, 113, 'team_item_1_team_socials_link_facebook', 'https://www.facebook.com/'),
(851, 113, '_team_item_1_team_socials_link_facebook', 'field_5ebc79638bb51'),
(852, 113, 'team_item_1_team_socials_link_twitter', 'https://twitter.com/home'),
(853, 113, '_team_item_1_team_socials_link_twitter', 'field_5ebc7b198424d'),
(854, 113, 'team_item_1_team_socials_link_google', 'https://www.google.com'),
(855, 113, '_team_item_1_team_socials_link_google', 'field_5ebc7b2b8424e'),
(856, 113, 'team_item_1_team_socials_link_linkedin', 'https://www.linkedin.com/'),
(857, 113, '_team_item_1_team_socials_link_linkedin', 'field_5ebc7b388424f'),
(858, 113, 'team_item_1_team_socials', '3'),
(859, 113, '_team_item_1_team_socials', 'field_5ebc792e8bb50'),
(860, 113, 'team_item_2_team_socials_link_facebook', 'https://www.facebook.com/'),
(861, 113, '_team_item_2_team_socials_link_facebook', 'field_5ebc79638bb51'),
(862, 113, 'team_item_2_team_socials_link_twitter', 'https://twitter.com/home'),
(863, 113, '_team_item_2_team_socials_link_twitter', 'field_5ebc7b198424d'),
(864, 113, 'team_item_2_team_socials_link_google', 'https://www.google.com'),
(865, 113, '_team_item_2_team_socials_link_google', 'field_5ebc7b2b8424e'),
(866, 113, 'team_item_2_team_socials_link_linkedin', 'https://www.linkedin.com/'),
(867, 113, '_team_item_2_team_socials_link_linkedin', 'field_5ebc7b388424f'),
(868, 113, 'team_item_2_team_socials', '2'),
(869, 113, '_team_item_2_team_socials', 'field_5ebc792e8bb50'),
(870, 113, 'team_item_0_team_socials_0_link_icon', '<i class=\"fa fa-facebook-f\"></i>'),
(871, 113, '_team_item_0_team_socials_0_link_icon', 'field_5ebc7c6e22a16'),
(872, 113, 'team_item_0_team_socials_0_link', 'https://www.facebook.com/'),
(873, 113, '_team_item_0_team_socials_0_link', 'field_5ebc7cbf22a17'),
(874, 113, 'team_item_0_team_socials_1_link_icon', '<i class=\"fa fa-twitter\"></i>'),
(875, 113, '_team_item_0_team_socials_1_link_icon', 'field_5ebc7c6e22a16'),
(876, 113, 'team_item_0_team_socials_1_link', 'https://twitter.com/home'),
(877, 113, '_team_item_0_team_socials_1_link', 'field_5ebc7cbf22a17'),
(878, 113, 'team_item_0_team_socials_2_link_icon', '<i class=\"fa fa-google-plus\"></i>'),
(879, 113, '_team_item_0_team_socials_2_link_icon', 'field_5ebc7c6e22a16'),
(880, 113, 'team_item_0_team_socials_2_link', 'https://www.google.com'),
(881, 113, '_team_item_0_team_socials_2_link', 'field_5ebc7cbf22a17'),
(882, 113, 'team_item_0_team_socials_3_link_icon', '<i class=\"fa fa-linkedin\"></i>'),
(883, 113, '_team_item_0_team_socials_3_link_icon', 'field_5ebc7c6e22a16'),
(884, 113, 'team_item_0_team_socials_3_link', 'https://www.linkedin.com/'),
(885, 113, '_team_item_0_team_socials_3_link', 'field_5ebc7cbf22a17'),
(886, 113, 'team_item_1_team_socials_0_link_icon', '<i class=\"fa fa-facebook-f\"></i>'),
(887, 113, '_team_item_1_team_socials_0_link_icon', 'field_5ebc7c6e22a16'),
(888, 113, 'team_item_1_team_socials_0_link', 'https://www.facebook.com/'),
(889, 113, '_team_item_1_team_socials_0_link', 'field_5ebc7cbf22a17'),
(890, 113, 'team_item_1_team_socials_1_link_icon', '<i class=\"fa fa-twitter\"></i>'),
(891, 113, '_team_item_1_team_socials_1_link_icon', 'field_5ebc7c6e22a16'),
(892, 113, 'team_item_1_team_socials_1_link', 'https://twitter.com/home'),
(893, 113, '_team_item_1_team_socials_1_link', 'field_5ebc7cbf22a17'),
(894, 113, 'team_item_1_team_socials_2_link_icon', '<i class=\"fa fa-linkedin\"></i>'),
(895, 113, '_team_item_1_team_socials_2_link_icon', 'field_5ebc7c6e22a16'),
(896, 113, 'team_item_1_team_socials_2_link', 'https://www.linkedin.com/'),
(897, 113, '_team_item_1_team_socials_2_link', 'field_5ebc7cbf22a17'),
(898, 113, 'team_item_2_team_socials_0_link_icon', '<i class=\"fa fa-facebook-f\"></i>'),
(899, 113, '_team_item_2_team_socials_0_link_icon', 'field_5ebc7c6e22a16'),
(900, 113, 'team_item_2_team_socials_0_link', 'https://www.facebook.com/'),
(901, 113, '_team_item_2_team_socials_0_link', 'field_5ebc7cbf22a17'),
(902, 113, 'team_item_2_team_socials_1_link_icon', '<i class=\"fa fa-linkedin\"></i>'),
(903, 113, '_team_item_2_team_socials_1_link_icon', 'field_5ebc7c6e22a16'),
(904, 113, 'team_item_2_team_socials_1_link', 'https://www.linkedin.com/'),
(905, 113, '_team_item_2_team_socials_1_link', 'field_5ebc7cbf22a17');

-- --------------------------------------------------------

--
-- Структура таблицы `wdsfsdfsdsdfsdfp_posts`
--

CREATE TABLE `wdsfsdfsdsdfsdfp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wdsfsdfsdsdfsdfp_posts`
--

INSERT INTO `wdsfsdfsdsdfsdfp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-05-09 01:20:29', '2020-05-08 22:20:29', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d1%96%d1%82-%d1%81%d0%b2%d1%96%d1%82', '', '', '2020-05-09 01:20:29', '2020-05-08 22:20:29', '', 0, 'http://localhost/finalwork/?p=1', 0, 'post', '', 1),
(2, 1, '2020-05-09 01:20:29', '2020-05-08 22:20:29', '<!-- wp:paragraph -->\n<p>Це приклад сторінки. Від записів у блозі вона відрізняється тим, що залишається на одному місці і відображається в меню сайту (у більшості тем). На сторінці &laquo;Деталі&raquo; власники сайтів зазвичай розповідають про себе потенційним відвідувачам. Наприклад, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привіт! Вдень я кур\'єр, а ввечері &#8212; перспективний актор. Це мій блог. Я живу у Львові, люблю свого пса Джека і Пінаколаду. (І ще потрапляти під дощ.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... чи щось подібне до цього:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компанія &laquo;Штучки XYZ&raquo; була заснована в 1971 році і з тих пір виготовляє якісні штучки. Компанія знаходиться в Готем-сіті, має штат з більш ніж 2000 співробітників і приносить багато користі жителям Готема.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдіть <a href=\"http://localhost/finalwork/wp-admin/\">в майстерню</a>, щоб видалити цю сторінку і створити нові. Успіхів!</p>\n<!-- /wp:paragraph -->', 'Зразок сторінки', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-05-10 11:45:40', '2020-05-10 08:45:40', '', 0, 'http://localhost/finalwork/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-05-09 01:20:29', '2020-05-08 22:20:29', '<!-- wp:heading --><h2>Хто ми</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наша адреса сайту: http://localhost/finalwork.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Які особисті дані ми збираємо та чому ми їх збираємо</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Коментарі</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Коли відвідувачі залишають коментарі на сайті, ми збираємо дані, що відображаються у формі коментарів, а також IP-адреси відвідувачів та рядку агента-браузера користувача, щоб допомогти виявити спам.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонімний рядок, створений за вашою адресою електронної пошти (також називається хеш), може бути наданий службі Gravatar, щоб дізнатись, чи ви його використовуєте. Політика конфіденційності служби Gravatar доступна тут: https://automattic.com/privacy/. Після схвалення вашого коментаря, ваше зображення профілю буде видно для громадськості в контексті вашого коментарю.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медіафайли</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Якщо ви завантажуєте зображення на сайт, вам слід уникати завантаження зображень із вбудованими даними про місцезнаходження (EXIF GPS). Відвідувачі сайту можуть завантажувати та витягувати будь-які дані про місцезнаходження із зображень на сайті.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Контактні форми</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Якщо ви залишаєте коментар на нашому сайті, ви можете ввімкнути збереження свого імені, електронної адреси та сайту в файлах cookie. Це для вашої зручності, так що вам не потрібно буде повторно заповнювати ваші дані, коли ви залишатимете наступний коментар. Ці файли cookie зберігатимуться 1 рік.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Якщо у вас є обліковий запис на сайті і ви ввійдете в нього, ми встановимо тимчасовий cookie для визначення підтримки cookies вашим браузером, cookie не містить ніякої особистої інформації і віддаляється при закритті вашого браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Коли ви ввійдете в систему, ми також встановимо декілька файлів cookie, щоб зберегти інформацію про ваш логін та налаштування екрана. Cookie-файли для входу зберігаються 2 дні, а файли cookie-файлів налаштувань екрану - 1 рік. Якщо ви виберете &quot;Запам\'ятати мене&quot;, ваш логін буде зберігатися протягом 2 тижнів. Якщо ви вийдете зі свого облікового запису, файли cookie логіну будуть видалені.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Якщо ви редагуєте або публікуєте статтю, у вашому веб-переглядачі буде збережений додатковий файл cookie. Цей файл cookie не містить особистих даних і просто вказує ідентифікатор статті, яку ви щойно редагували. Його термін дії закінчується через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Вбудований вміст з інших веб-сайтів</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статті на цьому сайті можуть містити вбудований вміст (наприклад: відео, зображення, статті тощо). Вбудований вміст з інших сайтів веде себе так само, як би користувач відвідав інший сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ці сайти можуть збирати дані про вас, використовувати файли cookie, вбудовані додатки відстеження третіх сторін та стежити за вашою взаємодією з цим вбудованим вмістом. Зокрема відстежувати взаємодію з вбудованим вмістом, якщо у вас є обліковий запис і ви увійшли на цей сайт.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Аналітика</h3><!-- /wp:heading --><!-- wp:heading --><h2>З ким ми ділимося вашими даними</h2><!-- /wp:heading --><!-- wp:heading --><h2>Як довго ми зберігаємо ваші дані</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Якщо ви залишаєте коментар, він та його метадані зберігаються протягом невизначеного терміну. Таким чином, ми можемо автоматично визначати та затверджувати кожен наступний коментар замість того, щоб тримати їх у черзі на модерації.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для користувачів, які реєструються на нашому сайті (якщо такі є), ми зберігаємо надану ними персональну інформацію у їхньому профілі користувача. Всі користувачі можуть переглядати, редагувати або видаляти свої особисті дані в будь-який час (за винятком того, що вони не можуть змінити своє ім\'я користувача). Адміністратори сайту також можуть переглядати та редагувати цю інформацію.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Які права ви маєте відносно своїх даних</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Якщо у вас є обліковий запис на цьому сайті або ви залишили коментарі, ви можете подати запит на отримання експортованого файлу особистих даних які ми зберігаємо про вас, включаючи всі дані, які ви надали нам. Ви також можете вимагати, щоб ми стерли будь-які особисті дані, які ми маємо щодо вас. Це не включає будь-які дані, які ми зобов\'язані зберігати в адміністративних, правових та цілях безпеки.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куди ми відправляємо ваші данні</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Коментарі відвідувачів можуть бути перевірені за допомогою служби автоматичного виявлення спаму.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактна інформація</h2><!-- /wp:heading --><!-- wp:heading --><h2>Додаткова інформація</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Як ми захищаємо ваші данні</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Які процедури проти втрати даних ми використовуємо</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Від яких третіх сторін ми отримуємо дані</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Яке автоматичне рішення приймається  і/або профілювання ми робимо з користувацькими даними</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Вимоги до розкриття галузевих нормативних вимог</h3><!-- /wp:heading -->', 'Політика конфіденційності', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2020-05-10 11:45:36', '2020-05-10 08:45:36', '', 0, 'http://localhost/finalwork/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-05-09 01:23:03', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-05-09 01:23:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/finalwork/?p=4', 0, 'post', '', 0),
(5, 1, '2020-05-10 02:52:47', '2020-05-09 23:52:47', '', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2020-05-14 02:10:38', '2020-05-13 23:10:38', '', 0, 'http://localhost/finalwork/?page_id=5', 0, 'page', '', 0),
(6, 1, '2020-05-10 02:52:47', '2020-05-09 23:52:47', '', 'About us', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-05-10 02:52:47', '2020-05-09 23:52:47', '', 5, 'http://localhost/finalwork/2020/05/10/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2020-05-10 11:45:36', '2020-05-10 08:45:36', '<!-- wp:heading --><h2>Хто ми</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наша адреса сайту: http://localhost/finalwork.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Які особисті дані ми збираємо та чому ми їх збираємо</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Коментарі</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Коли відвідувачі залишають коментарі на сайті, ми збираємо дані, що відображаються у формі коментарів, а також IP-адреси відвідувачів та рядку агента-браузера користувача, щоб допомогти виявити спам.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонімний рядок, створений за вашою адресою електронної пошти (також називається хеш), може бути наданий службі Gravatar, щоб дізнатись, чи ви його використовуєте. Політика конфіденційності служби Gravatar доступна тут: https://automattic.com/privacy/. Після схвалення вашого коментаря, ваше зображення профілю буде видно для громадськості в контексті вашого коментарю.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медіафайли</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Якщо ви завантажуєте зображення на сайт, вам слід уникати завантаження зображень із вбудованими даними про місцезнаходження (EXIF GPS). Відвідувачі сайту можуть завантажувати та витягувати будь-які дані про місцезнаходження із зображень на сайті.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Контактні форми</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Якщо ви залишаєте коментар на нашому сайті, ви можете ввімкнути збереження свого імені, електронної адреси та сайту в файлах cookie. Це для вашої зручності, так що вам не потрібно буде повторно заповнювати ваші дані, коли ви залишатимете наступний коментар. Ці файли cookie зберігатимуться 1 рік.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Якщо у вас є обліковий запис на сайті і ви ввійдете в нього, ми встановимо тимчасовий cookie для визначення підтримки cookies вашим браузером, cookie не містить ніякої особистої інформації і віддаляється при закритті вашого браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Коли ви ввійдете в систему, ми також встановимо декілька файлів cookie, щоб зберегти інформацію про ваш логін та налаштування екрана. Cookie-файли для входу зберігаються 2 дні, а файли cookie-файлів налаштувань екрану - 1 рік. Якщо ви виберете &quot;Запам\'ятати мене&quot;, ваш логін буде зберігатися протягом 2 тижнів. Якщо ви вийдете зі свого облікового запису, файли cookie логіну будуть видалені.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Якщо ви редагуєте або публікуєте статтю, у вашому веб-переглядачі буде збережений додатковий файл cookie. Цей файл cookie не містить особистих даних і просто вказує ідентифікатор статті, яку ви щойно редагували. Його термін дії закінчується через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Вбудований вміст з інших веб-сайтів</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статті на цьому сайті можуть містити вбудований вміст (наприклад: відео, зображення, статті тощо). Вбудований вміст з інших сайтів веде себе так само, як би користувач відвідав інший сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ці сайти можуть збирати дані про вас, використовувати файли cookie, вбудовані додатки відстеження третіх сторін та стежити за вашою взаємодією з цим вбудованим вмістом. Зокрема відстежувати взаємодію з вбудованим вмістом, якщо у вас є обліковий запис і ви увійшли на цей сайт.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Аналітика</h3><!-- /wp:heading --><!-- wp:heading --><h2>З ким ми ділимося вашими даними</h2><!-- /wp:heading --><!-- wp:heading --><h2>Як довго ми зберігаємо ваші дані</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Якщо ви залишаєте коментар, він та його метадані зберігаються протягом невизначеного терміну. Таким чином, ми можемо автоматично визначати та затверджувати кожен наступний коментар замість того, щоб тримати їх у черзі на модерації.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для користувачів, які реєструються на нашому сайті (якщо такі є), ми зберігаємо надану ними персональну інформацію у їхньому профілі користувача. Всі користувачі можуть переглядати, редагувати або видаляти свої особисті дані в будь-який час (за винятком того, що вони не можуть змінити своє ім\'я користувача). Адміністратори сайту також можуть переглядати та редагувати цю інформацію.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Які права ви маєте відносно своїх даних</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Якщо у вас є обліковий запис на цьому сайті або ви залишили коментарі, ви можете подати запит на отримання експортованого файлу особистих даних які ми зберігаємо про вас, включаючи всі дані, які ви надали нам. Ви також можете вимагати, щоб ми стерли будь-які особисті дані, які ми маємо щодо вас. Це не включає будь-які дані, які ми зобов\'язані зберігати в адміністративних, правових та цілях безпеки.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куди ми відправляємо ваші данні</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Коментарі відвідувачів можуть бути перевірені за допомогою служби автоматичного виявлення спаму.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактна інформація</h2><!-- /wp:heading --><!-- wp:heading --><h2>Додаткова інформація</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Як ми захищаємо ваші данні</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Які процедури проти втрати даних ми використовуємо</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Від яких третіх сторін ми отримуємо дані</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Яке автоматичне рішення приймається  і/або профілювання ми робимо з користувацькими даними</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Вимоги до розкриття галузевих нормативних вимог</h3><!-- /wp:heading -->', 'Політика конфіденційності', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-05-10 11:45:36', '2020-05-10 08:45:36', '', 3, 'http://localhost/finalwork/2020/05/10/3-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2020-05-10 11:45:40', '2020-05-10 08:45:40', '<!-- wp:paragraph -->\n<p>Це приклад сторінки. Від записів у блозі вона відрізняється тим, що залишається на одному місці і відображається в меню сайту (у більшості тем). На сторінці &laquo;Деталі&raquo; власники сайтів зазвичай розповідають про себе потенційним відвідувачам. Наприклад, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привіт! Вдень я кур\'єр, а ввечері &#8212; перспективний актор. Це мій блог. Я живу у Львові, люблю свого пса Джека і Пінаколаду. (І ще потрапляти під дощ.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... чи щось подібне до цього:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компанія &laquo;Штучки XYZ&raquo; була заснована в 1971 році і з тих пір виготовляє якісні штучки. Компанія знаходиться в Готем-сіті, має штат з більш ніж 2000 співробітників і приносить багато користі жителям Готема.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдіть <a href=\"http://localhost/finalwork/wp-admin/\">в майстерню</a>, щоб видалити цю сторінку і створити нові. Успіхів!</p>\n<!-- /wp:paragraph -->', 'Зразок сторінки', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-10 11:45:40', '2020-05-10 08:45:40', '', 2, 'http://localhost/finalwork/2020/05/10/2-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-05-10 11:53:24', '2020-05-10 08:53:24', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2020-05-12 23:35:35', '2020-05-12 20:35:35', '', 0, 'http://localhost/finalwork/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2020-05-10 11:53:24', '2020-05-10 08:53:24', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-05-12 23:35:36', '2020-05-12 20:35:36', '', 0, 'http://localhost/finalwork/?p=10', 2, 'nav_menu_item', '', 0),
(11, 1, '2020-05-10 14:14:27', '2020-05-10 11:14:27', '', 'Home page', '', 'publish', 'closed', 'closed', '', 'home-page', '', '', '2020-05-12 01:19:12', '2020-05-11 22:19:12', '', 0, 'http://localhost/finalwork/?page_id=11', 0, 'page', '', 0),
(12, 1, '2020-05-10 14:14:27', '2020-05-10 11:14:27', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-05-10 14:14:27', '2020-05-10 11:14:27', '', 11, 'http://localhost/finalwork/2020/05/10/11-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-05-11 22:41:24', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-05-11 22:41:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/finalwork/?post_type=acf-field-group&p=15', 0, 'acf-field-group', '', 0),
(16, 1, '2020-05-11 23:00:31', '2020-05-11 20:00:31', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"11\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home page', 'home-page', 'publish', 'closed', 'closed', '', 'group_5eb9abb4db821', '', '', '2020-05-13 01:27:53', '2020-05-12 22:27:53', '', 0, 'http://localhost/finalwork/?post_type=acf-field-group&#038;p=16', 0, 'acf-field-group', '', 0),
(17, 1, '2020-05-11 23:00:31', '2020-05-11 20:00:31', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Слайд слайдера', 'slider__slide', 'publish', 'closed', 'closed', '', 'field_5eb9ad0ebd74e', '', '', '2020-05-11 23:00:31', '2020-05-11 20:00:31', '', 16, 'http://localhost/finalwork/?post_type=acf-field&p=17', 0, 'acf-field', '', 0),
(18, 1, '2020-05-11 23:00:31', '2020-05-11 20:00:31', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Slider foto', 'slider__img', 'publish', 'closed', 'closed', '', 'field_5eb9ad58bd74f', '', '', '2020-05-11 23:00:31', '2020-05-11 20:00:31', '', 17, 'http://localhost/finalwork/?post_type=acf-field&p=18', 0, 'acf-field', '', 0),
(19, 1, '2020-05-11 23:00:31', '2020-05-11 20:00:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Slider head', 'slider_head', 'publish', 'closed', 'closed', '', 'field_5eb9ae3fbd750', '', '', '2020-05-11 23:00:31', '2020-05-11 20:00:31', '', 17, 'http://localhost/finalwork/?post_type=acf-field&p=19', 1, 'acf-field', '', 0),
(20, 1, '2020-05-11 23:00:31', '2020-05-11 20:00:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Slider text', 'slider_text', 'publish', 'closed', 'closed', '', 'field_5eb9ae8fbd751', '', '', '2020-05-11 23:00:31', '2020-05-11 20:00:31', '', 17, 'http://localhost/finalwork/?post_type=acf-field&p=20', 2, 'acf-field', '', 0),
(21, 1, '2020-05-11 23:04:25', '2020-05-11 20:04:25', '', 'slide1', '', 'inherit', 'open', 'closed', '', 'slide1', '', '', '2020-05-11 23:06:41', '2020-05-11 20:06:41', '', 11, 'http://localhost/finalwork/wp-content/uploads/2020/05/slide1.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2020-05-11 23:05:10', '2020-05-11 20:05:10', '', 'slide2', '', 'inherit', 'open', 'closed', '', 'slide2', '', '', '2020-05-11 23:06:48', '2020-05-11 20:06:48', '', 11, 'http://localhost/finalwork/wp-content/uploads/2020/05/slide2.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2020-05-11 23:07:09', '2020-05-11 20:07:09', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-05-11 23:07:09', '2020-05-11 20:07:09', '', 11, 'http://localhost/finalwork/2020/05/11/11-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2020-05-11 23:24:16', '2020-05-11 20:24:16', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-05-11 23:24:16', '2020-05-11 20:24:16', '', 11, 'http://localhost/finalwork/2020/05/11/11-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2020-05-11 23:25:20', '2020-05-11 20:25:20', '', 'about', '', 'inherit', 'open', 'closed', '', 'about-2', '', '', '2020-05-11 23:25:27', '2020-05-11 20:25:27', '', 11, 'http://localhost/finalwork/wp-content/uploads/2020/05/about.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2020-05-11 23:25:40', '2020-05-11 20:25:40', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-05-11 23:25:40', '2020-05-11 20:25:40', '', 11, 'http://localhost/finalwork/2020/05/11/11-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2020-05-12 00:35:49', '2020-05-11 21:35:49', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Наша работа', 'work__item', 'publish', 'closed', 'closed', '', 'field_5eb9c41c932d8', '', '', '2020-05-12 00:35:49', '2020-05-11 21:35:49', '', 16, 'http://localhost/finalwork/?post_type=acf-field&p=27', 1, 'acf-field', '', 0),
(28, 1, '2020-05-12 00:35:49', '2020-05-11 21:35:49', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Картинка работы', 'works_pic', 'publish', 'closed', 'closed', '', 'field_5eb9c493932d9', '', '', '2020-05-12 00:35:49', '2020-05-11 21:35:49', '', 27, 'http://localhost/finalwork/?post_type=acf-field&p=28', 0, 'acf-field', '', 0),
(29, 1, '2020-05-12 00:35:49', '2020-05-11 21:35:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Текст Overlay', 'overlay', 'publish', 'closed', 'closed', '', 'field_5eb9c4c2932da', '', '', '2020-05-12 00:35:49', '2020-05-11 21:35:49', '', 27, 'http://localhost/finalwork/?post_type=acf-field&p=29', 1, 'acf-field', '', 0),
(30, 1, '2020-05-12 00:35:49', '2020-05-11 21:35:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Категория работы', 'data-category', 'publish', 'closed', 'closed', '', 'field_5eb9c500932db', '', '', '2020-05-12 00:35:49', '2020-05-11 21:35:49', '', 27, 'http://localhost/finalwork/?post_type=acf-field&p=30', 2, 'acf-field', '', 0),
(31, 1, '2020-05-12 00:36:28', '2020-05-11 21:36:28', '', 'work1', '', 'inherit', 'open', 'closed', '', 'work1', '', '', '2020-05-12 00:36:37', '2020-05-11 21:36:37', '', 11, 'http://localhost/finalwork/wp-content/uploads/2020/05/work1.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2020-05-12 00:37:03', '2020-05-11 21:37:03', '', 'work3', '', 'inherit', 'open', 'closed', '', 'work3', '', '', '2020-05-12 00:38:58', '2020-05-11 21:38:58', '', 11, 'http://localhost/finalwork/wp-content/uploads/2020/05/work3.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2020-05-12 00:37:21', '2020-05-11 21:37:21', '', 'work2', '', 'inherit', 'open', 'closed', '', 'work2', '', '', '2020-05-12 00:38:07', '2020-05-11 21:38:07', '', 11, 'http://localhost/finalwork/wp-content/uploads/2020/05/work2.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2020-05-12 00:37:22', '2020-05-11 21:37:22', '', 'work4', '', 'inherit', 'open', 'closed', '', 'work4', '', '', '2020-05-12 00:39:27', '2020-05-11 21:39:27', '', 11, 'http://localhost/finalwork/wp-content/uploads/2020/05/work4.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2020-05-12 00:37:23', '2020-05-11 21:37:23', '', 'work5', '', 'inherit', 'open', 'closed', '', 'work5', '', '', '2020-05-12 00:37:23', '2020-05-11 21:37:23', '', 11, 'http://localhost/finalwork/wp-content/uploads/2020/05/work5.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2020-05-12 00:37:24', '2020-05-11 21:37:24', '', 'work6', '', 'inherit', 'open', 'closed', '', 'work6', '', '', '2020-05-12 00:37:24', '2020-05-11 21:37:24', '', 11, 'http://localhost/finalwork/wp-content/uploads/2020/05/work6.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2020-05-12 00:37:25', '2020-05-11 21:37:25', '', 'work7', '', 'inherit', 'open', 'closed', '', 'work7', '', '', '2020-05-12 00:37:25', '2020-05-11 21:37:25', '', 11, 'http://localhost/finalwork/wp-content/uploads/2020/05/work7.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2020-05-12 00:37:26', '2020-05-11 21:37:26', '', 'work8', '', 'inherit', 'open', 'closed', '', 'work8', '', '', '2020-05-12 00:37:26', '2020-05-11 21:37:26', '', 11, 'http://localhost/finalwork/wp-content/uploads/2020/05/work8.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2020-05-12 00:37:27', '2020-05-11 21:37:27', '', 'work9', '', 'inherit', 'open', 'closed', '', 'work9', '', '', '2020-05-14 00:08:06', '2020-05-13 21:08:06', '', 11, 'http://localhost/finalwork/wp-content/uploads/2020/05/work9.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2020-05-12 00:37:28', '2020-05-11 21:37:28', '', 'work10', '', 'inherit', 'open', 'closed', '', 'work10', '', '', '2020-05-12 00:37:28', '2020-05-11 21:37:28', '', 11, 'http://localhost/finalwork/wp-content/uploads/2020/05/work10.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2020-05-12 00:40:03', '2020-05-11 21:40:03', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-05-12 00:40:03', '2020-05-11 21:40:03', '', 11, 'http://localhost/finalwork/2020/05/12/11-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-05-12 01:17:43', '2020-05-11 22:17:43', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Категории работ', 'works_cat', 'publish', 'closed', 'closed', '', 'field_5eb9cea0d0f7c', '', '', '2020-05-12 01:17:43', '2020-05-11 22:17:43', '', 16, 'http://localhost/finalwork/?post_type=acf-field&p=42', 2, 'acf-field', '', 0),
(43, 1, '2020-05-12 01:17:43', '2020-05-11 22:17:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Название категории', 'work_cat', 'publish', 'closed', 'closed', '', 'field_5eb9cec6d0f7d', '', '', '2020-05-12 01:17:43', '2020-05-11 22:17:43', '', 42, 'http://localhost/finalwork/?post_type=acf-field&p=43', 0, 'acf-field', '', 0),
(44, 1, '2020-05-12 01:19:12', '2020-05-11 22:19:12', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-05-12 01:19:12', '2020-05-11 22:19:12', '', 11, 'http://localhost/finalwork/2020/05/12/11-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2020-05-12 23:32:29', '2020-05-12 20:32:29', '', 'Contacts', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2020-05-12 23:32:29', '2020-05-12 20:32:29', '', 0, 'http://localhost/finalwork/?page_id=46', 0, 'page', '', 0),
(47, 1, '2020-05-12 23:30:34', '2020-05-12 20:30:34', '', 'Contacts', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2020-05-14 00:16:03', '2020-05-13 21:16:03', '', 0, 'http://localhost/finalwork/?page_id=47', 0, 'page', '', 0),
(48, 1, '2020-05-12 23:30:34', '2020-05-12 20:30:34', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-05-12 23:30:34', '2020-05-12 20:30:34', '', 47, 'http://localhost/finalwork/2020/05/12/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2020-05-12 23:32:29', '2020-05-12 20:32:29', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-05-12 23:32:29', '2020-05-12 20:32:29', '', 46, 'http://localhost/finalwork/2020/05/12/46-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-05-12 23:35:36', '2020-05-12 20:35:36', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2020-05-12 23:35:36', '2020-05-12 20:35:36', '', 0, 'http://localhost/finalwork/?p=50', 3, 'nav_menu_item', '', 0),
(51, 1, '2020-05-13 01:29:57', '2020-05-12 22:29:57', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"47\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Contacts', 'contacts', 'publish', 'closed', 'closed', '', 'group_5ebb22f20e1f0', '', '', '2020-05-13 23:57:27', '2020-05-13 20:57:27', '', 0, 'http://localhost/finalwork/?post_type=acf-field-group&#038;p=51', 0, 'acf-field-group', '', 0),
(52, 1, '2020-05-13 01:29:57', '2020-05-12 22:29:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Office hours', 'office_hours', 'publish', 'closed', 'closed', '', 'field_5ebb22fb5cdaf', '', '', '2020-05-13 23:25:33', '2020-05-13 20:25:33', '', 51, 'http://localhost/finalwork/?post_type=acf-field&#038;p=52', 1, 'acf-field', '', 0),
(53, 1, '2020-05-13 01:29:57', '2020-05-12 22:29:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Office adress', 'office_adress', 'publish', 'closed', 'closed', '', 'field_5ebb23205cdb0', '', '', '2020-05-13 23:25:33', '2020-05-13 20:25:33', '', 51, 'http://localhost/finalwork/?post_type=acf-field&#038;p=53', 2, 'acf-field', '', 0),
(54, 1, '2020-05-13 01:29:57', '2020-05-12 22:29:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Office tel', 'office_tel', 'publish', 'closed', 'closed', '', 'field_5ebb23315cdb1', '', '', '2020-05-13 23:25:33', '2020-05-13 20:25:33', '', 51, 'http://localhost/finalwork/?post_type=acf-field&#038;p=54', 3, 'acf-field', '', 0),
(55, 1, '2020-05-13 01:29:57', '2020-05-12 22:29:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Office fax', 'office_fax', 'publish', 'closed', 'closed', '', 'field_5ebb233f5cdb2', '', '', '2020-05-13 23:25:33', '2020-05-13 20:25:33', '', 51, 'http://localhost/finalwork/?post_type=acf-field&#038;p=55', 4, 'acf-field', '', 0),
(56, 1, '2020-05-13 01:34:28', '2020-05-12 22:34:28', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-05-13 01:34:28', '2020-05-12 22:34:28', '', 47, 'http://localhost/finalwork/2020/05/13/47-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2020-05-13 23:25:33', '2020-05-13 20:25:33', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Office', 'office', 'publish', 'closed', 'closed', '', 'field_5ebc5748db308', '', '', '2020-05-13 23:25:33', '2020-05-13 20:25:33', '', 51, 'http://localhost/finalwork/?post_type=acf-field&p=57', 0, 'acf-field', '', 0),
(58, 1, '2020-05-13 23:25:33', '2020-05-13 20:25:33', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Our Values', 'our_values', 'publish', 'closed', 'closed', '', 'field_5ebc5775db309', '', '', '2020-05-13 23:25:33', '2020-05-13 20:25:33', '', 51, 'http://localhost/finalwork/?post_type=acf-field&p=58', 5, 'acf-field', '', 0),
(59, 1, '2020-05-13 23:25:33', '2020-05-13 20:25:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Values Title', 'values_title', 'publish', 'closed', 'closed', '', 'field_5ebc5792db30a', '', '', '2020-05-13 23:25:33', '2020-05-13 20:25:33', '', 51, 'http://localhost/finalwork/?post_type=acf-field&p=59', 6, 'acf-field', '', 0),
(60, 1, '2020-05-13 23:25:33', '2020-05-13 20:25:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Values Text', 'values_test', 'publish', 'closed', 'closed', '', 'field_5ebc57a8db30b', '', '', '2020-05-13 23:55:37', '2020-05-13 20:55:37', '', 51, 'http://localhost/finalwork/?post_type=acf-field&#038;p=60', 7, 'acf-field', '', 0),
(61, 1, '2020-05-13 23:27:22', '2020-05-13 20:27:22', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-05-13 23:27:22', '2020-05-13 20:27:22', '', 47, 'http://localhost/finalwork/2020/05/13/47-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2020-05-13 23:27:45', '2020-05-13 20:27:45', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-05-13 23:27:45', '2020-05-13 20:27:45', '', 47, 'http://localhost/finalwork/2020/05/13/47-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2020-05-13 23:57:27', '2020-05-13 20:57:27', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Values Item', 'values_item', 'publish', 'closed', 'closed', '', 'field_5ebc5ee4eb741', '', '', '2020-05-13 23:57:27', '2020-05-13 20:57:27', '', 51, 'http://localhost/finalwork/?post_type=acf-field&p=66', 8, 'acf-field', '', 0),
(67, 1, '2020-05-13 23:57:27', '2020-05-13 20:57:27', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Values Img', 'values_img', 'publish', 'closed', 'closed', '', 'field_5ebc5f00eb742', '', '', '2020-05-13 23:57:27', '2020-05-13 20:57:27', '', 66, 'http://localhost/finalwork/?post_type=acf-field&p=67', 0, 'acf-field', '', 0),
(68, 1, '2020-05-13 23:57:27', '2020-05-13 20:57:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Values text h6', 'values_text_h6', 'publish', 'closed', 'closed', '', 'field_5ebc5f0deb743', '', '', '2020-05-13 23:57:27', '2020-05-13 20:57:27', '', 66, 'http://localhost/finalwork/?post_type=acf-field&p=68', 1, 'acf-field', '', 0),
(69, 1, '2020-05-13 23:57:27', '2020-05-13 20:57:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Values text P', 'values_text_p', 'publish', 'closed', 'closed', '', 'field_5ebc5f1eeb744', '', '', '2020-05-13 23:57:27', '2020-05-13 20:57:27', '', 66, 'http://localhost/finalwork/?post_type=acf-field&p=69', 2, 'acf-field', '', 0),
(70, 1, '2020-05-13 23:58:25', '2020-05-13 20:58:25', '', 'contact_val1', '', 'inherit', 'open', 'closed', '', 'contact_val1', '', '', '2020-05-14 00:04:33', '2020-05-13 21:04:33', '', 47, 'http://localhost/finalwork/wp-content/uploads/2020/05/contact_val1.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2020-05-13 23:58:26', '2020-05-13 20:58:26', '', 'contact_val2', '', 'inherit', 'open', 'closed', '', 'contact_val2', '', '', '2020-05-14 00:04:42', '2020-05-13 21:04:42', '', 47, 'http://localhost/finalwork/wp-content/uploads/2020/05/contact_val2.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2020-05-13 23:58:27', '2020-05-13 20:58:27', '', 'contact_val3', '', 'inherit', 'open', 'closed', '', 'contact_val3', '', '', '2020-05-14 00:04:53', '2020-05-13 21:04:53', '', 47, 'http://localhost/finalwork/wp-content/uploads/2020/05/contact_val3.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2020-05-14 00:00:02', '2020-05-13 21:00:02', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-05-14 00:00:02', '2020-05-13 21:00:02', '', 47, 'http://localhost/finalwork/2020/05/14/47-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-05-14 00:06:37', '2020-05-13 21:06:37', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-05-14 00:06:37', '2020-05-13 21:06:37', '', 47, 'http://localhost/finalwork/2020/05/14/47-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-05-14 00:08:27', '2020-05-13 21:08:27', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-05-14 00:08:27', '2020-05-13 21:08:27', '', 47, 'http://localhost/finalwork/2020/05/14/47-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-05-14 00:16:03', '2020-05-13 21:16:03', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-05-14 00:16:03', '2020-05-13 21:16:03', '', 47, 'http://localhost/finalwork/2020/05/14/47-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-05-14 01:23:47', '2020-05-13 22:23:47', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"5\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'About page', 'about-page', 'publish', 'closed', 'closed', '', 'group_5ebc6d96f0675', '', '', '2020-05-14 02:04:50', '2020-05-13 23:04:50', '', 0, 'http://localhost/finalwork/?post_type=acf-field-group&#038;p=77', 0, 'acf-field-group', '', 0),
(78, 1, '2020-05-14 01:23:47', '2020-05-13 22:23:47', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:10;s:9:\"new_lines\";s:2:\"br\";}', 'Our Story Text', 'our_story_text', 'publish', 'closed', 'closed', '', 'field_5ebc71cb1b0fb', '', '', '2020-05-14 01:23:47', '2020-05-13 22:23:47', '', 77, 'http://localhost/finalwork/?post_type=acf-field&p=78', 0, 'acf-field', '', 0),
(79, 1, '2020-05-14 01:25:01', '2020-05-13 22:25:01', '<div>\n<div style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat</div>\n<div style=\"text-align: left;\">                        volutpat. Ut wisi enim ad minim veniam, quis</div>\n<div style=\"text-align: left;\">                        nostrud exerci tation ullamcorper suscipit.</div>\n<div>                        Nam liber tempor cum soluta nobis eleifend</div>\n<div>                        option congue nihil imperdiet doming id quod</div>\n<div>                        mazim placerat facer possim assum. Typi non</div>\n<div>                        habent claritatem insitam; est usus legentis in</div>\n<div>                        iis qui facit eorum claritatem.</div>\n</div>', 'About us', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2020-05-14 01:25:01', '2020-05-13 22:25:01', '', 5, 'http://localhost/finalwork/2020/05/14/5-autosave-v1/', 0, 'revision', '', 0),
(80, 1, '2020-05-14 01:26:54', '2020-05-13 22:26:54', '', 'About us', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-05-14 01:26:54', '2020-05-13 22:26:54', '', 5, 'http://localhost/finalwork/2020/05/14/5-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2020-05-14 01:28:11', '2020-05-13 22:28:11', '', 'About us', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-05-14 01:28:11', '2020-05-13 22:28:11', '', 5, 'http://localhost/finalwork/2020/05/14/5-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-05-14 01:29:56', '2020-05-13 22:29:56', '', 'About us', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-05-14 01:29:56', '2020-05-13 22:29:56', '', 5, 'http://localhost/finalwork/2020/05/14/5-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2020-05-14 01:30:24', '2020-05-13 22:30:24', '', 'About us', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-05-14 01:30:24', '2020-05-13 22:30:24', '', 5, 'http://localhost/finalwork/2020/05/14/5-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2020-05-14 01:31:00', '2020-05-13 22:31:00', '', 'About us', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-05-14 01:31:00', '2020-05-13 22:31:00', '', 5, 'http://localhost/finalwork/2020/05/14/5-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2020-05-14 01:31:56', '2020-05-13 22:31:56', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Team Title', 'team_title', 'publish', 'closed', 'closed', '', 'field_5ebc753c0b84a', '', '', '2020-05-14 01:31:56', '2020-05-13 22:31:56', '', 77, 'http://localhost/finalwork/?post_type=acf-field&p=85', 1, 'acf-field', '', 0),
(86, 1, '2020-05-14 01:31:56', '2020-05-13 22:31:56', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Team Text', 'team_text', 'publish', 'closed', 'closed', '', 'field_5ebc754c0b84b', '', '', '2020-05-14 01:31:56', '2020-05-13 22:31:56', '', 77, 'http://localhost/finalwork/?post_type=acf-field&p=86', 2, 'acf-field', '', 0),
(87, 1, '2020-05-14 01:33:01', '2020-05-13 22:33:01', '', 'About us', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-05-14 01:33:01', '2020-05-13 22:33:01', '', 5, 'http://localhost/finalwork/2020/05/14/5-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2020-05-14 01:34:03', '2020-05-13 22:34:03', '', 'About us', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-05-14 01:34:03', '2020-05-13 22:34:03', '', 5, 'http://localhost/finalwork/2020/05/14/5-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2020-05-14 01:34:21', '2020-05-13 22:34:21', '', 'About us', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-05-14 01:34:21', '2020-05-13 22:34:21', '', 5, 'http://localhost/finalwork/2020/05/14/5-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2020-05-14 01:37:42', '2020-05-13 22:37:42', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Team Item', 'team_item', 'publish', 'closed', 'closed', '', 'field_5ebc76044a09b', '', '', '2020-05-14 01:37:42', '2020-05-13 22:37:42', '', 77, 'http://localhost/finalwork/?post_type=acf-field&p=90', 3, 'acf-field', '', 0),
(91, 1, '2020-05-14 01:37:42', '2020-05-13 22:37:42', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Team Img', 'team_img', 'publish', 'closed', 'closed', '', 'field_5ebc76214a09c', '', '', '2020-05-14 01:37:42', '2020-05-13 22:37:42', '', 90, 'http://localhost/finalwork/?post_type=acf-field&p=91', 0, 'acf-field', '', 0);
INSERT INTO `wdsfsdfsdsdfsdfp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(92, 1, '2020-05-14 01:37:42', '2020-05-13 22:37:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Team Name', 'team_name', 'publish', 'closed', 'closed', '', 'field_5ebc763f4a09d', '', '', '2020-05-14 01:37:42', '2020-05-13 22:37:42', '', 90, 'http://localhost/finalwork/?post_type=acf-field&p=92', 1, 'acf-field', '', 0),
(93, 1, '2020-05-14 01:37:42', '2020-05-13 22:37:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Team Post', 'team_post', 'publish', 'closed', 'closed', '', 'field_5ebc764e4a09e', '', '', '2020-05-14 01:37:42', '2020-05-13 22:37:42', '', 90, 'http://localhost/finalwork/?post_type=acf-field&p=93', 2, 'acf-field', '', 0),
(94, 1, '2020-05-14 01:37:42', '2020-05-13 22:37:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Team Descr', 'team_descr', 'publish', 'closed', 'closed', '', 'field_5ebc769d4a09f', '', '', '2020-05-14 01:37:42', '2020-05-13 22:37:42', '', 90, 'http://localhost/finalwork/?post_type=acf-field&p=94', 3, 'acf-field', '', 0),
(95, 1, '2020-05-14 01:38:18', '2020-05-13 22:38:18', '', 'about_team1', '', 'inherit', 'open', 'closed', '', 'about_team1', '', '', '2020-05-14 01:38:40', '2020-05-13 22:38:40', '', 5, 'http://localhost/finalwork/wp-content/uploads/2020/05/about_team1.png', 0, 'attachment', 'image/png', 0),
(96, 1, '2020-05-14 01:38:19', '2020-05-13 22:38:19', '', 'about_team2', '', 'inherit', 'open', 'closed', '', 'about_team2', '', '', '2020-05-14 01:40:17', '2020-05-13 22:40:17', '', 5, 'http://localhost/finalwork/wp-content/uploads/2020/05/about_team2.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2020-05-14 01:38:20', '2020-05-13 22:38:20', '', 'about_team3', '', 'inherit', 'open', 'closed', '', 'about_team3', '', '', '2020-05-14 01:41:15', '2020-05-13 22:41:15', '', 5, 'http://localhost/finalwork/wp-content/uploads/2020/05/about_team3.png', 0, 'attachment', 'image/png', 0),
(98, 1, '2020-05-14 01:41:27', '2020-05-13 22:41:27', '', 'About us', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-05-14 01:41:27', '2020-05-13 22:41:27', '', 5, 'http://localhost/finalwork/2020/05/14/5-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2020-05-14 01:46:32', '2020-05-13 22:46:32', '', 'About us', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-05-14 01:46:32', '2020-05-13 22:46:32', '', 5, 'http://localhost/finalwork/2020/05/14/5-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2020-05-14 01:47:20', '2020-05-13 22:47:20', '', 'About us', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-05-14 01:47:20', '2020-05-13 22:47:20', '', 5, 'http://localhost/finalwork/2020/05/14/5-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2020-05-14 01:53:03', '2020-05-13 22:53:03', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Team Socials', 'team_socials', 'publish', 'closed', 'closed', '', 'field_5ebc792e8bb50', '', '', '2020-05-14 02:04:11', '2020-05-13 23:04:11', '', 90, 'http://localhost/finalwork/?post_type=acf-field&#038;p=101', 4, 'acf-field', '', 0),
(110, 1, '2020-05-14 01:59:53', '2020-05-13 22:59:53', '', 'About us', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-05-14 01:59:53', '2020-05-13 22:59:53', '', 5, 'http://localhost/finalwork/2020/05/14/5-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2020-05-14 02:04:11', '2020-05-13 23:04:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link Icon', 'link_icon', 'publish', 'closed', 'closed', '', 'field_5ebc7c6e22a16', '', '', '2020-05-14 02:04:50', '2020-05-13 23:04:50', '', 101, 'http://localhost/finalwork/?post_type=acf-field&#038;p=111', 0, 'acf-field', '', 0),
(112, 1, '2020-05-14 02:04:11', '2020-05-13 23:04:11', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_5ebc7cbf22a17', '', '', '2020-05-14 02:04:50', '2020-05-13 23:04:50', '', 101, 'http://localhost/finalwork/?post_type=acf-field&#038;p=112', 1, 'acf-field', '', 0),
(113, 1, '2020-05-14 02:10:38', '2020-05-13 23:10:38', '', 'About us', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-05-14 02:10:38', '2020-05-13 23:10:38', '', 5, 'http://localhost/finalwork/2020/05/14/5-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wdsfsdfsdsdfsdfp_termmeta`
--

CREATE TABLE `wdsfsdfsdsdfsdfp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wdsfsdfsdsdfsdfp_terms`
--

CREATE TABLE `wdsfsdfsdsdfsdfp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wdsfsdfsdsdfsdfp_terms`
--

INSERT INTO `wdsfsdfsdsdfsdfp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без категорії', '%d0%b1%d0%b5%d0%b7-%d0%ba%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d1%96%d1%97', 0),
(2, 'Menu в шапке', 'menu-%d0%b2-%d1%88%d0%b0%d0%bf%d0%ba%d0%b5', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wdsfsdfsdsdfsdfp_term_relationships`
--

CREATE TABLE `wdsfsdfsdsdfsdfp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wdsfsdfsdsdfsdfp_term_relationships`
--

INSERT INTO `wdsfsdfsdsdfsdfp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0),
(10, 2, 0),
(50, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wdsfsdfsdsdfsdfp_term_taxonomy`
--

CREATE TABLE `wdsfsdfsdsdfsdfp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wdsfsdfsdsdfsdfp_term_taxonomy`
--

INSERT INTO `wdsfsdfsdsdfsdfp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `wdsfsdfsdsdfsdfp_usermeta`
--

CREATE TABLE `wdsfsdfsdsdfsdfp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wdsfsdfsdsdfsdfp_usermeta`
--

INSERT INTO `wdsfsdfsdsdfsdfp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wdsfsdfsdsdfsdfp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wdsfsdfsdsdfsdfp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"661c0838120e616de341685aa3731bfb3b19bee47f634537e933d0a4a466c049\";a:4:{s:10:\"expiration\";i:1590186181;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1588976581;}}'),
(17, 1, 'wdsfsdfsdsdfsdfp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:21:\"dashboard_site_health\";}'),
(19, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, 'wdsfsdfsdsdfsdfp_user-settings', 'libraryContent=browse'),
(24, 1, 'wdsfsdfsdsdfsdfp_user-settings-time', '1589227625');

-- --------------------------------------------------------

--
-- Структура таблицы `wdsfsdfsdsdfsdfp_users`
--

CREATE TABLE `wdsfsdfsdsdfsdfp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wdsfsdfsdsdfsdfp_users`
--

INSERT INTO `wdsfsdfsdsdfsdfp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BUFpoXklzP4OUKp638dISp9/u4Z71./', 'admin', 'andrey.elle@gmail.com', 'http://localhost/finalwork', '2020-05-08 22:20:28', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wdsfsdfsdsdfsdfp_commentmeta`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wdsfsdfsdsdfsdfp_comments`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wdsfsdfsdsdfsdfp_links`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wdsfsdfsdsdfsdfp_options`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wdsfsdfsdsdfsdfp_postmeta`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wdsfsdfsdsdfsdfp_posts`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wdsfsdfsdsdfsdfp_termmeta`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wdsfsdfsdsdfsdfp_terms`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wdsfsdfsdsdfsdfp_term_relationships`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wdsfsdfsdsdfsdfp_term_taxonomy`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wdsfsdfsdsdfsdfp_usermeta`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wdsfsdfsdsdfsdfp_users`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wdsfsdfsdsdfsdfp_commentmeta`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wdsfsdfsdsdfsdfp_comments`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wdsfsdfsdsdfsdfp_links`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wdsfsdfsdsdfsdfp_options`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT для таблицы `wdsfsdfsdsdfsdfp_postmeta`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=906;

--
-- AUTO_INCREMENT для таблицы `wdsfsdfsdsdfsdfp_posts`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT для таблицы `wdsfsdfsdsdfsdfp_termmeta`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wdsfsdfsdsdfsdfp_terms`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wdsfsdfsdsdfsdfp_term_taxonomy`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wdsfsdfsdsdfsdfp_usermeta`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `wdsfsdfsdsdfsdfp_users`
--
ALTER TABLE `wdsfsdfsdsdfsdfp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
