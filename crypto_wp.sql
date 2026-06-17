-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2026 at 04:44 PM
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
-- Database: `crypto_wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2026-06-16 15:45:21', '2026-06-16 15:45:21', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:6:{i:1781707532;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1781711132;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1781714721;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1781716521;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1781718321;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://crypto-wp.local', 'on'),
(3, 'home', 'http://crypto-wp.local', 'on'),
(4, 'blogname', 'CryptoWP - Forex &amp; Broker Reviews', 'on'),
(5, 'blogdescription', 'Compare the best regulated Forex &amp; CFD brokers', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'tuyen.it.developer@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'F j, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:117:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"broker/?$\";s:26:\"index.php?post_type=broker\";s:39:\"broker/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=broker&feed=$matches[1]\";s:34:\"broker/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=broker&feed=$matches[1]\";s:26:\"broker/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=broker&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"broker/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"broker/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"broker/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"broker/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"broker/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"broker/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"broker/([^/]+)/embed/?$\";s:39:\"index.php?broker=$matches[1]&embed=true\";s:27:\"broker/([^/]+)/trackback/?$\";s:33:\"index.php?broker=$matches[1]&tb=1\";s:47:\"broker/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?broker=$matches[1]&feed=$matches[2]\";s:42:\"broker/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?broker=$matches[1]&feed=$matches[2]\";s:35:\"broker/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?broker=$matches[1]&paged=$matches[2]\";s:42:\"broker/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?broker=$matches[1]&cpage=$matches[2]\";s:31:\"broker/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?broker=$matches[1]&page=$matches[2]\";s:23:\"broker/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"broker/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"broker/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"broker/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"broker/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"broker/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:23:\"index.php?sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:1:{i:0;s:33:\"broker-manager/broker-manager.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'crypto-broker', 'on'),
(42, 'stylesheet', 'crypto-broker', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '61833', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'posts', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:0:{}', 'on'),
(78, 'widget_text', 'a:0:{}', 'on'),
(79, 'widget_rss', 'a:0:{}', 'on'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '0', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1797176721', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'wp_notes_notify', '1', 'on'),
(102, 'initial_db_version', '61833', 'on'),
(103, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(104, 'fresh_site', '1', 'off'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:3:\"7.0\";s:5:\"files\";a:596:{i:0;s:31:\"accordion-heading/style-rtl.css\";i:1;s:35:\"accordion-heading/style-rtl.min.css\";i:2;s:27:\"accordion-heading/style.css\";i:3;s:31:\"accordion-heading/style.min.css\";i:4;s:28:\"accordion-item/style-rtl.css\";i:5;s:32:\"accordion-item/style-rtl.min.css\";i:6;s:24:\"accordion-item/style.css\";i:7;s:28:\"accordion-item/style.min.css\";i:8;s:29:\"accordion-panel/style-rtl.css\";i:9;s:33:\"accordion-panel/style-rtl.min.css\";i:10;s:25:\"accordion-panel/style.css\";i:11;s:29:\"accordion-panel/style.min.css\";i:12;s:23:\"accordion/style-rtl.css\";i:13;s:27:\"accordion/style-rtl.min.css\";i:14;s:19:\"accordion/style.css\";i:15;s:23:\"accordion/style.min.css\";i:16;s:22:\"archives/style-rtl.css\";i:17;s:26:\"archives/style-rtl.min.css\";i:18;s:18:\"archives/style.css\";i:19;s:22:\"archives/style.min.css\";i:20;s:20:\"audio/editor-rtl.css\";i:21;s:24:\"audio/editor-rtl.min.css\";i:22;s:16:\"audio/editor.css\";i:23;s:20:\"audio/editor.min.css\";i:24;s:19:\"audio/style-rtl.css\";i:25;s:23:\"audio/style-rtl.min.css\";i:26;s:15:\"audio/style.css\";i:27;s:19:\"audio/style.min.css\";i:28;s:19:\"audio/theme-rtl.css\";i:29;s:23:\"audio/theme-rtl.min.css\";i:30;s:15:\"audio/theme.css\";i:31;s:19:\"audio/theme.min.css\";i:32;s:21:\"avatar/editor-rtl.css\";i:33;s:25:\"avatar/editor-rtl.min.css\";i:34;s:17:\"avatar/editor.css\";i:35;s:21:\"avatar/editor.min.css\";i:36;s:20:\"avatar/style-rtl.css\";i:37;s:24:\"avatar/style-rtl.min.css\";i:38;s:16:\"avatar/style.css\";i:39;s:20:\"avatar/style.min.css\";i:40;s:25:\"breadcrumbs/style-rtl.css\";i:41;s:29:\"breadcrumbs/style-rtl.min.css\";i:42;s:21:\"breadcrumbs/style.css\";i:43;s:25:\"breadcrumbs/style.min.css\";i:44;s:21:\"button/editor-rtl.css\";i:45;s:25:\"button/editor-rtl.min.css\";i:46;s:17:\"button/editor.css\";i:47;s:21:\"button/editor.min.css\";i:48;s:20:\"button/style-rtl.css\";i:49;s:24:\"button/style-rtl.min.css\";i:50;s:16:\"button/style.css\";i:51;s:20:\"button/style.min.css\";i:52;s:22:\"buttons/editor-rtl.css\";i:53;s:26:\"buttons/editor-rtl.min.css\";i:54;s:18:\"buttons/editor.css\";i:55;s:22:\"buttons/editor.min.css\";i:56;s:21:\"buttons/style-rtl.css\";i:57;s:25:\"buttons/style-rtl.min.css\";i:58;s:17:\"buttons/style.css\";i:59;s:21:\"buttons/style.min.css\";i:60;s:22:\"calendar/style-rtl.css\";i:61;s:26:\"calendar/style-rtl.min.css\";i:62;s:18:\"calendar/style.css\";i:63;s:22:\"calendar/style.min.css\";i:64;s:25:\"categories/editor-rtl.css\";i:65;s:29:\"categories/editor-rtl.min.css\";i:66;s:21:\"categories/editor.css\";i:67;s:25:\"categories/editor.min.css\";i:68;s:24:\"categories/style-rtl.css\";i:69;s:28:\"categories/style-rtl.min.css\";i:70;s:20:\"categories/style.css\";i:71;s:24:\"categories/style.min.css\";i:72;s:19:\"code/editor-rtl.css\";i:73;s:23:\"code/editor-rtl.min.css\";i:74;s:15:\"code/editor.css\";i:75;s:19:\"code/editor.min.css\";i:76;s:18:\"code/style-rtl.css\";i:77;s:22:\"code/style-rtl.min.css\";i:78;s:14:\"code/style.css\";i:79;s:18:\"code/style.min.css\";i:80;s:18:\"code/theme-rtl.css\";i:81;s:22:\"code/theme-rtl.min.css\";i:82;s:14:\"code/theme.css\";i:83;s:18:\"code/theme.min.css\";i:84;s:22:\"columns/editor-rtl.css\";i:85;s:26:\"columns/editor-rtl.min.css\";i:86;s:18:\"columns/editor.css\";i:87;s:22:\"columns/editor.min.css\";i:88;s:21:\"columns/style-rtl.css\";i:89;s:25:\"columns/style-rtl.min.css\";i:90;s:17:\"columns/style.css\";i:91;s:21:\"columns/style.min.css\";i:92;s:33:\"comment-author-name/style-rtl.css\";i:93;s:37:\"comment-author-name/style-rtl.min.css\";i:94;s:29:\"comment-author-name/style.css\";i:95;s:33:\"comment-author-name/style.min.css\";i:96;s:29:\"comment-content/style-rtl.css\";i:97;s:33:\"comment-content/style-rtl.min.css\";i:98;s:25:\"comment-content/style.css\";i:99;s:29:\"comment-content/style.min.css\";i:100;s:26:\"comment-date/style-rtl.css\";i:101;s:30:\"comment-date/style-rtl.min.css\";i:102;s:22:\"comment-date/style.css\";i:103;s:26:\"comment-date/style.min.css\";i:104;s:31:\"comment-edit-link/style-rtl.css\";i:105;s:35:\"comment-edit-link/style-rtl.min.css\";i:106;s:27:\"comment-edit-link/style.css\";i:107;s:31:\"comment-edit-link/style.min.css\";i:108;s:32:\"comment-reply-link/style-rtl.css\";i:109;s:36:\"comment-reply-link/style-rtl.min.css\";i:110;s:28:\"comment-reply-link/style.css\";i:111;s:32:\"comment-reply-link/style.min.css\";i:112;s:30:\"comment-template/style-rtl.css\";i:113;s:34:\"comment-template/style-rtl.min.css\";i:114;s:26:\"comment-template/style.css\";i:115;s:30:\"comment-template/style.min.css\";i:116;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:117;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:118;s:38:\"comments-pagination-numbers/editor.css\";i:119;s:42:\"comments-pagination-numbers/editor.min.css\";i:120;s:34:\"comments-pagination/editor-rtl.css\";i:121;s:38:\"comments-pagination/editor-rtl.min.css\";i:122;s:30:\"comments-pagination/editor.css\";i:123;s:34:\"comments-pagination/editor.min.css\";i:124;s:33:\"comments-pagination/style-rtl.css\";i:125;s:37:\"comments-pagination/style-rtl.min.css\";i:126;s:29:\"comments-pagination/style.css\";i:127;s:33:\"comments-pagination/style.min.css\";i:128;s:29:\"comments-title/editor-rtl.css\";i:129;s:33:\"comments-title/editor-rtl.min.css\";i:130;s:25:\"comments-title/editor.css\";i:131;s:29:\"comments-title/editor.min.css\";i:132;s:23:\"comments/editor-rtl.css\";i:133;s:27:\"comments/editor-rtl.min.css\";i:134;s:19:\"comments/editor.css\";i:135;s:23:\"comments/editor.min.css\";i:136;s:22:\"comments/style-rtl.css\";i:137;s:26:\"comments/style-rtl.min.css\";i:138;s:18:\"comments/style.css\";i:139;s:22:\"comments/style.min.css\";i:140;s:20:\"cover/editor-rtl.css\";i:141;s:24:\"cover/editor-rtl.min.css\";i:142;s:16:\"cover/editor.css\";i:143;s:20:\"cover/editor.min.css\";i:144;s:19:\"cover/style-rtl.css\";i:145;s:23:\"cover/style-rtl.min.css\";i:146;s:15:\"cover/style.css\";i:147;s:19:\"cover/style.min.css\";i:148;s:22:\"details/editor-rtl.css\";i:149;s:26:\"details/editor-rtl.min.css\";i:150;s:18:\"details/editor.css\";i:151;s:22:\"details/editor.min.css\";i:152;s:21:\"details/style-rtl.css\";i:153;s:25:\"details/style-rtl.min.css\";i:154;s:17:\"details/style.css\";i:155;s:21:\"details/style.min.css\";i:156;s:20:\"embed/editor-rtl.css\";i:157;s:24:\"embed/editor-rtl.min.css\";i:158;s:16:\"embed/editor.css\";i:159;s:20:\"embed/editor.min.css\";i:160;s:19:\"embed/style-rtl.css\";i:161;s:23:\"embed/style-rtl.min.css\";i:162;s:15:\"embed/style.css\";i:163;s:19:\"embed/style.min.css\";i:164;s:19:\"embed/theme-rtl.css\";i:165;s:23:\"embed/theme-rtl.min.css\";i:166;s:15:\"embed/theme.css\";i:167;s:19:\"embed/theme.min.css\";i:168;s:19:\"file/editor-rtl.css\";i:169;s:23:\"file/editor-rtl.min.css\";i:170;s:15:\"file/editor.css\";i:171;s:19:\"file/editor.min.css\";i:172;s:18:\"file/style-rtl.css\";i:173;s:22:\"file/style-rtl.min.css\";i:174;s:14:\"file/style.css\";i:175;s:18:\"file/style.min.css\";i:176;s:23:\"footnotes/style-rtl.css\";i:177;s:27:\"footnotes/style-rtl.min.css\";i:178;s:19:\"footnotes/style.css\";i:179;s:23:\"footnotes/style.min.css\";i:180;s:23:\"freeform/editor-rtl.css\";i:181;s:27:\"freeform/editor-rtl.min.css\";i:182;s:19:\"freeform/editor.css\";i:183;s:23:\"freeform/editor.min.css\";i:184;s:22:\"gallery/editor-rtl.css\";i:185;s:26:\"gallery/editor-rtl.min.css\";i:186;s:18:\"gallery/editor.css\";i:187;s:22:\"gallery/editor.min.css\";i:188;s:21:\"gallery/style-rtl.css\";i:189;s:25:\"gallery/style-rtl.min.css\";i:190;s:17:\"gallery/style.css\";i:191;s:21:\"gallery/style.min.css\";i:192;s:21:\"gallery/theme-rtl.css\";i:193;s:25:\"gallery/theme-rtl.min.css\";i:194;s:17:\"gallery/theme.css\";i:195;s:21:\"gallery/theme.min.css\";i:196;s:20:\"group/editor-rtl.css\";i:197;s:24:\"group/editor-rtl.min.css\";i:198;s:16:\"group/editor.css\";i:199;s:20:\"group/editor.min.css\";i:200;s:19:\"group/style-rtl.css\";i:201;s:23:\"group/style-rtl.min.css\";i:202;s:15:\"group/style.css\";i:203;s:19:\"group/style.min.css\";i:204;s:19:\"group/theme-rtl.css\";i:205;s:23:\"group/theme-rtl.min.css\";i:206;s:15:\"group/theme.css\";i:207;s:19:\"group/theme.min.css\";i:208;s:21:\"heading/style-rtl.css\";i:209;s:25:\"heading/style-rtl.min.css\";i:210;s:17:\"heading/style.css\";i:211;s:21:\"heading/style.min.css\";i:212;s:19:\"html/editor-rtl.css\";i:213;s:23:\"html/editor-rtl.min.css\";i:214;s:15:\"html/editor.css\";i:215;s:19:\"html/editor.min.css\";i:216;s:19:\"icon/editor-rtl.css\";i:217;s:23:\"icon/editor-rtl.min.css\";i:218;s:15:\"icon/editor.css\";i:219;s:19:\"icon/editor.min.css\";i:220;s:18:\"icon/style-rtl.css\";i:221;s:22:\"icon/style-rtl.min.css\";i:222;s:14:\"icon/style.css\";i:223;s:18:\"icon/style.min.css\";i:224;s:20:\"image/editor-rtl.css\";i:225;s:24:\"image/editor-rtl.min.css\";i:226;s:16:\"image/editor.css\";i:227;s:20:\"image/editor.min.css\";i:228;s:19:\"image/style-rtl.css\";i:229;s:23:\"image/style-rtl.min.css\";i:230;s:15:\"image/style.css\";i:231;s:19:\"image/style.min.css\";i:232;s:19:\"image/theme-rtl.css\";i:233;s:23:\"image/theme-rtl.min.css\";i:234;s:15:\"image/theme.css\";i:235;s:19:\"image/theme.min.css\";i:236;s:29:\"latest-comments/style-rtl.css\";i:237;s:33:\"latest-comments/style-rtl.min.css\";i:238;s:25:\"latest-comments/style.css\";i:239;s:29:\"latest-comments/style.min.css\";i:240;s:27:\"latest-posts/editor-rtl.css\";i:241;s:31:\"latest-posts/editor-rtl.min.css\";i:242;s:23:\"latest-posts/editor.css\";i:243;s:27:\"latest-posts/editor.min.css\";i:244;s:26:\"latest-posts/style-rtl.css\";i:245;s:30:\"latest-posts/style-rtl.min.css\";i:246;s:22:\"latest-posts/style.css\";i:247;s:26:\"latest-posts/style.min.css\";i:248;s:18:\"list/style-rtl.css\";i:249;s:22:\"list/style-rtl.min.css\";i:250;s:14:\"list/style.css\";i:251;s:18:\"list/style.min.css\";i:252;s:22:\"loginout/style-rtl.css\";i:253;s:26:\"loginout/style-rtl.min.css\";i:254;s:18:\"loginout/style.css\";i:255;s:22:\"loginout/style.min.css\";i:256;s:19:\"math/editor-rtl.css\";i:257;s:23:\"math/editor-rtl.min.css\";i:258;s:15:\"math/editor.css\";i:259;s:19:\"math/editor.min.css\";i:260;s:18:\"math/style-rtl.css\";i:261;s:22:\"math/style-rtl.min.css\";i:262;s:14:\"math/style.css\";i:263;s:18:\"math/style.min.css\";i:264;s:25:\"media-text/editor-rtl.css\";i:265;s:29:\"media-text/editor-rtl.min.css\";i:266;s:21:\"media-text/editor.css\";i:267;s:25:\"media-text/editor.min.css\";i:268;s:24:\"media-text/style-rtl.css\";i:269;s:28:\"media-text/style-rtl.min.css\";i:270;s:20:\"media-text/style.css\";i:271;s:24:\"media-text/style.min.css\";i:272;s:19:\"more/editor-rtl.css\";i:273;s:23:\"more/editor-rtl.min.css\";i:274;s:15:\"more/editor.css\";i:275;s:19:\"more/editor.min.css\";i:276;s:30:\"navigation-link/editor-rtl.css\";i:277;s:34:\"navigation-link/editor-rtl.min.css\";i:278;s:26:\"navigation-link/editor.css\";i:279;s:30:\"navigation-link/editor.min.css\";i:280;s:29:\"navigation-link/style-rtl.css\";i:281;s:33:\"navigation-link/style-rtl.min.css\";i:282;s:25:\"navigation-link/style.css\";i:283;s:29:\"navigation-link/style.min.css\";i:284;s:38:\"navigation-overlay-close/style-rtl.css\";i:285;s:42:\"navigation-overlay-close/style-rtl.min.css\";i:286;s:34:\"navigation-overlay-close/style.css\";i:287;s:38:\"navigation-overlay-close/style.min.css\";i:288;s:33:\"navigation-submenu/editor-rtl.css\";i:289;s:37:\"navigation-submenu/editor-rtl.min.css\";i:290;s:29:\"navigation-submenu/editor.css\";i:291;s:33:\"navigation-submenu/editor.min.css\";i:292;s:25:\"navigation/editor-rtl.css\";i:293;s:29:\"navigation/editor-rtl.min.css\";i:294;s:21:\"navigation/editor.css\";i:295;s:25:\"navigation/editor.min.css\";i:296;s:24:\"navigation/style-rtl.css\";i:297;s:28:\"navigation/style-rtl.min.css\";i:298;s:20:\"navigation/style.css\";i:299;s:24:\"navigation/style.min.css\";i:300;s:23:\"nextpage/editor-rtl.css\";i:301;s:27:\"nextpage/editor-rtl.min.css\";i:302;s:19:\"nextpage/editor.css\";i:303;s:23:\"nextpage/editor.min.css\";i:304;s:24:\"page-list/editor-rtl.css\";i:305;s:28:\"page-list/editor-rtl.min.css\";i:306;s:20:\"page-list/editor.css\";i:307;s:24:\"page-list/editor.min.css\";i:308;s:23:\"page-list/style-rtl.css\";i:309;s:27:\"page-list/style-rtl.min.css\";i:310;s:19:\"page-list/style.css\";i:311;s:23:\"page-list/style.min.css\";i:312;s:24:\"paragraph/editor-rtl.css\";i:313;s:28:\"paragraph/editor-rtl.min.css\";i:314;s:20:\"paragraph/editor.css\";i:315;s:24:\"paragraph/editor.min.css\";i:316;s:23:\"paragraph/style-rtl.css\";i:317;s:27:\"paragraph/style-rtl.min.css\";i:318;s:19:\"paragraph/style.css\";i:319;s:23:\"paragraph/style.min.css\";i:320;s:35:\"post-author-biography/style-rtl.css\";i:321;s:39:\"post-author-biography/style-rtl.min.css\";i:322;s:31:\"post-author-biography/style.css\";i:323;s:35:\"post-author-biography/style.min.css\";i:324;s:30:\"post-author-name/style-rtl.css\";i:325;s:34:\"post-author-name/style-rtl.min.css\";i:326;s:26:\"post-author-name/style.css\";i:327;s:30:\"post-author-name/style.min.css\";i:328;s:26:\"post-author/editor-rtl.css\";i:329;s:30:\"post-author/editor-rtl.min.css\";i:330;s:22:\"post-author/editor.css\";i:331;s:26:\"post-author/editor.min.css\";i:332;s:25:\"post-author/style-rtl.css\";i:333;s:29:\"post-author/style-rtl.min.css\";i:334;s:21:\"post-author/style.css\";i:335;s:25:\"post-author/style.min.css\";i:336;s:33:\"post-comments-count/style-rtl.css\";i:337;s:37:\"post-comments-count/style-rtl.min.css\";i:338;s:29:\"post-comments-count/style.css\";i:339;s:33:\"post-comments-count/style.min.css\";i:340;s:33:\"post-comments-form/editor-rtl.css\";i:341;s:37:\"post-comments-form/editor-rtl.min.css\";i:342;s:29:\"post-comments-form/editor.css\";i:343;s:33:\"post-comments-form/editor.min.css\";i:344;s:32:\"post-comments-form/style-rtl.css\";i:345;s:36:\"post-comments-form/style-rtl.min.css\";i:346;s:28:\"post-comments-form/style.css\";i:347;s:32:\"post-comments-form/style.min.css\";i:348;s:32:\"post-comments-link/style-rtl.css\";i:349;s:36:\"post-comments-link/style-rtl.min.css\";i:350;s:28:\"post-comments-link/style.css\";i:351;s:32:\"post-comments-link/style.min.css\";i:352;s:26:\"post-content/style-rtl.css\";i:353;s:30:\"post-content/style-rtl.min.css\";i:354;s:22:\"post-content/style.css\";i:355;s:26:\"post-content/style.min.css\";i:356;s:23:\"post-date/style-rtl.css\";i:357;s:27:\"post-date/style-rtl.min.css\";i:358;s:19:\"post-date/style.css\";i:359;s:23:\"post-date/style.min.css\";i:360;s:27:\"post-excerpt/editor-rtl.css\";i:361;s:31:\"post-excerpt/editor-rtl.min.css\";i:362;s:23:\"post-excerpt/editor.css\";i:363;s:27:\"post-excerpt/editor.min.css\";i:364;s:26:\"post-excerpt/style-rtl.css\";i:365;s:30:\"post-excerpt/style-rtl.min.css\";i:366;s:22:\"post-excerpt/style.css\";i:367;s:26:\"post-excerpt/style.min.css\";i:368;s:34:\"post-featured-image/editor-rtl.css\";i:369;s:38:\"post-featured-image/editor-rtl.min.css\";i:370;s:30:\"post-featured-image/editor.css\";i:371;s:34:\"post-featured-image/editor.min.css\";i:372;s:33:\"post-featured-image/style-rtl.css\";i:373;s:37:\"post-featured-image/style-rtl.min.css\";i:374;s:29:\"post-featured-image/style.css\";i:375;s:33:\"post-featured-image/style.min.css\";i:376;s:34:\"post-navigation-link/style-rtl.css\";i:377;s:38:\"post-navigation-link/style-rtl.min.css\";i:378;s:30:\"post-navigation-link/style.css\";i:379;s:34:\"post-navigation-link/style.min.css\";i:380;s:27:\"post-template/style-rtl.css\";i:381;s:31:\"post-template/style-rtl.min.css\";i:382;s:23:\"post-template/style.css\";i:383;s:27:\"post-template/style.min.css\";i:384;s:24:\"post-terms/style-rtl.css\";i:385;s:28:\"post-terms/style-rtl.min.css\";i:386;s:20:\"post-terms/style.css\";i:387;s:24:\"post-terms/style.min.css\";i:388;s:31:\"post-time-to-read/style-rtl.css\";i:389;s:35:\"post-time-to-read/style-rtl.min.css\";i:390;s:27:\"post-time-to-read/style.css\";i:391;s:31:\"post-time-to-read/style.min.css\";i:392;s:24:\"post-title/style-rtl.css\";i:393;s:28:\"post-title/style-rtl.min.css\";i:394;s:20:\"post-title/style.css\";i:395;s:24:\"post-title/style.min.css\";i:396;s:26:\"preformatted/style-rtl.css\";i:397;s:30:\"preformatted/style-rtl.min.css\";i:398;s:22:\"preformatted/style.css\";i:399;s:26:\"preformatted/style.min.css\";i:400;s:24:\"pullquote/editor-rtl.css\";i:401;s:28:\"pullquote/editor-rtl.min.css\";i:402;s:20:\"pullquote/editor.css\";i:403;s:24:\"pullquote/editor.min.css\";i:404;s:23:\"pullquote/style-rtl.css\";i:405;s:27:\"pullquote/style-rtl.min.css\";i:406;s:19:\"pullquote/style.css\";i:407;s:23:\"pullquote/style.min.css\";i:408;s:23:\"pullquote/theme-rtl.css\";i:409;s:27:\"pullquote/theme-rtl.min.css\";i:410;s:19:\"pullquote/theme.css\";i:411;s:23:\"pullquote/theme.min.css\";i:412;s:39:\"query-pagination-numbers/editor-rtl.css\";i:413;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:414;s:35:\"query-pagination-numbers/editor.css\";i:415;s:39:\"query-pagination-numbers/editor.min.css\";i:416;s:31:\"query-pagination/editor-rtl.css\";i:417;s:35:\"query-pagination/editor-rtl.min.css\";i:418;s:27:\"query-pagination/editor.css\";i:419;s:31:\"query-pagination/editor.min.css\";i:420;s:30:\"query-pagination/style-rtl.css\";i:421;s:34:\"query-pagination/style-rtl.min.css\";i:422;s:26:\"query-pagination/style.css\";i:423;s:30:\"query-pagination/style.min.css\";i:424;s:25:\"query-title/style-rtl.css\";i:425;s:29:\"query-title/style-rtl.min.css\";i:426;s:21:\"query-title/style.css\";i:427;s:25:\"query-title/style.min.css\";i:428;s:25:\"query-total/style-rtl.css\";i:429;s:29:\"query-total/style-rtl.min.css\";i:430;s:21:\"query-total/style.css\";i:431;s:25:\"query-total/style.min.css\";i:432;s:20:\"query/editor-rtl.css\";i:433;s:24:\"query/editor-rtl.min.css\";i:434;s:16:\"query/editor.css\";i:435;s:20:\"query/editor.min.css\";i:436;s:19:\"quote/style-rtl.css\";i:437;s:23:\"quote/style-rtl.min.css\";i:438;s:15:\"quote/style.css\";i:439;s:19:\"quote/style.min.css\";i:440;s:19:\"quote/theme-rtl.css\";i:441;s:23:\"quote/theme-rtl.min.css\";i:442;s:15:\"quote/theme.css\";i:443;s:19:\"quote/theme.min.css\";i:444;s:23:\"read-more/style-rtl.css\";i:445;s:27:\"read-more/style-rtl.min.css\";i:446;s:19:\"read-more/style.css\";i:447;s:23:\"read-more/style.min.css\";i:448;s:18:\"rss/editor-rtl.css\";i:449;s:22:\"rss/editor-rtl.min.css\";i:450;s:14:\"rss/editor.css\";i:451;s:18:\"rss/editor.min.css\";i:452;s:17:\"rss/style-rtl.css\";i:453;s:21:\"rss/style-rtl.min.css\";i:454;s:13:\"rss/style.css\";i:455;s:17:\"rss/style.min.css\";i:456;s:21:\"search/editor-rtl.css\";i:457;s:25:\"search/editor-rtl.min.css\";i:458;s:17:\"search/editor.css\";i:459;s:21:\"search/editor.min.css\";i:460;s:20:\"search/style-rtl.css\";i:461;s:24:\"search/style-rtl.min.css\";i:462;s:16:\"search/style.css\";i:463;s:20:\"search/style.min.css\";i:464;s:20:\"search/theme-rtl.css\";i:465;s:24:\"search/theme-rtl.min.css\";i:466;s:16:\"search/theme.css\";i:467;s:20:\"search/theme.min.css\";i:468;s:24:\"separator/editor-rtl.css\";i:469;s:28:\"separator/editor-rtl.min.css\";i:470;s:20:\"separator/editor.css\";i:471;s:24:\"separator/editor.min.css\";i:472;s:23:\"separator/style-rtl.css\";i:473;s:27:\"separator/style-rtl.min.css\";i:474;s:19:\"separator/style.css\";i:475;s:23:\"separator/style.min.css\";i:476;s:23:\"separator/theme-rtl.css\";i:477;s:27:\"separator/theme-rtl.min.css\";i:478;s:19:\"separator/theme.css\";i:479;s:23:\"separator/theme.min.css\";i:480;s:24:\"shortcode/editor-rtl.css\";i:481;s:28:\"shortcode/editor-rtl.min.css\";i:482;s:20:\"shortcode/editor.css\";i:483;s:24:\"shortcode/editor.min.css\";i:484;s:24:\"site-logo/editor-rtl.css\";i:485;s:28:\"site-logo/editor-rtl.min.css\";i:486;s:20:\"site-logo/editor.css\";i:487;s:24:\"site-logo/editor.min.css\";i:488;s:23:\"site-logo/style-rtl.css\";i:489;s:27:\"site-logo/style-rtl.min.css\";i:490;s:19:\"site-logo/style.css\";i:491;s:23:\"site-logo/style.min.css\";i:492;s:27:\"site-tagline/editor-rtl.css\";i:493;s:31:\"site-tagline/editor-rtl.min.css\";i:494;s:23:\"site-tagline/editor.css\";i:495;s:27:\"site-tagline/editor.min.css\";i:496;s:26:\"site-tagline/style-rtl.css\";i:497;s:30:\"site-tagline/style-rtl.min.css\";i:498;s:22:\"site-tagline/style.css\";i:499;s:26:\"site-tagline/style.min.css\";i:500;s:25:\"site-title/editor-rtl.css\";i:501;s:29:\"site-title/editor-rtl.min.css\";i:502;s:21:\"site-title/editor.css\";i:503;s:25:\"site-title/editor.min.css\";i:504;s:24:\"site-title/style-rtl.css\";i:505;s:28:\"site-title/style-rtl.min.css\";i:506;s:20:\"site-title/style.css\";i:507;s:24:\"site-title/style.min.css\";i:508;s:26:\"social-link/editor-rtl.css\";i:509;s:30:\"social-link/editor-rtl.min.css\";i:510;s:22:\"social-link/editor.css\";i:511;s:26:\"social-link/editor.min.css\";i:512;s:27:\"social-links/editor-rtl.css\";i:513;s:31:\"social-links/editor-rtl.min.css\";i:514;s:23:\"social-links/editor.css\";i:515;s:27:\"social-links/editor.min.css\";i:516;s:26:\"social-links/style-rtl.css\";i:517;s:30:\"social-links/style-rtl.min.css\";i:518;s:22:\"social-links/style.css\";i:519;s:26:\"social-links/style.min.css\";i:520;s:21:\"spacer/editor-rtl.css\";i:521;s:25:\"spacer/editor-rtl.min.css\";i:522;s:17:\"spacer/editor.css\";i:523;s:21:\"spacer/editor.min.css\";i:524;s:20:\"spacer/style-rtl.css\";i:525;s:24:\"spacer/style-rtl.min.css\";i:526;s:16:\"spacer/style.css\";i:527;s:20:\"spacer/style.min.css\";i:528;s:20:\"table/editor-rtl.css\";i:529;s:24:\"table/editor-rtl.min.css\";i:530;s:16:\"table/editor.css\";i:531;s:20:\"table/editor.min.css\";i:532;s:19:\"table/style-rtl.css\";i:533;s:23:\"table/style-rtl.min.css\";i:534;s:15:\"table/style.css\";i:535;s:19:\"table/style.min.css\";i:536;s:19:\"table/theme-rtl.css\";i:537;s:23:\"table/theme-rtl.min.css\";i:538;s:15:\"table/theme.css\";i:539;s:19:\"table/theme.min.css\";i:540;s:23:\"tag-cloud/style-rtl.css\";i:541;s:27:\"tag-cloud/style-rtl.min.css\";i:542;s:19:\"tag-cloud/style.css\";i:543;s:23:\"tag-cloud/style.min.css\";i:544;s:28:\"template-part/editor-rtl.css\";i:545;s:32:\"template-part/editor-rtl.min.css\";i:546;s:24:\"template-part/editor.css\";i:547;s:28:\"template-part/editor.min.css\";i:548;s:27:\"template-part/theme-rtl.css\";i:549;s:31:\"template-part/theme-rtl.min.css\";i:550;s:23:\"template-part/theme.css\";i:551;s:27:\"template-part/theme.min.css\";i:552;s:24:\"term-count/style-rtl.css\";i:553;s:28:\"term-count/style-rtl.min.css\";i:554;s:20:\"term-count/style.css\";i:555;s:24:\"term-count/style.min.css\";i:556;s:30:\"term-description/style-rtl.css\";i:557;s:34:\"term-description/style-rtl.min.css\";i:558;s:26:\"term-description/style.css\";i:559;s:30:\"term-description/style.min.css\";i:560;s:23:\"term-name/style-rtl.css\";i:561;s:27:\"term-name/style-rtl.min.css\";i:562;s:19:\"term-name/style.css\";i:563;s:23:\"term-name/style.min.css\";i:564;s:28:\"term-template/editor-rtl.css\";i:565;s:32:\"term-template/editor-rtl.min.css\";i:566;s:24:\"term-template/editor.css\";i:567;s:28:\"term-template/editor.min.css\";i:568;s:27:\"term-template/style-rtl.css\";i:569;s:31:\"term-template/style-rtl.min.css\";i:570;s:23:\"term-template/style.css\";i:571;s:27:\"term-template/style.min.css\";i:572;s:27:\"text-columns/editor-rtl.css\";i:573;s:31:\"text-columns/editor-rtl.min.css\";i:574;s:23:\"text-columns/editor.css\";i:575;s:27:\"text-columns/editor.min.css\";i:576;s:26:\"text-columns/style-rtl.css\";i:577;s:30:\"text-columns/style-rtl.min.css\";i:578;s:22:\"text-columns/style.css\";i:579;s:26:\"text-columns/style.min.css\";i:580;s:19:\"verse/style-rtl.css\";i:581;s:23:\"verse/style-rtl.min.css\";i:582;s:15:\"verse/style.css\";i:583;s:19:\"verse/style.min.css\";i:584;s:20:\"video/editor-rtl.css\";i:585;s:24:\"video/editor-rtl.min.css\";i:586;s:16:\"video/editor.css\";i:587;s:20:\"video/editor.min.css\";i:588;s:19:\"video/style-rtl.css\";i:589;s:23:\"video/style-rtl.min.css\";i:590;s:15:\"video/style.css\";i:591;s:19:\"video/style.min.css\";i:592;s:19:\"video/theme-rtl.css\";i:593;s:23:\"video/theme-rtl.min.css\";i:594;s:15:\"video/theme.css\";i:595;s:19:\"video/theme.min.css\";}}', 'on'),
(126, '_site_transient_timeout_wp_theme_files_patterns-eac5b77e0ee727cd9c15ec8c0e1441ee', '1781627607', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(127, '_site_transient_wp_theme_files_patterns-eac5b77e0ee727cd9c15ec8c0e1441ee', 'a:2:{s:7:\"version\";s:3:\"1.5\";s:8:\"patterns\";a:98:{s:21:\"banner-about-book.php\";a:4:{s:5:\"title\";s:28:\"Banner with book description\";s:4:\"slug\";s:34:\"twentytwentyfive/banner-about-book\";s:11:\"description\";s:66:\"Banner with book description and accompanying image for promotion.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:28:\"banner-cover-big-heading.php\";a:4:{s:5:\"title\";s:22:\"Cover with big heading\";s:4:\"slug\";s:41:\"twentytwentyfive/banner-cover-big-heading\";s:11:\"description\";s:82:\"A full-width cover section with a large background image and an oversized heading.\";s:10:\"categories\";a:3:{i:0;s:6:\"banner\";i:1;s:5:\"about\";i:2;s:8:\"featured\";}}s:22:\"banner-intro-image.php\";a:4:{s:5:\"title\";s:49:\"Short heading and paragraph and image on the left\";s:4:\"slug\";s:35:\"twentytwentyfive/banner-intro-image\";s:11:\"description\";s:68:\"A Intro pattern with Short heading, paragraph and image on the left.\";s:10:\"categories\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}}s:16:\"banner-intro.php\";a:4:{s:5:\"title\";s:35:\"Intro with left-aligned description\";s:4:\"slug\";s:29:\"twentytwentyfive/banner-intro\";s:11:\"description\";s:66:\"A large left-aligned heading with a brand name emphasized in bold.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:17:\"banner-poster.php\";a:4:{s:5:\"title\";s:19:\"Poster-like section\";s:4:\"slug\";s:30:\"twentytwentyfive/banner-poster\";s:11:\"description\";s:78:\"A section that can be used as a banner or a landing page to announce an event.\";s:10:\"categories\";a:2:{i:0;s:6:\"banner\";i:1;s:5:\"media\";}}s:43:\"banner-with-description-and-images-grid.php\";a:4:{s:5:\"title\";s:39:\"Banner with description and images grid\";s:4:\"slug\";s:47:\"twentytwentyfive/banner-description-images-grid\";s:11:\"description\";s:75:\"A banner with a short paragraph, and two images displayed in a grid layout.\";s:10:\"categories\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}}s:18:\"binding-format.php\";a:4:{s:5:\"title\";s:16:\"Post format name\";s:4:\"slug\";s:31:\"twentytwentyfive/binding-format\";s:11:\"description\";s:75:\"Prints the name of the post format with the help of the Block Bindings API.\";s:10:\"categories\";a:1:{i:0;s:28:\"twentytwentyfive_post-format\";}}s:12:\"comments.php\";a:5:{s:5:\"title\";s:8:\"Comments\";s:4:\"slug\";s:25:\"twentytwentyfive/comments\";s:11:\"description\";s:63:\"Comments area with comments list, pagination, and comment form.\";s:10:\"categories\";a:1:{i:0;s:4:\"text\";}s:10:\"blockTypes\";a:1:{i:0;s:13:\"core/comments\";}}s:32:\"contact-centered-social-link.php\";a:5:{s:5:\"title\";s:30:\"Centered link and social links\";s:4:\"slug\";s:45:\"twentytwentyfive/contact-centered-social-link\";s:11:\"description\";s:73:\"Centered contact section with a prominent message and social media links.\";s:10:\"categories\";a:1:{i:0;s:7:\"contact\";}s:8:\"keywords\";a:3:{i:0;s:7:\"contact\";i:1;s:3:\"faq\";i:2;s:9:\"questions\";}}s:26:\"contact-info-locations.php\";a:6:{s:5:\"title\";s:27:\"Contact, info and locations\";s:4:\"slug\";s:39:\"twentytwentyfive/contact-info-locations\";s:11:\"description\";s:78:\"Contact section with social media links, email, and multiple location details.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:7:\"contact\";}s:8:\"keywords\";a:2:{i:0;s:7:\"contact\";i:1;s:8:\"location\";}}s:29:\"contact-location-and-link.php\";a:4:{s:5:\"title\";s:25:\"Contact location and link\";s:4:\"slug\";s:42:\"twentytwentyfive/contact-location-and-link\";s:11:\"description\";s:89:\"Contact section with a location address, a directions link, and an image of the location.\";s:10:\"categories\";a:2:{i:0;s:7:\"contact\";i:1;s:8:\"featured\";}}s:18:\"cta-book-links.php\";a:4:{s:5:\"title\";s:30:\"Call to action with book links\";s:4:\"slug\";s:31:\"twentytwentyfive/cta-book-links\";s:11:\"description\";s:74:\"A call to action section with links to get the book in different websites.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:22:\"cta-book-locations.php\";a:4:{s:5:\"title\";s:29:\"Call to action with locations\";s:4:\"slug\";s:35:\"twentytwentyfive/cta-book-locations\";s:11:\"description\";s:82:\"A call to action section with links to get the book in the most popular locations.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:24:\"cta-centered-heading.php\";a:4:{s:5:\"title\";s:16:\"Centered heading\";s:4:\"slug\";s:37:\"twentytwentyfive/cta-centered-heading\";s:11:\"description\";s:53:\"A hero with a centered heading, paragraph and button.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:19:\"cta-events-list.php\";a:4:{s:5:\"title\";s:11:\"Events list\";s:4:\"slug\";s:32:\"twentytwentyfive/cta-events-list\";s:11:\"description\";s:37:\"A list of events with call to action.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:26:\"cta-grid-products-link.php\";a:5:{s:5:\"title\";s:54:\"Call to action with grid layout with products and link\";s:4:\"slug\";s:39:\"twentytwentyfive/cta-grid-products-link\";s:11:\"description\";s:42:\"A call to action featuring product images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"featured\";}}s:22:\"cta-heading-search.php\";a:4:{s:5:\"title\";s:23:\"Heading and search form\";s:4:\"slug\";s:35:\"twentytwentyfive/cta-heading-search\";s:11:\"description\";s:54:\"Large heading with a search form for quick navigation.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:18:\"cta-newsletter.php\";a:5:{s:5:\"title\";s:18:\"Newsletter sign-up\";s:4:\"slug\";s:31:\"twentytwentyfive/cta-newsletter\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}s:8:\"keywords\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:10:\"newsletter\";}}s:15:\"event-3-col.php\";a:5:{s:5:\"title\";s:46:\"Events, 3 columns with event images and titles\";s:4:\"slug\";s:28:\"twentytwentyfive/event-3-col\";s:11:\"description\";s:95:\"A header with title and text and three columns that show 3 events with their images and titles.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}s:8:\"keywords\";a:3:{i:0;s:6:\"events\";i:1;s:7:\"columns\";i:2;s:6:\"images\";}}s:14:\"event-rsvp.php\";a:7:{s:5:\"title\";s:10:\"Event RSVP\";s:4:\"slug\";s:27:\"twentytwentyfive/event-rsvp\";s:11:\"description\";s:64:\"RSVP for an upcoming event with a cover image and event details.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}s:8:\"keywords\";a:3:{i:0;s:14:\"call-to-action\";i:1;s:4:\"rsvp\";i:2;s:5:\"event\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:18:\"event-schedule.php\";a:5:{s:5:\"title\";s:14:\"Event schedule\";s:4:\"slug\";s:31:\"twentytwentyfive/event-schedule\";s:11:\"description\";s:54:\"A section with specified dates and times for an event.\";s:10:\"categories\";a:1:{i:0;s:5:\"about\";}s:8:\"keywords\";a:4:{i:0;s:6:\"events\";i:1;s:6:\"agenda\";i:2;s:8:\"schedule\";i:3;s:8:\"lectures\";}}s:19:\"footer-centered.php\";a:5:{s:5:\"title\";s:15:\"Centered footer\";s:4:\"slug\";s:32:\"twentytwentyfive/footer-centered\";s:11:\"description\";s:44:\"Footer with centered site title and tagline.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:18:\"footer-columns.php\";a:5:{s:5:\"title\";s:19:\"Footer with columns\";s:4:\"slug\";s:31:\"twentytwentyfive/footer-columns\";s:11:\"description\";s:45:\"Footer columns with title, tagline and links.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:21:\"footer-newsletter.php\";a:5:{s:5:\"title\";s:29:\"Footer with newsletter signup\";s:4:\"slug\";s:34:\"twentytwentyfive/footer-newsletter\";s:11:\"description\";s:51:\"Footer with large site title and newsletter signup.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:17:\"footer-social.php\";a:5:{s:5:\"title\";s:33:\"Centered footer with social links\";s:4:\"slug\";s:30:\"twentytwentyfive/footer-social\";s:11:\"description\";s:49:\"Footer with centered site title and social links.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:10:\"footer.php\";a:5:{s:5:\"title\";s:6:\"Footer\";s:4:\"slug\";s:23:\"twentytwentyfive/footer\";s:11:\"description\";s:51:\"Footer columns with logo, title, tagline and links.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:16:\"format-audio.php\";a:4:{s:5:\"title\";s:12:\"Audio format\";s:4:\"slug\";s:29:\"twentytwentyfive/format-audio\";s:11:\"description\";s:73:\"An audio post format with an image, title, audio player, and description.\";s:10:\"categories\";a:1:{i:0;s:28:\"twentytwentyfive_post-format\";}}s:15:\"format-link.php\";a:4:{s:5:\"title\";s:11:\"Link format\";s:4:\"slug\";s:28:\"twentytwentyfive/format-link\";s:11:\"description\";s:77:\"A link post format with a description and an emphasized link for key content.\";s:10:\"categories\";a:1:{i:0;s:28:\"twentytwentyfive_post-format\";}}s:15:\"grid-videos.php\";a:4:{s:5:\"title\";s:16:\"Grid with videos\";s:4:\"slug\";s:28:\"twentytwentyfive/grid-videos\";s:11:\"description\";s:19:\"A grid with videos.\";s:10:\"categories\";a:1:{i:0;s:5:\"about\";}}s:24:\"grid-with-categories.php\";a:5:{s:5:\"title\";s:20:\"Grid with categories\";s:4:\"slug\";s:37:\"twentytwentyfive/grid-with-categories\";s:11:\"description\";s:41:\"A grid section with different categories.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:19:\"header-centered.php\";a:5:{s:5:\"title\";s:20:\"Centered site header\";s:4:\"slug\";s:32:\"twentytwentyfive/header-centered\";s:11:\"description\";s:52:\"Site header with centered site title and navigation.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:18:\"header-columns.php\";a:5:{s:5:\"title\";s:19:\"Header with columns\";s:4:\"slug\";s:31:\"twentytwentyfive/header-columns\";s:11:\"description\";s:54:\"Site header with site title and navigation in columns.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:22:\"header-large-title.php\";a:5:{s:5:\"title\";s:23:\"Header with large title\";s:4:\"slug\";s:35:\"twentytwentyfive/header-large-title\";s:11:\"description\";s:63:\"Site header with large site title and right-aligned navigation.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:10:\"header.php\";a:5:{s:5:\"title\";s:6:\"Header\";s:4:\"slug\";s:23:\"twentytwentyfive/header\";s:11:\"description\";s:43:\"Site header with site title and navigation.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:36:\"heading-and-paragraph-with-image.php\";a:4:{s:5:\"title\";s:45:\"Heading and paragraph with image on the right\";s:4:\"slug\";s:49:\"twentytwentyfive/heading-and-paragraph-with-image\";s:11:\"description\";s:89:\"A two-column section with a heading and paragraph on the left, and an image on the right.\";s:10:\"categories\";a:1:{i:0;s:5:\"about\";}}s:13:\"hero-book.php\";a:5:{s:5:\"title\";s:9:\"Hero book\";s:4:\"slug\";s:26:\"twentytwentyfive/hero-book\";s:11:\"description\";s:66:\"A hero section for the book with a description and pre-order link.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}s:8:\"keywords\";a:3:{i:0;s:7:\"podcast\";i:1;s:4:\"hero\";i:2;s:7:\"stories\";}}s:25:\"hero-full-width-image.php\";a:4:{s:5:\"title\";s:22:\"Hero, full width image\";s:4:\"slug\";s:38:\"twentytwentyfive/hero-full-width-image\";s:11:\"description\";s:68:\"A hero with a full width image, heading, short paragraph and button.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:41:\"hero-overlapped-book-cover-with-links.php\";a:4:{s:5:\"title\";s:38:\"Hero, overlapped book cover with links\";s:4:\"slug\";s:54:\"twentytwentyfive/hero-overlapped-book-cover-with-links\";s:11:\"description\";s:47:\"A hero with an overlapped book cover and links.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:16:\"hero-podcast.php\";a:5:{s:5:\"title\";s:12:\"Hero podcast\";s:4:\"slug\";s:29:\"twentytwentyfive/hero-podcast\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}s:8:\"keywords\";a:3:{i:0;s:7:\"podcast\";i:1;s:4:\"hero\";i:2;s:7:\"stories\";}}s:14:\"hidden-404.php\";a:4:{s:5:\"title\";s:3:\"404\";s:4:\"slug\";s:27:\"twentytwentyfive/hidden-404\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:23:\"hidden-blog-heading.php\";a:4:{s:5:\"title\";s:19:\"Hidden blog heading\";s:4:\"slug\";s:36:\"twentytwentyfive/hidden-blog-heading\";s:11:\"description\";s:52:\"Hidden heading for the home page and index template.\";s:8:\"inserter\";b:0;}s:17:\"hidden-search.php\";a:4:{s:5:\"title\";s:6:\"Search\";s:4:\"slug\";s:30:\"twentytwentyfive/hidden-search\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:18:\"hidden-sidebar.php\";a:4:{s:5:\"title\";s:7:\"Sidebar\";s:4:\"slug\";s:31:\"twentytwentyfive/hidden-sidebar\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:21:\"hidden-written-by.php\";a:4:{s:5:\"title\";s:10:\"Written by\";s:4:\"slug\";s:34:\"twentytwentyfive/hidden-written-by\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:9:\"logos.php\";a:4:{s:5:\"title\";s:5:\"Logos\";s:4:\"slug\";s:22:\"twentytwentyfive/logos\";s:11:\"description\";s:77:\"Showcasing the podcast\'s clients with a heading and a series of client logos.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:24:\"media-instagram-grid.php\";a:5:{s:5:\"title\";s:14:\"Instagram grid\";s:4:\"slug\";s:37:\"twentytwentyfive/media-instagram-grid\";s:11:\"description\";s:62:\"A grid section with photos and a link to an Instagram profile.\";s:13:\"viewportWidth\";i:1440;s:10:\"categories\";a:3:{i:0;s:5:\"media\";i:1;s:7:\"gallery\";i:2;s:8:\"featured\";}}s:14:\"more-posts.php\";a:5:{s:5:\"title\";s:10:\"More posts\";s:4:\"slug\";s:27:\"twentytwentyfive/more-posts\";s:11:\"description\";s:45:\"Displays a list of posts with title and date.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:21:\"overlapped-images.php\";a:4:{s:5:\"title\";s:41:\"Overlapping images and paragraph on right\";s:4:\"slug\";s:34:\"twentytwentyfive/overlapped-images\";s:11:\"description\";s:53:\"A section with overlapping images, and a description.\";s:10:\"categories\";a:2:{i:0;s:5:\"about\";i:1;s:8:\"featured\";}}s:22:\"page-business-home.php\";a:8:{s:5:\"title\";s:17:\"Business homepage\";s:4:\"slug\";s:35:\"twentytwentyfive/page-business-home\";s:11:\"description\";s:28:\"A business homepage pattern.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:20:\"page-coming-soon.php\";a:8:{s:5:\"title\";s:11:\"Coming soon\";s:4:\"slug\";s:33:\"twentytwentyfive/page-coming-soon\";s:11:\"description\";s:96:\"A full-width cover banner that can be applied to a page or it can work as a single landing page.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:15:\"page-cv-bio.php\";a:7:{s:5:\"title\";s:6:\"CV/bio\";s:4:\"slug\";s:28:\"twentytwentyfive/page-cv-bio\";s:11:\"description\";s:36:\"A pattern for a CV/Bio landing page.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:5:\"about\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:21:\"page-landing-book.php\";a:8:{s:5:\"title\";s:21:\"Landing page for book\";s:4:\"slug\";s:34:\"twentytwentyfive/page-landing-book\";s:11:\"description\";s:104:\"A landing page for the book with a hero section, pre-order links, locations, FAQs and newsletter signup.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:22:\"page-landing-event.php\";a:8:{s:5:\"title\";s:22:\"Landing page for event\";s:4:\"slug\";s:35:\"twentytwentyfive/page-landing-event\";s:11:\"description\";s:87:\"A landing page for the event with a hero section, description, FAQs and call to action.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:24:\"page-landing-podcast.php\";a:8:{s:5:\"title\";s:24:\"Landing page for podcast\";s:4:\"slug\";s:37:\"twentytwentyfive/page-landing-podcast\";s:11:\"description\";s:111:\"A landing page for the podcast with a hero section, description, logos, grid with videos and newsletter signup.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:50:\"page-link-in-bio-heading-paragraph-links-image.php\";a:7:{s:5:\"title\";s:59:\"Link in bio heading, paragraph, links and full-height image\";s:4:\"slug\";s:63:\"twentytwentyfive/page-link-in-bio-heading-paragraph-links-image\";s:11:\"description\";s:84:\"A link in bio landing page with a heading, paragraph, links and a full height image.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:6:\"banner\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:33:\"page-link-in-bio-wide-margins.php\";a:7:{s:5:\"title\";s:48:\"Link in bio with profile, links and wide margins\";s:4:\"slug\";s:46:\"twentytwentyfive/page-link-in-bio-wide-margins\";s:11:\"description\";s:86:\"A link in bio landing page with social links, a profile photo and a brief description.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:6:\"banner\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:39:\"page-link-in-bio-with-tight-margins.php\";a:8:{s:5:\"title\";s:30:\"Link in bio with tight margins\";s:4:\"slug\";s:52:\"twentytwentyfive/page-link-in-bio-with-tight-margins\";s:11:\"description\";s:90:\"A full-width, full-height link in bio section with an image, a paragraph and social links.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:6:\"banner\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:23:\"page-portfolio-home.php\";a:8:{s:5:\"title\";s:18:\"Portfolio homepage\";s:4:\"slug\";s:36:\"twentytwentyfive/page-portfolio-home\";s:11:\"description\";s:29:\"A portfolio homepage pattern.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:5:\"posts\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:18:\"page-shop-home.php\";a:8:{s:5:\"title\";s:13:\"Shop homepage\";s:4:\"slug\";s:31:\"twentytwentyfive/page-shop-home\";s:11:\"description\";s:24:\"A shop homepage pattern.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:21:\"twentytwentyfive_page\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:19:\"post-navigation.php\";a:5:{s:5:\"title\";s:15:\"Post navigation\";s:4:\"slug\";s:32:\"twentytwentyfive/post-navigation\";s:11:\"description\";s:29:\"Next and previous post links.\";s:10:\"categories\";a:1:{i:0;s:4:\"text\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/post-navigation-link\";}}s:17:\"pricing-2-col.php\";a:5:{s:5:\"title\";s:18:\"Pricing, 2 columns\";s:4:\"slug\";s:30:\"twentytwentyfive/pricing-2-col\";s:11:\"description\";s:88:\"Pricing section with two columns, pricing plan, description, and call-to-action buttons.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:17:\"pricing-3-col.php\";a:4:{s:5:\"title\";s:18:\"Pricing, 3 columns\";s:4:\"slug\";s:30:\"twentytwentyfive/pricing-3-col\";s:11:\"description\";s:100:\"A three-column boxed pricing table designed to showcase services, descriptions, and pricing options.\";s:10:\"categories\";a:3:{i:0;s:14:\"call-to-action\";i:1;s:6:\"banner\";i:2;s:8:\"services\";}}s:18:\"services-3-col.php\";a:4:{s:5:\"title\";s:19:\"Services, 3 columns\";s:4:\"slug\";s:31:\"twentytwentyfive/services-3-col\";s:11:\"description\";s:56:\"Three columns with images and text to showcase services.\";s:10:\"categories\";a:3:{i:0;s:14:\"call-to-action\";i:1;s:6:\"banner\";i:2;s:8:\"services\";}}s:36:\"services-subscriber-only-section.php\";a:4:{s:5:\"title\";s:33:\"Services, subscriber only section\";s:4:\"slug\";s:49:\"twentytwentyfive/services-subscriber-only-section\";s:11:\"description\";s:72:\"A subscriber-only section highlighting exclusive services and offerings.\";s:10:\"categories\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"services\";}}s:24:\"services-team-photos.php\";a:4:{s:5:\"title\";s:21:\"Services, team photos\";s:4:\"slug\";s:37:\"twentytwentyfive/services-team-photos\";s:11:\"description\";s:59:\"Display team photos in a services section with grid layout.\";s:10:\"categories\";a:3:{i:0;s:6:\"banner\";i:1;s:14:\"call-to-action\";i:2;s:8:\"featured\";}}s:37:\"template-404-vertical-header-blog.php\";a:5:{s:5:\"title\";s:17:\"Right-aligned 404\";s:4:\"slug\";s:50:\"twentytwentyfive/template-404-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:13:\"templateTypes\";a:1:{i:0;s:3:\"404\";}}s:30:\"template-archive-news-blog.php\";a:6:{s:5:\"title\";s:17:\"News blog archive\";s:4:\"slug\";s:43:\"twentytwentyfive/template-archive-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:31:\"template-archive-photo-blog.php\";a:6:{s:5:\"title\";s:18:\"Photo blog archive\";s:4:\"slug\";s:44:\"twentytwentyfive/template-archive-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:30:\"template-archive-text-blog.php\";a:6:{s:5:\"title\";s:17:\"Text blog archive\";s:4:\"slug\";s:43:\"twentytwentyfive/template-archive-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:41:\"template-archive-vertical-header-blog.php\";a:6:{s:5:\"title\";s:21:\"Right-aligned archive\";s:4:\"slug\";s:54:\"twentytwentyfive/template-archive-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:27:\"template-home-news-blog.php\";a:6:{s:5:\"title\";s:14:\"News blog home\";s:4:\"slug\";s:40:\"twentytwentyfive/template-home-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:28:\"template-home-photo-blog.php\";a:6:{s:5:\"title\";s:15:\"Photo blog home\";s:4:\"slug\";s:41:\"twentytwentyfive/template-home-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:38:\"template-home-posts-grid-news-blog.php\";a:5:{s:5:\"title\";s:34:\"News blog with featured posts grid\";s:4:\"slug\";s:51:\"twentytwentyfive/template-home-posts-grid-news-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:27:\"template-home-text-blog.php\";a:6:{s:5:\"title\";s:14:\"Text blog home\";s:4:\"slug\";s:40:\"twentytwentyfive/template-home-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:10:\"front-page\";i:1;s:4:\"home\";}}s:38:\"template-home-vertical-header-blog.php\";a:6:{s:5:\"title\";s:18:\"Right-aligned home\";s:4:\"slug\";s:51:\"twentytwentyfive/template-home-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:40:\"template-home-with-sidebar-news-blog.php\";a:6:{s:5:\"title\";s:22:\"News blog with sidebar\";s:4:\"slug\";s:53:\"twentytwentyfive/template-home-with-sidebar-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:28:\"template-page-photo-blog.php\";a:5:{s:5:\"title\";s:15:\"Photo blog page\";s:4:\"slug\";s:41:\"twentytwentyfive/template-page-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:13:\"templateTypes\";a:1:{i:0;s:4:\"page\";}}s:38:\"template-page-vertical-header-blog.php\";a:5:{s:5:\"title\";s:18:\"Right-aligned page\";s:4:\"slug\";s:51:\"twentytwentyfive/template-page-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:13:\"templateTypes\";a:1:{i:0;s:4:\"page\";}}s:33:\"template-query-loop-news-blog.php\";a:4:{s:5:\"title\";s:20:\"News blog query loop\";s:4:\"slug\";s:46:\"twentytwentyfive/template-query-loop-news-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:34:\"template-query-loop-photo-blog.php\";a:6:{s:5:\"title\";s:16:\"Photo blog posts\";s:4:\"slug\";s:47:\"twentytwentyfive/template-query-loop-photo-blog\";s:11:\"description\";s:54:\"A list of posts, 3 columns, with only featured images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:33:\"template-query-loop-text-blog.php\";a:4:{s:5:\"title\";s:20:\"Text blog query loop\";s:4:\"slug\";s:46:\"twentytwentyfive/template-query-loop-text-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:44:\"template-query-loop-vertical-header-blog.php\";a:4:{s:5:\"title\";s:24:\"Right-aligned query loop\";s:4:\"slug\";s:57:\"twentytwentyfive/template-query-loop-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:23:\"template-query-loop.php\";a:5:{s:5:\"title\";s:23:\"List of posts, 1 column\";s:4:\"slug\";s:36:\"twentytwentyfive/template-query-loop\";s:11:\"description\";s:61:\"A list of posts, 1 column, with featured image and post date.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:29:\"template-search-news-blog.php\";a:6:{s:5:\"title\";s:24:\"News blog search results\";s:4:\"slug\";s:42:\"twentytwentyfive/template-search-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:30:\"template-search-photo-blog.php\";a:6:{s:5:\"title\";s:25:\"Photo blog search results\";s:4:\"slug\";s:43:\"twentytwentyfive/template-search-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:29:\"template-search-text-blog.php\";a:6:{s:5:\"title\";s:24:\"Text blog search results\";s:4:\"slug\";s:42:\"twentytwentyfive/template-search-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:40:\"template-search-vertical-header-blog.php\";a:6:{s:5:\"title\";s:26:\"Right-aligned blog, search\";s:4:\"slug\";s:53:\"twentytwentyfive/template-search-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:40:\"template-single-left-aligned-content.php\";a:6:{s:5:\"title\";s:30:\"Post with left-aligned content\";s:4:\"slug\";s:47:\"twentytwentyfive/post-with-left-aligned-content\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:29:\"template-single-news-blog.php\";a:6:{s:5:\"title\";s:34:\"News blog single post with sidebar\";s:4:\"slug\";s:42:\"twentytwentyfive/template-single-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:26:\"template-single-offset.php\";a:6:{s:5:\"title\";s:34:\"Offset post without featured image\";s:4:\"slug\";s:39:\"twentytwentyfive/template-single-offset\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:30:\"template-single-photo-blog.php\";a:6:{s:5:\"title\";s:22:\"Photo blog single post\";s:4:\"slug\";s:43:\"twentytwentyfive/template-single-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:29:\"template-single-text-blog.php\";a:6:{s:5:\"title\";s:21:\"Text blog single post\";s:4:\"slug\";s:42:\"twentytwentyfive/template-single-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:40:\"template-single-vertical-header-blog.php\";a:6:{s:5:\"title\";s:25:\"Right-aligned single post\";s:4:\"slug\";s:53:\"twentytwentyfive/template-single-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:22:\"testimonials-2-col.php\";a:5:{s:5:\"title\";s:21:\"2 columns with avatar\";s:4:\"slug\";s:35:\"twentytwentyfive/testimonials-2-col\";s:11:\"description\";s:42:\"Two columns with testimonials and avatars.\";s:10:\"categories\";a:1:{i:0;s:12:\"testimonials\";}s:8:\"keywords\";a:1:{i:0;s:11:\"testimonial\";}}s:22:\"testimonials-6-col.php\";a:5:{s:5:\"title\";s:35:\"3 column layout with 6 testimonials\";s:4:\"slug\";s:35:\"twentytwentyfive/testimonials-6-col\";s:11:\"description\";s:86:\"A section with three columns and two rows, each containing a testimonial and citation.\";s:10:\"categories\";a:1:{i:0;s:12:\"testimonials\";}s:8:\"keywords\";a:1:{i:0;s:11:\"testimonial\";}}s:22:\"testimonials-large.php\";a:5:{s:5:\"title\";s:32:\"Review with large image on right\";s:4:\"slug\";s:35:\"twentytwentyfive/testimonials-large\";s:11:\"description\";s:46:\"A testimonial with a large image on the right.\";s:10:\"categories\";a:1:{i:0;s:12:\"testimonials\";}s:8:\"keywords\";a:1:{i:0;s:11:\"testimonial\";}}s:13:\"text-faqs.php\";a:6:{s:5:\"title\";s:4:\"FAQs\";s:4:\"slug\";s:26:\"twentytwentyfive/text-faqs\";s:11:\"description\";s:68:\"A FAQs section with a FAQ heading and list of questions and answers.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:4:\"text\";i:1;s:5:\"about\";}s:8:\"keywords\";a:5:{i:0;s:3:\"faq\";i:1;s:5:\"about\";i:2;s:10:\"frequently\";i:3;s:5:\"asked\";i:4;s:9:\"questions\";}}s:19:\"vertical-header.php\";a:6:{s:5:\"title\";s:20:\"Vertical site header\";s:4:\"slug\";s:32:\"twentytwentyfive/vertical-header\";s:11:\"description\";s:52:\"Vertical site header with site title and navigation.\";s:13:\"viewportWidth\";i:300;s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:34:\"core/template-part/vertical-header\";}}}}', 'off'),
(128, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1781626136;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(129, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"d4c194055311dd6a9e111c5556cddc2a\";s:6:\"blocks\";a:7:{s:32:\"0368537a03d4b05ed11f802c802c5153\";s:0:\"\";s:32:\"500888137eafa12a508de2c588d9ffdd\";s:46:\":root :where(.wp-block-icon svg){width: 24px;}\";s:32:\"a6036e6eb2ad2df7ed8860b807868647\";s:0:\"\";s:32:\"3b46efc0a10c1dae38f584ad199c3544\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:32:\"ab4df16c9e454bfed8a404309545590d\";s:120:\":where(.wp-block-term-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-term-template.is-layout-grid){gap: 1.25em;}\";s:32:\"68ec5cad52d993402775a7503ba9efb7\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:32:\"b8b4aa19e69b9b2de0f5c27097467bd6\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(130, 'recovery_keys', 'a:0:{}', 'off'),
(131, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1781686436;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:3:\"5.7\";s:33:\"broker-manager/broker-manager.php\";s:5:\"1.0.0\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'off'),
(134, 'current_theme', 'Crypto Broker', 'auto'),
(135, 'theme_switched', '', 'auto'),
(138, 'theme_mods_crypto-broker', 'a:2:{s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'auto'),
(139, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1781686437;s:7:\"checked\";a:4:{s:13:\"crypto-broker\";s:5:\"1.0.0\";s:16:\"twentytwentyfive\";s:3:\"1.5\";s:16:\"twentytwentyfour\";s:3:\"1.5\";s:17:\"twentytwentythree\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.5.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.5.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'off'),
(146, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-7.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-7.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-7.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-7.0-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"7.0\";s:7:\"version\";s:3:\"7.0\";s:11:\"php_version\";s:3:\"7.4\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1781686434;s:15:\"version_checked\";s:3:\"7.0\";s:12:\"translations\";a:0:{}}', 'off'),
(148, '_site_transient_timeout_theme_roots', '1781688236', 'off'),
(149, '_site_transient_theme_roots', 'a:4:{s:13:\"crypto-broker\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";}', 'off'),
(163, '_site_transient_timeout_wp_theme_files_patterns-f9950eafc567726509e815860144e8ce', '1781707472', 'off'),
(164, '_site_transient_wp_theme_files_patterns-f9950eafc567726509e815860144e8ce', 'a:2:{s:7:\"version\";s:5:\"1.3.0\";s:8:\"patterns\";a:0:{}}', 'off'),
(165, '_site_transient_timeout_wp_theme_files_patterns-b761298fbbcaac0e845492b980459841', '1781708438', 'off'),
(166, '_site_transient_wp_theme_files_patterns-b761298fbbcaac0e845492b980459841', 'a:2:{s:7:\"version\";s:5:\"1.3.0\";s:8:\"patterns\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_broker_rating', '4.8'),
(4, 5, '_broker_min_deposit', '0'),
(5, 5, '_broker_regulators', 'FCA, ASIC, CySEC'),
(6, 5, '_broker_founded', '2007'),
(7, 5, '_broker_spread', 'From 0.0 pips'),
(8, 5, '_broker_leverage', '1:500'),
(9, 5, '_broker_platforms', 'MT4, MT5, cTrader'),
(10, 5, '_broker_visit_url', 'https://example.com/go/alphafx'),
(11, 5, '_broker_pros', 'Flexible leverage up to 1:500\n2,000+ CFDs for diverse portfolios\nSpreads from 0.0 pips, low commission\n24/7 multilingual support'),
(12, 5, '_broker_cons', 'Phí qua đêm cao\nÍt sản phẩm crypto'),
(13, 5, '_broker_featured', '1'),
(14, 6, '_broker_rating', '4.7'),
(15, 6, '_broker_min_deposit', '100'),
(16, 6, '_broker_regulators', 'FCA, ASIC'),
(17, 6, '_broker_founded', '2010'),
(18, 6, '_broker_spread', 'From 0.1 pips'),
(19, 6, '_broker_leverage', '1:400'),
(20, 6, '_broker_platforms', 'MT4, MT5'),
(21, 6, '_broker_visit_url', 'https://example.com/go/primetrade-markets'),
(22, 6, '_broker_pros', 'Regulated by FCA &amp; ASIC\nStable MT4/MT5 platforms\nFast execution, low slippage\nMultiple account types'),
(23, 6, '_broker_cons', 'Nạp tối thiểu hơi cao\nGiao diện hơi cũ'),
(24, 6, '_broker_featured', '1'),
(25, 7, '_broker_rating', '4.6'),
(26, 7, '_broker_min_deposit', '50'),
(27, 7, '_broker_regulators', 'CySEC, FSCA'),
(28, 7, '_broker_founded', '2012'),
(29, 7, '_broker_spread', 'From 0.2 pips'),
(30, 7, '_broker_leverage', '1:1000'),
(31, 7, '_broker_platforms', 'MT4, MT5, WebTrader'),
(32, 7, '_broker_visit_url', 'https://example.com/go/globalpip'),
(33, 7, '_broker_pros', 'High leverage up to 1:1000\nDiverse deposit/withdrawal methods\nAttractive bonus programs\nUnlimited demo account'),
(34, 7, '_broker_cons', 'Đòn bẩy cao gây rủi ro\nSpread tài khoản chuẩn cao'),
(35, 7, '_broker_featured', ''),
(36, 8, '_broker_rating', '4.5'),
(37, 8, '_broker_min_deposit', '200'),
(38, 8, '_broker_regulators', 'FCA, ASIC, CySEC'),
(39, 8, '_broker_founded', '2009'),
(40, 8, '_broker_spread', 'From 0.0 pips'),
(41, 8, '_broker_leverage', '1:300'),
(42, 8, '_broker_platforms', 'MT5, cTrader, TradingView'),
(43, 8, '_broker_visit_url', 'https://example.com/go/tradenova'),
(44, 8, '_broker_pros', 'TradingView &amp; cTrader integration\nCompetitive commission fees\nAdvanced analysis tools\n3,000+ tradable instruments'),
(45, 8, '_broker_cons', 'Nạp tối thiểu cao\nKhông hỗ trợ MT4'),
(46, 8, '_broker_featured', '1'),
(47, 9, '_broker_rating', '4.4'),
(48, 9, '_broker_min_deposit', '25'),
(49, 9, '_broker_regulators', 'CySEC'),
(50, 9, '_broker_founded', '2015'),
(51, 9, '_broker_spread', 'From 0.3 pips'),
(52, 9, '_broker_leverage', '1:500'),
(53, 9, '_broker_platforms', 'MT4, MT5'),
(54, 9, '_broker_visit_url', 'https://example.com/go/fxvertex'),
(55, 9, '_broker_pros', 'Minimum deposit only $25\nUnlimited demo account\nIntuitive mobile app\nOpen an account in 5 minutes'),
(56, 9, '_broker_cons', 'Chỉ 1 cơ quan quản lý\nÍt cặp tiền exotic'),
(57, 9, '_broker_featured', ''),
(58, 10, '_broker_rating', '4.3'),
(59, 10, '_broker_min_deposit', '100'),
(60, 10, '_broker_regulators', 'FCA, DFSA'),
(61, 10, '_broker_founded', '2008'),
(62, 10, '_broker_spread', 'From 0.1 pips'),
(63, 10, '_broker_leverage', '1:200'),
(64, 10, '_broker_platforms', 'MT4, MT5, cTrader'),
(65, 10, '_broker_visit_url', 'https://example.com/go/coremarkets'),
(66, 10, '_broker_pros', 'Capital safety, segregated accounts\nRegulated by FCA &amp; DFSA\nComprehensive education materials\nInstitutional liquidity'),
(67, 10, '_broker_cons', 'Đòn bẩy thấp\nPhí rút tiền'),
(68, 10, '_broker_featured', ''),
(69, 11, '_broker_rating', '4.2'),
(70, 11, '_broker_min_deposit', '10'),
(71, 11, '_broker_regulators', 'ASIC, FSCA'),
(72, 11, '_broker_founded', '2014'),
(73, 11, '_broker_spread', 'From 0.4 pips'),
(74, 11, '_broker_leverage', '1:888'),
(75, 11, '_broker_platforms', 'MT4, MT5, WebTrader'),
(76, 11, '_broker_visit_url', 'https://example.com/go/zenithfx'),
(77, 11, '_broker_pros', 'Ultra-low minimum deposit $10\nFlexible leverage up to 1:888\nInstant account opening\nFrequent promotions'),
(78, 11, '_broker_cons', 'Spread biến động mạnh\nHỗ trợ tiếng Việt hạn chế'),
(79, 11, '_broker_featured', ''),
(80, 12, '_broker_rating', '4.1'),
(81, 12, '_broker_min_deposit', '250'),
(82, 12, '_broker_regulators', 'FCA, ASIC'),
(83, 12, '_broker_founded', '2006'),
(84, 12, '_broker_spread', 'From 0.2 pips'),
(85, 12, '_broker_leverage', '1:100'),
(86, 12, '_broker_platforms', 'MT4, MT5'),
(87, 12, '_broker_visit_url', 'https://example.com/go/bluepeak-brokers'),
(88, 12, '_broker_pros', 'Long-established, trusted brand\nStable liquidity &amp; spreads\nSuited for institutional investors\nDedicated account manager'),
(89, 12, '_broker_cons', 'Nạp tối thiểu cao\nĐòn bẩy thấp cho lẻ'),
(90, 12, '_broker_featured', ''),
(91, 13, '_broker_rating', '4'),
(92, 13, '_broker_min_deposit', '50'),
(93, 13, '_broker_regulators', 'CySEC, FSC'),
(94, 13, '_broker_founded', '2016'),
(95, 13, '_broker_spread', 'From 0.5 pips'),
(96, 13, '_broker_leverage', '1:500'),
(97, 13, '_broker_platforms', 'MT5, WebTrader'),
(98, 13, '_broker_visit_url', 'https://example.com/go/oceantrade'),
(99, 13, '_broker_pros', 'Modern, easy-to-use interface\nCrypto CFD support\nFast same-day deposits/withdrawals\nActive trading community'),
(100, 13, '_broker_cons', 'Còn non trẻ\nSpread chưa tối ưu'),
(101, 13, '_broker_featured', ''),
(102, 14, '_broker_rating', '3.9'),
(103, 14, '_broker_min_deposit', '20'),
(104, 14, '_broker_regulators', 'FSCA'),
(105, 14, '_broker_founded', '2017'),
(106, 14, '_broker_spread', 'From 0.6 pips'),
(107, 14, '_broker_leverage', '1:1000'),
(108, 14, '_broker_platforms', 'MT4, MT5'),
(109, 14, '_broker_visit_url', 'https://example.com/go/velocityfx'),
(110, 14, '_broker_pros', 'Very high leverage up to 1:1000\nLow minimum deposit $20\nDeposit promotions\nCompetitive spreads'),
(111, 14, '_broker_cons', 'Quản lý yếu hơn\nRủi ro đòn bẩy cao'),
(112, 14, '_broker_featured', ''),
(113, 5, '_broker_assets', '2,000+'),
(114, 5, '_broker_mobile_app', 'Yes'),
(115, 6, '_broker_assets', '1,500+'),
(116, 6, '_broker_mobile_app', 'Yes'),
(117, 7, '_broker_assets', '1,200+'),
(118, 7, '_broker_mobile_app', 'Yes'),
(119, 8, '_broker_assets', '3,000+'),
(120, 8, '_broker_mobile_app', 'Yes'),
(121, 9, '_broker_assets', '800+'),
(122, 9, '_broker_mobile_app', 'Yes'),
(123, 10, '_broker_assets', '1,000+'),
(124, 10, '_broker_mobile_app', 'Yes'),
(125, 11, '_broker_assets', '600+'),
(126, 11, '_broker_mobile_app', 'Yes'),
(127, 12, '_broker_assets', '1,800+'),
(128, 12, '_broker_mobile_app', 'Yes'),
(129, 13, '_broker_assets', '900+'),
(130, 13, '_broker_mobile_app', 'Yes'),
(131, 14, '_broker_assets', '700+'),
(132, 14, '_broker_mobile_app', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2026-06-16 15:45:21', '2026-06-16 15:45:21', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2026-06-16 15:45:21', '2026-06-16 15:45:21', '', 0, 'http://localhost/crypto-wp/?p=1', 0, 'post', '', 1),
(2, 1, '2026-06-16 15:45:21', '2026-06-16 15:45:21', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/crypto-wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2026-06-16 15:45:21', '2026-06-16 15:45:21', '', 0, 'http://localhost/crypto-wp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2026-06-16 15:45:21', '2026-06-16 15:45:21', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/crypto-wp.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2026-06-16 15:45:21', '2026-06-16 15:45:21', '', 0, 'http://localhost/crypto-wp/?page_id=3', 0, 'page', '', 0),
(4, 0, '2026-06-16 16:03:27', '2026-06-16 16:03:27', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2026-06-16 16:03:27', '2026-06-16 16:03:27', '', 0, 'http://crypto-wp.local/C:/Program%20Files/Git/navigation/', 0, 'wp_navigation', '', 0),
(5, 0, '2026-06-16 16:11:56', '2026-06-16 16:11:56', '<p><strong>AlphaFX</strong> is a licensed Forex/CFD broker regulated by FCA, ASIC, CySEC, operating since 2007. The broker offers the MT4, MT5, cTrader platforms with spreads From 0.0 pips and maximum leverage of 1:500.</p><p>This is sample review content. You can edit all information from the admin area under <em>Brokers</em>.</p>', 'AlphaFX', 'AlphaFX review: spread From 0.0 pips, leverage 1:500, regulated by FCA, ASIC, CySEC.', 'publish', 'closed', 'closed', '', 'alphafx', '', '', '2026-06-17 14:30:38', '2026-06-17 14:30:38', '', 0, 'http://crypto-wp.local/C:/Programbroker/alphafx/', 0, 'broker', '', 0),
(6, 0, '2026-06-16 16:11:56', '2026-06-16 16:11:56', '<p><strong>PrimeTrade Markets</strong> is a licensed Forex/CFD broker regulated by FCA, ASIC, operating since 2010. The broker offers the MT4, MT5 platforms with spreads From 0.1 pips and maximum leverage of 1:400.</p><p>This is sample review content. You can edit all information from the admin area under <em>Brokers</em>.</p>', 'PrimeTrade Markets', 'PrimeTrade Markets review: spread From 0.1 pips, leverage 1:400, regulated by FCA, ASIC.', 'publish', 'closed', 'closed', '', 'primetrade-markets', '', '', '2026-06-17 14:30:38', '2026-06-17 14:30:38', '', 0, 'http://crypto-wp.local/C:/Programbroker/primetrade-markets/', 0, 'broker', '', 0),
(7, 0, '2026-06-16 16:11:56', '2026-06-16 16:11:56', '<p><strong>GlobalPip</strong> is a licensed Forex/CFD broker regulated by CySEC, FSCA, operating since 2012. The broker offers the MT4, MT5, WebTrader platforms with spreads From 0.2 pips and maximum leverage of 1:1000.</p><p>This is sample review content. You can edit all information from the admin area under <em>Brokers</em>.</p>', 'GlobalPip', 'GlobalPip review: spread From 0.2 pips, leverage 1:1000, regulated by CySEC, FSCA.', 'publish', 'closed', 'closed', '', 'globalpip', '', '', '2026-06-17 14:30:38', '2026-06-17 14:30:38', '', 0, 'http://crypto-wp.local/C:/Programbroker/globalpip/', 0, 'broker', '', 0),
(8, 0, '2026-06-16 16:11:56', '2026-06-16 16:11:56', '<p><strong>TradeNova</strong> is a licensed Forex/CFD broker regulated by FCA, ASIC, CySEC, operating since 2009. The broker offers the MT5, cTrader, TradingView platforms with spreads From 0.0 pips and maximum leverage of 1:300.</p><p>This is sample review content. You can edit all information from the admin area under <em>Brokers</em>.</p>', 'TradeNova', 'TradeNova review: spread From 0.0 pips, leverage 1:300, regulated by FCA, ASIC, CySEC.', 'publish', 'closed', 'closed', '', 'tradenova', '', '', '2026-06-17 14:30:38', '2026-06-17 14:30:38', '', 0, 'http://crypto-wp.local/C:/Programbroker/tradenova/', 0, 'broker', '', 0),
(9, 0, '2026-06-16 16:11:56', '2026-06-16 16:11:56', '<p><strong>FXVertex</strong> is a licensed Forex/CFD broker regulated by CySEC, operating since 2015. The broker offers the MT4, MT5 platforms with spreads From 0.3 pips and maximum leverage of 1:500.</p><p>This is sample review content. You can edit all information from the admin area under <em>Brokers</em>.</p>', 'FXVertex', 'FXVertex review: spread From 0.3 pips, leverage 1:500, regulated by CySEC.', 'publish', 'closed', 'closed', '', 'fxvertex', '', '', '2026-06-17 14:30:38', '2026-06-17 14:30:38', '', 0, 'http://crypto-wp.local/C:/Programbroker/fxvertex/', 0, 'broker', '', 0),
(10, 0, '2026-06-16 16:11:56', '2026-06-16 16:11:56', '<p><strong>CoreMarkets</strong> is a licensed Forex/CFD broker regulated by FCA, DFSA, operating since 2008. The broker offers the MT4, MT5, cTrader platforms with spreads From 0.1 pips and maximum leverage of 1:200.</p><p>This is sample review content. You can edit all information from the admin area under <em>Brokers</em>.</p>', 'CoreMarkets', 'CoreMarkets review: spread From 0.1 pips, leverage 1:200, regulated by FCA, DFSA.', 'publish', 'closed', 'closed', '', 'coremarkets', '', '', '2026-06-17 14:30:39', '2026-06-17 14:30:39', '', 0, 'http://crypto-wp.local/C:/Programbroker/coremarkets/', 0, 'broker', '', 0),
(11, 0, '2026-06-16 16:11:56', '2026-06-16 16:11:56', '<p><strong>ZenithFX</strong> is a licensed Forex/CFD broker regulated by ASIC, FSCA, operating since 2014. The broker offers the MT4, MT5, WebTrader platforms with spreads From 0.4 pips and maximum leverage of 1:888.</p><p>This is sample review content. You can edit all information from the admin area under <em>Brokers</em>.</p>', 'ZenithFX', 'ZenithFX review: spread From 0.4 pips, leverage 1:888, regulated by ASIC, FSCA.', 'publish', 'closed', 'closed', '', 'zenithfx', '', '', '2026-06-17 14:30:39', '2026-06-17 14:30:39', '', 0, 'http://crypto-wp.local/C:/Programbroker/zenithfx/', 0, 'broker', '', 0),
(12, 0, '2026-06-16 16:11:56', '2026-06-16 16:11:56', '<p><strong>BluePeak Brokers</strong> is a licensed Forex/CFD broker regulated by FCA, ASIC, operating since 2006. The broker offers the MT4, MT5 platforms with spreads From 0.2 pips and maximum leverage of 1:100.</p><p>This is sample review content. You can edit all information from the admin area under <em>Brokers</em>.</p>', 'BluePeak Brokers', 'BluePeak Brokers review: spread From 0.2 pips, leverage 1:100, regulated by FCA, ASIC.', 'publish', 'closed', 'closed', '', 'bluepeak-brokers', '', '', '2026-06-17 14:30:39', '2026-06-17 14:30:39', '', 0, 'http://crypto-wp.local/C:/Programbroker/bluepeak-brokers/', 0, 'broker', '', 0),
(13, 0, '2026-06-16 16:11:56', '2026-06-16 16:11:56', '<p><strong>OceanTrade</strong> is a licensed Forex/CFD broker regulated by CySEC, FSC, operating since 2016. The broker offers the MT5, WebTrader platforms with spreads From 0.5 pips and maximum leverage of 1:500.</p><p>This is sample review content. You can edit all information from the admin area under <em>Brokers</em>.</p>', 'OceanTrade', 'OceanTrade review: spread From 0.5 pips, leverage 1:500, regulated by CySEC, FSC.', 'publish', 'closed', 'closed', '', 'oceantrade', '', '', '2026-06-17 14:30:39', '2026-06-17 14:30:39', '', 0, 'http://crypto-wp.local/C:/Programbroker/oceantrade/', 0, 'broker', '', 0),
(14, 0, '2026-06-16 16:11:57', '2026-06-16 16:11:57', '<p><strong>VelocityFX</strong> is a licensed Forex/CFD broker regulated by FSCA, operating since 2017. The broker offers the MT4, MT5 platforms with spreads From 0.6 pips and maximum leverage of 1:1000.</p><p>This is sample review content. You can edit all information from the admin area under <em>Brokers</em>.</p>', 'VelocityFX', 'VelocityFX review: spread From 0.6 pips, leverage 1:1000, regulated by FSCA.', 'publish', 'closed', 'closed', '', 'velocityfx', '', '', '2026-06-17 14:30:38', '2026-06-17 14:30:38', '', 0, 'http://crypto-wp.local/C:/Programbroker/velocityfx/', 0, 'broker', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'modern'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$wp$2y$10$DYR4iHoiPbrdp4BwsvV6V.4ps6Jt6p04A34or616BI5fFdUnyIecy', 'admin', 'tuyen.it.developer@gmail.com', 'http://localhost/crypto-wp', '2026-06-16 15:45:21', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`),
  ADD KEY `type_status_author` (`post_type`,`post_status`,`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
