-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 27-Set-2022 às 11:55
-- Versão do servidor: 8.0.21
-- versão do PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `goalvarenga`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `goalvarenga_aiowps_debug_log`
--

DROP TABLE IF EXISTS `goalvarenga_aiowps_debug_log`;
CREATE TABLE IF NOT EXISTS `goalvarenga_aiowps_debug_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `level` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `goalvarenga_aiowps_events`
--

DROP TABLE IF EXISTS `goalvarenga_aiowps_events`;
CREATE TABLE IF NOT EXISTS `goalvarenga_aiowps_events` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `event_type` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `event_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `ip_or_host` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `referer_info` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country_code` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `event_data` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `goalvarenga_aiowps_failed_logins`
--

DROP TABLE IF EXISTS `goalvarenga_aiowps_failed_logins`;
CREATE TABLE IF NOT EXISTS `goalvarenga_aiowps_failed_logins` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `failed_login_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `login_attempt_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `goalvarenga_aiowps_global_meta`
--

DROP TABLE IF EXISTS `goalvarenga_aiowps_global_meta`;
CREATE TABLE IF NOT EXISTS `goalvarenga_aiowps_global_meta` (
  `meta_id` bigint NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `meta_key1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key3` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key4` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key5` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value2` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value3` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value4` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value5` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`meta_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `goalvarenga_aiowps_login_activity`
--

DROP TABLE IF EXISTS `goalvarenga_aiowps_login_activity`;
CREATE TABLE IF NOT EXISTS `goalvarenga_aiowps_login_activity` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `login_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `logout_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `login_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `login_country` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `browser_type` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `goalvarenga_aiowps_login_activity`
--

INSERT INTO `goalvarenga_aiowps_login_activity` (`id`, `user_id`, `user_login`, `login_date`, `logout_date`, `login_ip`, `login_country`, `browser_type`) VALUES
(1, 1, 'idea', '2022-09-20 16:13:56', '1000-10-10 10:00:00', '186.193.220.185', '', ''),
(2, 1, 'idea', '2022-09-22 12:59:51', '1000-10-10 10:00:00', '186.193.220.185', '', ''),
(3, 1, 'idea', '2022-09-23 12:24:39', '1000-10-10 10:00:00', '186.193.220.185', '', ''),
(4, 1, 'idea', '2022-09-23 12:34:26', '1000-10-10 10:00:00', '186.193.220.185', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `goalvarenga_aiowps_login_lockdown`
--

DROP TABLE IF EXISTS `goalvarenga_aiowps_login_lockdown`;
CREATE TABLE IF NOT EXISTS `goalvarenga_aiowps_login_lockdown` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lockdown_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `release_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `failed_login_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `lock_reason` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `unlock_key` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `is_lockout_email_sent` tinyint(1) NOT NULL DEFAULT '1',
  `backtrace_log` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `goalvarenga_aiowps_permanent_block`
--

DROP TABLE IF EXISTS `goalvarenga_aiowps_permanent_block`;
CREATE TABLE IF NOT EXISTS `goalvarenga_aiowps_permanent_block` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blocked_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `block_reason` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `country_origin` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `blocked_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `unblock` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `goalvarenga_commentmeta`
--

DROP TABLE IF EXISTS `goalvarenga_commentmeta`;
CREATE TABLE IF NOT EXISTS `goalvarenga_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `goalvarenga_comments`
--

DROP TABLE IF EXISTS `goalvarenga_comments`;
CREATE TABLE IF NOT EXISTS `goalvarenga_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `goalvarenga_comments`
--

INSERT INTO `goalvarenga_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://br.wordpress.org/', '', '2022-08-30 11:12:08', '2022-08-30 14:12:08', 'Oi, isto é um comentário.\nPara iniciar a moderar, editar e excluir comentários, visite a tela Comentários no painel.\nOs avatares dos comentaristas vêm do <a href=\"https://br.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `goalvarenga_links`
--

DROP TABLE IF EXISTS `goalvarenga_links`;
CREATE TABLE IF NOT EXISTS `goalvarenga_links` (
  `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `goalvarenga_options`
--

DROP TABLE IF EXISTS `goalvarenga_options`;
CREATE TABLE IF NOT EXISTS `goalvarenga_options` (
  `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=2214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `goalvarenga_options`
--

INSERT INTO `goalvarenga_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/goalvarenga', 'yes'),
(2, 'home', 'http://localhost/goalvarenga', 'yes'),
(3, 'blogname', 'GO Alvarenga', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'site@ideapublicidade.com.br', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', 'a:220:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:8:\"dados/?$\";s:25:\"index.php?post_type=dados\";s:38:\"dados/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=dados&feed=$matches[1]\";s:33:\"dados/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=dados&feed=$matches[1]\";s:25:\"dados/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=dados&paged=$matches[1]\";s:9:\"banner/?$\";s:26:\"index.php?post_type=banner\";s:39:\"banner/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=banner&feed=$matches[1]\";s:34:\"banner/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=banner&feed=$matches[1]\";s:26:\"banner/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=banner&paged=$matches[1]\";s:10:\"servico/?$\";s:27:\"index.php?post_type=servico\";s:40:\"servico/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=servico&feed=$matches[1]\";s:35:\"servico/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=servico&feed=$matches[1]\";s:27:\"servico/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=servico&paged=$matches[1]\";s:10:\"projeto/?$\";s:27:\"index.php?post_type=projeto\";s:40:\"projeto/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=projeto&feed=$matches[1]\";s:35:\"projeto/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=projeto&feed=$matches[1]\";s:27:\"projeto/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=projeto&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"dados/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"dados/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"dados/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"dados/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"dados/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"dados/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"dados/([^/]+)/embed/?$\";s:38:\"index.php?dados=$matches[1]&embed=true\";s:26:\"dados/([^/]+)/trackback/?$\";s:32:\"index.php?dados=$matches[1]&tb=1\";s:46:\"dados/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?dados=$matches[1]&feed=$matches[2]\";s:41:\"dados/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?dados=$matches[1]&feed=$matches[2]\";s:34:\"dados/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?dados=$matches[1]&paged=$matches[2]\";s:41:\"dados/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?dados=$matches[1]&cpage=$matches[2]\";s:30:\"dados/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?dados=$matches[1]&page=$matches[2]\";s:22:\"dados/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"dados/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"dados/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"dados/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"dados/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"dados/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"banner/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"banner/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"banner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"banner/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"banner/([^/]+)/embed/?$\";s:39:\"index.php?banner=$matches[1]&embed=true\";s:27:\"banner/([^/]+)/trackback/?$\";s:33:\"index.php?banner=$matches[1]&tb=1\";s:47:\"banner/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?banner=$matches[1]&feed=$matches[2]\";s:42:\"banner/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?banner=$matches[1]&feed=$matches[2]\";s:35:\"banner/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&paged=$matches[2]\";s:42:\"banner/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&cpage=$matches[2]\";s:31:\"banner/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?banner=$matches[1]&page=$matches[2]\";s:23:\"banner/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"banner/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"banner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"banner/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"servico/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"servico/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"servico/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"servico/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"servico/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"servico/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"servico/([^/]+)/embed/?$\";s:40:\"index.php?servico=$matches[1]&embed=true\";s:28:\"servico/([^/]+)/trackback/?$\";s:34:\"index.php?servico=$matches[1]&tb=1\";s:48:\"servico/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?servico=$matches[1]&feed=$matches[2]\";s:43:\"servico/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?servico=$matches[1]&feed=$matches[2]\";s:36:\"servico/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?servico=$matches[1]&paged=$matches[2]\";s:43:\"servico/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?servico=$matches[1]&cpage=$matches[2]\";s:32:\"servico/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?servico=$matches[1]&page=$matches[2]\";s:24:\"servico/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"servico/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"servico/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"servico/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"servico/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"servico/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"projeto/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"projeto/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"projeto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"projeto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"projeto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"projeto/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"projeto/([^/]+)/embed/?$\";s:40:\"index.php?projeto=$matches[1]&embed=true\";s:28:\"projeto/([^/]+)/trackback/?$\";s:34:\"index.php?projeto=$matches[1]&tb=1\";s:48:\"projeto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?projeto=$matches[1]&feed=$matches[2]\";s:43:\"projeto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?projeto=$matches[1]&feed=$matches[2]\";s:36:\"projeto/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?projeto=$matches[1]&paged=$matches[2]\";s:43:\"projeto/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?projeto=$matches[1]&cpage=$matches[2]\";s:32:\"projeto/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?projeto=$matches[1]&page=$matches[2]\";s:24:\"projeto/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"projeto/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"projeto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"projeto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"projeto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"projeto/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:59:\"categoria-projetos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?categoria-projetos=$matches[1]&feed=$matches[2]\";s:54:\"categoria-projetos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?categoria-projetos=$matches[1]&feed=$matches[2]\";s:35:\"categoria-projetos/([^/]+)/embed/?$\";s:51:\"index.php?categoria-projetos=$matches[1]&embed=true\";s:47:\"categoria-projetos/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?categoria-projetos=$matches[1]&paged=$matches[2]\";s:29:\"categoria-projetos/([^/]+)/?$\";s:40:\"index.php?categoria-projetos=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:74:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:50:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:62:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"date/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"date/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:37:\"date/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:49:\"date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"date/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:48:\"date/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:43:\"date/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:24:\"date/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:36:\"date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:18:\"date/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:44:\"[^/]+/.+?/[0-9]+/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"[^/]+/.+?/[0-9]+/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"[^/]+/.+?/[0-9]+/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"[^/]+/.+?/[0-9]+/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"[^/]+/.+?/[0-9]+/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"[^/]+/.+?/[0-9]+/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"([^/]+)/(.+?)/([0-9]+)/([^/]+)/embed/?$\";s:101:\"index.php?author_name=$matches[1]&category_name=$matches[2]&p=$matches[3]&name=$matches[4]&embed=true\";s:43:\"([^/]+)/(.+?)/([0-9]+)/([^/]+)/trackback/?$\";s:95:\"index.php?author_name=$matches[1]&category_name=$matches[2]&p=$matches[3]&name=$matches[4]&tb=1\";s:63:\"([^/]+)/(.+?)/([0-9]+)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:107:\"index.php?author_name=$matches[1]&category_name=$matches[2]&p=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:58:\"([^/]+)/(.+?)/([0-9]+)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:107:\"index.php?author_name=$matches[1]&category_name=$matches[2]&p=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:51:\"([^/]+)/(.+?)/([0-9]+)/([^/]+)/page/?([0-9]{1,})/?$\";s:108:\"index.php?author_name=$matches[1]&category_name=$matches[2]&p=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:58:\"([^/]+)/(.+?)/([0-9]+)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:108:\"index.php?author_name=$matches[1]&category_name=$matches[2]&p=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:47:\"([^/]+)/(.+?)/([0-9]+)/([^/]+)(?:/([0-9]+))?/?$\";s:107:\"index.php?author_name=$matches[1]&category_name=$matches[2]&p=$matches[3]&name=$matches[4]&page=$matches[5]\";s:33:\"[^/]+/.+?/[0-9]+/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"[^/]+/.+?/[0-9]+/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"[^/]+/.+?/[0-9]+/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"[^/]+/.+?/[0-9]+/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"[^/]+/.+?/[0-9]+/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"[^/]+/.+?/[0-9]+/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"[^/]+/.+?/[0-9]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"[^/]+/.+?/[0-9]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"[^/]+/.+?/[0-9]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"[^/]+/.+?/[0-9]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"[^/]+/.+?/[0-9]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"[^/]+/.+?/[0-9]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"([^/]+)/(.+?)/([0-9]+)/embed/?$\";s:84:\"index.php?author_name=$matches[1]&category_name=$matches[2]&p=$matches[3]&embed=true\";s:35:\"([^/]+)/(.+?)/([0-9]+)/trackback/?$\";s:78:\"index.php?author_name=$matches[1]&category_name=$matches[2]&p=$matches[3]&tb=1\";s:55:\"([^/]+)/(.+?)/([0-9]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:90:\"index.php?author_name=$matches[1]&category_name=$matches[2]&p=$matches[3]&feed=$matches[4]\";s:50:\"([^/]+)/(.+?)/([0-9]+)/(feed|rdf|rss|rss2|atom)/?$\";s:90:\"index.php?author_name=$matches[1]&category_name=$matches[2]&p=$matches[3]&feed=$matches[4]\";s:43:\"([^/]+)/(.+?)/([0-9]+)/page/?([0-9]{1,})/?$\";s:91:\"index.php?author_name=$matches[1]&category_name=$matches[2]&p=$matches[3]&paged=$matches[4]\";s:50:\"([^/]+)/(.+?)/([0-9]+)/comment-page-([0-9]{1,})/?$\";s:91:\"index.php?author_name=$matches[1]&category_name=$matches[2]&p=$matches[3]&cpage=$matches[4]\";s:39:\"([^/]+)/(.+?)/([0-9]+)(?:/([0-9]+))?/?$\";s:90:\"index.php?author_name=$matches[1]&category_name=$matches[2]&p=$matches[3]&page=$matches[4]\";s:27:\"[^/]+/.+?/[0-9]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/.+?/[0-9]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/.+?/[0-9]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/.+?/[0-9]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/.+?/[0-9]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/.+?/[0-9]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"([^/]+)/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:76:\"index.php?author_name=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:41:\"([^/]+)/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:76:\"index.php?author_name=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:22:\"([^/]+)/(.+?)/embed/?$\";s:70:\"index.php?author_name=$matches[1]&category_name=$matches[2]&embed=true\";s:34:\"([^/]+)/(.+?)/page/?([0-9]{1,})/?$\";s:77:\"index.php?author_name=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:41:\"([^/]+)/(.+?)/comment-page-([0-9]{1,})/?$\";s:77:\"index.php?author_name=$matches[1]&category_name=$matches[2]&cpage=$matches[3]\";s:16:\"([^/]+)/(.+?)/?$\";s:59:\"index.php?author_name=$matches[1]&category_name=$matches[2]\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:16:\"([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&cpage=$matches[2]\";s:10:\"([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'goalvarenga', 'yes'),
(41, 'stylesheet', 'goalvarenga', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:2:{s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";a:2:{i:0;s:15:\"AIO_WP_Security\";i:1;s:17:\"uninstall_handler\";}s:40:\"blogvault-real-time-backup/blogvault.php\";a:2:{i:0;s:10:\"BVWPAction\";i:1;s:9:\"uninstall\";}}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '8', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1677420728', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'goalvarenga_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'pt_BR', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"main-sidebar\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:10:{i:1664280116;a:1:{s:26:\"aios_15_minutes_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:21:\"aios-every-15-minutes\";s:4:\"args\";a:0:{}s:8:\"interval\";i:900;}}}i:1664280729;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1664282816;a:1:{s:24:\"aiowps_hourly_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1664287928;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1664287929;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1664287940;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1664287941;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1664293616;a:1:{s:23:\"aiowps_daily_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1664374329;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(1893, 'bvSecretKey', 'DfkOgrZAix6mp5g4i2ulolqmwqipBp6G', 'no'),
(1530, 'updraft_lock_aios_15_minutes_cron_event', '0', 'no'),
(1531, 'simba_tfa_priv_key_format', '1', 'no'),
(123, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1661868858;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(126, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:26:\"Requisição HTTPS falhou.\";}}', 'yes'),
(1891, 'bvredirect', 'no', 'no'),
(1892, 'bvActivateTime', '1663936278', 'no'),
(2212, '_site_transient_timeout_theme_roots', '1664281345', 'no'),
(2213, '_site_transient_theme_roots', 'a:1:{s:11:\"goalvarenga\";s:7:\"/themes\";}', 'no'),
(138, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1664279546;s:7:\"checked\";a:1:{s:11:\"goalvarenga\";s:5:\"2.3.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(163, 'new_admin_email', 'site@ideapublicidade.com.br', 'yes'),
(166, 'current_theme', 'Odin', 'yes'),
(167, 'theme_mods_goalvarenga', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(168, 'theme_switched', '', 'yes'),
(169, 'widget_odin_facebook_like_box', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(162, 'finished_updating_comment_type', '1', 'yes'),
(1618, '_site_transient_timeout_browser_620eeaccf0f03dc51ea5a9f1f3fb4360', '1664295238', 'no'),
(1619, '_site_transient_browser_620eeaccf0f03dc51ea5a9f1f3fb4360', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"105.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1620, '_site_transient_timeout_php_check_e26e33de4a278e301580d402dcb3d659', '1664295239', 'no'),
(1621, '_site_transient_php_check_e26e33de4a278e301580d402dcb3d659', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1252, 'categoria-projetos_children', 'a:0:{}', 'yes'),
(151, 'can_compress_scripts', '1', 'no'),
(158, 'recently_activated', 'a:1:{s:40:\"blogvault-real-time-backup/blogvault.php\";i:1663936478;}', 'yes'),
(2209, '_transient_timeout_global_styles_goalvarenga', '1664279599', 'no'),
(2210, '_transient_global_styles_goalvarenga', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(1525, 'aiowpsec_db_version', '1.9.3', 'yes');
INSERT INTO `goalvarenga_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1526, 'aio_wp_security_configs', 'a:100:{s:19:\"aiowps_enable_debug\";s:0:\"\";s:36:\"aiowps_enable_php_backtrace_in_email\";s:0:\"\";s:36:\"aiowps_remove_wp_generator_meta_info\";s:0:\"\";s:25:\"aiowps_prevent_hotlinking\";s:0:\"\";s:28:\"aiowps_enable_login_lockdown\";s:0:\"\";s:28:\"aiowps_allow_unlock_requests\";s:1:\"1\";s:25:\"aiowps_max_login_attempts\";s:1:\"3\";s:24:\"aiowps_retry_time_period\";s:1:\"5\";s:26:\"aiowps_lockout_time_length\";s:1:\"5\";s:30:\"aiowps_max_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_set_generic_login_msg\";s:0:\"\";s:26:\"aiowps_enable_email_notify\";s:0:\"\";s:20:\"aiowps_email_address\";s:27:\"site@ideapublicidade.com.br\";s:27:\"aiowps_enable_forced_logout\";s:0:\"\";s:25:\"aiowps_logout_time_period\";s:2:\"60\";s:39:\"aiowps_enable_invalid_username_lockdown\";s:0:\"\";s:43:\"aiowps_instantly_lockout_specific_usernames\";a:0:{}s:32:\"aiowps_unlock_request_secret_key\";s:20:\"tfixq2q67jqfa1a8j4yq\";s:35:\"aiowps_lockdown_enable_whitelisting\";s:0:\"\";s:36:\"aiowps_lockdown_allowed_ip_addresses\";s:0:\"\";s:26:\"aiowps_enable_whitelisting\";s:0:\"\";s:27:\"aiowps_allowed_ip_addresses\";s:0:\"\";s:27:\"aiowps_enable_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_custom_login_captcha\";s:0:\"\";s:31:\"aiowps_enable_woo_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_woo_register_captcha\";s:0:\"\";s:38:\"aiowps_enable_woo_lostpassword_captcha\";s:0:\"\";s:25:\"aiowps_captcha_secret_key\";s:20:\"ta3zhc66xgfwprheh47f\";s:42:\"aiowps_enable_manual_registration_approval\";s:0:\"\";s:39:\"aiowps_enable_registration_page_captcha\";s:0:\"\";s:35:\"aiowps_enable_registration_honeypot\";s:0:\"\";s:27:\"aiowps_enable_random_prefix\";s:0:\"\";s:31:\"aiowps_enable_automated_backups\";s:0:\"\";s:26:\"aiowps_db_backup_frequency\";s:1:\"4\";s:25:\"aiowps_db_backup_interval\";s:1:\"2\";s:26:\"aiowps_backup_files_stored\";s:1:\"2\";s:32:\"aiowps_send_backup_email_address\";s:0:\"\";s:27:\"aiowps_backup_email_address\";s:27:\"site@ideapublicidade.com.br\";s:27:\"aiowps_disable_file_editing\";s:0:\"\";s:37:\"aiowps_prevent_default_wp_file_access\";s:0:\"\";s:22:\"aiowps_system_log_file\";s:9:\"error_log\";s:26:\"aiowps_enable_blacklisting\";s:0:\"\";s:26:\"aiowps_banned_ip_addresses\";s:0:\"\";s:28:\"aiowps_enable_basic_firewall\";s:0:\"\";s:27:\"aiowps_max_file_upload_size\";s:2:\"10\";s:31:\"aiowps_enable_pingback_firewall\";s:0:\"\";s:38:\"aiowps_disable_xmlrpc_pingback_methods\";s:0:\"\";s:34:\"aiowps_block_debug_log_file_access\";s:0:\"\";s:26:\"aiowps_disable_index_views\";s:0:\"\";s:30:\"aiowps_disable_trace_and_track\";s:0:\"\";s:28:\"aiowps_forbid_proxy_comments\";s:0:\"\";s:29:\"aiowps_deny_bad_query_strings\";s:0:\"\";s:34:\"aiowps_advanced_char_string_filter\";s:0:\"\";s:25:\"aiowps_enable_5g_firewall\";s:0:\"\";s:25:\"aiowps_enable_6g_firewall\";s:0:\"\";s:26:\"aiowps_enable_custom_rules\";s:0:\"\";s:32:\"aiowps_place_custom_rules_at_top\";s:0:\"\";s:19:\"aiowps_custom_rules\";s:0:\"\";s:25:\"aiowps_enable_404_logging\";s:0:\"\";s:28:\"aiowps_enable_404_IP_lockout\";s:0:\"\";s:30:\"aiowps_404_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_404_lock_redirect_url\";s:16:\"http://127.0.0.1\";s:31:\"aiowps_enable_rename_login_page\";s:0:\"\";s:28:\"aiowps_enable_login_honeypot\";s:0:\"\";s:35:\"aiowps_disable_application_password\";s:1:\"1\";s:43:\"aiowps_enable_brute_force_attack_prevention\";s:0:\"\";s:30:\"aiowps_brute_force_secret_word\";s:0:\"\";s:24:\"aiowps_cookie_brute_test\";s:0:\"\";s:44:\"aiowps_cookie_based_brute_force_redirect_url\";s:16:\"http://127.0.0.1\";s:59:\"aiowps_brute_force_attack_prevention_pw_protected_exception\";s:0:\"\";s:51:\"aiowps_brute_force_attack_prevention_ajax_exception\";s:0:\"\";s:19:\"aiowps_site_lockout\";s:0:\"\";s:23:\"aiowps_site_lockout_msg\";s:61:\"This site is currently not available. Please try again later.\";s:30:\"aiowps_enable_spambot_blocking\";s:0:\"\";s:29:\"aiowps_enable_comment_captcha\";s:0:\"\";s:31:\"aiowps_enable_autoblock_spam_ip\";s:0:\"\";s:33:\"aiowps_spam_ip_min_comments_block\";s:0:\"\";s:33:\"aiowps_enable_bp_register_captcha\";s:0:\"\";s:35:\"aiowps_enable_bbp_new_topic_captcha\";s:0:\"\";s:33:\"aiowps_enable_trash_spam_comments\";s:0:\"\";s:37:\"aiowps_trash_spam_comments_after_days\";s:2:\"14\";s:32:\"aiowps_enable_automated_fcd_scan\";s:0:\"\";s:25:\"aiowps_fcd_scan_frequency\";s:1:\"4\";s:24:\"aiowps_fcd_scan_interval\";s:1:\"2\";s:28:\"aiowps_fcd_exclude_filetypes\";s:0:\"\";s:24:\"aiowps_fcd_exclude_files\";s:0:\"\";s:26:\"aiowps_send_fcd_scan_email\";s:0:\"\";s:29:\"aiowps_fcd_scan_email_address\";s:27:\"site@ideapublicidade.com.br\";s:27:\"aiowps_fcds_change_detected\";b:0;s:22:\"aiowps_copy_protection\";s:0:\"\";s:40:\"aiowps_prevent_site_display_inside_frame\";s:0:\"\";s:32:\"aiowps_prevent_users_enumeration\";s:0:\"\";s:42:\"aiowps_disallow_unauthorized_rest_requests\";s:0:\"\";s:25:\"aiowps_recaptcha_site_key\";s:0:\"\";s:27:\"aiowps_recaptcha_secret_key\";s:0:\"\";s:24:\"aiowps_default_recaptcha\";s:0:\"\";s:36:\"aiowps_on_uninstall_delete_db_tables\";s:1:\"1\";s:34:\"aiowps_on_uninstall_delete_configs\";s:1:\"1\";s:12:\"installed-at\";i:1663256907;s:22:\"aiowps_login_page_slug\";s:16:\"_desenvolvimento\";}', 'yes'),
(1890, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1664279546;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:49:\"w.org/plugins/all-in-one-wp-security-and-firewall\";s:4:\"slug\";s:35:\"all-in-one-wp-security-and-firewall\";s:6:\"plugin\";s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:11:\"new_version\";s:5:\"5.0.7\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/all-in-one-wp-security-and-firewall/\";s:7:\"package\";s:84:\"https://downloads.wordpress.org/plugin/all-in-one-wp-security-and-firewall.5.0.7.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:88:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/icon-128x128.png?rev=1232826\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-1544x500.png?rev=1914011\";s:2:\"1x\";s:90:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-772x250.png?rev=1914013\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:3:\"5.0\";s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:5:\"5.0.7\";}}', 'no'),
(204, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.0.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.0.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.2\";s:7:\"version\";s:5:\"6.0.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1664279544;s:15:\"version_checked\";s:5:\"6.0.2\";s:12:\"translations\";a:0:{}}', 'no'),
(206, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":7,\"critical\":0}', 'yes'),
(193, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `goalvarenga_postmeta`
--

DROP TABLE IF EXISTS `goalvarenga_postmeta`;
CREATE TABLE IF NOT EXISTS `goalvarenga_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=390 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `goalvarenga_postmeta`
--

INSERT INTO `goalvarenga_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_wp_trash_meta_status', 'publish'),
(4, 2, '_wp_trash_meta_time', '1661868810'),
(5, 2, '_wp_desired_post_slug', 'pagina-exemplo'),
(6, 3, '_wp_trash_meta_status', 'draft'),
(7, 3, '_wp_trash_meta_time', '1661868810'),
(8, 3, '_wp_desired_post_slug', 'politica-de-privacidade'),
(9, 1, '_wp_trash_meta_status', 'publish'),
(10, 1, '_wp_trash_meta_time', '1661868817'),
(11, 1, '_wp_desired_post_slug', 'ola-mundo'),
(12, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(13, 8, '_edit_lock', '1662062287:1'),
(14, 8, '_wp_page_template', 'page-home.php'),
(15, 11, '_menu_item_type', 'post_type'),
(16, 11, '_menu_item_menu_item_parent', '0'),
(17, 11, '_menu_item_object_id', '8'),
(18, 11, '_menu_item_object', 'page'),
(19, 11, '_menu_item_target', ''),
(20, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(21, 11, '_menu_item_xfn', ''),
(22, 11, '_menu_item_url', ''),
(23, 11, '_menu_item_orphaned', '1661951729'),
(24, 12, '_edit_lock', '1662757007:1'),
(25, 12, '_wp_page_template', 'page-empresa.php'),
(26, 14, '_edit_lock', '1661952251:1'),
(27, 14, '_wp_page_template', 'default'),
(28, 16, '_edit_lock', '1662051478:1'),
(29, 16, '_wp_page_template', 'page-projetos.php'),
(30, 18, '_edit_lock', '1661952272:1'),
(31, 18, '_wp_page_template', 'page-contato.php'),
(32, 20, '_menu_item_type', 'post_type'),
(33, 20, '_menu_item_menu_item_parent', '0'),
(34, 20, '_menu_item_object_id', '8'),
(35, 20, '_menu_item_object', 'page'),
(36, 20, '_menu_item_target', ''),
(37, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 20, '_menu_item_xfn', ''),
(39, 20, '_menu_item_url', ''),
(81, 25, 'numero', '500'),
(41, 21, '_menu_item_type', 'post_type'),
(42, 21, '_menu_item_menu_item_parent', '0'),
(43, 21, '_menu_item_object_id', '18'),
(44, 21, '_menu_item_object', 'page'),
(45, 21, '_menu_item_target', ''),
(46, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 21, '_menu_item_xfn', ''),
(48, 21, '_menu_item_url', ''),
(77, 25, '_edit_lock', '1663699866:1'),
(50, 22, '_menu_item_type', 'post_type'),
(51, 22, '_menu_item_menu_item_parent', '0'),
(52, 22, '_menu_item_object_id', '12'),
(53, 22, '_menu_item_object', 'page'),
(54, 22, '_menu_item_target', ''),
(55, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 22, '_menu_item_xfn', ''),
(57, 22, '_menu_item_url', ''),
(80, 25, 'endereco', 'Municipal Pedro Rosa da Silva'),
(276, 40, 'img-single-servico', '37,35,49'),
(275, 40, '_edit_last', '1'),
(274, 42, 'img-single-servico', '30,33,35'),
(273, 42, '_edit_last', '1'),
(272, 45, 'img-single-servico', '39,38,37'),
(271, 45, '_edit_last', '1'),
(78, 25, '_edit_last', '1'),
(226, 72, '_menu_item_menu_item_parent', '0'),
(225, 72, '_menu_item_type', 'post_type'),
(224, 71, '_menu_item_orphaned', '1662985735'),
(223, 71, '_menu_item_url', ''),
(222, 71, '_menu_item_xfn', ''),
(221, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(79, 25, 'logradouro', 'Estrada'),
(82, 25, 'bairro', 'Morro Grande'),
(83, 25, 'cidade', 'Extrema'),
(84, 25, 'estado', 'MG'),
(85, 25, 'cep', '37640-000'),
(370, 95, '_edit_lock', '1663184021:1'),
(87, 25, 'telefone1', '(35) 3435-0713'),
(92, 25, 'whatsapp', '(35) 99961-0657'),
(89, 25, 'email1', 'contato@goalvarenga.com.br'),
(90, 25, 'facebook', 'google.com'),
(91, 25, 'instagram', 'google.com'),
(93, 26, '_edit_lock', '1662040409:1'),
(111, 26, '_thumbnail_id', '35'),
(110, 35, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1144;s:6:\"height\";i:905;s:4:\"file\";s:18:\"2022/08/banner.jpg\";s:8:\"filesize\";i:1628371;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"banner-300x237.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:237;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33244;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"banner-1024x810.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:296024;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11665;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"banner-768x608.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:608;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:183452;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 35, '_wp_attached_file', '2022/08/banner.jpg'),
(98, 26, '_edit_last', '1'),
(99, 29, '_edit_lock', '1662050655:1'),
(100, 30, '_wp_attached_file', '2022/08/projeto1.png'),
(101, 30, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:471;s:6:\"height\";i:322;s:4:\"file\";s:20:\"2022/08/projeto1.png\";s:8:\"filesize\";i:331327;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"projeto1-300x205.png\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:130268;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"projeto1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49280;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 29, '_thumbnail_id', '37'),
(103, 29, '_edit_last', '1'),
(104, 32, '_edit_lock', '1661976011:1'),
(105, 33, '_wp_attached_file', '2022/08/projeto2.png'),
(106, 33, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:471;s:6:\"height\";i:322;s:4:\"file\";s:20:\"2022/08/projeto2.png\";s:8:\"filesize\";i:319436;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"projeto2-300x205.png\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:127647;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"projeto2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49001;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 32, '_thumbnail_id', '33'),
(108, 32, '_edit_last', '1'),
(112, 37, '_wp_attached_file', '2022/08/part-construction-worker-with-tools-belt.jpg'),
(113, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1500;s:6:\"height\";i:1000;s:4:\"file\";s:52:\"2022/08/part-construction-worker-with-tools-belt.jpg\";s:8:\"filesize\";i:1290924;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:52:\"part-construction-worker-with-tools-belt-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15852;}s:5:\"large\";a:5:{s:4:\"file\";s:53:\"part-construction-worker-with-tools-belt-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:99986;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:52:\"part-construction-worker-with-tools-belt-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8401;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:52:\"part-construction-worker-with-tools-belt-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64834;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 38, '_wp_attached_file', '2022/09/servico2.png'),
(115, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:640;s:6:\"height\";i:400;s:4:\"file\";s:20:\"2022/09/servico2.png\";s:8:\"filesize\";i:373705;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"servico2-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:83532;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"servico2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:35283;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 39, '_wp_attached_file', '2022/09/servico1.png'),
(117, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:640;s:6:\"height\";i:400;s:4:\"file\";s:20:\"2022/09/servico1.png\";s:8:\"filesize\";i:444364;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"servico1-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:100618;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"servico1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:43021;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 8, '_edit_last', '1'),
(119, 8, 'construcao', 'Construção e reforma em geral'),
(120, 8, 'texto-construcao', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer tetuer adipiscing elit dolor consectetuer adipiscing elit dolor sit amet, ctetuer'),
(121, 8, 'reparos', 'Reparos'),
(122, 8, 'texto-reparos', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer tetuer adipiscing elit dolor consectetuer adipiscing elit dolor sit amet, ctetuer'),
(123, 8, 'projetos', 'Projetos em geral'),
(124, 8, 'texto-projetos', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer tetuer adipiscing elit dolor consectetuer adipiscing elit dolor sit amet, ctetuer'),
(125, 8, 'imagem-fundo', '38'),
(126, 8, 'imagem-frente', '39'),
(127, 8, 'descritivo-empresa', 'A G.O. Alvarenga nasceu da necessidade de preencher uma lacuna na área da construção civil em Extrema e na região Sul de Minas Gerais. Uma vez que a região encontra-se em franco desenvolvimento, muitas indústrias acabaram por escolher a cidade para fixar suas instalações. Isto, por sua vez, incentivou também o crescimento turístico, o que resultou no avanço sistemático da  área urbana da cidade e de módulos rurais, fazendo com que surgisse \r\numa demanda muito grande dentro do setor de construção.'),
(128, 40, '_edit_lock', '1663011708:1'),
(129, 40, '_thumbnail_id', '35'),
(130, 42, '_edit_lock', '1663011699:1'),
(131, 43, '_wp_attached_file', '2022/09/servico1-1.png'),
(132, 43, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:640;s:6:\"height\";i:400;s:4:\"file\";s:22:\"2022/09/servico1-1.png\";s:8:\"filesize\";i:444364;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"servico1-1-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:100618;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"servico1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:43021;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 42, '_thumbnail_id', '43'),
(134, 45, '_edit_lock', '1663016026:1'),
(135, 46, '_wp_attached_file', '2022/09/servico2-1.png'),
(136, 46, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:640;s:6:\"height\";i:400;s:4:\"file\";s:22:\"2022/09/servico2-1.png\";s:8:\"filesize\";i:373705;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"servico2-1-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:83532;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"servico2-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:35283;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 45, '_thumbnail_id', '46'),
(138, 48, '_edit_lock', '1663256768:1'),
(139, 49, '_wp_attached_file', '2022/09/projeto1.png'),
(140, 49, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:471;s:6:\"height\";i:322;s:4:\"file\";s:20:\"2022/09/projeto1.png\";s:8:\"filesize\";i:331327;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"projeto1-300x205.png\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:130268;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"projeto1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49280;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 48, '_thumbnail_id', '49'),
(142, 51, '_edit_lock', '1663184059:1'),
(143, 52, '_wp_attached_file', '2022/09/projeto2.png'),
(144, 52, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:471;s:6:\"height\";i:322;s:4:\"file\";s:20:\"2022/09/projeto2.png\";s:8:\"filesize\";i:319436;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"projeto2-300x205.png\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:127647;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"projeto2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49001;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 51, '_thumbnail_id', '52'),
(146, 54, '_edit_lock', '1663184045:1'),
(147, 55, '_wp_attached_file', '2022/09/projeto3.png'),
(148, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:470;s:6:\"height\";i:322;s:4:\"file\";s:20:\"2022/09/projeto3.png\";s:8:\"filesize\";i:267324;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"projeto3-300x206.png\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:105600;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"projeto3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42436;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 54, '_thumbnail_id', '55'),
(150, 57, '_wp_attached_file', '2022/09/a-empresa.jpg'),
(151, 57, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:767;s:6:\"height\";i:589;s:4:\"file\";s:21:\"2022/09/a-empresa.jpg\";s:8:\"filesize\";i:403411;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"a-empresa-300x230.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17852;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"a-empresa-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7471;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 12, '_thumbnail_id', '57'),
(153, 12, '_edit_last', '1'),
(154, 12, 'experiencia', 'Anos de experiência'),
(155, 12, 'experiencia-qtd', '32'),
(156, 12, 'projetos', 'Projetos realizados'),
(157, 12, 'projetos-qtd', '300'),
(158, 12, 'licencas', 'Licenças de Arquitetura'),
(159, 12, 'licencas-qtd', '220'),
(160, 12, 'clientes', 'Clientes satisfeitos'),
(161, 12, 'clientes-qtd', '610'),
(181, 66, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:74;s:6:\"height\";i:65;s:4:\"file\";s:21:\"2022/09/trabalhos.png\";s:8:\"filesize\";i:5511;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(178, 65, '_wp_attached_file', '2022/09/ideias.png'),
(179, 65, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:74;s:6:\"height\";i:65;s:4:\"file\";s:18:\"2022/09/ideias.png\";s:8:\"filesize\";i:3883;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(174, 63, '_wp_attached_file', '2022/09/construcao.png'),
(175, 63, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:74;s:6:\"height\";i:65;s:4:\"file\";s:22:\"2022/09/construcao.png\";s:8:\"filesize\";i:2924;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(176, 64, '_wp_attached_file', '2022/09/equipe.png'),
(177, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:74;s:6:\"height\";i:65;s:4:\"file\";s:18:\"2022/09/equipe.png\";s:8:\"filesize\";i:5018;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(180, 66, '_wp_attached_file', '2022/09/trabalhos.png'),
(182, 12, 'box1-img', '64'),
(183, 12, 'box1-title', 'Equipe Profissional'),
(184, 12, 'box1-desc', 'Lorem ipsum dolor sit amet ipsum dolor sit etipsum dolor sit'),
(185, 12, 'box2-img', '65'),
(186, 12, 'box2-title', 'Ótimas ideias'),
(187, 12, 'box2-desc', 'Lorem ipsum dolor sit amet ipsum dolor sit etipsum dolor sit'),
(188, 12, 'box3-img', '63'),
(189, 12, 'box3-title', 'Construção de qualidade'),
(190, 12, 'box3-desc', 'Lorem ipsum dolor sit amet ipsum dolor sit '),
(191, 12, 'box4-img', '66'),
(192, 12, 'box4-title', 'Trabalhos de qualidade'),
(193, 12, 'box4-desc', 'Lorem ipsum dolor sit amet ipsum dolor sit '),
(194, 67, '_edit_lock', '1663011719:1'),
(195, 68, '_wp_attached_file', '2022/09/pintura.png'),
(196, 68, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:480;s:6:\"height\";i:360;s:4:\"file\";s:19:\"2022/09/pintura.png\";s:8:\"filesize\";i:278262;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"pintura-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:91489;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"pintura-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:28405;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(197, 67, '_thumbnail_id', '68'),
(198, 67, '_edit_last', '1'),
(199, 67, '_wp_old_date', '2022-09-12'),
(200, 14, '_wp_trash_meta_status', 'publish'),
(201, 14, '_wp_trash_meta_time', '1662984454'),
(202, 14, '_wp_desired_post_slug', 'servicos'),
(220, 71, '_menu_item_target', ''),
(219, 71, '_menu_item_object', 'servico'),
(218, 71, '_menu_item_object_id', '45'),
(217, 71, '_menu_item_menu_item_parent', '0'),
(216, 71, '_menu_item_type', 'post_type'),
(389, 25, 'horario-funcionamento', 'Segunda há sexta – 7h às 17h '),
(212, 20, '_wp_old_date', '2022-08-31'),
(213, 22, '_wp_old_date', '2022-08-31'),
(215, 21, '_wp_old_date', '2022-08-31'),
(227, 72, '_menu_item_object_id', '42'),
(228, 72, '_menu_item_object', 'servico'),
(229, 72, '_menu_item_target', ''),
(230, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(231, 72, '_menu_item_xfn', ''),
(232, 72, '_menu_item_url', ''),
(233, 72, '_menu_item_orphaned', '1662985735'),
(234, 73, '_menu_item_type', 'post_type'),
(235, 73, '_menu_item_menu_item_parent', '0'),
(236, 73, '_menu_item_object_id', '40'),
(237, 73, '_menu_item_object', 'servico'),
(238, 73, '_menu_item_target', ''),
(239, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(240, 73, '_menu_item_xfn', ''),
(241, 73, '_menu_item_url', ''),
(242, 73, '_menu_item_orphaned', '1662985735'),
(243, 74, '_menu_item_type', 'post_type'),
(244, 74, '_menu_item_menu_item_parent', '0'),
(245, 74, '_menu_item_object_id', '67'),
(246, 74, '_menu_item_object', 'servico'),
(247, 74, '_menu_item_target', ''),
(248, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(249, 74, '_menu_item_xfn', ''),
(250, 74, '_menu_item_url', ''),
(251, 74, '_menu_item_orphaned', '1662985735'),
(252, 75, '_menu_item_type', 'post_type_archive'),
(253, 75, '_menu_item_menu_item_parent', '0'),
(254, 75, '_menu_item_object_id', '-16'),
(255, 75, '_menu_item_object', 'servico'),
(256, 75, '_menu_item_target', ''),
(257, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(258, 75, '_menu_item_xfn', ''),
(259, 75, '_menu_item_url', ''),
(300, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(299, 80, '_menu_item_target', ''),
(298, 80, '_menu_item_object', 'projeto'),
(297, 80, '_menu_item_object_id', '-25'),
(296, 80, '_menu_item_menu_item_parent', '0'),
(295, 80, '_menu_item_type', 'post_type_archive'),
(277, 67, 'img-single-servico', '55,49,46'),
(279, 54, '_edit_last', '1'),
(280, 51, '_edit_last', '1'),
(281, 48, '_edit_last', '1'),
(350, 91, '_menu_item_orphaned', '1663159759'),
(348, 91, '_menu_item_xfn', ''),
(346, 91, '_menu_item_target', ''),
(347, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(345, 91, '_menu_item_object', 'ornitorrinco'),
(294, 21, '_wp_old_date', '2022-09-12'),
(291, 20, '_wp_old_date', '2022-09-12'),
(292, 22, '_wp_old_date', '2022-09-12'),
(293, 75, '_wp_old_date', '2022-09-12'),
(301, 80, '_menu_item_xfn', ''),
(302, 80, '_menu_item_url', ''),
(303, 80, '_menu_item_orphaned', '1663157973'),
(353, 92, '_menu_item_object_id', '-23'),
(352, 92, '_menu_item_menu_item_parent', '0'),
(320, 16, '_wp_desired_post_slug', 'projetos'),
(319, 16, '_wp_trash_meta_time', '1663158607'),
(318, 16, '_wp_trash_meta_status', 'publish'),
(313, 20, '_wp_old_date', '2022-09-13'),
(314, 22, '_wp_old_date', '2022-09-13'),
(315, 75, '_wp_old_date', '2022-09-13'),
(344, 91, '_menu_item_object_id', '-23'),
(317, 21, '_wp_old_date', '2022-09-13'),
(351, 92, '_menu_item_type', 'post_type_archive'),
(341, 89, '_edit_lock', '1663159734:1'),
(340, 87, '_edit_lock', '1663159527:1'),
(339, 85, '_edit_lock', '1663159520:1'),
(349, 91, '_menu_item_url', ''),
(343, 91, '_menu_item_menu_item_parent', '0'),
(342, 91, '_menu_item_type', 'post_type_archive'),
(354, 92, '_menu_item_object', 'ornitorrinco'),
(355, 92, '_menu_item_target', ''),
(356, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(357, 92, '_menu_item_xfn', ''),
(358, 92, '_menu_item_url', ''),
(359, 92, '_menu_item_orphaned', '1663159911'),
(360, 93, '_menu_item_type', 'post_type_archive'),
(361, 93, '_menu_item_menu_item_parent', '0'),
(362, 93, '_menu_item_object_id', '-23'),
(363, 93, '_menu_item_object', 'projeto'),
(364, 93, '_menu_item_target', ''),
(365, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(366, 93, '_menu_item_xfn', ''),
(367, 93, '_menu_item_url', ''),
(371, 95, '_thumbnail_id', '37'),
(372, 95, '_edit_last', '1'),
(373, 95, 'img-single-projeto', '30,55,46,37'),
(374, 54, 'img-single-projeto', '43,38,37'),
(375, 51, 'img-single-projeto', '46,49,52'),
(376, 48, 'img-single-projeto', '55,30'),
(377, 95, 'cliente', 'teste cliente'),
(378, 95, 'data', '2022-09-14'),
(379, 95, 'localizacao', 'extrema-mg'),
(380, 54, 'cliente', 'testecliente3'),
(381, 54, 'data', '2022-08-30'),
(382, 54, 'localizacao', 'testeloc3'),
(383, 51, 'cliente', 'testecliente2'),
(384, 51, 'data', '2022-09-10'),
(385, 51, 'localizacao', 'testeloc2'),
(386, 48, 'cliente', 'testecliente1'),
(387, 48, 'data', '2022-09-02'),
(388, 48, 'localizacao', 'testeloc1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `goalvarenga_posts`
--

DROP TABLE IF EXISTS `goalvarenga_posts`;
CREATE TABLE IF NOT EXISTS `goalvarenga_posts` (
  `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `goalvarenga_posts`
--

INSERT INTO `goalvarenga_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-08-30 11:12:08', '2022-08-30 14:12:08', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'trash', 'open', 'open', '', 'ola-mundo__trashed', '', '', '2022-08-30 11:13:37', '2022-08-30 14:13:37', '', 0, 'http://localhost/goalvarenga/?p=1', 0, 'post', '', 1),
(2, 1, '2022-08-30 11:12:08', '2022-08-30 14:12:08', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/goalvarenga/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo__trashed', '', '', '2022-08-30 11:13:30', '2022-08-30 14:13:30', '', 0, 'http://localhost/goalvarenga/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-08-30 11:12:08', '2022-08-30 14:12:08', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/goalvarenga.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem compartilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde seus dados são enviados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'trash', 'closed', 'open', '', 'politica-de-privacidade__trashed', '', '', '2022-08-30 11:13:30', '2022-08-30 14:13:30', '', 0, 'http://localhost/goalvarenga/?page_id=3', 0, 'page', '', 0),
(57, 1, '2022-09-08 15:04:09', '2022-09-08 18:04:09', '', 'a-empresa', '', 'inherit', 'open', 'closed', '', 'a-empresa', '', '', '2022-09-08 15:04:09', '2022-09-08 18:04:09', '', 12, 'http://localhost/goalvarenga/wp-content/uploads/2022/09/a-empresa.jpg', 0, 'attachment', 'image/jpeg', 0),
(5, 1, '2022-08-30 11:13:30', '2022-08-30 14:13:30', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/goalvarenga/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-08-30 11:13:30', '2022-08-30 14:13:30', '', 2, 'http://localhost/goalvarenga/?p=5', 0, 'revision', '', 0),
(6, 1, '2022-08-30 11:13:30', '2022-08-30 14:13:30', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/goalvarenga.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem compartilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde seus dados são enviados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2022-08-30 11:13:30', '2022-08-30 14:13:30', '', 3, 'http://localhost/goalvarenga/?p=6', 0, 'revision', '', 0),
(7, 1, '2022-08-30 11:13:37', '2022-08-30 14:13:37', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-08-30 11:13:37', '2022-08-30 14:13:37', '', 1, 'http://localhost/goalvarenga/?p=7', 0, 'revision', '', 0),
(8, 1, '2022-08-30 11:30:51', '2022-08-30 14:30:51', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-09-01 14:40:19', '2022-09-01 17:40:19', '', 0, 'http://localhost/goalvarenga/?page_id=8', 0, 'page', '', 0),
(9, 1, '2022-08-30 11:30:46', '2022-08-30 14:30:46', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-goalvarenga', '', '', '2022-08-30 11:30:46', '2022-08-30 14:30:46', '', 0, 'http://localhost/goalvarenga/2022/08/30/wp-global-styles-goalvarenga/', 0, 'wp_global_styles', '', 0),
(10, 1, '2022-08-30 11:30:51', '2022-08-30 14:30:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-08-30 11:30:51', '2022-08-30 14:30:51', '', 8, 'http://localhost/goalvarenga/?p=10', 0, 'revision', '', 0),
(11, 1, '2022-08-31 10:15:29', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-08-31 10:15:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/goalvarenga/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2022-08-31 10:26:23', '2022-08-31 13:26:23', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer tetuer adipiscing elit dolor consectetuer adipiscing elit dolor sit amet, ctetuer Lorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer tetuer adipiscing elit dolor consectetuer adipiscing elit dolor sit amet, ctetuer<br>Lorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer tetuer adipiscing elit dolor consectetuer adipiscing elit dolor sit amet, ctetuerLorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer tetuer adipiscing elit dolor consectetuer adipiscing elit dolor sit amet, ctetuerLorem ipsum dol</p>\n<!-- /wp:paragraph -->', 'Empresa', '', 'publish', 'closed', 'closed', '', 'empresa', '', '', '2022-09-09 14:35:54', '2022-09-09 17:35:54', '', 0, 'http://localhost/goalvarenga/?page_id=12', 0, 'page', '', 0),
(13, 1, '2022-08-31 10:26:23', '2022-08-31 13:26:23', '', 'Empresa', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2022-08-31 10:26:23', '2022-08-31 13:26:23', '', 12, 'http://localhost/goalvarenga/?p=13', 0, 'revision', '', 0),
(14, 1, '2022-08-31 10:26:34', '2022-08-31 13:26:34', '', 'Serviços', '', 'trash', 'closed', 'closed', '', 'servicos__trashed', '', '', '2022-09-12 09:07:34', '2022-09-12 12:07:34', '', 0, 'http://localhost/goalvarenga/?page_id=14', 0, 'page', '', 0),
(15, 1, '2022-08-31 10:26:34', '2022-08-31 13:26:34', '', 'Serviços', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2022-08-31 10:26:34', '2022-08-31 13:26:34', '', 14, 'http://localhost/goalvarenga/?p=15', 0, 'revision', '', 0),
(16, 1, '2022-08-31 10:26:44', '2022-08-31 13:26:44', '', 'Projetos', '', 'trash', 'closed', 'closed', '', 'projetos__trashed', '', '', '2022-09-14 09:30:07', '2022-09-14 12:30:07', '', 0, 'http://localhost/goalvarenga/?page_id=16', 0, 'page', '', 0),
(17, 1, '2022-08-31 10:26:44', '2022-08-31 13:26:44', '', 'Projetos', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2022-08-31 10:26:44', '2022-08-31 13:26:44', '', 16, 'http://localhost/goalvarenga/?p=17', 0, 'revision', '', 0),
(18, 1, '2022-08-31 10:26:54', '2022-08-31 13:26:54', '', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2022-08-31 10:26:54', '2022-08-31 13:26:54', '', 0, 'http://localhost/goalvarenga/?page_id=18', 0, 'page', '', 0),
(19, 1, '2022-08-31 10:26:54', '2022-08-31 13:26:54', '', 'Contato', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2022-08-31 10:26:54', '2022-08-31 13:26:54', '', 18, 'http://localhost/goalvarenga/?p=19', 0, 'revision', '', 0),
(20, 1, '2022-09-14 09:52:28', '2022-08-31 13:27:07', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2022-09-14 09:52:28', '2022-09-14 12:52:28', '', 0, 'http://localhost/goalvarenga/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2022-09-14 09:52:28', '2022-08-31 13:27:07', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2022-09-14 09:52:28', '2022-09-14 12:52:28', '', 0, 'http://localhost/goalvarenga/?p=21', 5, 'nav_menu_item', '', 0),
(22, 1, '2022-09-14 09:52:28', '2022-08-31 13:27:07', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2022-09-14 09:52:28', '2022-09-14 12:52:28', '', 0, 'http://localhost/goalvarenga/?p=22', 2, 'nav_menu_item', '', 0),
(72, 1, '2022-09-12 09:28:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-09-12 09:28:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/goalvarenga/?p=72', 1, 'nav_menu_item', '', 0),
(25, 1, '2022-08-31 14:13:13', '2022-08-31 17:13:13', '', 'dados primarios', '', 'publish', 'closed', 'closed', '', 'dados-primarios', '', '', '2022-09-20 15:42:10', '2022-09-20 18:42:10', '', 0, 'http://localhost/goalvarenga/?post_type=dados&#038;p=25', 0, 'dados', '', 0),
(26, 1, '2022-08-31 16:22:18', '2022-08-31 19:22:18', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer</p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-dolor-sit-amet-consectetuer-adipiscing-elit', '', '', '2022-09-01 09:46:38', '2022-09-01 12:46:38', '', 0, 'http://localhost/goalvarenga/?post_type=banner&#038;p=26', 0, 'banner', '', 0),
(35, 1, '2022-09-01 09:46:35', '2022-09-01 12:46:35', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2022-09-01 09:46:35', '2022-09-01 12:46:35', '', 26, 'http://localhost/goalvarenga/wp-content/uploads/2022/08/banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2022-08-31 16:22:18', '2022-08-31 19:22:18', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer</p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2022-08-31 16:22:18', '2022-08-31 19:22:18', '', 26, 'http://localhost/goalvarenga/?p=28', 0, 'revision', '', 0),
(29, 1, '2022-08-31 16:24:02', '2022-08-31 19:24:02', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer</p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', '', 'publish', 'closed', 'closed', '', 'ipsum-esse-sint-ad-nostrud-sit-magna-officia-cillum-ad-eu-et-ipsum-minim-tempo', '', '', '2022-09-01 11:12:59', '2022-09-01 14:12:59', '', 0, 'http://localhost/goalvarenga/?post_type=banner&#038;p=29', 0, 'banner', '', 0),
(30, 1, '2022-08-31 16:23:59', '2022-08-31 19:23:59', '', 'projeto1', '', 'inherit', 'open', 'closed', '', 'projeto1', '', '', '2022-08-31 16:23:59', '2022-08-31 19:23:59', '', 29, 'http://localhost/goalvarenga/wp-content/uploads/2022/08/projeto1.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2022-08-31 16:24:02', '2022-08-31 19:24:02', '<!-- wp:paragraph -->\n<p>Ipsum esse sint ad nostrud sit magna officia cillum ad. Eu et ipsum minim tempo</p>\n<!-- /wp:paragraph -->', 'Ipsum esse sint ad nostrud sit magna officia cillum ad. Eu et ipsum minim tempo', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-08-31 16:24:02', '2022-08-31 19:24:02', '', 29, 'http://localhost/goalvarenga/?p=31', 0, 'revision', '', 0),
(32, 1, '2022-08-31 16:24:41', '2022-08-31 19:24:41', '<!-- wp:paragraph -->\n<p>inim cupidatat nulla adipisicing minim dolor enim. Ipsum elit proident pariatur exercitation aliquip do. Aute laborum sunt laboris ad non labore eu et Lorem dolore proident nostrud. Laborum enim fugiat eiusmod ex veniam adipisicing cupidatat sint amet commodo cillum </p>\n<!-- /wp:paragraph -->', 'rum nisi tempor esse occaecat dolor proident est. O', '', 'draft', 'closed', 'closed', '', 'rum-nisi-tempor-esse-occaecat-dolor-proident-est-o', '', '', '2022-09-01 09:40:15', '2022-09-01 12:40:15', '', 0, 'http://localhost/goalvarenga/?post_type=banner&#038;p=32', 0, 'banner', '', 0),
(33, 1, '2022-08-31 16:24:19', '2022-08-31 19:24:19', '', 'projeto2', '', 'inherit', 'open', 'closed', '', 'projeto2', '', '', '2022-08-31 16:24:19', '2022-08-31 19:24:19', '', 32, 'http://localhost/goalvarenga/wp-content/uploads/2022/08/projeto2.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2022-08-31 16:24:41', '2022-08-31 19:24:41', '<!-- wp:paragraph -->\n<p>inim cupidatat nulla adipisicing minim dolor enim. Ipsum elit proident pariatur exercitation aliquip do. Aute laborum sunt laboris ad non labore eu et Lorem dolore proident nostrud. Laborum enim fugiat eiusmod ex veniam adipisicing cupidatat sint amet commodo cillum </p>\n<!-- /wp:paragraph -->', 'rum nisi tempor esse occaecat dolor proident est. O', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2022-08-31 16:24:41', '2022-08-31 19:24:41', '', 32, 'http://localhost/goalvarenga/?p=34', 0, 'revision', '', 0),
(36, 1, '2022-09-01 10:56:09', '2022-09-01 13:56:09', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer</p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-09-01 10:56:09', '2022-09-01 13:56:09', '', 29, 'http://localhost/goalvarenga/?p=36', 0, 'revision', '', 0),
(37, 1, '2022-09-01 11:12:56', '2022-09-01 14:12:56', '', 'part-construction-worker-with-tools-belt', '', 'inherit', 'open', 'closed', '', 'part-construction-worker-with-tools-belt', '', '', '2022-09-01 11:12:56', '2022-09-01 14:12:56', '', 29, 'http://localhost/goalvarenga/wp-content/uploads/2022/08/part-construction-worker-with-tools-belt.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2022-09-01 13:53:53', '2022-09-01 16:53:53', '', 'servico2', '', 'inherit', 'open', 'closed', '', 'servico2', '', '', '2022-09-01 13:53:53', '2022-09-01 16:53:53', '', 8, 'http://localhost/goalvarenga/wp-content/uploads/2022/09/servico2.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2022-09-01 13:53:55', '2022-09-01 16:53:55', '', 'servico1', '', 'inherit', 'open', 'closed', '', 'servico1', '', '', '2022-09-01 13:53:55', '2022-09-01 16:53:55', '', 8, 'http://localhost/goalvarenga/wp-content/uploads/2022/09/servico1.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2022-09-01 17:01:45', '2022-09-01 20:01:45', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer tetuer adipiscing elit dolor consectetuer adipiscing elit dolor sit amet, ctetuer</p>\n<!-- /wp:paragraph -->', 'Construção de casas', '', 'publish', 'closed', 'closed', '', 'construcao-de-casas', '', '', '2022-09-12 16:41:47', '2022-09-12 19:41:47', '', 0, 'http://localhost/goalvarenga/?post_type=servico&#038;p=40', 0, 'servico', '', 0),
(41, 1, '2022-09-01 17:01:45', '2022-09-01 20:01:45', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer tetuer adipiscing elit dolor consectetuer adipiscing elit dolor sit amet, ctetuer</p>\n<!-- /wp:paragraph -->', 'Construção de casas', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2022-09-01 17:01:45', '2022-09-01 20:01:45', '', 40, 'http://localhost/goalvarenga/?p=41', 0, 'revision', '', 0),
(42, 1, '2022-09-01 17:02:17', '2022-09-01 20:02:17', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer tetuer adipiscing elit dolor consectetuer adipiscing elit dolor sit amet, ctetuer</p>\n<!-- /wp:paragraph -->', 'Projetos de engenharia', '', 'publish', 'closed', 'closed', '', 'projetos-de-engenharia', '', '', '2022-09-12 16:41:38', '2022-09-12 19:41:38', '', 0, 'http://localhost/goalvarenga/?post_type=servico&#038;p=42', 0, 'servico', '', 0),
(43, 1, '2022-09-01 17:01:56', '2022-09-01 20:01:56', '', 'servico1', '', 'inherit', 'open', 'closed', '', 'servico1-2', '', '', '2022-09-01 17:01:56', '2022-09-01 20:01:56', '', 42, 'http://localhost/goalvarenga/wp-content/uploads/2022/09/servico1-1.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2022-09-01 17:02:17', '2022-09-01 20:02:17', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer tetuer adipiscing elit dolor consectetuer adipiscing elit dolor sit amet, ctetuer</p>\n<!-- /wp:paragraph -->', 'Projetos de engenharia', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2022-09-01 17:02:17', '2022-09-01 20:02:17', '', 42, 'http://localhost/goalvarenga/?p=44', 0, 'revision', '', 0),
(45, 1, '2022-09-01 17:02:44', '2022-09-01 20:02:44', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer tetuer adipiscing elit dolor consectetuer adipiscing elit dolor sit amet, ctetuer</p>\n<!-- /wp:paragraph -->', 'Prédios', '', 'publish', 'closed', 'closed', '', 'predios', '', '', '2022-09-12 16:41:30', '2022-09-12 19:41:30', '', 0, 'http://localhost/goalvarenga/?post_type=servico&#038;p=45', 0, 'servico', '', 0),
(46, 1, '2022-09-01 17:02:27', '2022-09-01 20:02:27', '', 'servico2', '', 'inherit', 'open', 'closed', '', 'servico2-2', '', '', '2022-09-01 17:02:27', '2022-09-01 20:02:27', '', 45, 'http://localhost/goalvarenga/wp-content/uploads/2022/09/servico2-1.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2022-09-01 17:02:44', '2022-09-01 20:02:44', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer tetuer adipiscing elit dolor consectetuer adipiscing elit dolor sit amet, ctetuer</p>\n<!-- /wp:paragraph -->', 'Prédios', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2022-09-01 17:02:44', '2022-09-01 20:02:44', '', 45, 'http://localhost/goalvarenga/?p=47', 0, 'revision', '', 0),
(48, 1, '2022-09-02 10:03:19', '2022-09-02 13:03:19', '<!-- wp:paragraph -->\n<p>Loren Ipsun 1Loren Ipsun 1Loren Ipsun 1Loren Ipsun 1Loren Ipsun 1Loren Ipsun 1</p>\n<!-- /wp:paragraph -->', 'Loren Ipsun 1', '', 'publish', 'closed', 'closed', '', 'loren-ipsun-1', '', '', '2022-09-14 16:34:37', '2022-09-14 19:34:37', '', 0, 'http://localhost/goalvarenga/?post_type=projeto&#038;p=48', 0, 'projeto', '', 0),
(49, 1, '2022-09-02 10:03:16', '2022-09-02 13:03:16', '', 'projeto1', '', 'inherit', 'open', 'closed', '', 'projeto1-2', '', '', '2022-09-02 10:03:16', '2022-09-02 13:03:16', '', 48, 'http://localhost/goalvarenga/wp-content/uploads/2022/09/projeto1.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2022-09-02 10:03:19', '2022-09-02 13:03:19', '<!-- wp:paragraph -->\n<p>Loren Ipsun 1Loren Ipsun 1Loren Ipsun 1Loren Ipsun 1Loren Ipsun 1Loren Ipsun 1</p>\n<!-- /wp:paragraph -->', 'Loren Ipsun 1', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2022-09-02 10:03:19', '2022-09-02 13:03:19', '', 48, 'http://localhost/goalvarenga/?p=50', 0, 'revision', '', 0),
(51, 1, '2022-09-02 10:03:36', '2022-09-02 13:03:36', '<!-- wp:paragraph -->\n<p>Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2</p>\n<!-- /wp:paragraph -->', 'Loren Ipsun 2', '', 'publish', 'closed', 'closed', '', 'loren-ipsun-2', '', '', '2022-09-14 16:34:19', '2022-09-14 19:34:19', '', 0, 'http://localhost/goalvarenga/?post_type=projeto&#038;p=51', 0, 'projeto', '', 0),
(52, 1, '2022-09-02 10:03:33', '2022-09-02 13:03:33', '', 'projeto2', '', 'inherit', 'open', 'closed', '', 'projeto2-2', '', '', '2022-09-02 10:03:33', '2022-09-02 13:03:33', '', 51, 'http://localhost/goalvarenga/wp-content/uploads/2022/09/projeto2.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2022-09-02 10:03:36', '2022-09-02 13:03:36', '<!-- wp:paragraph -->\n<p>Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2Loren Ipsun 2</p>\n<!-- /wp:paragraph -->', 'Loren Ipsun 2', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2022-09-02 10:03:36', '2022-09-02 13:03:36', '', 51, 'http://localhost/goalvarenga/?p=53', 0, 'revision', '', 0),
(54, 1, '2022-09-02 10:03:52', '2022-09-02 13:03:52', '<!-- wp:paragraph -->\n<p>Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3</p>\n<!-- /wp:paragraph -->', 'Loren Ipsun 3', '', 'publish', 'closed', 'closed', '', 'loren-ipsun-3', '', '', '2022-09-14 16:34:04', '2022-09-14 19:34:04', '', 0, 'http://localhost/goalvarenga/?post_type=projeto&#038;p=54', 0, 'projeto', '', 0),
(55, 1, '2022-09-02 10:03:50', '2022-09-02 13:03:50', '', 'projeto3', '', 'inherit', 'open', 'closed', '', 'projeto3', '', '', '2022-09-02 10:03:50', '2022-09-02 13:03:50', '', 54, 'http://localhost/goalvarenga/wp-content/uploads/2022/09/projeto3.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2022-09-02 10:03:52', '2022-09-02 13:03:52', '<!-- wp:paragraph -->\n<p>Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3Loren Ipsun 3</p>\n<!-- /wp:paragraph -->', 'Loren Ipsun 3', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2022-09-02 10:03:52', '2022-09-02 13:03:52', '', 54, 'http://localhost/goalvarenga/?p=56', 0, 'revision', '', 0),
(58, 1, '2022-09-08 15:04:36', '2022-09-08 18:04:36', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer tetuer adipiscing elit dolor consectetuer adipiscing elit dolor sit amet, ctetuer Lorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer tetuer adipiscing elit dolor consectetuer adipiscing elit dolor sit amet, ctetuer<br>Lorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer tetuer adipiscing elit dolor consectetuer adipiscing elit dolor sit amet, ctetuerLorem ipsum dolor sit amet, consectetuer adipiscing elit dolor sit amet, ctetuer tetuer adipiscing elit dolor consectetuer adipiscing elit dolor sit amet, ctetuerLorem ipsum dol</p>\n<!-- /wp:paragraph -->', 'Empresa', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2022-09-08 15:04:36', '2022-09-08 18:04:36', '', 12, 'http://localhost/goalvarenga/?p=58', 0, 'revision', '', 0),
(66, 1, '2022-09-09 14:34:27', '2022-09-09 17:34:27', '', 'trabalhos', '', 'inherit', 'open', 'closed', '', 'trabalhos', '', '', '2022-09-09 14:34:27', '2022-09-09 17:34:27', '', 12, 'http://localhost/goalvarenga/wp-content/uploads/2022/09/trabalhos.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2022-09-09 14:34:27', '2022-09-09 17:34:27', '', 'ideias', '', 'inherit', 'open', 'closed', '', 'ideias', '', '', '2022-09-09 14:34:27', '2022-09-09 17:34:27', '', 12, 'http://localhost/goalvarenga/wp-content/uploads/2022/09/ideias.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2022-09-09 14:34:26', '2022-09-09 17:34:26', '', 'construção', '', 'inherit', 'open', 'closed', '', 'construcao', '', '', '2022-09-09 14:34:26', '2022-09-09 17:34:26', '', 12, 'http://localhost/goalvarenga/wp-content/uploads/2022/09/construcao.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2022-09-09 14:34:27', '2022-09-09 17:34:27', '', 'equipe', '', 'inherit', 'open', 'closed', '', 'equipe', '', '', '2022-09-09 14:34:27', '2022-09-09 17:34:27', '', 12, 'http://localhost/goalvarenga/wp-content/uploads/2022/09/equipe.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2022-09-01 08:00:11', '2022-09-01 11:00:11', '', 'Pintura', '', 'publish', 'closed', 'closed', '', 'pintura', '', '', '2022-09-12 16:41:58', '2022-09-12 19:41:58', '', 0, 'http://localhost/goalvarenga/?post_type=servico&#038;p=67', 0, 'servico', '', 0),
(68, 1, '2022-09-12 09:03:02', '2022-09-12 12:03:02', '', 'pintura', '', 'inherit', 'open', 'closed', '', 'pintura', '', '', '2022-09-12 09:03:02', '2022-09-12 12:03:02', '', 67, 'http://localhost/goalvarenga/wp-content/uploads/2022/09/pintura.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2022-09-12 09:03:11', '2022-09-12 12:03:11', '', 'Pintura', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2022-09-12 09:03:11', '2022-09-12 12:03:11', '', 67, 'http://localhost/goalvarenga/?p=69', 0, 'revision', '', 0),
(71, 1, '2022-09-12 09:28:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-09-12 09:28:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/goalvarenga/?p=71', 1, 'nav_menu_item', '', 0),
(73, 1, '2022-09-12 09:28:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-09-12 09:28:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/goalvarenga/?p=73', 1, 'nav_menu_item', '', 0),
(74, 1, '2022-09-12 09:28:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-09-12 09:28:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/goalvarenga/?p=74', 1, 'nav_menu_item', '', 0),
(75, 1, '2022-09-14 09:52:28', '2022-09-12 12:29:44', '', 'Serviços', '', 'publish', 'closed', 'closed', '', 'servicos', '', '', '2022-09-14 09:52:28', '2022-09-14 12:52:28', '', 0, 'http://localhost/goalvarenga/?p=75', 3, 'nav_menu_item', '', 0),
(80, 1, '2022-09-14 09:19:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-09-14 09:19:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/goalvarenga/?p=80', 1, 'nav_menu_item', '', 0),
(85, 1, '2022-09-14 09:47:43', '2022-09-14 12:47:43', '', 'teste', '', 'publish', 'closed', 'closed', '', 'teste', '', '', '2022-09-14 09:47:43', '2022-09-14 12:47:43', '', 0, 'http://localhost/goalvarenga/?post_type=ornitorrinco&#038;p=85', 0, 'ornitorrinco', '', 0),
(91, 1, '2022-09-14 09:49:19', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-09-14 09:49:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/goalvarenga/?p=91', 1, 'nav_menu_item', '', 0),
(86, 1, '2022-09-14 09:47:43', '2022-09-14 12:47:43', '', 'teste', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2022-09-14 09:47:43', '2022-09-14 12:47:43', '', 85, 'http://localhost/goalvarenga/?p=86', 0, 'revision', '', 0),
(87, 1, '2022-09-14 09:47:51', '2022-09-14 12:47:51', '', 'teste2', '', 'publish', 'closed', 'closed', '', 'teste2', '', '', '2022-09-14 09:47:51', '2022-09-14 12:47:51', '', 0, 'http://localhost/goalvarenga/?post_type=ornitorrinco&#038;p=87', 0, 'ornitorrinco', '', 0),
(88, 1, '2022-09-14 09:47:51', '2022-09-14 12:47:51', '', 'teste2', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2022-09-14 09:47:51', '2022-09-14 12:47:51', '', 87, 'http://localhost/goalvarenga/?p=88', 0, 'revision', '', 0),
(89, 1, '2022-09-14 09:47:58', '2022-09-14 12:47:58', '', 'teste4', '', 'publish', 'closed', 'closed', '', 'teste4', '', '', '2022-09-14 09:47:58', '2022-09-14 12:47:58', '', 0, 'http://localhost/goalvarenga/?post_type=ornitorrinco&#038;p=89', 0, 'ornitorrinco', '', 0),
(90, 1, '2022-09-14 09:47:58', '2022-09-14 12:47:58', '', 'teste4', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2022-09-14 09:47:58', '2022-09-14 12:47:58', '', 89, 'http://localhost/goalvarenga/?p=90', 0, 'revision', '', 0),
(92, 1, '2022-09-14 09:51:51', '0000-00-00 00:00:00', '', 'Todos os Projetos', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-09-14 09:51:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/goalvarenga/?p=92', 1, 'nav_menu_item', '', 0),
(93, 1, '2022-09-14 09:52:28', '2022-09-14 12:52:15', '', 'Projetos', '', 'publish', 'closed', 'closed', '', '93', '', '', '2022-09-14 09:52:28', '2022-09-14 12:52:28', '', 0, 'http://localhost/goalvarenga/?p=93', 4, 'nav_menu_item', '', 0),
(95, 1, '2022-09-14 15:49:01', '2022-09-14 18:49:01', '', 'Lorem Ipsum 4', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-4', '', '', '2022-09-14 16:33:41', '2022-09-14 19:33:41', '', 0, 'http://localhost/goalvarenga/?post_type=projeto&#038;p=95', 0, 'projeto', '', 0),
(96, 1, '2022-09-14 15:49:01', '2022-09-14 18:49:01', '', 'Lorem Ipsum 4', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2022-09-14 15:49:01', '2022-09-14 18:49:01', '', 95, 'http://localhost/goalvarenga/?p=96', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `goalvarenga_termmeta`
--

DROP TABLE IF EXISTS `goalvarenga_termmeta`;
CREATE TABLE IF NOT EXISTS `goalvarenga_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `goalvarenga_terms`
--

DROP TABLE IF EXISTS `goalvarenga_terms`;
CREATE TABLE IF NOT EXISTS `goalvarenga_terms` (
  `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `goalvarenga_terms`
--

INSERT INTO `goalvarenga_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'goalvarenga', 'goalvarenga', 0),
(3, 'Menu 1', 'menu-1', 0),
(4, 'Construção de casas', 'construcao-de-casas', 0),
(5, 'Prédios', 'predios', 0),
(6, 'Áreas de lazer', 'areas-de-lazer', 0),
(7, 'Galpões', 'galpoes', 0),
(8, 'Espaços esportivos', 'espacos-esportivos', 0),
(9, 'Projetos de engenharia', 'projetos-de-engenharia', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `goalvarenga_term_relationships`
--

DROP TABLE IF EXISTS `goalvarenga_term_relationships`;
CREATE TABLE IF NOT EXISTS `goalvarenga_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `goalvarenga_term_relationships`
--

INSERT INTO `goalvarenga_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0),
(20, 3, 0),
(22, 3, 0),
(95, 7, 0),
(54, 6, 0),
(21, 3, 0),
(75, 3, 0),
(54, 8, 0),
(54, 5, 0),
(51, 4, 0),
(51, 7, 0),
(51, 9, 0),
(48, 6, 0),
(48, 4, 0),
(48, 8, 0),
(48, 7, 0),
(48, 5, 0),
(48, 9, 0),
(93, 3, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `goalvarenga_term_taxonomy`
--

DROP TABLE IF EXISTS `goalvarenga_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `goalvarenga_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `goalvarenga_term_taxonomy`
--

INSERT INTO `goalvarenga_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'categoria-projetos', '', 0, 2),
(5, 5, 'categoria-projetos', '', 0, 2),
(6, 6, 'categoria-projetos', '', 0, 2),
(7, 7, 'categoria-projetos', '', 0, 3),
(8, 8, 'categoria-projetos', '', 0, 2),
(9, 9, 'categoria-projetos', '', 0, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `goalvarenga_usermeta`
--

DROP TABLE IF EXISTS `goalvarenga_usermeta`;
CREATE TABLE IF NOT EXISTS `goalvarenga_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `goalvarenga_usermeta`
--

INSERT INTO `goalvarenga_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'idea'),
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
(12, 1, 'goalvarenga_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'goalvarenga_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(27, 1, 'session_tokens', 'a:3:{s:64:\"4b04592dcda48b054656ab2ff781b16a32802bb3501c5d1a6cc36a21d1d03e5c\";a:4:{s:10:\"expiration\";i:1664024391;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\";s:5:\"login\";i:1663851591;}s:64:\"e4306627ded0ed789b417b43f3e3432614cfaa4254c3f64ad1f5d951ce5ab7f4\";a:4:{s:10:\"expiration\";i:1664108679;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\";s:5:\"login\";i:1663935879;}s:64:\"ad6a524f738352c23fa24cbe2d68efede8bc770bc682319407ba1e31f00e792b\";a:4:{s:10:\"expiration\";i:1664109266;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\";s:5:\"login\";i:1663936466;}}'),
(17, 1, 'goalvarenga_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:19:\"add-post-type-dados\";i:1;s:12:\"add-category\";i:2;s:12:\"add-post_tag\";i:3;s:22:\"add-categoria-projetos\";}'),
(21, 1, 'goalvarenga_user-settings', 'libraryContent=browse'),
(22, 1, 'goalvarenga_user-settings-time', '1661973734'),
(23, 1, 'closedpostboxes_banner', 'a:1:{i:0;s:15:\"conteudo-banner\";}'),
(24, 1, 'metaboxhidden_banner', 'a:0:{}'),
(34, 1, 'aiowps_last_login_time', '2022-09-23 12:34:26'),
(25, 1, 'closedpostboxes_page', 'a:0:{}'),
(26, 1, 'metaboxhidden_page', 'a:0:{}'),
(28, 1, 'nav_menu_recently_edited', '3'),
(29, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(30, 1, 'tfa_priv_key_64', 'xhYrW0uo5wFuDNXrH2IV/6TSdMKlY2A9t1aLAP6+0+A='),
(31, 1, 'tfa_algorithm_type', 'totp'),
(32, 1, 'closedpostboxes_toplevel_page_aiowpsec', 'a:7:{i:0;s:23:\"security_strength_meter\";i:1;s:25:\"security_points_breakdown\";i:2;s:15:\"spread_the_word\";i:3;s:15:\"know_developers\";i:4;s:23:\"critical_feature_status\";i:5;s:13:\"last_5_logins\";i:6;s:23:\"maintenance_mode_status\";}'),
(33, 1, 'metaboxhidden_toplevel_page_aiowpsec', 'a:0:{}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `goalvarenga_users`
--

DROP TABLE IF EXISTS `goalvarenga_users`;
CREATE TABLE IF NOT EXISTS `goalvarenga_users` (
  `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `goalvarenga_users`
--

INSERT INTO `goalvarenga_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'idea', '$P$BOh4GWFKPsYNbnG1zziprehk9jnlCx1', 'idea', 'site@ideapublicidade.com.br', 'http://localhost/goalvarenga', '2022-08-30 14:12:08', '', 0, 'idea');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
