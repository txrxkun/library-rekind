-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 26, 2020 at 07:49 PM
-- Server version: 10.3.24-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmtifub_repository`
--

-- --------------------------------------------------------

--
-- Table structure for table `backup_log`
--

CREATE TABLE `backup_log` (
  `backup_log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `backup_time` datetime NOT NULL DEFAULT current_timestamp(),
  `backup_file` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio`
--

CREATE TABLE `biblio` (
  `biblio_id` int(11) NOT NULL,
  `gmd_id` int(3) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `sor` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edition` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn_issn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `publish_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `collation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `series_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` char(5) COLLATE utf8_unicode_ci DEFAULT 'en',
  `source` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_place_id` int(11) DEFAULT NULL,
  `classification` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_att` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opac_hide` smallint(1) DEFAULT 0,
  `promoted` smallint(1) DEFAULT 0,
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `frequency_id` int(11) NOT NULL DEFAULT 0,
  `spec_detail_info` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `media_type_id` int(11) DEFAULT NULL,
  `carrier_type_id` int(11) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio`
--

INSERT INTO `biblio` (`biblio_id`, `gmd_id`, `title`, `sor`, `edition`, `isbn_issn`, `publisher_id`, `publish_year`, `collation`, `series_title`, `call_number`, `language_id`, `source`, `publish_place_id`, `classification`, `notes`, `image`, `file_att`, `opac_hide`, `promoted`, `labels`, `frequency_id`, `spec_detail_info`, `content_type_id`, `media_type_id`, `carrier_type_id`, `input_date`, `last_update`, `uid`) VALUES
(1, 1, 'PHP 5 for dummies', NULL, NULL, '0764541668', 1, '2004', 'xiv, 392 p. : ill. ; 24 cm.', 'For dummies', '005.13/3-22 Jan p', 'en', NULL, 1, '005.13/3 22', NULL, 'php5_dummies.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 15:36:50', '2007-11-29 16:26:59', NULL),
(2, 1, 'Linux In a Nutshell', NULL, 'Fifth Edition', '9780596009304', 2, '2005', 'xiv, 925 p. : ill. ; 23 cm.', 'In a Nutshell', '005.4/32-22 Ell l', 'en', NULL, 2, '005.4/32 22', NULL, 'linux_in_a_nutshell.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 15:53:35', '2007-11-29 16:26:10', NULL),
(3, 1, 'The Definitive Guide to MySQL 5', NULL, NULL, '9781590595350', 3, '2005', '784p.', 'Definitive Guide Series', '005.75/85-22 Kof d', 'en', NULL, NULL, '005.75/85 22', NULL, 'mysql_def_guide.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:01:08', '2007-11-29 16:26:33', NULL),
(4, 1, 'Cathedral and the Bazaar: Musings on Linux and Open Source by an Accidental Revolutionary', NULL, NULL, '0-596-00108-8', 2, '2001', '208p.', NULL, '005.4/3222 Ray c', 'en', NULL, 2, '005.4/32 22', 'The Cathedral & the Bazaar is a must for anyone who cares about the future of the computer industry or the dynamics of the information economy. This revised and expanded paperback edition includes new material on open source developments in 1999 and 2000. Raymond\'s clear and effective writing style accurately describing the benefits of open source software has been key to its success. (Source: http://safari.oreilly.com/0596001088)', 'cathedral_bazaar.jpg', 'cathedral-bazaar.pdf', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:14:44', '2007-11-29 16:25:43', NULL),
(5, 1, 'Producing open source software : how to run a successful free software project', NULL, '1st ed.', '9780596007591', 2, '2005', 'xx, 279 p. ; 24 cm.', NULL, '005.1-22 Fog p', 'en', NULL, 2, '005.1 22', 'Includes index.', 'producing_oss.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:20:45', '2007-11-29 16:31:21', NULL),
(6, 1, 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '', '1st ed.', '0735712573', 4, '2003', 'xvii, 790 p. : ill. ; 23cm.', 'DeveloperÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢s library', '005.75/85-22 Kor p', 'en', NULL, 3, '005.75/85 22', 'PostgreSQL is the world\'s most advanced open-source database. PostgreSQL is the most comprehensive, in-depth, and easy-to-read guide to this award-winning database. This book starts with a thorough overview of SQL, a description of all PostgreSQL data types, and a complete explanation of PostgreSQL commands.', 'postgresql.jpg', NULL, 0, 0, NULL, 0, '', NULL, NULL, NULL, '2007-11-29 16:29:33', '2020-02-06 16:06:03', NULL),
(7, 1, 'Web application architecture : principles, protocols, and practices', '', '', '0471486566', 5, '2003', 'xi, 357 p. : ill. ; 23 cm.', '', '005.7/2-21 Leo w', 'en', NULL, 1, '005.7/2 21', 'An in-depth examination of the core concepts and general principles of Web application development.\r\nThis book uses examples from specific technologies (e.g., servlet API or XSL), without promoting or endorsing particular platforms or APIs. Such knowledge is critical when designing and debugging complex systems. This conceptual understanding makes it easier to learn new APIs that arise in the rapidly changing Internet environment.', 'webapp_arch.jpg', NULL, 0, 0, NULL, 0, '', NULL, NULL, NULL, '2007-11-29 16:41:57', '2020-02-10 08:47:59', NULL),
(8, 1, 'Ajax : creating Web pages with asynchronous JavaScript and XML', NULL, NULL, '9780132272674', 6, '2007', 'xxii, 384 p. : ill. ; 24 cm.', 'Bruce PerensÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ Open Source series', '006.7/86-22 Woy a', 'en', NULL, 4, '006.7/86 22', 'Using Ajax, you can build Web applications with the sophistication and usability of traditional desktop applications and you can do it using standards and open source software. Now, for the first time, there\'s an easy, example-driven guide to Ajax for every Web and open source developer, regardless of experience.', 'ajax.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:47:20', '2020-02-06 14:37:04', NULL),
(9, 1, 'The organization of information', NULL, '2nd ed.', '1563089769', 7, '2004', 'xxvii, 417 p. : ill. ; 27 cm.', 'Library and information science text series', '025-22 Tay o', 'en', NULL, 5, '025 22', 'A basic textbook for students of library and information studies, and a guide for practicing school library media specialists. Describes the impact of global forces and the school district on the development and operation of a media center, the technical and human side of management, programmatic activities, supportive services to students, and the quality and quantity of resources available to support programs.', 'organization_information.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:54:12', '2007-11-29 16:27:20', NULL),
(10, 1, 'Library and Information Center Management', NULL, '7th ed.', '9781591584063', 7, '2007', 'xxviii, 492 p. : ill. ; 27 cm.', 'Library and information science text series', '025.1-22 Stu l', 'en', NULL, 5, '025.1 22', NULL, 'library_info_center.JPG', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:58:51', '2007-11-29 16:27:40', NULL),
(11, 1, 'Information Architecture for the World Wide Web: Designing Large-Scale Web Sites', '', '2nd ed.', '9780596000356', 2, '2002', '500p.', '', '006.7-22 Mor i', 'en', NULL, 6, '006.7 22', 'Information Architecture for the World Wide Web is about applying the principles of architecture and library science to web site design. Each website is like a public building, available for tourists and regulars alike to breeze through at their leisure. The job of the architect is to set up the framework for the site to make it comfortable and inviting for people to visit, relax in, and perhaps even return to someday.', 'information_arch.jpg', NULL, 0, 0, NULL, 0, '', NULL, NULL, NULL, '2007-11-29 17:26:14', '2020-02-12 09:38:54', NULL),
(12, 1, 'Corruption and development', NULL, NULL, '9780714649023', 8, '1998', '166 p. : ill. ; 22 cm.', NULL, '364.1 Rob c', 'en', NULL, 7, '364.1/322/091724 21', 'The articles assembled in this volume offer a fresh approach to analysing the problem of corruption in developing countries and the k means to tackle the phenomenon.', 'corruption_development.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 17:45:30', '2007-11-29 16:20:53', NULL),
(13, 1, 'Corruption and development : the anti-corruption campaigns', NULL, NULL, '0230525504', 9, '2007', '310p.', NULL, '364.1 Bra c', 'en', NULL, 8, '364.1/323091724 22', 'This book provides a multidisciplinary interrogation of the global anti-corruption campaigns of the last ten years, arguing that while some positive change is observable, the period is also replete with perverse consequences and unintended outcomes', 'corruption_development_anti_campaign.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 17:49:49', '2007-11-29 16:19:48', NULL),
(14, 1, 'Pigs at the trough : how corporate greed and political corruption are undermining America', NULL, NULL, '1400047714', 10, '2003', '275 p. ; 22 cm.', NULL, '364.1323 Huf p', 'en', NULL, 8, '364.1323', NULL, 'pigs_at_trough.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 17:56:00', '2007-11-29 16:18:33', NULL),
(15, 1, 'Lords of poverty : the power, prestige, and corruption of the international aid business', NULL, NULL, '9780871134691', 11, '1994', 'xvi, 234 p. ; 22 cm.', NULL, '338.9 Han l', 'en', NULL, 8, '338.9/1/091724 20', 'Lords of Poverty is a case study in betrayals of a public trust. The shortcomings of aid are numerous, and serious enough to raise questions about the viability of the practice at its most fundamental levels. Hancocks report is thorough, deeply shocking, and certain to cause critical reevaluation of the governments motives in giving foreign aid, and of the true needs of our intended beneficiaries.', 'lords_of_poverty.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 18:08:13', '2007-11-29 16:13:11', NULL),
(16, 1, 'Sapiens: Sejarah Ringkas Umat Manusia dari Zaman Batu hingga Perkiraan Kepunahannya', '', '1st ed.', '6026577173, 97860265', 12, '2017', '', 'Homo Deus', '', 'id', NULL, 9, 'NONE', 'Planet Bumi telah berusia 4,5 miliar tahun.Namun, hanya dalam waktu singkat, satu spesiesdi antara banyak spesies lain telah menaklukkannya. Seratus ribu tahun silam, setidaknya ada enam spesies manusia yang menghuni Bumi. Dan hari ini, hanya tinggal satu spesies—Homo sapiens. Itulah KITA! Apa yang terjadi dengan spesies lain? Dan apa yang mungkin terjadi kelak pada kita?', '1547126343696-696x1065.jpg.jpg', NULL, 0, 0, NULL, 0, 'Sapiens : Riwayat Singkat Umat Manusia edisi bahasa indonesia', NULL, NULL, NULL, '2020-08-24 12:01:01', '2020-08-25 22:48:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `biblio_attachment`
--

CREATE TABLE `biblio_attachment` (
  `biblio_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `access_type` enum('public','private') COLLATE utf8_unicode_ci NOT NULL,
  `access_limit` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio_attachment`
--

INSERT INTO `biblio_attachment` (`biblio_id`, `file_id`, `access_type`, `access_limit`) VALUES
(6, 1, 'public', NULL),
(7, 2, 'public', NULL),
(6, 3, 'public', NULL),
(6, 4, 'public', NULL),
(11, 5, 'public', 'a:1:{i:0;s:1:\"1\";}'),
(16, 6, 'public', 'a:1:{i:0;s:1:\"1\";}');

-- --------------------------------------------------------

--
-- Table structure for table `biblio_author`
--

CREATE TABLE `biblio_author` (
  `biblio_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `level` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio_author`
--

INSERT INTO `biblio_author` (`biblio_id`, `author_id`, `level`) VALUES
(1, 1, 1),
(2, 2, 1),
(2, 3, 2),
(2, 4, 2),
(2, 5, 2),
(2, 6, 2),
(3, 7, 1),
(3, 8, 2),
(4, 9, 1),
(5, 10, 1),
(6, 11, 1),
(6, 12, 2),
(7, 13, 1),
(7, 14, 2),
(8, 15, 1),
(9, 16, 1),
(10, 17, 1),
(10, 18, 2),
(11, 19, 1),
(11, 20, 2),
(12, 21, 1),
(13, 22, 1),
(14, 23, 1),
(15, 24, 1),
(16, 25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `biblio_custom`
--

CREATE TABLE `biblio_custom` (
  `biblio_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='one to one relation with real biblio table';

-- --------------------------------------------------------

--
-- Table structure for table `biblio_log`
--

CREATE TABLE `biblio_log` (
  `biblio_log_id` int(11) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `realname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `affectedrow` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rawdata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biblio_log`
--

INSERT INTO `biblio_log` (`biblio_log_id`, `biblio_id`, `user_id`, `realname`, `title`, `ip`, `action`, `affectedrow`, `rawdata`, `additional_information`, `date`) VALUES
(1, 6, 1, 'Admin', 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '::1', 'update', 'description', 'a%3A1%3A%7Bi%3A0%3Ba%3A32%3A%7Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%226%22%3Bs%3A5%3A%22title%22%3Bs%3A99%3A%22PostgreSQL+%3A+a+comprehensive+guide+to+building%2C+programming%2C+and+administering+PostgreSQL+databases%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%221st+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A10%3A%220735712573%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A4%3A%22Sams%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222003%22%3Bs%3A9%3A%22collation%22%3Bs%3A27%3A%22xvii%2C+790+p.+%3A+ill.+%3B+23cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A56%3A%22Developer%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2s+library%22%3Bs%3A11%3A%22call_number%22%3Bs%3A18%3A%22005.75%2F85-22+Kor+p%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A11%3A%22place_place%22%3Bs%3A12%3A%22Indianapolis%22%3Bs%3A14%3A%22classification%22%3Bs%3A12%3A%22005.75%2F85+22%22%3Bs%3A5%3A%22notes%22%3Bs%3A309%3A%22PostgreSQL+is+the+world%27s+most+advanced+open-source+database.+PostgreSQL+is+the+most+comprehensive%2C+in-depth%2C+and+easy-to-read+guide+to+this+award-winning+database.+This+book+starts+with+a+thorough+overview+of+SQL%2C+a+description+of+all+PostgreSQL+data+types%2C+and+a+complete+explanation+of+PostgreSQL+commands.%22%3Bs%3A5%3A%22image%22%3Bs%3A14%3A%22postgresql.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A2%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Korry%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A1%3A%22p%22%3B%7Di%3A1%3Ba%3A2%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Susan%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A1%3A%22p%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A2%3A%7Bs%3A5%3A%22topic%22%3Bs%3A11%3A%22Programming%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A1%3A%22t%22%3B%7Di%3A1%3Ba%3A2%3A%7Bs%3A5%3A%22topic%22%3Bs%3A5%3A%22RDBMS%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A1%3A%22t%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A2%3A%7Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00002%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00002%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22f6db780aad09b937233ec4d0740c8f9ed4b66dc8%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22563ecd3169619ca48558f42ce90ee17fd71584c2%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%2293a51f37886e718b2c38efdd2b2c878b0f03ba7c%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%222131f8a8f0fd59235b66d12b0aac2fa1d7cddadc%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22f23419a21e9f33280a31f8d28b2a5245346a89ca%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A29%3A33%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222020-02-06+16%3A06%3A03%22%3B%7D%7D', 'Updated data. Bibliography.', '2020-02-06 16:06:03'),
(2, 7, 1, 'Admin', 'Web application architecture : principles, protocols, and practices', '::1', 'update', 'description', 'a%3A1%3A%7Bi%3A0%3Ba%3A32%3A%7Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%227%22%3Bs%3A5%3A%22title%22%3Bs%3A67%3A%22Web+application+architecture+%3A+principles%2C+protocols%2C+and+practices%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A10%3A%220471486566%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A10%3A%22John+Wiley%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222003%22%3Bs%3A9%3A%22collation%22%3Bs%3A26%3A%22xi%2C+357+p.+%3A+ill.+%3B+23+cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A16%3A%22005.7%2F2-21+Leo+w%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A11%3A%22place_place%22%3Bs%3A11%3A%22Hoboken%2C+NJ%22%3Bs%3A14%3A%22classification%22%3Bs%3A10%3A%22005.7%2F2+21%22%3Bs%3A5%3A%22notes%22%3Bs%3A434%3A%22An+in-depth+examination+of+the+core+concepts+and+general+principles+of+Web+application+development.%0D%0AThis+book+uses+examples+from+specific+technologies+%28e.g.%2C+servlet+API+or+XSL%29%2C+without+promoting+or+endorsing+particular+platforms+or+APIs.+Such+knowledge+is+critical+when+designing+and+debugging+complex+systems.+This+conceptual+understanding+makes+it+easier+to+learn+new+APIs+that+arise+in+the+rapidly+changing+Internet+environment.%22%3Bs%3A5%3A%22image%22%3Bs%3A15%3A%22webapp_arch.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A2%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A12%3A%22Shklar%2C+Leon%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A1%3A%22p%22%3B%7Di%3A1%3Ba%3A2%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Rosen%2C+Richard%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A1%3A%22p%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A2%3A%7Bs%3A5%3A%22topic%22%3Bs%3A7%3A%22Website%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A1%3A%22t%22%3B%7Di%3A1%3Ba%3A2%3A%7Bs%3A5%3A%22topic%22%3Bs%3A6%3A%22Design%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A1%3A%22t%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22c016c44f32084b1d15d1219b9dece56f8c69b8ec%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%227ed5d2258df5462df0e45ce35ba8fada5176847c%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%223a3b4013c6756370afad5ad6629a7ab93dedce8c%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%226e0679e698e58de15cf113d4f96f9e4b3c9547c7%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22d71f049a4c5e362922f8adf287d7ae52f13ae200%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A41%3A57%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222020-02-06+16%3A14%3A52%22%3B%7D%7D', 'Updated data. Bibliography.', '2020-02-06 16:14:52'),
(3, 11, 1, 'Admin', 'Information Architecture for the World Wide Web: Designing Large-Scale Web Sites', '::1', 'update', 'description', 'a%3A1%3A%7Bi%3A0%3Ba%3A32%3A%7Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2211%22%3Bs%3A5%3A%22title%22%3Bs%3A80%3A%22Information+Architecture+for+the+World+Wide+Web%3A+Designing+Large-Scale+Web+Sites%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%222nd+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%229780596000356%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A7%3A%22OReilly%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222002%22%3Bs%3A9%3A%22collation%22%3Bs%3A5%3A%22500p.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A14%3A%22006.7-22+Mor+i%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A11%3A%22place_place%22%3Bs%3A15%3A%22Cambridge%2C+Mass%22%3Bs%3A14%3A%22classification%22%3Bs%3A8%3A%22006.7+22%22%3Bs%3A5%3A%22notes%22%3Bs%3A422%3A%22Information+Architecture+for+the+World+Wide+Web+is+about+applying+the+principles+of+architecture+and+library+science+to+web+site+design.+Each+website+is+like+a+public+building%2C+available+for+tourists+and+regulars+alike+to+breeze+through+at+their+leisure.+The+job+of+the+architect+is+to+set+up+the+framework+for+the+site+to+make+it+comfortable+and+inviting+for+people+to+visit%2C+relax+in%2C+and+perhaps+even+return+to+someday.%22%3Bs%3A5%3A%22image%22%3Bs%3A20%3A%22information_arch.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A2%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A15%3A%22Morville%2C+Peter%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A1%3A%22p%22%3B%7Di%3A1%3Ba%3A2%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A16%3A%22Rosenfeld%2C+Louis%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A1%3A%22p%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22fe432101c94731c188be6c3914e3967d276e8d4e%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%225236104ffb4bd9da3c0d51f5937b9d800d20659b%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%226f322280ee068a8871b6e9d08722edfef1746ed1%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%227f2342448ff4512ec5fe2f71a27bf2956e3e3b6c%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+17%3A26%3A14%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222020-02-10+09%3A31%3A25%22%3B%7D%7D', 'Updated data. Bibliography.', '2020-02-10 09:31:25'),
(4, 16, 1, 'Admin', 'Sapiens: Sejarah Ringkas Umat Manusia dari Zaman Batu hingga Perkiraan Kepunahannya', '116.206.13.92', 'create', 'description', 'a%3A1%3A%7Bi%3A0%3Ba%3A32%3A%7Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2216%22%3Bs%3A5%3A%22title%22%3Bs%3A83%3A%22Sapiens%3A+Sejarah+Ringkas+Umat+Manusia+dari+Zaman+Batu+hingga+Perkiraan+Kepunahannya%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%221st+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A20%3A%226026577173%2C+97860265%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A15%3A%22Pustaka+Alvabet%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222017%22%3Bs%3A9%3A%22collation%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22series_title%22%3Bs%3A9%3A%22Homo+Deus%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A11%3A%22place_place%22%3Bs%3A6%3A%22Israel%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A376%3A%22Planet+Bumi+telah+berusia+4%2C5+miliar+tahun.Namun%2C+hanya+dalam+waktu+singkat%2C+satu+spesiesdi+antara+banyak+spesies+lain+telah+menaklukkannya.+Seratus+ribu+tahun+silam%2C+setidaknya+ada+enam+spesies+manusia+yang+menghuni+Bumi.+Dan+hari+ini%2C+hanya+tinggal+satu+spesies%E2%80%94Homo+sapiens.+Itulah+KITA%21+Apa+yang+terjadi+dengan+spesies+lain%3F+Dan+apa+yang+mungkin+terjadi+kelak+pada+kita%3F%22%3Bs%3A5%3A%22image%22%3Bs%3A30%3A%221547126343696-696x1065.jpg.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A61%3A%22Sapiens+%3A+Riwayat+Singkat+Umat+Manusia+edisi+bahasa+indonesia%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A2%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A17%3A%22Yuval+Noah+Harari%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A1%3A%22p%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%224c491f8a091906ea70e8277ab152559171bc1ee0%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22ae31bfa329776d4c5a8960d809660e9ebd5a8806%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22123132c10b984728a291fcd01d1411e2b6191c07%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222020-08-24+12%3A01%3A01%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222020-08-24+12%3A01%3A01%22%3B%7D%7D', 'New data. Bibliography.', '2020-08-24 12:01:01'),
(5, 16, 1, 'Admin', 'Sapiens: Sejarah Ringkas Umat Manusia dari Zaman Batu hingga Perkiraan Kepunahannya', '116.206.13.92', 'update', 'cover', 'a%3A1%3A%7Bi%3A0%3Ba%3A32%3A%7Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2216%22%3Bs%3A5%3A%22title%22%3Bs%3A83%3A%22Sapiens%3A+Sejarah+Ringkas+Umat+Manusia+dari+Zaman+Batu+hingga+Perkiraan+Kepunahannya%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%221st+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A20%3A%226026577173%2C+97860265%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A15%3A%22Pustaka+Alvabet%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222017%22%3Bs%3A9%3A%22collation%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22series_title%22%3Bs%3A9%3A%22Homo+Deus%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A11%3A%22place_place%22%3Bs%3A6%3A%22Israel%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A376%3A%22Planet+Bumi+telah+berusia+4%2C5+miliar+tahun.Namun%2C+hanya+dalam+waktu+singkat%2C+satu+spesiesdi+antara+banyak+spesies+lain+telah+menaklukkannya.+Seratus+ribu+tahun+silam%2C+setidaknya+ada+enam+spesies+manusia+yang+menghuni+Bumi.+Dan+hari+ini%2C+hanya+tinggal+satu+spesies%E2%80%94Homo+sapiens.+Itulah+KITA%21+Apa+yang+terjadi+dengan+spesies+lain%3F+Dan+apa+yang+mungkin+terjadi+kelak+pada+kita%3F%22%3Bs%3A5%3A%22image%22%3Bs%3A30%3A%221547126343696-696x1065.jpg.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A61%3A%22Sapiens+%3A+Riwayat+Singkat+Umat+Manusia+edisi+bahasa+indonesia%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A2%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A17%3A%22Yuval+Noah+Harari%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A1%3A%22p%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%224c491f8a091906ea70e8277ab152559171bc1ee0%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22ae31bfa329776d4c5a8960d809660e9ebd5a8806%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22123132c10b984728a291fcd01d1411e2b6191c07%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222020-08-24+12%3A01%3A01%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222020-08-24+12%3A01%3A01%22%3B%7D%7D', 'New data. Image. File: 1547126343696-696x1065.jpg.jpg', '2020-08-24 12:01:01'),
(6, 16, 1, 'Admin', 'Sapiens: Sejarah Ringkas Umat Manusia dari Zaman Batu hingga Perkiraan Kepunahannya', '116.206.13.92', 'update', 'author', 'a%3A1%3A%7Bi%3A0%3Ba%3A32%3A%7Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2216%22%3Bs%3A5%3A%22title%22%3Bs%3A83%3A%22Sapiens%3A+Sejarah+Ringkas+Umat+Manusia+dari+Zaman+Batu+hingga+Perkiraan+Kepunahannya%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%221st+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A20%3A%226026577173%2C+97860265%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A15%3A%22Pustaka+Alvabet%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222017%22%3Bs%3A9%3A%22collation%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22series_title%22%3Bs%3A9%3A%22Homo+Deus%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A11%3A%22place_place%22%3Bs%3A6%3A%22Israel%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A376%3A%22Planet+Bumi+telah+berusia+4%2C5+miliar+tahun.Namun%2C+hanya+dalam+waktu+singkat%2C+satu+spesiesdi+antara+banyak+spesies+lain+telah+menaklukkannya.+Seratus+ribu+tahun+silam%2C+setidaknya+ada+enam+spesies+manusia+yang+menghuni+Bumi.+Dan+hari+ini%2C+hanya+tinggal+satu+spesies%E2%80%94Homo+sapiens.+Itulah+KITA%21+Apa+yang+terjadi+dengan+spesies+lain%3F+Dan+apa+yang+mungkin+terjadi+kelak+pada+kita%3F%22%3Bs%3A5%3A%22image%22%3Bs%3A30%3A%221547126343696-696x1065.jpg.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A61%3A%22Sapiens+%3A+Riwayat+Singkat+Umat+Manusia+edisi+bahasa+indonesia%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A2%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A17%3A%22Yuval+Noah+Harari%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A1%3A%22p%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%224c491f8a091906ea70e8277ab152559171bc1ee0%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22ae31bfa329776d4c5a8960d809660e9ebd5a8806%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22123132c10b984728a291fcd01d1411e2b6191c07%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222020-08-24+12%3A01%3A01%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222020-08-24+12%3A01%3A01%22%3B%7D%7D', 'New data. Author. Names: Yuval Noah Harari;', '2020-08-24 12:01:01'),
(7, 16, 1, 'Admin', 'Sapiens: Sejarah Ringkas Umat Manusia dari Zaman Batu hingga Perkiraan Kepunahannya', '116.206.13.92', 'update', 'description', 'a%3A1%3A%7Bi%3A0%3Ba%3A32%3A%7Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2216%22%3Bs%3A5%3A%22title%22%3Bs%3A83%3A%22Sapiens%3A+Sejarah+Ringkas+Umat+Manusia+dari+Zaman+Batu+hingga+Perkiraan+Kepunahannya%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%221st+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A20%3A%226026577173%2C+97860265%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A15%3A%22Pustaka+Alvabet%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222017%22%3Bs%3A9%3A%22collation%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22series_title%22%3Bs%3A9%3A%22Homo+Deus%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A11%3A%22place_place%22%3Bs%3A6%3A%22Israel%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A376%3A%22Planet+Bumi+telah+berusia+4%2C5+miliar+tahun.Namun%2C+hanya+dalam+waktu+singkat%2C+satu+spesiesdi+antara+banyak+spesies+lain+telah+menaklukkannya.+Seratus+ribu+tahun+silam%2C+setidaknya+ada+enam+spesies+manusia+yang+menghuni+Bumi.+Dan+hari+ini%2C+hanya+tinggal+satu+spesies%E2%80%94Homo+sapiens.+Itulah+KITA%21+Apa+yang+terjadi+dengan+spesies+lain%3F+Dan+apa+yang+mungkin+terjadi+kelak+pada+kita%3F%22%3Bs%3A5%3A%22image%22%3Bs%3A30%3A%221547126343696-696x1065.jpg.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A61%3A%22Sapiens+%3A+Riwayat+Singkat+Umat+Manusia+edisi+bahasa+indonesia%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A2%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A17%3A%22Yuval+Noah+Harari%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A1%3A%22p%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A2%3A%7Bs%3A9%3A%22item_code%22%3Bs%3A1%3A%221%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A3%3A%22001%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%2236afb16f0bc7204c4e6dfc051c58d7c39cdd5d60%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22ae31bfa329776d4c5a8960d809660e9ebd5a8806%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22123132c10b984728a291fcd01d1411e2b6191c07%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222020-08-24+12%3A01%3A01%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222020-08-24+12%3A05%3A12%22%3B%7D%7D', 'Updated data. Bibliography.', '2020-08-24 12:05:12'),
(8, 16, 1, 'Admin', 'Sapiens: Sejarah Ringkas Umat Manusia dari Zaman Batu hingga Perkiraan Kepunahannya', '223.255.230.32', 'update', 'description', 'a%3A1%3A%7Bi%3A0%3Ba%3A32%3A%7Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2216%22%3Bs%3A5%3A%22title%22%3Bs%3A83%3A%22Sapiens%3A+Sejarah+Ringkas+Umat+Manusia+dari+Zaman+Batu+hingga+Perkiraan+Kepunahannya%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%221st+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A20%3A%226026577173%2C+97860265%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A15%3A%22Pustaka+Alvabet%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222017%22%3Bs%3A9%3A%22collation%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22series_title%22%3Bs%3A9%3A%22Homo+Deus%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A11%3A%22place_place%22%3Bs%3A6%3A%22Israel%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A376%3A%22Planet+Bumi+telah+berusia+4%2C5+miliar+tahun.Namun%2C+hanya+dalam+waktu+singkat%2C+satu+spesiesdi+antara+banyak+spesies+lain+telah+menaklukkannya.+Seratus+ribu+tahun+silam%2C+setidaknya+ada+enam+spesies+manusia+yang+menghuni+Bumi.+Dan+hari+ini%2C+hanya+tinggal+satu+spesies%E2%80%94Homo+sapiens.+Itulah+KITA%21+Apa+yang+terjadi+dengan+spesies+lain%3F+Dan+apa+yang+mungkin+terjadi+kelak+pada+kita%3F%22%3Bs%3A5%3A%22image%22%3Bs%3A30%3A%221547126343696-696x1065.jpg.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A61%3A%22Sapiens+%3A+Riwayat+Singkat+Umat+Manusia+edisi+bahasa+indonesia%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A2%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A17%3A%22Yuval+Noah+Harari%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A1%3A%22p%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A2%3A%7Bs%3A9%3A%22item_code%22%3Bs%3A1%3A%221%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A3%3A%22001%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%2268118543994ea85cd86f95675e7b087142910f3c%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22ae31bfa329776d4c5a8960d809660e9ebd5a8806%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22123132c10b984728a291fcd01d1411e2b6191c07%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222020-08-24+12%3A01%3A01%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222020-08-25+22%3A48%3A39%22%3B%7D%7D', 'Updated data. Bibliography.', '2020-08-25 22:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `biblio_relation`
--

CREATE TABLE `biblio_relation` (
  `biblio_id` int(11) NOT NULL DEFAULT 0,
  `rel_biblio_id` int(11) NOT NULL DEFAULT 0,
  `rel_type` int(1) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio_topic`
--

CREATE TABLE `biblio_topic` (
  `biblio_id` int(11) NOT NULL DEFAULT 0,
  `topic_id` int(11) NOT NULL DEFAULT 0,
  `level` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio_topic`
--

INSERT INTO `biblio_topic` (`biblio_id`, `topic_id`, `level`) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(2, 4, 2),
(2, 5, 2),
(3, 1, 1),
(3, 6, 2),
(3, 7, 2),
(4, 4, 1),
(4, 8, 2),
(5, 8, 1),
(5, 9, 2),
(6, 1, 1),
(6, 7, 2),
(7, 2, 1),
(7, 10, 2),
(8, 1, 1),
(8, 2, 2),
(9, 11, 1),
(9, 12, 2),
(9, 13, 2),
(10, 11, 1),
(10, 14, 2),
(12, 15, 1),
(12, 16, 2),
(13, 15, 1),
(14, 15, 1),
(15, 15, 1),
(15, 17, 2);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `content_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `content_path` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `is_news` smallint(1) DEFAULT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `content_ownpage` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `content_title`, `content_desc`, `content_path`, `is_news`, `input_date`, `last_update`, `content_ownpage`) VALUES
(1, 'Library Information', '<h3>Contact Information</h3>\r\n<p><strong>Address :</strong> <br /> Jenderal Sudirman Road, Senayan, Jakarta, Indonesia - Postal Code : 10270 <br /> <strong>Phone Number :</strong> <br /> (021) 5711144 <br /> <strong>Fax Number :</strong> <br /> (021) 5711144</p>\r\n<h3>Opening Hours</h3>\r\n<p><strong>Monday - Friday :</strong> <br /> Open : 08.00 AM<br /> Break : 12.00 - 13.00 PM<br /> Close : 20.00 PM <br /> <strong>Saturday  :</strong> <br /> Open : 08.00 AM<br /> Break : 12.00 - 13.00 PM<br /> Close : 17.00 PM</p>\r\n<h3>Collections</h3>\r\n<p>We have many types of collections in our library, range from Fictions to Sciences Material, from printed material to digital collections such CD-ROM, CD, VCD and DVD. We also collect daily serials publications such as newspaper and also monthly serials such as magazines.</p>\r\n<h3>Library Membership</h3>\r\n<p>To be able to loan our library collections, you must first become library member. There is terms and conditions that you must obey.</p>', 'libinfo', NULL, '2009-09-13 19:48:16', '2009-09-13 19:48:16', '1'),
(2, 'Help On Usage', '<h3>Searching</h3>\r\n<p>There are 2 methods available on searching library catalog. The first one is <strong>SIMPLE SEARCH</strong>, which is the simplest method on searching catalog. You just enter any keyword, either it containes in titles, author(s) names or subjects. You can supply more than one keywords in Simple Search method and it will expanding your search results.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>ADVANCED SEARCH</strong>, lets you define keywords in more specific fields. If you want your keywords only contained in title field, then type your keyword in Title field and the system will limit its search within <strong>Title</strong> fields only, not in other fields. Location field lets you narrowing search results by specific location, so only collection that exists in selected location get fetched by system.</p>', 'help', NULL, '2009-09-13 19:48:16', '2009-09-13 19:48:16', '1'),
(3, 'Welcome To Admin Page', '<div class=\"container admin_home\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Bibliography</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon biblioIcon notAJAX\" href=\"index.php?mod=bibliography\"></a></div>\r\n<div class=\"col-sm-8\">The Bibliography module lets you manage your library bibliographical data. It also include collection items management to manage a copies of your library collection so it can be used in library circulation.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Circulation</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon circulationIcon notAJAX\" href=\"index.php?mod=circulation\"></a></div>\r\n<div class=\"col-sm-8\">The Circulation module is used for doing library circulation transaction such as collection loans and return. In this module you can also create loan rules that will be used in loan transaction proccess.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Membership</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon memberIcon notAJAX\" href=\"index.php?mod=membership\"></a></div>\r\n<div class=\"col-sm-8\">The Membership module lets you manage library members such adding, updating and also removing. You can also manage membership type in this module.</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Stock Take</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon stockTakeIcon notAJAX\" href=\"index.php?mod=stock_take\"></a></div>\r\n<div class=\"col-sm-8\">The Stock Take module is the easy way to do Stock Opname for your library collections. Follow several steps that ease your pain in Stock Opname proccess.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Serial Control</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon serialIcon notAJAX\" href=\"index.php?mod=serial_control\"></a></div>\r\n<div class=\"col-sm-8\">Serial Control module help you manage library\'s serial publication subscription. You can track issues for each subscription.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Reporting</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon reportIcon notAJAX\" href=\"index.php?mod=reporting\"></a></div>\r\n<div class=\"col-sm-8\">Reporting lets you view various type of reports regardings membership data, circulation data and bibliographic data. All compiled on-the-fly from current library database.</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Master File</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon masterFileIcon notAJAX\" href=\"index.php?mod=master_file\"></a></div>\r\n<div class=\"col-sm-8\">The Master File modules lets you manage referential data that will be used by another modules. It include Authority File management such as Authority, Subject/Topic List, GMD and other data.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>System</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon systemIcon notAJAX\" href=\"index.php?mod=system\"></a></div>\r\n<div class=\"col-sm-8\">The System module is used to configure application globally, manage index, manage librarian, and also backup database.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'adminhome', NULL, '2009-09-13 19:48:16', '2009-09-13 22:02:11', '1'),
(4, 'Homepage Info', '<p>Welcome To <strong>SLiMS Library</strong> Online Public Access Catalog (OPAC). Use OPAC to search collection in our library.</p>', 'headerinfo', NULL, '2009-09-13 19:48:16', '2009-09-13 19:48:16', '1'),
(5, 'Tentang SLiMS', '<p><!--intro_awal--><strong>SLiMS</strong> adalah akronim dari Senayan Library Management System. Awalnya dikembangkan oleh Perpustakaan Kementerian Pendidikan Nasional untuk menggantikan Alice (http://www2.softlinkint.com). Tujuan utamanya agar Perpustakaan Kemdiknas mempunyai kebebasan untuk menggunakan, mempelajari, memodifikasi dan mendistribusikan perangkat lunak yang digunakan. SLiMS, maka dirilis dengan lisensi GPL dan sekarang pengembangan SLiMS dilakukan oleh komunitas penggunanya.<!--intro_akhir--></p>\r\n<p><strong>Asal Mula</strong></p>\r\n<p>Setelah beroperasi 50 tahun lebih, karena beberapa alasan Perpustakaan BC Indonesia yang telah selama bertahun-tahun menjadi andalan layanan BC di Indonesia harus ditutup. Pengelola BC Indonesia kemudian berinisiatif untuk menghibahkan pengelolaan aset perpustakaanya ke tangan institusi pemerintah. Dalam hal ini, institusi pemerintah yang dianggap sesuai bidangnya dan strategis tempatnya, adalah Departemen Pendidikan Nasional (Depdiknas). Yang dihibahkan tidak hanya koleksi, tetapi juga rak koleksi, hardware (server dan workstation) serta sistem termasuk untuk aplikasi manajemen administrasi perpustakaan (Alice).</p>\r\n<p>Seiring dengan berjalannya waktu, manajemen Perpustakaan Depdiknas mulai menghadapi beberapa kendala dalam penggunaan sistem Alice. Pertama, keterbatasan dalam menambahkan fitur-fitur baru. Antara lain: kebutuhan manajemen serial, meng-online-kan katalog di web dan kustomisasi report yang sering berubah-ubah kebutuhannya. Penambahan fitur jika harus meminta modul resmi dari developer Alice, berarti membutuhkan dana tambahan yang tidak kecil. Apalagi tidak ada distributor resminya di Indonesia sehingga harus mengharapkan support dari Inggris. Ditambah lagi beberapa persyaratan yang membutuhkan infrastruktur biaya mahal seperti dedicated public IP agar bisa meng-online-kan Alice di web.<br /><br />Saat itu untuk mengatasi sebagian kebutuhan (utamanya kustomisasi report), dilakukan dengan ujicoba mengakses langsung database yang disimpan dalam format DBase. Terkadang berhasil terkadang tidak karena struktur datanya proprietary dan kompleks serta jumlah rekodnya banyak. Untuk mempelajari struktur database, dicoba melakukan kontak via email ke developer Alice. Tetapi tidak ada respon sama sekali. Disini muncul masalah kedua. Sulitnya mempelajari lebih mendalam cara kerja perangkat lunak Alice. Karena Alice merupakan sistem proprietary yang serba tertutup, segala sesuatunya sangat tergantung vendor. Dibutuhkan sejumlah uang untuk mendapatkan layanan resmi untuk kustomisasi.<br /><br />Perpustakaan Depdiknas salah satu tupoksinya adalah melakukan koordinasi pengelolaan perpustakaan unit kerja dibawah lingkungan Depdiknas. Dalam implementasinya, seringkali muncul kebutuhan untuk bisa mendistribusikan perangkat lunak sistem perpustakaan ke berbagai unit kerja tersebut. Disini masalah ketiga: sulit (atau tidak mungkin) untuk melakukan redistribusi sistem Alice. Alice merupakan perangkat lunak yang secara lisensi tidak memungkinkan diredistribusi oleh pengelola Perpustakaan Depdiknas secara bebas. Semuanya harus ijin dan membutuhkan biaya.<br /><br />November 2006, perpustakaan dihadapkan oleh sebuah masalah mendasar. Sistem Alice tiba-tiba tidak bisa digunakan. Ternyata Alice yang digunakan selama ini diimplementasikan dengan sistem sewa. Pantas saja biayanya relatif murah. Tiap tahun pengguna harus membayar kembali untuk memperpanjang masa sewa pakainya. Tetapi yang mengkhawatirkan adalah fakta bahwa perpustakaan harus menyimpan semua informasi penting dan kritikal di sebuah sistem yang tidak pernah dimiliki. Yang kalau lupa atau tidak mau membayar sewa lagi, hilanglah akses terhadap data kita sendiri. Konyol sekali. Itu sama saja dengan bunuh diri kalau masih tergantung dengan sistem berlisensi seperti itu.<br /><br />Akhirnya pengelola Perpustakaan Depdiknas me-review kembali penggunaan sistem Alice di perpustakaan Depdiknas. Beberapa poin pentingnya antara lain:<br />&bull;&nbsp;&nbsp;&nbsp; Alice memang handal (reliable), tapi punya banyak keterbatasan. Biaya sewanya memang relatif murah, tetapi kalau membutuhkan support tambahan, baik sederhana ataupun kompleks, sangat tergantung dengan developer Alice yang berpusat di Inggris. Butuh biaya yang kalau di total juga tidak murah.<br />&bull;&nbsp;&nbsp;&nbsp; Model lisensi proprietary yang digunakan developer Alice tidak cocok dengan kondisi kebanyakan perpustakaan di Indonesia. Padahal pengelola Perpustakaan Depdiknas sebagai koordinator banyak perpustakaan di lingkungan Depdiknas, punya kepentingan untuk bisa dengan bebas melakukan banyak hal terhadap software yang digunakan.<br />&bull;&nbsp;&nbsp;&nbsp; Menyimpan data penting dan kritikal untuk operasional perpustakaan di suatu software yang proprietary dan menggunakan sistem sewa, dianggap sesuatu yang konyol dan mengancam independensi dan keberlangsungan perpustakaan itu sendiri.<br />&bull;&nbsp;&nbsp;&nbsp; Alice berjalan diatas sistem operasi Windows yang juga proprietary padahal pengelola Perpustakaan Depdiknas ingin beralih menggunakan Sistem Operasi open source (seperti GNU/Linux dan FreeBSD).<br />&bull;&nbsp;&nbsp;&nbsp; Masalah devisa negara yang terbuang untuk membayar software yang tidak pernah dimiliki.<br />&bull;&nbsp;&nbsp;&nbsp; Intinya: pengelola Perpustakaan Depdiknas ingin menggunakan software yang memberikan dan menjamin kebebasan untuk: menggunakan, mempelajari, memodifikasi dan melakukan redistribusi. Lisensi Alice tidak memungkinkan untuk itu.<br /><br />Setelah memutuskan untuk hijrah menggunakan sistem yang lain, maka langkah berikutnya adalah mencari sistem yang ada untuk digunakan atau mengembangkan sendiri sistem yang dibutuhkan. Beberapa pertimbangan yang harus dipenuhi:<br />&bull;&nbsp;&nbsp;&nbsp; Dirilis dibawah lisensi yang menjamin kebebasan untuk: menggunakan, mempelajari, memodifikasi dan melakukan redistribusi. Model lisensi open source (www.openosurce.org) dianggap sebagai model yang paling ideal dan sesuai.<br />&bull;&nbsp;&nbsp;&nbsp; Teknologi yang digunakan untuk membangun sistem juga harus berlisensi open source.<br />&bull;&nbsp;&nbsp;&nbsp; Teknologi yang digunakan haruslah teknologi yang relatif mudah dipelajari oleh pengelola perpustakaan Depdiknas yang berlatarbelakang pendidiknas pustakawan, seperti PHP (scripting language) dan MySQL (database). Jika tidak menguasai sisi teknis teknologi, maka akan terjebak kembali terhadap ketergantungan pada developer.<br /><br />Langkah berikutnya adalah melakukan banding software sistem perpustakaan open source yang bisa diperoleh di internet. Beberapa software yang dicoba antara lain: phpMyLibrary, OpenBiblio, KOHA, EverGreen. Pengelola perpustakaan Depdiknas merasa tidak cocok dengan software yang ada, dengan beberapa alasan:<br />&bull;&nbsp;&nbsp;&nbsp; Desain aplikasi dan database yang tidak baik atau kurang menerapkan secara serius prinsip-prinsip pengembangan aplikasi dan database yang baik sesuai dengan teori yang ada (PHPMyLibrary, OpenBiblio).<br />&bull;&nbsp;&nbsp;&nbsp; Menggunakan teknologi yang sulit dikuasai oleh pengelola perpustakaan Depdiknas (KOHA dan EverGreen dikembangkan menggunakan Perl dan C++ Language yang relatif lebih sulit dipelajari).<br />&bull;&nbsp;&nbsp;&nbsp; Beberapa sudah tidak aktif atau lama sekali tidak di rilis versi terbarunya (PHPMyLibrary dan OpenBiblio).<br /><br />Karena tidak menemukan sistem yang dibutuhkan, maka diputuskan untuk mengembangkan sendiri aplikasi sistem perpustakaan yang dibutuhkan. Dalam dunia pengembangan software, salah satu best practice-nya adalah memberikan nama kode (codename) pengembangan. Nama kode berbeda dengan nama aplikasinya itu sendiri. Nama kode biasanya berbeda-beda tiap versi. Misalnya kode nama &ldquo;Hardy Heron&rdquo; untuk Ubuntu Linux 8.04 dan &ldquo;Jaunty Jackalope&rdquo; untuk Ubuntu Linux 9.04. Pengelola perpustakaan Depdiknas Untuk versi awal (1.0) aplikasi yang akan dikembangkan, memberikan nama kode &ldquo;Senayan&rdquo;. Alasannya sederhana, karena awal dikembangkan di perpustakaan Depdiknas yang berlokasi di Senayan. Apalagi Perpustakaan Depdiknas mempunyai brand sebagai library@senayan. Belakangan karena dirasa nama &ldquo;Senayan&rdquo; dirasa cocok dan punya nilai marketing yang bagus, maka nama &ldquo;Senayan&rdquo; dijadikan nama resmi aplikasi sistem perpustakaan yang dikembangkan.<br /><br />Mengembangkan Senayan<br /><br />Sebelum mulai mengembangkan Senayan, ada beberapa keputusan desain aplikasi yang harus dibuat. Aspek desain ini penting diantaranya untuk pengambilankeputusan dari berbagai masukan yang datang dari komunitas. Antara lain:<br /><br />Pertama,&nbsp; Senayan adalah aplikasi untuk kebutuhan administrasi dan konten perpustakaan (Library Automation System). Senayan didesain untuk kebutuhan skala menengah maupun besar. Cocok untuk perpustakaan yang memiliki koleksi, anggota dan staf banyak di lingkungan jaringan, baik itu lokal (intranet) dan internet.<br /><br />Kedua, Senayan dibangun dengan memperhatikan best practice dalam pengembangan software seperti dalam hal penulisan source code, dokumentasi, dan desain database.<br /><br />Ketiga, Senayan dirancang untuk compliant dengan standar pengelolaan koleksi di perpustakaan. Untuk standar pengatalogan minimal memenuhi syarat AACR 2 level 2 (Anglo-American Cataloging Rules). Kebutuhan untuk kesesuaian dengan standar di perpustakaan terus berkembang dan pengelola perpustakaan Depdiknas dan developer Senayan berkomitmen untuk terus mengembangkan Senayan agar mengikuti standar-standar tersebut.<br /><br />Keempat, Senayan didesain agar bisa juga menjadi middleware bagi aplikasi lain untuk menggunakan data yang ada didalam Senayan. Untuk itu Senayan akan menyediakan API (application programming Interface) yang berbasis web service.<br /><br />Kelima, Senayan merupakan aplikasi yang cross-platform, baik dari sisi aplikasinya itu sendiri dan akses terhadap aplikasi. Untuk itu basis yang paling tepat ada basis web.<br /><br />Keenam, teknologi yang digunakan untuk membangun Senayan, haruslah terbukti bisa diinstall di banyak platform sistem operasi, berlisensi open source dan mudah dipelajari oleh pengelola perpustakaan Depdiknas. Diputuskan untuk menggunakan PHP (www.php.net) untuk web scripting languange dan MySQL (www.mysql.com) untuk server database.<br /><br />Ketujuh, diputuskan untuk mengembangkan library PHP sendiri yang didesain spesifik untuk kebutuhan membangun library automation system. Tidak menggunakan library PHP yang sudah terkenal seperti PEAR (pear.php.net) karena alasan penguasaan terhadap teknologi dan kesederhanaan. Library tersebut diberinama &ldquo;simbio&rdquo;.<br /><br />Kedelapan, untuk mempercepat proses pengembangan, beberapa modul atau fungsi yang dibutuhkan yang dirasa terlalu lama dan rumit untuk dikembangkan sendiri, akan menggunakan software open source yang berlisensi open source juga. Misalnya: flowplayer untuk dukungan multimedia, jQuery untuk dukungan AJAX (Asynchronous Javascript and XML), genbarcode untuk dukungan pembuatan barcode, PHPThumb untuk dukungan generate image on-the-fly, tinyMCE untuk web-based text editor, dan lain-lain.<br /><br />Kesembilan, untuk menjaga spirit open source, proses pengembangan Senayan dilakukan dengan infrastruktur yang berbasis open source. Misalnya: server web menggunakan Apache, server produksi menggunakan OS Linux Centos dan OpenSuse, para developer melakukan pengembangan dengan OS Ubuntu Linux, manajemen source code menggunakan software git, dan lain-lain.<br /><br />Kesepuluh, Senayan dirilis ke masyarakat umum dengan lisensi GNU/GPL versi 3 yang menjamin kebebasan penggunanya untuk mempelajari, menggunakan, memodifikasi dan redistribusi Senayan.<br /><br />Kesebelas, para developer dan pengelola perpustakaan Depdiknas berkomitmen untuk terus mengembangkan Senayan dan menjadikannya salah satu contoh software perpustakaan yang open source, berbasis di indonesia dan menjadi salah satu contoh bagi model pengembangan open source yang terbukti berjalan dengan baik.<br /><br />Keduabelas, model pengembangan Senayan adalah open source yang artinya setiap orang dipersilahkan memberikan kontribusinya. Baik dari sisi pemrogaman, template, dokumentasi, dan lain-lain. Tentu saja ada mekanisme mana kontribusi yang bagus untuk dimasukkan dalam rilis resmi, mana yang tidak. Mengacu ke dokumen &hellip; (TAMBAHKAN DENGAN TULISAN ERIC S RAYMOND)<br /><br />Model pengembangan senayan<br /><br />Pengembangan Senayan awalnya diinisiasi oleh pengelola Perpustakaan Depdiknas. Tetapi sekarang komunitas pengembang Senayan (Senayan Developer Community) yang lebih banyak mengambil peran dalam mengembangkan Senayan. Beberapa hal dibawah ini merupakan kultur yang dibangun dalam mengembangkan Senayan:<br />1.&nbsp;&nbsp;&nbsp; Meritokrasi. Siapa saja bisa berkontribusi. Mereka yang banyak memberikan kontribusi, akan mendapatkan privilege lebih dibandingkan yang lain.<br />2.&nbsp;&nbsp;&nbsp; Minimal punya concern terhadap pengembangan perpustakaan. Contoh lain: berlatar belakang pendidikan ilmu perpustakaan dan informasi, bekerja di perpustakaan, mengelola perpustakaan, dan lain-lain. Diharapkan dengan kondisi ini, sense of librarianship melekat di tiap developer/pengguna Senayan. Sejauh ini, semua developer senayan merupakan pustakawan atau berlatarbelakang pendidikan kepustakawanan (Information and Librarianship).<br />3.&nbsp;&nbsp;&nbsp; Release early, release often, and listen to your customer. Release early artinya setiap perbaikan dan penambahan fitur, secepat mungkin dirilis ke publik. Diharapkan bugs yang ada, bisa cepat ditemukan oleh komunitas, dilaporkan ke developer, untuk kemudian dirilis perbaikannya. Release often, artinya sesering mungkin memberikan update perbaikan bugs dan penambahan fitur. Ini &ldquo;memaksa&rdquo; developer Senayan untuk terus kreatif menambahkan fitur Senayan. Release often juga membuat pengguna berkeyakinan bahwa Senayan punya sustainability yang baik dan terus aktif dikembangkan. Selain itu, release often juga mempunyai dampak pemasaran. Pengguna dan calon pengguna, selalu diingatkan tentang keberadaan Senayan. Tentunya dengan cara yang elegan, yaitu rilis-rilis Senayan. Sejak dirilis ke publi pertama kali November 2007 sampai Juli 2009 (kurang lebih 20 bulan) telah dirilis 18 rilis resmi Senayan. Listen to your customer. Developer Senayan selalu berusaha mengakomodasi kebutuhan pengguna baik yang masuk melalui report di mailing list, ataupun melalui bugs tracking system. Tentu tidak semua masukan diakomodasi, harus disesuaikan dengan desain dan roadmap pengembangan Senayan.<br />4.&nbsp;&nbsp;&nbsp; Dokumentasi. Developer Senayan meyakini pentingnya dokumentasi yang baik dalam mensukseskan implementasi Senayan dibanyak tempat. Karena itu pengembang Senayan mempunyai tim khusus yang bertanggungjawab yang mengembangkan dokumentasi Senayan agar terus uo-to-date mengikuti rilis terbaru.<br />5.&nbsp;&nbsp;&nbsp; Agar ada percepatan dalam pengembangan dan untuk mengakrabkan antar pengembang Senayan, minimal setahun sekali diadakan Senayan Developers Day yang mengumpulkan para developer Senayan dari berbagai kota, dan melakukan coding bersama-sama.<br />Fitur Senayan<br />Sebagai sebuah Sistem Automasi Perpustakaan yang terintergrasi, modul-modul yang telah terdapat di SENAYAN adalah sebagai berikut:<br />Modul Pengatalogan (Cataloging Module)<br />1)&nbsp;&nbsp;&nbsp; Compliance dengan standar AACR2 (Anglo-American Cataloging Rules).<br />2)&nbsp;&nbsp;&nbsp; Fitur untuk membuat, mengedit, dan menghapus data bibliografi sesuai dengan standar deskripsi bibliografi AACR2 level ke dua.<br />3)&nbsp;&nbsp;&nbsp; Mendukung pengelolaan koleksi dalam berbagai macam format seperti monograph, terbitan berseri, audio visual, dsb.<br />4)&nbsp;&nbsp;&nbsp; Mendukung penyimpanan data bibliografi dari situs di Internet.<br />5)&nbsp;&nbsp;&nbsp; Mendukung penggunaan Barcode.<br />6)&nbsp;&nbsp;&nbsp; Manajemen item koleksi untuk dokumen dengan banyak kopi dan format yang berbeda.<br />7)&nbsp;&nbsp;&nbsp; Mendukung format XML untuk pertukaran data dengan menggunakan standar metadata MODS (Metadata Object Description Schema).<br />8)&nbsp;&nbsp;&nbsp; Pencetakan Barcode item/kopi koleksi Built-in.<br />9)&nbsp;&nbsp;&nbsp; Pencetakan Label Punggung koleksi Built-in.<br />10)&nbsp;&nbsp;&nbsp; Pengambilan data katalog melalui protokol Z3950 ke database koleksi Library of Congress.<br />11)&nbsp;&nbsp;&nbsp; Pengelolaan koleksi yang hilang, dalam perbaikan, dan rusak serta pencatatan statusnya untuk dilakukan pergantian/perbaikan terhadap koleksi.<br />12)&nbsp;&nbsp;&nbsp; Daftar kendali untuk pengarang (baik pengarang orang, badan/lembaga, dan pertemuan) sebagai standar konsistensi penuliasn<br />13)&nbsp;&nbsp;&nbsp; Pengaturan hak akses pengelolaan data bibliografi hanya untuk staf yang berhak.<br /><br />Modul Penelusuran (OPAC/Online Public Access catalog Module)<br />1)&nbsp;&nbsp;&nbsp; Pencarian sederhana.<br />2)&nbsp;&nbsp;&nbsp; Pencarian tingkat lanjut (Advanced).<br />3)&nbsp;&nbsp;&nbsp; Dukungan penggunaan Boolean\'s Logic dan implementasi CQL (Common Query Language).<br />4)&nbsp;&nbsp;&nbsp; OPAC Web Services berbasis XML.<br />5)&nbsp;&nbsp;&nbsp; Mendukung akses OPAC melalui peralatan portabel (mobile device)<br />6)&nbsp;&nbsp;&nbsp; Menampilkan informasi lengkap tetang status koleksi di perpustakaan, tanggal pengembalian, dan pemesanan item/koleksi<br />7)&nbsp;&nbsp;&nbsp; Detil informasi juga menampilkan gambar sampul buku, lampiran dalam format elektronik yang tersedia (jika ada) serta fasilitas menampilkan koleksi audio dan visual.<br />8)&nbsp;&nbsp;&nbsp; Menyediakan hyperlink tambahan untuk pencarian lanjutan berdasarkan penulis, dan subjek.<br /><br />Modul Sirkulasi (Circulation Module)<br />1)&nbsp;&nbsp;&nbsp; Mampu memproses peminjaman dan pengembalian koleksi secara efisien, efektif dan aman.<br />2)&nbsp;&nbsp;&nbsp; Mendukung fitur reservasi koleksi yang sedang dipinjam, termasuk reminder/pemberitahuan-nya.<br />3)&nbsp;&nbsp;&nbsp; Mendukung fitur manajemen denda. Dilengkapi fleksibilitas untuk pemakai membayar denda secara cicilan.<br />4)&nbsp;&nbsp;&nbsp; Mendukung fitur reminder untuk berbagai keperluan seperti melakukan black list terhadap pemakai yang bermasalah atau habis keanggotaannya.<br />5)&nbsp;&nbsp;&nbsp; Mendukung fitur pengkalenderan (calendaring) untuk diintegrasikan dengan penghitungan masa peminjaman, denda, dan lain-lain.<br />6)&nbsp;&nbsp;&nbsp; Memungkinkan penentuan hari-hari libur non-standar yang spesifik.<br />7)&nbsp;&nbsp;&nbsp; Dukungan terhadap ragam jenis tipe pemakai dengan masa pinjam beragam untuk berbagai jenis keanggotaan.<br />8)&nbsp;&nbsp;&nbsp; Menyimpan histori peminjaman anggota.<br />9)&nbsp;&nbsp;&nbsp; Mendukung pembuatan peraturan peminjaman yang sangat rinci dengan mengkombinasikan parameter keanggotaan, jenis koleksi, dan gmd selain aturan peminjaman standar berdasarkan jenis keanggotaan<br /><br />Modul Manajemen Keanggotaan (Membership Management Module)<br />1)&nbsp;&nbsp;&nbsp; Memungkinkan beragam tipe pemakai dengan ragam jenis kategori peminjaman, ragam jenis keanggotaan dan pembedaan setiap layanan sirkulasi dalam jumlah koleksi serta lama peminjaman untuk jenis koleksi untuk setiap jenis/kategori.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap input menggunakan barcode reader<br />3)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi preferensi pemakai atau subject interest.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi tambahan untuk keperluan reminder pada saat transaksi.<br />5)&nbsp;&nbsp;&nbsp; Memungkinkan menyimpan informasi detail pemakai yang lebih lengkap.<br />6)&nbsp;&nbsp;&nbsp; Pencarian informasi anggota minimal berdasarkan nomor dan nama anggota.<br />7)&nbsp;&nbsp;&nbsp; Pembuatan kartu anggota yang dilengkapi dengan barcode untuk transaksi peminjaman.<br /><br />Modul Inventarisasi Koleksi (Stocktaking Module)<br />1)&nbsp;&nbsp;&nbsp; Proses inventarisasi koleksi bisa dilakukan secara bertahap dan parsial tanpa harus menutup layanan perpustakaan secara keseluruhan.<br />2)&nbsp;&nbsp;&nbsp; Proses inventarisasi bisa dilakukan secara efisien dan efektif.<br />3)&nbsp;&nbsp;&nbsp; Terdapat pilihan untuk menghapus data secara otomatis pada saat akhir proses inventarisasi terhadap koleksi yang dianggap hilang.<br /><br />Modul Statistik/Pelaporan (Report Module)<br />1)&nbsp;&nbsp;&nbsp; Meliputi pelaporan untuk semua modul-modul yang tersedia di Senayan.<br />2)&nbsp;&nbsp;&nbsp; Laporan Judul.<br />3)&nbsp;&nbsp;&nbsp; Laporan Items/Kopi koleksi.<br />4)&nbsp;&nbsp;&nbsp; Laporan Keanggotaan.<br />5)&nbsp;&nbsp;&nbsp; Laporan jumlah koleksi berdasarkan klasifikasi.<br />6)&nbsp;&nbsp;&nbsp; Laporan Keterlambatan.<br />7)&nbsp;&nbsp;&nbsp; Berbagai macam statistik seperti statistik koleksi, peminjaman, keanggotaan, keterpakaian koleksi.<br />8)&nbsp;&nbsp;&nbsp; Tampilan laporan yang sudah didesain printer-friendly, sehingga memudahkan untuk dicetak.<br />9)&nbsp;&nbsp;&nbsp; Filter data yang lengkap untuk setiap laporan.<br />10)&nbsp;&nbsp;&nbsp; API untuk pelaporan yang relatif mudah dipelajari untuk membuat custom report baru.<br /><br />Modul Manajemen Terbitan Berseri (Serial Control)<br />1)&nbsp;&nbsp;&nbsp; Manajemen data langganan.<br />2)&nbsp;&nbsp;&nbsp; Manajemen data Kardex.<br />3)&nbsp;&nbsp;&nbsp; Manajemen tracking data terbitan yang akan terbit dan yang sudah ada.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan tracking data terbitan berseri yang jadwal terbitnya tidak teratur (pengaturan yang fleksibel).<br /><br />Modul Lain-lain<br />1)&nbsp;&nbsp;&nbsp; Dukungan antar muka yang multi bahasa (internasionalisasi) dengan Gettext.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap penggunaan huruf bukan latin untuk pengisian data dan pencarian.<br /><br />Roadmap Pengembangan Senayan<br />SENAYAN akan terus dikembangkan oleh para pengembangnya beserta komunitas pengguna SENAYAN lainnya. Berikut adalah Roadmap pengembangan SENAYAN ke depannya:<br /><br />Pengembangan aplikasi:<br />1.&nbsp;&nbsp;&nbsp; Kompatibilitas dengan MARC dan standar pertukaran data yang komplit. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; Memastikan bahwa format data bibliografi kompatibel dengan MARC secara lebih baik (minimal MARC light).<br />&bull;&nbsp;&nbsp;&nbsp; Dukungan terhadap RFID.<br />&bull;&nbsp;&nbsp;&nbsp; Fitur untuk impor / ekspor rekod dari The Online Computer Library Centre (OCLC), Research Libraries Information Network (RLIN), vendor sistem lain yang compliant dengan MARC.<br />&bull;&nbsp;&nbsp;&nbsp; Validasi data ISBN menggunakan modulus seven.<br />&bull;&nbsp;&nbsp;&nbsp; Dukungan terhadap standar di perpustakaan, seperti: Library of Congress Subject Headings, Library of Congress Classification, ALA filing rules, International Standard Bibliographic Description, ANSI Standard for Bibliographic Information Exchange on magnetic tape, Common communication format (ISO 2709).<br />2.&nbsp;&nbsp;&nbsp; Katalog induk/bersama (union catalog)<br />3.&nbsp;&nbsp;&nbsp; Implementasi Thesaurus. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; Pemanfaatan tesaurus untuk proses pengatalogan.<br />&bull;&nbsp;&nbsp;&nbsp; Pemanfaatan tesaurus untuk proses pencarian, misalnya memberikan advis pencarian menggunakan knowledge base yang dibangun dengan sistem tesaurus.<br />4.&nbsp;&nbsp;&nbsp; Implementasi Library 2.0. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; User bisa login dan mempunyai halaman personalisasi.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan reservasi koleksi dan memperpanjang peminjaman.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan komunikasi dengan pustakawan via messaging system.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan tagging, rekomendasi koleksi dan menyimpannya didalam daftar koleksi favoritnya.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa memberikan komentar terhadap koleksi.<br />&bull;&nbsp;&nbsp;&nbsp; Pustakawan bisa memasukkan preferensi pemakai didalam data keanggotaan. Preferensi tersebut bisa dimanfaatkan salah satunya untuk men-generate semacam daftar koleksi terpilih untuk dicetak atau ditampilkan ketika user login.<br />5.&nbsp;&nbsp;&nbsp; Peningkatan dukungan manajemen konten digital dan entri analitikal<br /><br />Pengembangan basis komunitas pengguna:<br />&bull;&nbsp;&nbsp;&nbsp; Membangun komunitas pengguna di berbagai kota <br />&bull;&nbsp;&nbsp;&nbsp; Mengadakan Senayan Developers Day untuk silaturahmi antar developer Senayan, update dokumentasi, penambahan fitur baru dan bug fixing dan mencari bibit pengembang yang baru.<br />&bull;&nbsp;&nbsp;&nbsp; Workshop/Seminar Nasional Tahunan<br />&bull;&nbsp;&nbsp;&nbsp; Jam Sessions rutin setiap 3 bulan</p>', 'about_slims', NULL, '2010-08-28 23:29:55', '2010-11-12 18:21:01', '1'),
(6, 'Modul yang Tersedia', '<p><!--intro_awal-->Sebagai sebuah Sistem Automasi Perpustakaan yang terintergrasi, modul-modul yang telah terdapat di SENAYAN antara lain: pengatalogan/bibliografi, keanggotaan, sirkulasi, masterfile, stock opname (inventarisasi koleksi), pelaporan/reporting, manajemen kontrol serial, digital library, dan lain-lain.<!--intro_akhir--></p>\r\n<p>Modul Pengatalogan (Cataloging Module)<br />1)&nbsp;&nbsp;&nbsp; Compliance dengan standar AACR2 (Anglo-American Cataloging Rules).<br />2)&nbsp;&nbsp;&nbsp; Fitur untuk membuat, mengedit, dan menghapus data bibliografi sesuai dengan standar deskripsi bibliografi AACR2 level ke dua.<br />3)&nbsp;&nbsp;&nbsp; Mendukung pengelolaan koleksi dalam berbagai macam format seperti monograph, terbitan berseri, audio visual, dsb.<br />4)&nbsp;&nbsp;&nbsp; Mendukung penyimpanan data bibliografi dari situs di Internet.<br />5)&nbsp;&nbsp;&nbsp; Mendukung penggunaan Barcode.<br />6)&nbsp;&nbsp;&nbsp; Manajemen item koleksi untuk dokumen dengan banyak kopi dan format yang berbeda.<br />7)&nbsp;&nbsp;&nbsp; Mendukung format XML untuk pertukaran data dengan menggunakan standar metadata MODS (Metadata Object Description Schema).<br />8)&nbsp;&nbsp;&nbsp; Pencetakan Barcode item/kopi koleksi Built-in.<br />9)&nbsp;&nbsp;&nbsp; Pencetakan Label Punggung koleksi Built-in.<br />10)&nbsp;&nbsp;&nbsp; Pengambilan data katalog melalui protokol Z3950 ke database koleksi Library of Congress.<br />11)&nbsp;&nbsp;&nbsp; Pengelolaan koleksi yang hilang, dalam perbaikan, dan rusak serta pencatatan statusnya untuk dilakukan pergantian/perbaikan terhadap koleksi.<br />12)&nbsp;&nbsp;&nbsp; Daftar kendali untuk pengarang (baik pengarang orang, badan/lembaga, dan pertemuan) sebagai standar konsistensi penuliasn<br />13)&nbsp;&nbsp;&nbsp; Pengaturan hak akses pengelolaan data bibliografi hanya untuk staf yang berhak.<br /><br />Modul Penelusuran (OPAC/Online Public Access catalog Module)<br />1)&nbsp;&nbsp;&nbsp; Pencarian sederhana.<br />2)&nbsp;&nbsp;&nbsp; Pencarian tingkat lanjut (Advanced).<br />3)&nbsp;&nbsp;&nbsp; Dukungan penggunaan Boolean\'s Logic dan implementasi CQL (Common Query Language).<br />4)&nbsp;&nbsp;&nbsp; OPAC Web Services berbasis XML.<br />5)&nbsp;&nbsp;&nbsp; Mendukung akses OPAC melalui peralatan portabel (mobile device)<br />6)&nbsp;&nbsp;&nbsp; Menampilkan informasi lengkap tetang status koleksi di perpustakaan, tanggal pengembalian, dan pemesanan item/koleksi<br />7)&nbsp;&nbsp;&nbsp; Detil informasi juga menampilkan gambar sampul buku, lampiran dalam format elektronik yang tersedia (jika ada) serta fasilitas menampilkan koleksi audio dan visual.<br />8)&nbsp;&nbsp;&nbsp; Menyediakan hyperlink tambahan untuk pencarian lanjutan berdasarkan penulis, dan subjek.<br /><br />Modul Sirkulasi (Circulation Module)<br />1)&nbsp;&nbsp;&nbsp; Mampu memproses peminjaman dan pengembalian koleksi secara efisien, efektif dan aman.<br />2)&nbsp;&nbsp;&nbsp; Mendukung fitur reservasi koleksi yang sedang dipinjam, termasuk reminder/pemberitahuan-nya.<br />3)&nbsp;&nbsp;&nbsp; Mendukung fitur manajemen denda. Dilengkapi fleksibilitas untuk pemakai membayar denda secara cicilan.<br />4)&nbsp;&nbsp;&nbsp; Mendukung fitur reminder untuk berbagai keperluan seperti melakukan black list terhadap pemakai yang bermasalah atau habis keanggotaannya.<br />5)&nbsp;&nbsp;&nbsp; Mendukung fitur pengkalenderan (calendaring) untuk diintegrasikan dengan penghitungan masa peminjaman, denda, dan lain-lain.<br />6)&nbsp;&nbsp;&nbsp; Memungkinkan penentuan hari-hari libur non-standar yang spesifik.<br />7)&nbsp;&nbsp;&nbsp; Dukungan terhadap ragam jenis tipe pemakai dengan masa pinjam beragam untuk berbagai jenis keanggotaan.<br />8)&nbsp;&nbsp;&nbsp; Menyimpan histori peminjaman anggota.<br />9)&nbsp;&nbsp;&nbsp; Mendukung pembuatan peraturan peminjaman yang sangat rinci dengan mengkombinasikan parameter keanggotaan, jenis koleksi, dan gmd selain aturan peminjaman standar berdasarkan jenis keanggotaan<br /><br />Modul Manajemen Keanggotaan (Membership Management Module)<br />1)&nbsp;&nbsp;&nbsp; Memungkinkan beragam tipe pemakai dengan ragam jenis kategori peminjaman, ragam jenis keanggotaan dan pembedaan setiap layanan sirkulasi dalam jumlah koleksi serta lama peminjaman untuk jenis koleksi untuk setiap jenis/kategori.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap input menggunakan barcode reader<br />3)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi preferensi pemakai atau subject interest.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi tambahan untuk keperluan reminder pada saat transaksi.<br />5)&nbsp;&nbsp;&nbsp; Memungkinkan menyimpan informasi detail pemakai yang lebih lengkap.<br />6)&nbsp;&nbsp;&nbsp; Pencarian informasi anggota minimal berdasarkan nomor dan nama anggota.<br />7)&nbsp;&nbsp;&nbsp; Pembuatan kartu anggota yang dilengkapi dengan barcode untuk transaksi peminjaman.<br /><br />Modul Inventarisasi Koleksi (Stocktaking Module)<br />1)&nbsp;&nbsp;&nbsp; Proses inventarisasi koleksi bisa dilakukan secara bertahap dan parsial tanpa harus menutup layanan perpustakaan secara keseluruhan.<br />2)&nbsp;&nbsp;&nbsp; Proses inventarisasi bisa dilakukan secara efisien dan efektif.<br />3)&nbsp;&nbsp;&nbsp; Terdapat pilihan untuk menghapus data secara otomatis pada saat akhir proses inventarisasi terhadap koleksi yang dianggap hilang.<br /><br />Modul Statistik/Pelaporan (Report Module)<br />1)&nbsp;&nbsp;&nbsp; Meliputi pelaporan untuk semua modul-modul yang tersedia di Senayan.<br />2)&nbsp;&nbsp;&nbsp; Laporan Judul.<br />3)&nbsp;&nbsp;&nbsp; Laporan Items/Kopi koleksi.<br />4)&nbsp;&nbsp;&nbsp; Laporan Keanggotaan.<br />5)&nbsp;&nbsp;&nbsp; Laporan jumlah koleksi berdasarkan klasifikasi.<br />6)&nbsp;&nbsp;&nbsp; Laporan Keterlambatan.<br />7)&nbsp;&nbsp;&nbsp; Berbagai macam statistik seperti statistik koleksi, peminjaman, keanggotaan, keterpakaian koleksi.<br />8)&nbsp;&nbsp;&nbsp; Tampilan laporan yang sudah didesain printer-friendly, sehingga memudahkan untuk dicetak.<br />9)&nbsp;&nbsp;&nbsp; Filter data yang lengkap untuk setiap laporan.<br />10)&nbsp;&nbsp;&nbsp; API untuk pelaporan yang relatif mudah dipelajari untuk membuat custom report baru.<br /><br />Modul Manajemen Terbitan Berseri (Serial Control)<br />1)&nbsp;&nbsp;&nbsp; Manajemen data langganan.<br />2)&nbsp;&nbsp;&nbsp; Manajemen data Kardex.<br />3)&nbsp;&nbsp;&nbsp; Manajemen tracking data terbitan yang akan terbit dan yang sudah ada.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan tracking data terbitan berseri yang jadwal terbitnya tidak teratur (pengaturan yang fleksibel).<br /><br />Modul Lain-lain<br />1)&nbsp;&nbsp;&nbsp; Dukungan antar muka yang multi bahasa (internasionalisasi) dengan Gettext.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap penggunaan huruf bukan latin untuk pengisian data dan pencarian.</p>', 'modul_tersedia', NULL, '2010-08-29 04:03:09', '2010-08-29 04:05:49', '1'),
(7, 'Lisensi SLiMS', '<p><!--intro_awal--><strong>SLiMS</strong> dilisensikan dibawah GNU/GPL (http://www.gnu.org/licenses/gpl.html) untuk menjamin kebebasan pengguna dalam menggunakannya. GNU General Public License (disingkat GNU GPL atau cukup GPL) merupakan suatu lisensi perangkat lunak bebas yang aslinya ditulis oleh Richard Stallman untuk proyek GNU. Lisensi GPL memberikan penerima salinan perangkat lunak hak dari perangkat lunak bebas dan menggunakan copyleft&nbsp; untuk memastikan kebebasan yang sama diterapkan pada versi berikutnya dari karya tersebut.<!--intro_akhir--></p>\r\n<p>&nbsp;GNU LESSER GENERAL PUBLIC LICENSE<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Version 3, 29 June 2007<br /><br />&nbsp;Copyright (C) 2007 Free Software Foundation, Inc. &lt;http://fsf.org/&gt;<br />&nbsp;Everyone is permitted to copy and distribute verbatim copies<br />&nbsp;of this license document, but changing it is not allowed.<br /><br /><br />&nbsp; This version of the GNU Lesser General Public License incorporates<br />the terms and conditions of version 3 of the GNU General Public<br />License, supplemented by the additional permissions listed below.<br /><br />&nbsp; 0. Additional Definitions.<br /><br />&nbsp; As used herein, \"this License\" refers to version 3 of the GNU Lesser<br />General Public License, and the \"GNU GPL\" refers to version 3 of the GNU<br />General Public License.<br /><br />&nbsp; \"The Library\" refers to a covered work governed by this License,<br />other than an Application or a Combined Work as defined below.<br /><br />&nbsp; An \"Application\" is any work that makes use of an interface provided<br />by the Library, but which is not otherwise based on the Library.<br />Defining a subclass of a class defined by the Library is deemed a mode<br />of using an interface provided by the Library.<br /><br />&nbsp; A \"Combined Work\" is a work produced by combining or linking an<br />Application with the Library.&nbsp; The particular version of the Library<br />with which the Combined Work was made is also called the \"Linked<br />Version\".<br /><br />&nbsp; The \"Minimal Corresponding Source\" for a Combined Work means the<br />Corresponding Source for the Combined Work, excluding any source code<br />for portions of the Combined Work that, considered in isolation, are<br />based on the Application, and not on the Linked Version.<br /><br />&nbsp; The \"Corresponding Application Code\" for a Combined Work means the<br />object code and/or source code for the Application, including any data<br />and utility programs needed for reproducing the Combined Work from the<br />Application, but excluding the System Libraries of the Combined Work.<br /><br />&nbsp; 1. Exception to Section 3 of the GNU GPL.<br /><br />&nbsp; You may convey a covered work under sections 3 and 4 of this License<br />without being bound by section 3 of the GNU GPL.<br /><br />&nbsp; 2. Conveying Modified Versions.<br /><br />&nbsp; If you modify a copy of the Library, and, in your modifications, a<br />facility refers to a function or data to be supplied by an Application<br />that uses the facility (other than as an argument passed when the<br />facility is invoked), then you may convey a copy of the modified<br />version:<br /><br />&nbsp;&nbsp; a) under this License, provided that you make a good faith effort to<br />&nbsp;&nbsp; ensure that, in the event an Application does not supply the<br />&nbsp;&nbsp; function or data, the facility still operates, and performs<br />&nbsp;&nbsp; whatever part of its purpose remains meaningful, or<br /><br />&nbsp;&nbsp; b) under the GNU GPL, with none of the additional permissions of<br />&nbsp;&nbsp; this License applicable to that copy.<br /><br />&nbsp; 3. Object Code Incorporating Material from Library Header Files.<br /><br />&nbsp; The object code form of an Application may incorporate material from<br />a header file that is part of the Library.&nbsp; You may convey such object<br />code under terms of your choice, provided that, if the incorporated<br />material is not limited to numerical parameters, data structure<br />layouts and accessors, or small macros, inline functions and templates<br />(ten or fewer lines in length), you do both of the following:<br /><br />&nbsp;&nbsp; a) Give prominent notice with each copy of the object code that the<br />&nbsp;&nbsp; Library is used in it and that the Library and its use are<br />&nbsp;&nbsp; covered by this License.<br /><br />&nbsp;&nbsp; b) Accompany the object code with a copy of the GNU GPL and this license<br />&nbsp;&nbsp; document.<br /><br />&nbsp; 4. Combined Works.<br /><br />&nbsp; You may convey a Combined Work under terms of your choice that,<br />taken together, effectively do not restrict modification of the<br />portions of the Library contained in the Combined Work and reverse<br />engineering for debugging such modifications, if you also do each of<br />the following:<br /><br />&nbsp;&nbsp; a) Give prominent notice with each copy of the Combined Work that<br />&nbsp;&nbsp; the Library is used in it and that the Library and its use are<br />&nbsp;&nbsp; covered by this License.<br /><br />&nbsp;&nbsp; b) Accompany the Combined Work with a copy of the GNU GPL and this license<br />&nbsp;&nbsp; document.<br /><br />&nbsp;&nbsp; c) For a Combined Work that displays copyright notices during<br />&nbsp;&nbsp; execution, include the copyright notice for the Library among<br />&nbsp;&nbsp; these notices, as well as a reference directing the user to the<br />&nbsp;&nbsp; copies of the GNU GPL and this license document.<br /><br />&nbsp;&nbsp; d) Do one of the following:<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0) Convey the Minimal Corresponding Source under the terms of this<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; License, and the Corresponding Application Code in a form<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; suitable for, and under terms that permit, the user to<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; recombine or relink the Application with a modified version of<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the Linked Version to produce a modified Combined Work, in the<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; manner specified by section 6 of the GNU GPL for conveying<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Corresponding Source.<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1) Use a suitable shared library mechanism for linking with the<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Library.&nbsp; A suitable mechanism is one that (a) uses at run time<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a copy of the Library already present on the user\'s computer<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; system, and (b) will operate properly with a modified version<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of the Library that is interface-compatible with the Linked<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Version.<br /><br />&nbsp;&nbsp; e) Provide Installation Information, but only if you would otherwise<br />&nbsp;&nbsp; be required to provide such information under section 6 of the<br />&nbsp;&nbsp; GNU GPL, and only to the extent that such information is<br />&nbsp;&nbsp; necessary to install and execute a modified version of the<br />&nbsp;&nbsp; Combined Work produced by recombining or relinking the<br />&nbsp;&nbsp; Application with a modified version of the Linked Version. (If<br />&nbsp;&nbsp; you use option 4d0, the Installation Information must accompany<br />&nbsp;&nbsp; the Minimal Corresponding Source and Corresponding Application<br />&nbsp;&nbsp; Code. If you use option 4d1, you must provide the Installation<br />&nbsp;&nbsp; Information in the manner specified by section 6 of the GNU GPL<br />&nbsp;&nbsp; for conveying Corresponding Source.)<br /><br />&nbsp; 5. Combined Libraries.<br /><br />&nbsp; You may place library facilities that are a work based on the<br />Library side by side in a single library together with other library<br />facilities that are not Applications and are not covered by this<br />License, and convey such a combined library under terms of your<br />choice, if you do both of the following:<br /><br />&nbsp;&nbsp; a) Accompany the combined library with a copy of the same work based<br />&nbsp;&nbsp; on the Library, uncombined with any other library facilities,<br />&nbsp;&nbsp; conveyed under the terms of this License.<br /><br />&nbsp;&nbsp; b) Give prominent notice with the combined library that part of it<br />&nbsp;&nbsp; is a work based on the Library, and explaining where to find the<br />&nbsp;&nbsp; accompanying uncombined form of the same work.<br /><br />&nbsp; 6. Revised Versions of the GNU Lesser General Public License.<br /><br />&nbsp; The Free Software Foundation may publish revised and/or new versions<br />of the GNU Lesser General Public License from time to time. Such new<br />versions will be similar in spirit to the present version, but may<br />differ in detail to address new problems or concerns.<br /><br />&nbsp; Each version is given a distinguishing version number. If the<br />Library as you received it specifies that a certain numbered version<br />of the GNU Lesser General Public License \"or any later version\"<br />applies to it, you have the option of following the terms and<br />conditions either of that published version or of any later version<br />published by the Free Software Foundation. If the Library as you<br />received it does not specify a version number of the GNU Lesser<br />General Public License, you may choose any version of the GNU Lesser<br />General Public License ever published by the Free Software Foundation.<br /><br />&nbsp; If the Library as you received it specifies that a proxy can decide<br />whether future versions of the GNU Lesser General Public License shall<br />apply, that proxy\'s public statement of acceptance of any version is<br />permanent authorization for you to choose that version for the<br />Library.</p>', 'lisensi_slims', NULL, '2010-08-29 04:04:33', '2010-11-12 22:15:43', '1');
INSERT INTO `content` (`content_id`, `content_title`, `content_desc`, `content_path`, `is_news`, `input_date`, `last_update`, `content_ownpage`) VALUES
(8, 'Model Pengembangan Open Source', '<p><!--intro_awal-->Sumber terbuka (Inggris: open source) adalah sistem pengembangan yang tidak dikoordinasi oleh suatu individu / lembaga pusat, tetapi oleh para pelaku yang bekerja sama dengan memanfaatkan kode sumber (source-code) yang tersebar dan tersedia bebas (biasanya menggunakan fasilitas komunikasi internet). Pola pengembangan ini mengambil model ala bazaar, sehingga pola Open Source ini memiliki ciri bagi komunitasnya yaitu adanya dorongan yang bersumber dari budaya memberi.<!--intro_akhir--><br /><br />Pola Open Source lahir karena kebebasan berkarya, tanpa intervensi berpikir dan mengungkapkan apa yang diinginkan dengan menggunakan pengetahuan dan produk yang cocok. Kebebasan menjadi pertimbangan utama ketika dilepas ke publik. Komunitas yang lain mendapat kebebasan untuk belajar, mengutak-ngatik, merevisi ulang, membenarkan ataupun bahkan menyalahkan, tetapi kebebasan ini juga datang bersama dengan tanggung jawab, bukan bebas tanpa tanggung jawab.<br /><br />Pada intinya konsep sumber terbuka adalah membuka \"kode sumber\" dari sebuah perangkat lunak. Konsep ini terasa aneh pada awalnya dikarenakan kode sumber merupakan kunci dari sebuah perangkat lunak. Dengan diketahui logika yang ada di kode sumber, maka orang lain semestinya dapat membuat perangkat lunak yang sama fungsinya. Sumber terbuka hanya sebatas itu. Artinya, dia tidak harus gratis. Definisi sumber terbuka yang asli adalah seperti tertuang dalam OSD (Open Source Definition)/Definisi sumber terbuka.</p>\r\n<p>Pengembangan Senayan awalnya diinisiasi oleh pengelola Perpustakaan Depdiknas. Tetapi sekarang komunitas pengembang Senayan (Senayan Developer Community) yang lebih banyak mengambil peran dalam mengembangkan Senayan. Beberapa hal dibawah ini merupakan kultur yang dibangun dalam mengembangkan Senayan:<br />1.&nbsp;&nbsp;&nbsp; Meritokrasi. Siapa saja bisa berkontribusi. Mereka yang banyak memberikan kontribusi, akan mendapatkan privilege lebih dibandingkan yang lain.<br />2.&nbsp;&nbsp;&nbsp; Minimal punya concern terhadap pengembangan perpustakaan. Contoh lain: berlatar belakang pendidikan ilmu perpustakaan dan informasi, bekerja di perpustakaan, mengelola perpustakaan, dan lain-lain. Diharapkan dengan kondisi ini, sense of librarianship melekat di tiap developer/pengguna Senayan. Sejauh ini, semua developer senayan merupakan pustakawan atau berlatarbelakang pendidikan kepustakawanan (Information and Librarianship).<br />3.&nbsp;&nbsp;&nbsp; Release early, release often, and listen to your customer. Release early artinya setiap perbaikan dan penambahan fitur, secepat mungkin dirilis ke publik. Diharapkan bugs yang ada, bisa cepat ditemukan oleh komunitas, dilaporkan ke developer, untuk kemudian dirilis perbaikannya. Release often, artinya sesering mungkin memberikan update perbaikan bugs dan penambahan fitur. Ini &ldquo;memaksa&rdquo; developer Senayan untuk terus kreatif menambahkan fitur Senayan. Release often juga membuat pengguna berkeyakinan bahwa Senayan punya sustainability yang baik dan terus aktif dikembangkan. Selain itu, release often juga mempunyai dampak pemasaran. Pengguna dan calon pengguna, selalu diingatkan tentang keberadaan Senayan. Tentunya dengan cara yang elegan, yaitu rilis-rilis Senayan. Sejak dirilis ke publi pertama kali November 2007 sampai Juli 2009 (kurang lebih 20 bulan) telah dirilis 18 rilis resmi Senayan. Listen to your customer. Developer Senayan selalu berusaha mengakomodasi kebutuhan pengguna baik yang masuk melalui report di mailing list, ataupun melalui bugs tracking system. Tentu tidak semua masukan diakomodasi, harus disesuaikan dengan desain dan roadmap pengembangan Senayan.<br />4.&nbsp;&nbsp;&nbsp; Dokumentasi. Developer Senayan meyakini pentingnya dokumentasi yang baik dalam mensukseskan implementasi Senayan dibanyak tempat. Karena itu pengembang Senayan mempunyai tim khusus yang bertanggungjawab yang mengembangkan dokumentasi Senayan agar terus uo-to-date mengikuti rilis terbaru.<br />5.&nbsp;&nbsp;&nbsp; Agar ada percepatan dalam pengembangan dan untuk mengakrabkan antar pengembang Senayan, minimal setahun sekali diadakan Senayan Developers Day yang mengumpulkan para developer Senayan dari berbagai kota, dan melakukan coding bersama-sama.</p>', 'opensource', NULL, '2010-08-29 04:05:16', '2010-08-29 04:34:04', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ebook_log`
--

CREATE TABLE `ebook_log` (
  `log_id` int(11) NOT NULL,
  `member_id` int(50) NOT NULL,
  `biblio_id` int(50) NOT NULL,
  `log_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='Log';

--
-- Dumping data for table `ebook_log`
--

INSERT INTO `ebook_log` (`log_id`, `member_id`, `biblio_id`, `log_date`) VALUES
(88, 1122, 11, '2020-03-05 04:30:15'),
(89, 1122, 11, '2020-03-05 04:31:32'),
(90, 1122, 11, '2020-03-05 04:32:28'),
(91, 1122, 0, '2020-03-05 04:35:29'),
(92, 0, 0, '2020-03-05 04:36:15'),
(93, 0, 0, '2020-08-15 08:20:21'),
(94, 14045, 11, '2020-08-23 22:53:57'),
(95, 14045, 7, '2020-08-23 22:54:31'),
(96, 14045, 11, '2020-08-23 23:03:42'),
(97, 14045, 11, '2020-08-23 23:08:22'),
(98, 14045, 11, '2020-08-23 23:12:05'),
(99, 14045, 11, '2020-08-24 03:28:45'),
(100, 14045, 16, '2020-08-24 05:06:27'),
(101, 14045, 16, '2020-08-25 01:37:31'),
(102, 14045, 16, '2020-08-25 01:42:16'),
(103, 14045, 16, '2020-08-25 01:44:09'),
(104, 14045, 16, '2020-08-25 01:46:17'),
(105, 14045, 16, '2020-08-25 01:47:12'),
(106, 14045, 16, '2020-08-25 01:47:42'),
(107, 14045, 16, '2020-08-25 03:19:55'),
(108, 14045, 16, '2020-08-25 03:21:41'),
(109, 14045, 16, '2020-08-25 11:13:37'),
(110, 14045, 16, '2020-08-25 11:14:26'),
(111, 14045, 11, '2020-08-25 15:53:11'),
(112, 14045, 11, '2020-08-25 15:53:55'),
(113, 14045, 7, '2020-08-25 15:55:12'),
(114, 14045, 16, '2020-08-26 09:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `file_title` text COLLATE utf8_unicode_ci NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_dir` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_desc` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `uploader_id` int(11) NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `file_title`, `file_name`, `file_url`, `file_dir`, `mime_type`, `file_desc`, `uploader_id`, `input_date`, `last_update`) VALUES
(1, 'ebook', 'f88025e0f4e4e1f446f6b744c15cb956.pdf', '', '', 'application/pdf', '', 1, '2020-02-06 16:05:44', '2020-02-06 16:05:44'),
(2, 'ebook 2', '61608379f296491f7922b01d5544c20a.pdf', '', '', 'application/pdf', '', 1, '2020-02-06 16:17:35', '2020-02-06 16:17:35'),
(3, 'contoh', 'afc853d486bf6e03bfa60c6e293c24e2.pdf', '', '', 'application/pdf', '', 1, '2020-02-10 09:29:45', '2020-02-10 09:29:45'),
(4, 'contoh', 'de55caf40648ea58c817dc959c6b5a74.pdf', '', '', 'application/pdf', '', 1, '2020-02-10 09:30:10', '2020-02-10 09:30:10'),
(5, 'conto', '4cdf5c19695c9525269db505e047d241.pdf', '', '', 'application/pdf', '', 1, '2020-02-10 09:31:15', '2020-02-10 09:31:15'),
(6, 'Sapiens', '35716cd67a7b0523ee113608aee105fc.pdf', '', '', 'application/pdf', '', 1, '2020-08-24 12:02:36', '2020-08-24 12:02:36');

-- --------------------------------------------------------

--
-- Table structure for table `fines`
--

CREATE TABLE `fines` (
  `fines_id` int(11) NOT NULL,
  `fines_date` date NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `debet` int(11) DEFAULT 0,
  `credit` int(11) DEFAULT 0,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `gender_id` int(11) NOT NULL,
  `gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`gender_id`, `gender`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `group_access`
--

CREATE TABLE `group_access` (
  `group_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `r` int(1) NOT NULL DEFAULT 0,
  `w` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_access`
--

INSERT INTO `group_access` (`group_id`, `module_id`, `r`, `w`) VALUES
(1, 1, 1, 1),
(1, 2, 1, 1),
(1, 3, 1, 1),
(1, 4, 1, 1),
(1, 5, 1, 1),
(1, 6, 1, 1),
(1, 7, 1, 1),
(1, 8, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `holiday_id` int(11) NOT NULL,
  `holiday_dayname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `holiday_date` date DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`holiday_id`, `holiday_dayname`, `holiday_date`, `description`) VALUES
(1, 'Mon', '2009-06-01', 'Tes Libur'),
(2, 'Tue', '2009-06-02', 'Tes Libur'),
(3, 'Wed', '2009-06-03', 'Tes Libur'),
(4, 'Thu', '2009-06-04', 'Tes Libur'),
(5, 'Fri', '2009-06-05', 'Tes Libur'),
(6, 'Sat', '2009-06-06', 'Tes Libur');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `biblio_id` int(11) DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coll_type_id` int(3) DEFAULT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inventory_code` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `supplier_id` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_id` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `item_status_id` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` int(1) NOT NULL DEFAULT 0,
  `invoice` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_currency` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `biblio_id`, `call_number`, `coll_type_id`, `item_code`, `inventory_code`, `received_date`, `supplier_id`, `order_no`, `location_id`, `order_date`, `item_status_id`, `site`, `source`, `invoice`, `price`, `price_currency`, `invoice_date`, `input_date`, `last_update`, `uid`) VALUES
(1, 8, NULL, 1, 'B00001', 'INV/B00001', '0000-00-00', '0', '', 'SL', '0000-00-00', '0', '', 1, '', 500000, 'Rupiah', '0000-00-00', '2008-12-26 22:11:10', '2008-12-26 22:14:13', NULL),
(2, 6, NULL, 1, 'B00002', 'INV/B00002', '0000-00-00', '0', '', 'SL', '0000-00-00', '0', '', 1, '', 700000, 'Rupiah', '0000-00-00', '2008-12-26 22:11:45', '2008-12-26 22:13:45', NULL),
(3, 15, NULL, 1, 'B00003', 'INV/B00003', '0000-00-00', '0', '', 'SL', '0000-00-00', '0', '', 1, '', 300000, 'Rupiah', '0000-00-00', '2008-12-26 22:15:09', '2008-12-26 22:15:09', NULL),
(4, 14, NULL, 1, 'B00004', 'INV/B00004', '0000-00-00', '0', '', 'SL', '0000-00-00', '0', '', 1, '', 250000, 'Rupiah', '0000-00-00', '2008-12-26 22:15:49', '2008-12-26 22:15:49', NULL),
(5, 13, NULL, 1, 'B00005', 'INV/B00005', '0000-00-00', '0', '', 'SL', '0000-00-00', '0', '', 2, '', 0, NULL, '0000-00-00', '2008-12-26 22:17:04', '2008-12-26 22:17:04', NULL),
(6, 12, NULL, 1, 'B00006', 'INV/B00006', '0000-00-00', '0', '', 'SL', '0000-00-00', '0', '', 1, '', 350000, 'Rupiah', '0000-00-00', '2008-12-26 22:17:52', '2008-12-26 22:17:52', NULL),
(7, 4, NULL, 1, 'B00007', 'INV/B00007', '0000-00-00', '0', '', 'SL', '0000-00-00', '0', '', 1, '', 450000, 'Rupiah', '0000-00-00', '2008-12-26 22:18:29', '2008-12-26 22:18:29', NULL),
(8, 4, NULL, 1, 'B00008', 'INV/B00008', '0000-00-00', '0', '', 'SL', '0000-00-00', '0', '', 2, '', 0, NULL, '0000-00-00', '2008-12-26 22:18:51', '2008-12-26 22:18:51', NULL),
(9, 2, NULL, 1, 'B00009', 'INV/B00009', '0000-00-00', '0', '', 'SL', '0000-00-00', '0', '', 1, '', 630000, 'Rupiah', '0000-00-00', '2008-12-26 22:19:28', '2008-12-26 22:19:28', NULL),
(10, 2, NULL, 1, 'B00010', 'INV/B00010', '0000-00-00', '0', '', 'SL', '0000-00-00', '0', '', 1, '', 630000, 'Rupiah', '0000-00-00', '2008-12-26 22:19:57', '2008-12-26 22:19:57', NULL),
(11, 16, '001.sap/ynh', 1, '1', '001', '2020-08-24', '0', '001-SAP', 'SL', '2020-08-24', '0', '', 1, '001/INV/SAP-2020', 84000, 'Rupiah', '2020-08-24', '2020-08-24 12:05:00', '2020-08-24 12:05:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kardex`
--

CREATE TABLE `kardex` (
  `kardex_id` int(11) NOT NULL,
  `date_expected` date NOT NULL,
  `date_received` date DEFAULT NULL,
  `seq_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_date` date NOT NULL,
  `due_date` date NOT NULL,
  `renewed` int(11) NOT NULL DEFAULT 0,
  `loan_rules_id` int(11) NOT NULL DEFAULT 0,
  `actual` date DEFAULT NULL,
  `is_lent` int(11) NOT NULL DEFAULT 0,
  `is_return` int(11) NOT NULL DEFAULT 0,
  `return_date` date DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `member_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(1) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `member_type_id` int(6) DEFAULT NULL,
  `member_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_mail_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inst_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_new` int(1) DEFAULT NULL,
  `member_image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_fax` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_since_date` date DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `expire_date` date NOT NULL,
  `member_notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_pending` smallint(1) NOT NULL DEFAULT 0,
  `mpasswd` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_name`, `gender`, `birth_date`, `member_type_id`, `member_address`, `member_mail_address`, `member_email`, `postal_code`, `inst_name`, `is_new`, `member_image`, `pin`, `member_phone`, `member_fax`, `member_since_date`, `register_date`, `expire_date`, `member_notes`, `is_pending`, `mpasswd`, `last_login`, `last_login_ip`, `input_date`, `last_update`) VALUES
('1122', 'Tina', 2, '2020-02-04', 1, '', '', 'yu@gmail.com', '', '', NULL, NULL, '', '', '', '2020-02-10', '2020-02-10', '2021-02-09', '', 0, '$2y$10$cZhMBZ8aub74mTdmId33quU7EPcOXa8BDy0X7rOl//74e915txWr6', '2020-03-05 11:31:32', '::1', '2020-02-10', '2020-02-10'),
('333', 'tika', 2, '2020-02-10', 1, '', '', 'tika@gmail.com', '', '', NULL, NULL, '', '', '', '2020-02-10', '2020-02-10', '2021-02-09', '', 0, '$2y$10$huJ7f4MBRdDxIjUz73g9cuAyzkZfQ2xipQ.1KV.pSe9RGP9o64a0y', '2020-02-10 10:54:01', '::1', '2020-02-10', '2020-02-10'),
('999', 'Firza Affan Harista', 1, NULL, 1, '', '', 'firza_affan@rekayasa.co.id', '', '', NULL, NULL, '', '', '', '2020-02-13', '2020-02-13', '2021-02-12', '', 0, '$2y$10$Bzc1RiBIkT0IOgniA5CfcOhJFk7DdU/6ChdMm.hnDij71qqxAoH3.', '2020-02-13 14:43:19', '::1', '2020-02-13', '2020-02-13'),
('12345', 'Cika', 2, '2001-02-05', 1, '', '', 'cika@gmail.com', '', '', NULL, NULL, '', '', '', '2020-02-18', '2020-02-18', '2021-02-17', '', 0, '$2y$10$F9TssYG.ZtugrqKbq/PjUe1XsFrYZ5OooPyvQheuivwbcibi8yzVi', '2020-02-18 10:20:54', '::1', '2020-02-18', '2020-02-18'),
('888', 'Syifa', 2, '2020-02-05', 1, '', '', 'syifa@gmail.com', '', '', NULL, NULL, '', '', '', '2020-02-18', '2020-02-18', '2021-02-17', '', 0, '$2y$10$WwS9goT5ZEfHg9LWnB7Qxe1rTKRLVt04OO9ezHrXI2.evq7p0Ii3e', NULL, NULL, '2020-02-18', '2020-02-18'),
('444', 'hiu', 1, '2020-02-10', 1, '', '', '', '', '', NULL, NULL, '', '', '', '2020-02-28', '2020-02-28', '2021-02-27', '', 0, '$2y$10$cUo8wh1FsJf.nIGbeTQ67eKLK.v98HUZX0WjdqQnirhGjYZe71Pni', '2020-02-28 16:30:08', '::1', '2020-02-28', '2020-02-28'),
('8899', 'firza', 1, '0000-00-00', 1, '', '', '', '', '', NULL, NULL, '', '', '', '2020-08-15', '2020-08-15', '2021-08-15', '', 0, '$2y$10$yrGVJPjXHdr9qM7vvy7pIuYwRhU.ld0CWVDg1GJ4bdbINLWcnhA3O', '2020-08-15 15:02:03', '::1', '2020-08-15', '2020-08-15'),
('14045', 'Yessica Tamara', 2, '2002-11-24', 1, '', '', 'chikatamara@qmail.id', '', '', NULL, NULL, '', '', '', '2020-08-24', '2020-08-24', '2021-08-24', '', 0, '$2y$10$KdiL9M/TlE82PG7nrjG1B.Nz5OhMp6ndSWdMJlNRIcvQzwqhO7DXO', '2020-08-26 16:47:26', '223.255.230.34', '2020-08-24', '2020-08-24');

-- --------------------------------------------------------

--
-- Table structure for table `member_custom`
--

CREATE TABLE `member_custom` (
  `member_id` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='one to one relation with real member table';

-- --------------------------------------------------------

--
-- Table structure for table `mst_author`
--

CREATE TABLE `mst_author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `author_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authority_type` enum('p','o','c') COLLATE utf8_unicode_ci DEFAULT 'p',
  `auth_list` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_author`
--

INSERT INTO `mst_author` (`author_id`, `author_name`, `author_year`, `authority_type`, `auth_list`, `input_date`, `last_update`) VALUES
(1, 'Valade, Janet', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(2, 'Siever, Ellen', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(3, 'Love, Robert', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(4, 'Robbins, Arnold', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(5, 'Figgins, Stephen', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(6, 'Weber, Aaron', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(7, 'Kofler, Michael', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(8, 'Kramer, David', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(9, 'Raymond, Eric', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(10, 'Fogel, Karl', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(11, 'Douglas, Korry', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(12, 'Douglas, Susan', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(13, 'Shklar, Leon', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(14, 'Rosen, Richard', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(15, 'Woychowsky, Edmond', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(16, 'Taylor, Arlene G.', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(17, 'Stueart, Robert D.', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(18, 'Moran, Barbara B.', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(19, 'Morville, Peter', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(20, 'Rosenfeld, Louis', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(21, 'Robinson, Mark', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(22, 'Bracking, Sarah', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(23, 'Huffington, Arianna Stassinopoulos', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(24, 'Hancock, Graham', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(25, 'Yuval Noah Harari', NULL, 'p', NULL, '2020-08-24', '2020-08-24');

-- --------------------------------------------------------

--
-- Table structure for table `mst_carrier_type`
--

CREATE TABLE `mst_carrier_type` (
  `id` int(11) NOT NULL,
  `carrier_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `code2` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_carrier_type`
--

INSERT INTO `mst_carrier_type` (`id`, `carrier_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'audio cartridge', 'sg', 'g', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'audio cylinder', 'se', 'e', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'audio disc', 'sd', 'd', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'sound track reel', 'si', 'i', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'audio roll', 'sq', 'q', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'audiocassette', 'ss', 's', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'audiotape reel', 'st', 't', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'other (audio)', 'sz', 'z', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'computer card', 'ck', 'k', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'computer chip cartridge', 'cb', 'b', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'computer disc', 'cd', 'd', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'computer disc cartridge', 'ce', 'e', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'computer tape cartridge', 'ca', 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'computer tape cassette', 'cf', 'f', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'computer tape reel', 'ch', 'h', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'online resource', 'cr', 'r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'other (computer)', 'cz', 'z', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'aperture card', 'ha', 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'microfiche', 'he', 'e', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'microfiche cassette', 'hf', 'f', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'microfilm cartridge', 'hb', 'b', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'microfilm cassette', 'hc', 'c', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'microfilm reel', 'hd', 'd', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'microfilm roll', 'hj', 'j', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'microfilm slip', 'hh', 'h', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'microopaque', 'hg', 'g', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'other (microform)', 'hz', 'z', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'microscope slide', 'pp', 'p', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'other (microscope)', 'pz', 'z', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'film cartridge', 'mc', 'c', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'film cassette', 'mf', 'f', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'film reel', 'mr', 'r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'film roll', 'mo', 'o', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'filmslip', 'gd', 'd', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'filmstrip', 'gf', 'f', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'filmstrip cartridge', 'gc', 'c', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'overhead transparency', 'gt', 't', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'slide', 'gs', 's', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'other (projected image)', 'mz', 'z', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'stereograph card', 'eh', 'h', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'stereograph disc', 'es', 's', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'other (stereographic)', 'ez', 'z', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'card', 'no', 'o', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'flipchart', 'nn', 'n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'roll', 'na', 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'sheet', 'nb', 'b', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'volume', 'nc', 'c', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'object', 'nr', 'r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'other (unmediated)', 'nz', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'video cartridge', 'vc', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'videocassette', 'vf', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'videodisc', 'vd', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'videotape reel', 'vr', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'other (video)', 'vz', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'unspecified', 'zu', 'u', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mst_coll_type`
--

CREATE TABLE `mst_coll_type` (
  `coll_type_id` int(3) NOT NULL,
  `coll_type_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_coll_type`
--

INSERT INTO `mst_coll_type` (`coll_type_id`, `coll_type_name`, `input_date`, `last_update`) VALUES
(1, 'Reference', '2007-11-29', '2007-11-29'),
(2, 'Textbook', '2007-11-29', '2007-11-29'),
(3, 'Fiction', '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `mst_content_type`
--

CREATE TABLE `mst_content_type` (
  `id` int(11) NOT NULL,
  `content_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `code2` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_content_type`
--

INSERT INTO `mst_content_type` (`id`, `content_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'cartographic dataset', 'crd', 'e', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'cartographic image', 'cri', 'e', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'cartographic moving image', 'crm', 'e', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'cartographic tactile image', 'crt', 'e', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'cartographic tactile three-dimensional form', 'crn', 'e', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'cartographic three-dimensional form', 'crf', 'e', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'computer dataset', 'cod', 'm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'computer program', 'cop', 'm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'notated movement', 'ntv', 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'notated music', 'ntm', 'c', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'performed music', 'prm', 'j', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'sounds', 'snd', 'i', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'spoken word', 'spw', 'i', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'still image', 'sti', 'k', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'tactile image', 'tci', 'k', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'tactile notated music', 'tcm', 'c', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'tactile notated movement', 'tcn', 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'tactile text', 'tct', 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'tactile three-dimensional form', 'tcf', 'r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'text', 'txt', 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'three-dimensional form', 'tdf', 'r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'three-dimensional moving image', 'tdm', 'g', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'two-dimensional moving image', 'tdi', 'g', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'other', 'xxx', 'o', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'unspecified', 'zzz', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mst_frequency`
--

CREATE TABLE `mst_frequency` (
  `frequency_id` int(11) NOT NULL,
  `frequency` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `language_prefix` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_increment` smallint(6) DEFAULT NULL,
  `time_unit` enum('day','week','month','year') COLLATE utf8_unicode_ci DEFAULT 'day',
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_frequency`
--

INSERT INTO `mst_frequency` (`frequency_id`, `frequency`, `language_prefix`, `time_increment`, `time_unit`, `input_date`, `last_update`) VALUES
(1, 'Weekly', 'en', 1, 'week', '2009-05-23', '2009-05-23'),
(2, 'Bi-weekly', 'en', 2, 'week', '2009-05-23', '2009-05-23'),
(3, 'Fourth-Nightly', 'en', 14, 'day', '2009-05-23', '2009-05-23'),
(4, 'Monthly', 'en', 1, 'month', '2009-05-23', '2009-05-23'),
(5, 'Bi-Monthly', 'en', 2, 'month', '2009-05-23', '2009-05-23'),
(6, 'Quarterly', 'en', 3, 'month', '2009-05-23', '2009-05-23'),
(7, '3 Times a Year', 'en', 4, 'month', '2009-05-23', '2009-05-23'),
(8, 'Annualy', 'en', 1, 'year', '2009-05-23', '2009-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `mst_gmd`
--

CREATE TABLE `mst_gmd` (
  `gmd_id` int(11) NOT NULL,
  `gmd_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gmd_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_gmd`
--

INSERT INTO `mst_gmd` (`gmd_id`, `gmd_code`, `gmd_name`, `icon_image`, `input_date`, `last_update`) VALUES
(1, 'TE', 'Text', NULL, '2020-02-06', '2020-02-06'),
(2, 'AR', 'Art Original', NULL, '2020-02-06', '2020-02-06'),
(3, 'CH', 'Chart', NULL, '2020-02-06', '2020-02-06'),
(4, 'CO', 'Computer Software', NULL, '2020-02-06', '2020-02-06'),
(5, 'DI', 'Diorama', NULL, '2020-02-06', '2020-02-06'),
(6, 'FI', 'Filmstrip', NULL, '2020-02-06', '2020-02-06'),
(7, 'FL', 'Flash Card', NULL, '2020-02-06', '2020-02-06'),
(8, 'GA', 'Game', NULL, '2020-02-06', '2020-02-06'),
(9, 'GL', 'Globe', NULL, '2020-02-06', '2020-02-06'),
(10, 'KI', 'Kit', NULL, '2020-02-06', '2020-02-06'),
(11, 'MA', 'Map', NULL, '2020-02-06', '2020-02-06'),
(12, 'MI', 'Microform', NULL, '2020-02-06', '2020-02-06'),
(13, 'MN', 'Manuscript', NULL, '2020-02-06', '2020-02-06'),
(14, 'MO', 'Model', NULL, '2020-02-06', '2020-02-06'),
(15, 'MP', 'Motion Picture', NULL, '2020-02-06', '2020-02-06'),
(16, 'MS', 'Microscope Slide', NULL, '2020-02-06', '2020-02-06'),
(17, 'MU', 'Music', NULL, '2020-02-06', '2020-02-06'),
(18, 'PI', 'Picture', NULL, '2020-02-06', '2020-02-06'),
(19, 'RE', 'Realia', NULL, '2020-02-06', '2020-02-06'),
(20, 'SL', 'Slide', NULL, '2020-02-06', '2020-02-06'),
(21, 'SO', 'Sound Recording', NULL, '2020-02-06', '2020-02-06'),
(22, 'TD', 'Technical Drawing', NULL, '2020-02-06', '2020-02-06'),
(23, 'TR', 'Transparency', NULL, '2020-02-06', '2020-02-06'),
(24, 'VI', 'Video Recording', NULL, '2020-02-06', '2020-02-06'),
(25, 'EQ', 'Equipment', NULL, '2020-02-06', '2020-02-06'),
(26, 'CF', 'Computer File', NULL, '2020-02-06', '2020-02-06'),
(27, 'CA', 'Cartographic Material', NULL, '2020-02-06', '2020-02-06'),
(28, 'CD', 'CD-ROM', NULL, '2020-02-06', '2020-02-06'),
(29, 'MV', 'Multimedia', NULL, '2020-02-06', '2020-02-06'),
(30, 'ER', 'Electronic Resource', NULL, '2020-02-06', '2020-02-06'),
(31, 'DVD', 'Digital Versatile Disc', NULL, '2020-02-06', '2020-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `mst_item_status`
--

CREATE TABLE `mst_item_status` (
  `item_status_id` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `item_status_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `rules` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_loan` smallint(1) NOT NULL DEFAULT 0,
  `skip_stock_take` smallint(1) NOT NULL DEFAULT 0,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_item_status`
--

INSERT INTO `mst_item_status` (`item_status_id`, `item_status_name`, `rules`, `no_loan`, `skip_stock_take`, `input_date`, `last_update`) VALUES
('R', 'Repair', 'a:1:{i:0;s:1:\"1\";}', 1, 0, '2020-02-06', '2020-02-06'),
('NL', 'No Loan', 'a:1:{i:0;s:1:\"1\";}', 1, 0, '2020-02-06', '2020-02-06'),
('MIS', 'Missing', NULL, 1, 1, '2020-02-06', '2020-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `mst_label`
--

CREATE TABLE `mst_label` (
  `label_id` int(11) NOT NULL,
  `label_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `label_desc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label_image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mst_label`
--

INSERT INTO `mst_label` (`label_id`, `label_name`, `label_desc`, `label_image`, `input_date`, `last_update`) VALUES
(1, 'label-new', 'New Title', 'label-new.png', '2020-02-06', '2020-02-06'),
(2, 'label-favorite', 'Favorite Title', 'label-favorite.png', '2020-02-06', '2020-02-06'),
(3, 'label-multimedia', 'Multimedia', 'label-multimedia.png', '2020-02-06', '2020-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `mst_language`
--

CREATE TABLE `mst_language` (
  `language_id` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `language_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_language`
--

INSERT INTO `mst_language` (`language_id`, `language_name`, `input_date`, `last_update`) VALUES
('id', 'Indonesia', '2020-02-06', '2020-02-06'),
('en', 'English', '2020-02-06', '2020-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `mst_loan_rules`
--

CREATE TABLE `mst_loan_rules` (
  `loan_rules_id` int(11) NOT NULL,
  `member_type_id` int(11) NOT NULL DEFAULT 0,
  `coll_type_id` int(11) DEFAULT 0,
  `gmd_id` int(11) DEFAULT 0,
  `loan_limit` int(3) DEFAULT 0,
  `loan_periode` int(3) DEFAULT 0,
  `reborrow_limit` int(3) DEFAULT 0,
  `fine_each_day` int(3) DEFAULT 0,
  `grace_periode` int(2) DEFAULT 0,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_location`
--

CREATE TABLE `mst_location` (
  `location_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `location_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_location`
--

INSERT INTO `mst_location` (`location_id`, `location_name`, `input_date`, `last_update`) VALUES
('SL', 'My Library', '2020-02-06', '2020-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `mst_media_type`
--

CREATE TABLE `mst_media_type` (
  `id` int(11) NOT NULL,
  `media_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `code2` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_media_type`
--

INSERT INTO `mst_media_type` (`id`, `media_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'audio', 's', 's', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'computer', 'c', 'c', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'microform', 'h', 'h', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'microscopic', 'p', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'projected', 'g', 'g', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'stereographic', 'e', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'unmediated', 'n', 't', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'video', 'v', 'v', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'other', 'x', 'z', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'unspecified', 'z', 'z', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mst_member_type`
--

CREATE TABLE `mst_member_type` (
  `member_type_id` int(11) NOT NULL,
  `member_type_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `loan_limit` int(11) NOT NULL,
  `loan_periode` int(11) NOT NULL,
  `enable_reserve` int(1) NOT NULL DEFAULT 0,
  `reserve_limit` int(11) NOT NULL DEFAULT 0,
  `member_periode` int(11) NOT NULL,
  `reborrow_limit` int(11) NOT NULL,
  `fine_each_day` int(11) NOT NULL,
  `grace_periode` int(2) DEFAULT 0,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_member_type`
--

INSERT INTO `mst_member_type` (`member_type_id`, `member_type_name`, `loan_limit`, `loan_periode`, `enable_reserve`, `reserve_limit`, `member_periode`, `reborrow_limit`, `fine_each_day`, `grace_periode`, `input_date`, `last_update`) VALUES
(1, 'Standard', 2, 7, 1, 2, 365, 1, 0, 0, '2020-02-06', '2020-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `mst_module`
--

CREATE TABLE `mst_module` (
  `module_id` int(3) NOT NULL,
  `module_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `module_path` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mst_module`
--

INSERT INTO `mst_module` (`module_id`, `module_name`, `module_path`, `module_desc`) VALUES
(1, 'bibliography', 'bibliography', 'Manage your bibliographic/catalog and items/copies database'),
(2, 'circulation', 'circulation', 'Module for doing library items circulation such as loan and return'),
(3, 'membership', 'membership', 'Manage your library membership and membership type'),
(4, 'master_file', 'master_file', 'Manage your referential data that will be used by other modules'),
(5, 'stock_take', 'stock_take', 'Ease your pain in doing library stock opname process'),
(6, 'system', 'system', 'Configure system behaviour, user and backups'),
(7, 'reporting', 'reporting', 'Real time and dynamic report about library collections and circulation'),
(8, 'serial_control', 'serial_control', 'Serial publication management');

-- --------------------------------------------------------

--
-- Table structure for table `mst_place`
--

CREATE TABLE `mst_place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_place`
--

INSERT INTO `mst_place` (`place_id`, `place_name`, `input_date`, `last_update`) VALUES
(1, 'Hoboken, NJ', '2007-11-29', '2007-11-29'),
(2, 'Sebastopol, CA', '2007-11-29', '2007-11-29'),
(3, 'Indianapolis', '2007-11-29', '2007-11-29'),
(4, 'Upper Saddle River, NJ', '2007-11-29', '2007-11-29'),
(5, 'Westport, Conn.', '2007-11-29', '2007-11-29'),
(6, 'Cambridge, Mass', '2007-11-29', '2007-11-29'),
(7, 'London', '2007-11-29', '2007-11-29'),
(8, 'New York', '2007-11-29', '2007-11-29'),
(9, 'Israel', '2020-08-24', '2020-08-24');

-- --------------------------------------------------------

--
-- Table structure for table `mst_publisher`
--

CREATE TABLE `mst_publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_publisher`
--

INSERT INTO `mst_publisher` (`publisher_id`, `publisher_name`, `input_date`, `last_update`) VALUES
(1, 'Wiley', '2007-11-29', '2007-11-29'),
(2, 'OReilly', '2007-11-29', '2007-11-29'),
(3, 'Apress', '2007-11-29', '2007-11-29'),
(4, 'Sams', '2007-11-29', '2007-11-29'),
(5, 'John Wiley', '2007-11-29', '2007-11-29'),
(6, 'Prentice Hall', '2007-11-29', '2007-11-29'),
(7, 'Libraries Unlimited', '2007-11-29', '2007-11-29'),
(8, 'Taylor & Francis Inc.', '2007-11-29', '2007-11-29'),
(9, 'Palgrave Macmillan', '2007-11-29', '2007-11-29'),
(10, 'Crown publishers', '2007-11-29', '2007-11-29'),
(11, 'Atlantic Monthly Press', '2007-11-29', '2007-11-29'),
(12, 'Pustaka Alvabet', '2020-08-24', '2020-08-24');

-- --------------------------------------------------------

--
-- Table structure for table `mst_relation_term`
--

CREATE TABLE `mst_relation_term` (
  `ID` int(11) NOT NULL,
  `rt_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `rt_desc` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_relation_term`
--

INSERT INTO `mst_relation_term` (`ID`, `rt_id`, `rt_desc`) VALUES
(1, 'U', 'Use'),
(2, 'UF', 'Use For'),
(3, 'BT', 'Broader Term'),
(4, 'NT', 'Narrower Term'),
(5, 'RT', 'Related Term'),
(6, 'SA', 'See Also');

-- --------------------------------------------------------

--
-- Table structure for table `mst_servers`
--

CREATE TABLE `mst_servers` (
  `server_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uri` text COLLATE utf8_unicode_ci NOT NULL,
  `server_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 - p2p server; 2 - z3950; 3 - z3950  SRU',
  `input_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_supplier`
--

CREATE TABLE `mst_supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `e_mail` char(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_topic`
--

CREATE TABLE `mst_topic` (
  `topic_id` int(11) NOT NULL,
  `topic` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `topic_type` enum('t','g','n','tm','gr','oc') COLLATE utf8_unicode_ci NOT NULL,
  `auth_list` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Classification Code',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_topic`
--

INSERT INTO `mst_topic` (`topic_id`, `topic`, `topic_type`, `auth_list`, `classification`, `input_date`, `last_update`) VALUES
(1, 'Programming', 't', NULL, '', '2007-11-29', '2007-11-29'),
(2, 'Website', 't', NULL, '', '2007-11-29', '2007-11-29'),
(3, 'Operating System', 't', NULL, '', '2007-11-29', '2007-11-29'),
(4, 'Linux', 't', NULL, '', '2007-11-29', '2007-11-29'),
(5, 'Computer', 't', NULL, '', '2007-11-29', '2007-11-29'),
(6, 'Database', 't', NULL, '', '2007-11-29', '2007-11-29'),
(7, 'RDBMS', 't', NULL, '', '2007-11-29', '2007-11-29'),
(8, 'Open Source', 't', NULL, '', '2007-11-29', '2007-11-29'),
(9, 'Project', 't', NULL, '', '2007-11-29', '2007-11-29'),
(10, 'Design', 't', NULL, '', '2007-11-29', '2007-11-29'),
(11, 'Information', 't', NULL, '', '2007-11-29', '2007-11-29'),
(12, 'Organization', 't', NULL, '', '2007-11-29', '2007-11-29'),
(13, 'Metadata', 't', NULL, '', '2007-11-29', '2007-11-29'),
(14, 'Library', 't', NULL, '', '2007-11-29', '2007-11-29'),
(15, 'Corruption', 't', NULL, '', '2007-11-29', '2007-11-29'),
(16, 'Development', 't', NULL, '', '2007-11-29', '2007-11-29'),
(17, 'Poverty', 't', NULL, '', '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `mst_voc_ctrl`
--

CREATE TABLE `mst_voc_ctrl` (
  `vocabolary_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `rt_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `related_topic_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `scope` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `reserve_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `reserve_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `search_biblio`
--

CREATE TABLE `search_biblio` (
  `biblio_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edition` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn_issn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `topic` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `gmd` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_place` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spec_detail_info` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `carrier_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `media_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `location` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `series_title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `items` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `collection_types` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opac_hide` smallint(1) NOT NULL DEFAULT 0,
  `promoted` smallint(1) NOT NULL DEFAULT 0,
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `collation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='index table for advance searching technique for SLiMS';

--
-- Dumping data for table `search_biblio`
--

INSERT INTO `search_biblio` (`biblio_id`, `title`, `edition`, `isbn_issn`, `author`, `topic`, `gmd`, `publisher`, `publish_place`, `language`, `classification`, `spec_detail_info`, `carrier_type`, `content_type`, `media_type`, `location`, `publish_year`, `notes`, `series_title`, `items`, `collection_types`, `call_number`, `opac_hide`, `promoted`, `labels`, `collation`, `image`, `input_date`, `last_update`) VALUES
(6, 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '1st ed.', '0735712573', 'Douglas, Korry - Douglas, Susan', 'Programming - RDBMS', 'Text', 'Sams', 'Indianapolis', 'English', '005.75/85 22', '', '', '', '', 'My Library', '2003', 'PostgreSQL is the world\'s most advanced open-source database. PostgreSQL is the most comprehensive, in-depth, and easy-to-read guide to this award-winning database. This book starts with a thorough overview of SQL, a description of all PostgreSQL data types, and a complete explanation of PostgreSQL commands.', 'DeveloperÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢s library', 'B00002', 'Reference', '005.75/85-22 Kor p', 0, 0, NULL, 'xvii, 790 p. : ill. ; 23cm.', 'postgresql.jpg', '2007-11-29 16:29:33', '2020-02-06 16:06:03'),
(7, 'Web application architecture : principles, protocols, and practices', '', '0471486566', 'Shklar, Leon - Rosen, Richard', 'Website - Design', 'Text', 'John Wiley', 'Hoboken, NJ', 'English', '005.7/2 21', '', '', '', '', NULL, '2003', 'An in-depth examination of the core concepts and general principles of Web application development.\r\nThis book uses examples from specific technologies (e.g., servlet API or XSL), without promoting or endorsing particular platforms or APIs. Such knowledge is critical when designing and debugging complex systems. This conceptual understanding makes it easier to learn new APIs that arise in the rapidly changing Internet environment.', NULL, NULL, NULL, '005.7/2-21 Leo w', 0, 0, NULL, 'xi, 357 p. : ill. ; 23 cm.', 'webapp_arch.jpg', '2007-11-29 16:41:57', '2020-02-10 08:47:59'),
(11, 'Information Architecture for the World Wide Web: Designing Large-Scale Web Sites', '2nd ed.', '9780596000356', 'Morville, Peter - Rosenfeld, Louis', NULL, 'Text', 'OReilly', 'Cambridge, Mass', 'English', '006.7 22', '', '', '', '', NULL, '2002', 'Information Architecture for the World Wide Web is about applying the principles of architecture and library science to web site design. Each website is like a public building, available for tourists and regulars alike to breeze through at their leisure. The job of the architect is to set up the framework for the site to make it comfortable and inviting for people to visit, relax in, and perhaps even return to someday.', NULL, NULL, NULL, '006.7-22 Mor i', 0, 0, NULL, '500p.', 'information_arch.jpg', '2007-11-29 17:26:14', '2020-02-12 09:38:54'),
(16, 'Sapiens: Sejarah Ringkas Umat Manusia dari Zaman Batu hingga Perkiraan Kepunahannya', '1st ed.', '6026577173, 97860265', 'Yuval Noah Harari', NULL, 'Text', 'Pustaka Alvabet', 'Israel', 'Indonesia', 'NONE', 'Sapiens : Riwayat Singkat Umat Manusia edisi bahasa indonesia', '', '', '', 'My Library', '2017', 'Planet Bumi telah berusia 4,5 miliar tahun.Namun, hanya dalam waktu singkat, satu spesiesdi antara banyak spesies lain telah menaklukkannya. Seratus ribu tahun silam, setidaknya ada enam spesies manusia yang menghuni Bumi. Dan hari ini, hanya tinggal satu spesies—Homo sapiens. Itulah KITA! Apa yang terjadi dengan spesies lain? Dan apa yang mungkin terjadi kelak pada kita?', 'Homo Deus', '1', 'Reference', '', 0, 0, NULL, '', '1547126343696-696x1065.jpg.jpg', '2020-08-24 12:01:01', '2020-08-25 22:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `serial`
--

CREATE TABLE `serial` (
  `serial_id` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `period` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `biblio_id` int(11) DEFAULT NULL,
  `gmd_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(3) NOT NULL,
  `setting_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_name`, `setting_value`) VALUES
(1, 'library_name', 's:7:\"Senayan\";'),
(2, 'library_subname', 's:37:\"Open Source Library Management System\";'),
(3, 'template', 'a:2:{s:5:\"theme\";s:7:\"default\";s:3:\"css\";s:26:\"template/default/style.css\";}'),
(4, 'admin_template', 'a:2:{s:5:\"theme\";s:7:\"default\";s:3:\"css\";s:32:\"admin_template/default/style.css\";}'),
(5, 'default_lang', 's:5:\"en_US\";'),
(6, 'opac_result_num', 's:2:\"10\";'),
(7, 'enable_promote_titles', 'N;'),
(8, 'quick_return', 'b:1;'),
(9, 'allow_loan_date_change', 'b:0;'),
(10, 'loan_limit_override', 'b:0;'),
(11, 'enable_xml_detail', 'b:1;'),
(12, 'enable_xml_result', 'b:1;'),
(13, 'allow_file_download', 'b:1;'),
(14, 'session_timeout', 's:4:\"7200\";'),
(15, 'circulation_receipt', 'b:0;'),
(16, 'barcode_encoding', 's:7:\"code128\";'),
(17, 'ignore_holidays_fine_calc', 'b:0;'),
(18, 'barcode_print_settings', 'a:12:{s:19:\"barcode_page_margin\";d:0.200000000000000011102230246251565404236316680908203125;s:21:\"barcode_items_per_row\";i:3;s:20:\"barcode_items_margin\";d:0.1000000000000000055511151231257827021181583404541015625;s:17:\"barcode_box_width\";i:7;s:18:\"barcode_box_height\";i:5;s:27:\"barcode_include_header_text\";i:1;s:17:\"barcode_cut_title\";i:50;s:19:\"barcode_header_text\";s:0:\"\";s:13:\"barcode_fonts\";s:41:\"Arial, Verdana, Helvetica, \'Trebuchet MS\'\";s:17:\"barcode_font_size\";i:11;s:13:\"barcode_scale\";i:70;s:19:\"barcode_border_size\";i:1;}'),
(19, 'label_print_settings', 'a:10:{s:11:\"page_margin\";d:0.200000000000000011102230246251565404236316680908203125;s:13:\"items_per_row\";i:3;s:12:\"items_margin\";d:0.05000000000000000277555756156289135105907917022705078125;s:9:\"box_width\";i:8;s:10:\"box_height\";d:3.29999999999999982236431605997495353221893310546875;s:19:\"include_header_text\";i:1;s:11:\"header_text\";s:0:\"\";s:5:\"fonts\";s:41:\"Arial, Verdana, Helvetica, \'Trebuchet MS\'\";s:9:\"font_size\";i:11;s:11:\"border_size\";i:1;}'),
(20, 'membercard_print_settings', 'a:1:{s:5:\"print\";a:1:{s:10:\"membercard\";a:61:{s:11:\"card_factor\";s:12:\"37.795275591\";s:21:\"card_include_id_label\";i:1;s:23:\"card_include_name_label\";i:1;s:22:\"card_include_pin_label\";i:1;s:23:\"card_include_inst_label\";i:0;s:24:\"card_include_email_label\";i:0;s:26:\"card_include_address_label\";i:1;s:26:\"card_include_barcode_label\";i:1;s:26:\"card_include_expired_label\";i:1;s:14:\"card_box_width\";d:8.5999999999999996447286321199499070644378662109375;s:15:\"card_box_height\";d:5.4000000000000003552713678800500929355621337890625;s:9:\"card_logo\";s:8:\"logo.png\";s:21:\"card_front_logo_width\";s:0:\"\";s:22:\"card_front_logo_height\";s:0:\"\";s:20:\"card_front_logo_left\";s:0:\"\";s:19:\"card_front_logo_top\";s:0:\"\";s:20:\"card_back_logo_width\";s:0:\"\";s:21:\"card_back_logo_height\";s:0:\"\";s:19:\"card_back_logo_left\";s:0:\"\";s:18:\"card_back_logo_top\";s:0:\"\";s:15:\"card_photo_left\";s:0:\"\";s:14:\"card_photo_top\";s:0:\"\";s:16:\"card_photo_width\";d:1.5;s:17:\"card_photo_height\";d:1.8000000000000000444089209850062616169452667236328125;s:23:\"card_front_header1_text\";s:19:\"Library Member Card\";s:28:\"card_front_header1_font_size\";s:2:\"12\";s:23:\"card_front_header2_text\";s:10:\"My Library\";s:28:\"card_front_header2_font_size\";s:2:\"12\";s:22:\"card_back_header1_text\";s:10:\"My Library\";s:27:\"card_back_header1_font_size\";s:2:\"12\";s:22:\"card_back_header2_text\";s:35:\"My Library Full Address and Website\";s:27:\"card_back_header2_font_size\";s:1:\"5\";s:17:\"card_header_color\";s:7:\"#0066FF\";s:18:\"card_bio_font_size\";s:2:\"11\";s:20:\"card_bio_font_weight\";s:4:\"bold\";s:20:\"card_bio_label_width\";s:3:\"100\";s:9:\"card_city\";s:9:\"City Name\";s:10:\"card_title\";s:15:\"Library Manager\";s:14:\"card_officials\";s:14:\"Librarian Name\";s:17:\"card_officials_id\";s:12:\"Librarian ID\";s:15:\"card_stamp_file\";s:9:\"stamp.png\";s:19:\"card_signature_file\";s:13:\"signature.png\";s:15:\"card_stamp_left\";s:0:\"\";s:14:\"card_stamp_top\";s:0:\"\";s:16:\"card_stamp_width\";s:0:\"\";s:17:\"card_stamp_height\";s:0:\"\";s:13:\"card_exp_left\";s:0:\"\";s:12:\"card_exp_top\";s:0:\"\";s:14:\"card_exp_width\";s:0:\"\";s:15:\"card_exp_height\";s:0:\"\";s:18:\"card_barcode_scale\";i:100;s:17:\"card_barcode_left\";s:0:\"\";s:16:\"card_barcode_top\";s:0:\"\";s:18:\"card_barcode_width\";s:0:\"\";s:19:\"card_barcode_height\";s:0:\"\";s:10:\"card_rules\";s:120:\"<ul><li>This card is published by Library.</li><li>Please return this card to its owner if you found it.</li></ul>\";s:20:\"card_rules_font_size\";s:1:\"8\";s:12:\"card_address\";s:76:\"My Library<br />website: http://slims.web.id, email : librarian@slims.web.id\";s:22:\"card_address_font_size\";s:1:\"7\";s:17:\"card_address_left\";s:0:\"\";s:16:\"card_address_top\";s:0:\"\";}}}'),
(21, 'enable_visitor_limitation', 's:1:\"0\";'),
(22, 'time_visitor_limitation', 's:2:\"60\";');

-- --------------------------------------------------------

--
-- Table structure for table `stock_take`
--

CREATE TABLE `stock_take` (
  `stock_take_id` int(11) NOT NULL,
  `stock_take_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `init_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `total_item_stock_taked` int(11) DEFAULT NULL,
  `total_item_lost` int(11) DEFAULT NULL,
  `total_item_exists` int(11) DEFAULT 0,
  `total_item_loan` int(11) DEFAULT NULL,
  `stock_take_users` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 0,
  `report_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_take_item`
--

CREATE TABLE `stock_take_item` (
  `stock_take_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gmd_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coll_type_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('e','m','u','l') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'm',
  `checked_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_log`
--

CREATE TABLE `system_log` (
  `log_id` int(11) NOT NULL,
  `log_type` enum('staff','member','system') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'staff',
  `id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `log_msg` text COLLATE utf8_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_log`
--

INSERT INTO `system_log` (`log_id`, `log_type`, `id`, `log_location`, `log_msg`, `log_date`) VALUES
(1, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2020-02-10 09:32:44'),
(2, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-02-10 09:34:10'),
(3, 'staff', '1', 'membership', 'Admin add new member (jon) with ID (1122)', '2020-02-10 09:35:03'),
(4, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2020-02-10 09:35:16'),
(5, 'member', '1122', 'Login', 'Login success for member 1122 from address ::1', '2020-02-10 09:35:31'),
(6, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-02-10 09:54:16'),
(7, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2020-02-10 09:54:22'),
(8, 'staff', '1122', 'Login', 'Login FAILED for user 1122 from address ::1', '2020-02-10 09:54:35'),
(9, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-02-10 09:54:42'),
(10, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2020-02-10 10:08:54'),
(11, 'member', '1122', 'Login', 'Login success for member 1122 from address ::1', '2020-02-10 10:30:06'),
(12, 'member', '', 'Login', 'Log Out from address ::1', '2020-02-10 10:46:48'),
(13, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-02-10 10:47:02'),
(14, 'staff', '1', 'membership', 'Admin add new member (tika) with ID (333)', '2020-02-10 10:47:38'),
(15, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2020-02-10 10:47:44'),
(16, 'member', '333', 'Login', 'Login success for member 333 from address ::1', '2020-02-10 10:48:09'),
(17, 'member', '', 'Login', 'Log Out from address ::1', '2020-02-10 10:48:20'),
(18, 'member', '333', 'Login', 'Login success for member 333 from address ::1', '2020-02-10 10:54:01'),
(19, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-02-11 08:47:07'),
(20, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2020-02-11 08:48:11'),
(21, 'member', '1122', 'Login', 'Login success for member 1122 from address ::1', '2020-02-11 08:48:32'),
(22, 'member', '', 'Login', 'Log Out from address ::1', '2020-02-11 16:31:52'),
(23, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-02-11 16:32:13'),
(24, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-02-12 08:48:07'),
(25, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2020-02-12 09:24:15'),
(26, 'staff', 'admin', 'Login', 'Login FAILED for user admin from address ::1', '2020-02-12 09:30:41'),
(27, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-02-12 09:30:49'),
(28, 'staff', '1', 'bibliography', 'Admin updating file attachment data', '2020-02-12 09:38:45'),
(29, 'staff', '1', 'bibliography', 'Admin update bibliographic data (Information Architecture for the World Wide Web: Designing Large-Scale Web Sites) with biblio_id (11)', '2020-02-12 09:38:54'),
(30, 'member', '1122', 'Login', 'Login success for member 1122 from address ::1', '2020-02-12 09:39:26'),
(31, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-02-13 08:08:17'),
(32, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2020-02-13 13:55:48'),
(33, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-02-13 13:55:52'),
(34, 'staff', '1', 'membership', 'Admin add new member (Firza Affan Harista) with ID (999)', '2020-02-13 14:42:57'),
(35, 'member', '999', 'Login', 'Login success for member 999 from address ::1', '2020-02-13 14:43:19'),
(36, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-02-14 09:38:58'),
(37, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-02-15 23:29:39'),
(38, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-02-18 08:35:28'),
(39, 'staff', '1', 'membership', 'Admin add new member (Cika) with ID (12345)', '2020-02-18 08:53:11'),
(40, 'staff', '1', 'membership', 'Admin add new member (Syifa) with ID (888)', '2020-02-18 08:55:01'),
(41, 'member', '12345', 'Login', 'Login success for member 12345 from address ::1', '2020-02-18 10:13:46'),
(42, 'member', '', 'Login', 'Log Out from address ::1', '2020-02-18 10:15:23'),
(43, 'member', '1122', 'Login', 'Login FAILED for member 1122 from address ::1', '2020-02-18 10:15:33'),
(44, 'member', '1122', 'Login', 'Login success for member 1122 from address ::1', '2020-02-18 10:15:39'),
(45, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2020-02-18 10:16:14'),
(46, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-02-18 10:17:31'),
(47, 'member', '999', 'Login', 'Login FAILED for member 999 from address ::1', '2020-02-18 10:17:52'),
(48, 'member', '1122', 'Login', 'Login success for member 1122 from address ::1', '2020-02-18 10:18:01'),
(49, 'member', '', 'Login', 'Log Out from address ::1', '2020-02-18 10:20:28'),
(50, 'member', '12345', 'Login', 'Login success for member 12345 from address ::1', '2020-02-18 10:20:54'),
(51, 'member', '1122', 'Login', 'Login success for member 1122 from address ::1', '2020-02-20 13:53:35'),
(52, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-02-20 13:56:05'),
(53, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-02-24 13:59:03'),
(54, 'member', '1122', 'Login', 'Login success for member 1122 from address ::1', '2020-02-25 09:42:29'),
(55, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-02-25 09:50:59'),
(56, 'member', '1122', 'Login', 'Login success for member 1122 from address ::1', '2020-02-25 09:54:49'),
(57, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-02-27 11:11:52'),
(58, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-02-27 16:12:42'),
(59, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-02-28 14:41:01'),
(60, 'member', '1122', 'Login', 'Login success for member 1122 from address ::1', '2020-02-28 14:42:39'),
(61, 'staff', '1', 'membership', 'Admin add new member (hiu) with ID (444)', '2020-02-28 16:29:52'),
(62, 'member', '', 'Login', 'Log Out from address ::1', '2020-02-28 16:29:59'),
(63, 'member', '444', 'Login', 'Login success for member 444 from address ::1', '2020-02-28 16:30:08'),
(64, 'member', '', 'Login', 'Log Out from address ::1', '2020-02-28 16:34:50'),
(65, 'member', '', 'Login', 'Log Out from address ::1', '2020-02-28 16:34:50'),
(66, 'member', '1122', 'Login', 'Login success for member 1122 from address ::1', '2020-02-28 16:44:51'),
(67, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-03-02 08:05:56'),
(68, 'member', '1122', 'Login', 'Login success for member 1122 from address ::1', '2020-03-04 10:59:28'),
(69, 'member', '1122', 'Login', 'Login success for member 1122 from address ::1', '2020-03-05 11:30:15'),
(70, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-03-05 11:30:28'),
(71, 'member', '1122', 'Login', 'Login success for member 1122 from address ::1', '2020-03-05 11:31:32'),
(72, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2020-03-05 15:57:41'),
(73, 'staff', 'affanharista', 'Login', 'Login FAILED for user affanharista from address ::1', '2020-08-15 14:50:53'),
(74, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-08-15 14:50:59'),
(75, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2020-08-15 14:57:12'),
(76, 'member', '1122', 'Login', 'Login FAILED for member 1122 from address ::1', '2020-08-15 14:57:29'),
(77, 'member', 'affanharista', 'Login', 'Login FAILED for member affanharista from address ::1', '2020-08-15 14:57:48'),
(78, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-08-15 15:00:35'),
(79, 'staff', '1', 'membership', 'Admin add new member (firza) with ID (8899)', '2020-08-15 15:01:17'),
(80, 'member', 'affanharista', 'Login', 'Login FAILED for member affanharista from address ::1', '2020-08-15 15:01:25'),
(81, 'member', '8899', 'Login', 'Login FAILED for member 8899 from address ::1', '2020-08-15 15:01:33'),
(82, 'staff', '1', 'membership', 'Admin update member data (firza) with ID (8899)', '2020-08-15 15:01:58'),
(83, 'member', '8899', 'Login', 'Login success for member 8899 from address ::1', '2020-08-15 15:02:03'),
(84, 'member', '14045', 'Login', 'Login FAILED for member 14045 from address 116.206.13.173', '2020-08-24 05:51:30'),
(85, 'member', '14045', 'Login', 'Login FAILED for member 14045 from address 116.206.13.173', '2020-08-24 05:51:44'),
(86, 'member', '14045', 'Login', 'Login FAILED for member 14045 from address 116.206.13.173', '2020-08-24 05:52:07'),
(87, 'staff', 'admin', 'Login', 'Login success for user admin from address 116.206.13.173', '2020-08-24 05:52:16'),
(88, 'staff', '1', 'membership', 'Admin add new member (Yessica Tamara) with ID (14045)', '2020-08-24 05:53:10'),
(89, 'member', '14045', 'Login', 'Login FAILED for member 14045 from address 116.206.13.173', '2020-08-24 05:53:54'),
(90, 'member', '14045', 'Login', 'Login success for member 14045 from address 116.206.13.173', '2020-08-24 05:53:57'),
(91, 'member', '14045', 'Login', 'Login success for member 14045 from address 223.255.229.9', '2020-08-24 06:03:41'),
(92, 'member', '14045', 'Login', 'Login success for member 14045 from address 223.255.229.9', '2020-08-24 06:12:05'),
(93, 'member', '14045', 'Login', 'Login success for member 14045 from address 182.253.235.222', '2020-08-24 10:28:45'),
(94, 'staff', 'admin', 'Login', 'Login FAILED for user admin from address 116.206.13.92', '2020-08-24 11:54:55'),
(95, 'staff', 'admin', 'Login', 'Login success for user admin from address 116.206.13.92', '2020-08-24 11:55:01'),
(96, 'staff', '1', 'bibliography', 'Admin upload image file 1547126343696-696x1065.jpg.jpg', '2020-08-24 12:01:01'),
(97, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (Sapiens: Sejarah Ringkas Umat Manusia dari Zaman Batu hingga Perkiraan Kepunahannya) with biblio_id (16)', '2020-08-24 12:01:01'),
(98, 'staff', '1', 'bibliography', 'Admin upload file (35716cd67a7b0523ee113608aee105fc.pdf)', '2020-08-24 12:02:36'),
(99, 'staff', '1', 'bibliography', 'Admin updating file attachment data', '2020-08-24 12:02:36'),
(100, 'staff', '1', 'bibliography', 'Admin insert item data (1) with title (Sapiens: Sejarah Ringkas Umat Manusia dari Zaman Batu hingga Perkiraan Kepunahannya)', '2020-08-24 12:05:00'),
(101, 'staff', '1', 'bibliography', 'Admin update bibliographic data (Sapiens: Sejarah Ringkas Umat Manusia dari Zaman Batu hingga Perkiraan Kepunahannya) with biblio_id (16)', '2020-08-24 12:05:12'),
(102, 'staff', '1', 'bibliography', 'Admin updating file attachment data', '2020-08-24 12:06:13'),
(103, 'member', '14045', 'Login', 'Login success for member 14045 from address 116.206.13.92', '2020-08-24 12:06:27'),
(104, 'staff', '1', 'system', 'Admin Log Out from application from address 116.206.13.92', '2020-08-24 12:21:17'),
(105, 'staff', 'admin', 'Login', 'Login success for user admin from address 116.206.13.92', '2020-08-24 12:52:07'),
(106, 'member', 'chikatamara@qmail.id', 'Login', 'Login FAILED for member chikatamara@qmail.id from address 223.255.230.229', '2020-08-25 08:37:23'),
(107, 'member', '14045', 'Login', 'Login success for member 14045 from address 223.255.230.229', '2020-08-25 08:37:31'),
(108, 'staff', 'admin', 'Login', 'Login FAILED for user admin from address 223.255.230.229', '2020-08-25 08:48:11'),
(109, 'staff', 'admin', 'Login', 'Login success for user admin from address 223.255.230.229', '2020-08-25 08:48:17'),
(110, 'member', '14045', 'Login', 'Login success for member 14045 from address 223.255.229.14', '2020-08-25 10:19:53'),
(111, 'member', '14045', 'Login', 'Login success for member 14045 from address 223.255.229.14', '2020-08-25 10:21:40'),
(112, 'staff', 'admin', 'Login', 'Login FAILED for user admin from address 139.192.203.141', '2020-08-25 17:40:14'),
(113, 'staff', 'admin', 'Login', 'Login success for user admin from address 139.192.203.141', '2020-08-25 17:40:19'),
(114, 'staff', '1', 'system', 'Admin Log Out from application from address 139.192.203.141', '2020-08-25 18:10:15'),
(115, 'staff', 'Admin', 'Login', 'Login success for user Admin from address 139.192.203.141', '2020-08-25 18:12:04'),
(116, 'staff', '1', 'system', 'Admin Log Out from application from address 139.192.203.141', '2020-08-25 18:12:41'),
(117, 'member', '14045', 'Login', 'Login success for member 14045 from address 139.192.203.141', '2020-08-25 18:13:37'),
(118, 'member', '', 'Login', 'Log Out from address 139.192.203.141', '2020-08-25 18:14:36'),
(119, 'staff', 'admin', 'Login', 'Login success for user admin from address 223.255.230.29', '2020-08-25 20:28:30'),
(120, 'staff', '1', 'system', 'Admin Log Out from application from address 223.255.230.29', '2020-08-25 20:28:54'),
(121, 'staff', 'admin', 'Login', 'Login success for user admin from address 223.255.230.29', '2020-08-25 20:31:13'),
(122, 'staff', '1', 'system', 'Admin Log Out from application from address 223.255.230.29', '2020-08-25 20:32:15'),
(123, 'staff', 'admin', 'Login', 'Login success for user admin from address 223.255.230.32', '2020-08-25 22:22:25'),
(124, 'staff', '1', 'bibliography', 'Admin update bibliographic data (Sapiens: Sejarah Ringkas Umat Manusia dari Zaman Batu hingga Perkiraan Kepunahannya) with biblio_id (16)', '2020-08-25 22:48:39'),
(125, 'staff', '1', 'system', 'Admin Log Out from application from address 223.255.230.32', '2020-08-25 22:48:47'),
(126, 'member', '14045', 'Login', 'Login success for member 14045 from address 223.255.230.32', '2020-08-25 22:53:11'),
(127, 'staff', 'Admin', 'Login', 'Login success for user Admin from address 223.255.230.32', '2020-08-25 22:55:48'),
(128, 'member', '14045', 'Login', 'Login success for member 14045 from address 223.255.230.34', '2020-08-26 16:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `realname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passwd` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` smallint(2) DEFAULT NULL,
  `user_image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_media` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groups` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `realname`, `passwd`, `email`, `user_type`, `user_image`, `social_media`, `last_login`, `last_login_ip`, `groups`, `input_date`, `last_update`) VALUES
(1, 'admin', 'Admin', '$2y$10$aBLwQqDlyzaTfIjBBYIOK.t1K8dbx4P1LMN4AbEdVrJDiA2Bn/VwC', NULL, NULL, NULL, NULL, '2020-08-25 22:55:48', '223.255.230.32', 'a:1:{i:0;s:1:\"1\";}', '2020-02-06', '2020-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`group_id`, `group_name`, `input_date`, `last_update`) VALUES
(1, 'Administrator', '2020-02-06', '2020-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_count`
--

CREATE TABLE `visitor_count` (
  `visitor_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institution` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checkin_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backup_log`
--
ALTER TABLE `backup_log`
  ADD PRIMARY KEY (`backup_log_id`);

--
-- Indexes for table `biblio`
--
ALTER TABLE `biblio`
  ADD PRIMARY KEY (`biblio_id`),
  ADD KEY `references_idx` (`gmd_id`,`publisher_id`,`language_id`,`publish_place_id`),
  ADD KEY `classification` (`classification`),
  ADD KEY `biblio_flag_idx` (`opac_hide`,`promoted`),
  ADD KEY `rda_idx` (`content_type_id`,`media_type_id`,`carrier_type_id`),
  ADD KEY `uid` (`uid`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `title_ft_idx` (`title`,`series_title`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `notes_ft_idx` (`notes`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `labels` (`labels`);

--
-- Indexes for table `biblio_attachment`
--
ALTER TABLE `biblio_attachment`
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `biblio_id_2` (`biblio_id`,`file_id`);

--
-- Indexes for table `biblio_author`
--
ALTER TABLE `biblio_author`
  ADD PRIMARY KEY (`biblio_id`,`author_id`);

--
-- Indexes for table `biblio_custom`
--
ALTER TABLE `biblio_custom`
  ADD PRIMARY KEY (`biblio_id`);

--
-- Indexes for table `biblio_log`
--
ALTER TABLE `biblio_log`
  ADD PRIMARY KEY (`biblio_log_id`),
  ADD KEY `realname` (`realname`),
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `action` (`action`),
  ADD KEY `affectedrow` (`affectedrow`),
  ADD KEY `date` (`date`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `title` (`title`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `rawdata` (`rawdata`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `additional_information` (`additional_information`);

--
-- Indexes for table `biblio_relation`
--
ALTER TABLE `biblio_relation`
  ADD PRIMARY KEY (`biblio_id`,`rel_biblio_id`);

--
-- Indexes for table `biblio_topic`
--
ALTER TABLE `biblio_topic`
  ADD PRIMARY KEY (`biblio_id`,`topic_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`),
  ADD UNIQUE KEY `content_path` (`content_path`);
ALTER TABLE `content` ADD FULLTEXT KEY `content_title` (`content_title`);
ALTER TABLE `content` ADD FULLTEXT KEY `content_desc` (`content_desc`);

--
-- Indexes for table `ebook_log`
--
ALTER TABLE `ebook_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);
ALTER TABLE `files` ADD FULLTEXT KEY `file_name` (`file_name`);
ALTER TABLE `files` ADD FULLTEXT KEY `file_dir` (`file_dir`);

--
-- Indexes for table `fines`
--
ALTER TABLE `fines`
  ADD PRIMARY KEY (`fines_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Indexes for table `group_access`
--
ALTER TABLE `group_access`
  ADD PRIMARY KEY (`group_id`,`module_id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`holiday_id`),
  ADD UNIQUE KEY `holiday_dayname` (`holiday_dayname`,`holiday_date`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD KEY `uid` (`uid`),
  ADD KEY `item_references_idx` (`coll_type_id`,`location_id`,`item_status_id`),
  ADD KEY `biblio_id_idx` (`biblio_id`);

--
-- Indexes for table `kardex`
--
ALTER TABLE `kardex`
  ADD PRIMARY KEY (`kardex_id`),
  ADD KEY `fk_serial` (`serial_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `item_code` (`item_code`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `input_date` (`input_date`,`last_update`,`uid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `member_name` (`member_name`),
  ADD KEY `member_type_id` (`member_type_id`);

--
-- Indexes for table `member_custom`
--
ALTER TABLE `member_custom`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `mst_author`
--
ALTER TABLE `mst_author`
  ADD PRIMARY KEY (`author_id`),
  ADD UNIQUE KEY `author_name` (`author_name`,`authority_type`);

--
-- Indexes for table `mst_carrier_type`
--
ALTER TABLE `mst_carrier_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_type` (`carrier_type`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `mst_coll_type`
--
ALTER TABLE `mst_coll_type`
  ADD PRIMARY KEY (`coll_type_id`),
  ADD UNIQUE KEY `coll_type_name` (`coll_type_name`);

--
-- Indexes for table `mst_content_type`
--
ALTER TABLE `mst_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_type` (`content_type`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `mst_frequency`
--
ALTER TABLE `mst_frequency`
  ADD PRIMARY KEY (`frequency_id`);

--
-- Indexes for table `mst_gmd`
--
ALTER TABLE `mst_gmd`
  ADD PRIMARY KEY (`gmd_id`),
  ADD UNIQUE KEY `gmd_name` (`gmd_name`),
  ADD UNIQUE KEY `gmd_code` (`gmd_code`);

--
-- Indexes for table `mst_item_status`
--
ALTER TABLE `mst_item_status`
  ADD PRIMARY KEY (`item_status_id`),
  ADD UNIQUE KEY `item_status_name` (`item_status_name`);

--
-- Indexes for table `mst_label`
--
ALTER TABLE `mst_label`
  ADD PRIMARY KEY (`label_id`),
  ADD UNIQUE KEY `label_name` (`label_name`);

--
-- Indexes for table `mst_language`
--
ALTER TABLE `mst_language`
  ADD PRIMARY KEY (`language_id`),
  ADD UNIQUE KEY `language_name` (`language_name`);

--
-- Indexes for table `mst_loan_rules`
--
ALTER TABLE `mst_loan_rules`
  ADD PRIMARY KEY (`loan_rules_id`);

--
-- Indexes for table `mst_location`
--
ALTER TABLE `mst_location`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_name` (`location_name`);

--
-- Indexes for table `mst_media_type`
--
ALTER TABLE `mst_media_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_type` (`media_type`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `mst_member_type`
--
ALTER TABLE `mst_member_type`
  ADD PRIMARY KEY (`member_type_id`),
  ADD UNIQUE KEY `member_type_name` (`member_type_name`);

--
-- Indexes for table `mst_module`
--
ALTER TABLE `mst_module`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `module_name` (`module_name`,`module_path`);

--
-- Indexes for table `mst_place`
--
ALTER TABLE `mst_place`
  ADD PRIMARY KEY (`place_id`),
  ADD UNIQUE KEY `place_name` (`place_name`);

--
-- Indexes for table `mst_publisher`
--
ALTER TABLE `mst_publisher`
  ADD PRIMARY KEY (`publisher_id`),
  ADD UNIQUE KEY `publisher_name` (`publisher_name`);

--
-- Indexes for table `mst_relation_term`
--
ALTER TABLE `mst_relation_term`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mst_servers`
--
ALTER TABLE `mst_servers`
  ADD PRIMARY KEY (`server_id`);

--
-- Indexes for table `mst_supplier`
--
ALTER TABLE `mst_supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `supplier_name` (`supplier_name`);

--
-- Indexes for table `mst_topic`
--
ALTER TABLE `mst_topic`
  ADD PRIMARY KEY (`topic_id`),
  ADD UNIQUE KEY `topic` (`topic`,`topic_type`);

--
-- Indexes for table `mst_voc_ctrl`
--
ALTER TABLE `mst_voc_ctrl`
  ADD PRIMARY KEY (`vocabolary_id`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`reserve_id`),
  ADD KEY `references_idx` (`member_id`,`biblio_id`),
  ADD KEY `item_code_idx` (`item_code`);

--
-- Indexes for table `search_biblio`
--
ALTER TABLE `search_biblio`
  ADD UNIQUE KEY `biblio_id` (`biblio_id`),
  ADD KEY `add_indexes` (`gmd`,`publisher`,`publish_place`,`language`,`classification`,`publish_year`,`call_number`),
  ADD KEY `add_indexes2` (`opac_hide`,`promoted`),
  ADD KEY `rda_indexes` (`carrier_type`,`media_type`,`content_type`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `title` (`title`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `author` (`author`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `topic` (`topic`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `location` (`location`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `items` (`items`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `collection_types` (`collection_types`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `labels` (`labels`);

--
-- Indexes for table `serial`
--
ALTER TABLE `serial`
  ADD PRIMARY KEY (`serial_id`),
  ADD KEY `fk_serial_biblio` (`biblio_id`),
  ADD KEY `fk_serial_gmd` (`gmd_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`),
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `stock_take`
--
ALTER TABLE `stock_take`
  ADD PRIMARY KEY (`stock_take_id`);

--
-- Indexes for table `stock_take_item`
--
ALTER TABLE `stock_take_item`
  ADD PRIMARY KEY (`stock_take_id`,`item_id`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD KEY `status` (`status`),
  ADD KEY `item_properties_idx` (`gmd_name`,`classification`,`coll_type_name`,`location`);

--
-- Indexes for table `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `realname` (`realname`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `group_name` (`group_name`);

--
-- Indexes for table `visitor_count`
--
ALTER TABLE `visitor_count`
  ADD PRIMARY KEY (`visitor_id`),
  ADD KEY `member_id` (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backup_log`
--
ALTER TABLE `backup_log`
  MODIFY `backup_log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `biblio`
--
ALTER TABLE `biblio`
  MODIFY `biblio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `biblio_log`
--
ALTER TABLE `biblio_log`
  MODIFY `biblio_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ebook_log`
--
ALTER TABLE `ebook_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fines`
--
ALTER TABLE `fines`
  MODIFY `fines_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `gender_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kardex`
--
ALTER TABLE `kardex`
  MODIFY `kardex_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_author`
--
ALTER TABLE `mst_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `mst_carrier_type`
--
ALTER TABLE `mst_carrier_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `mst_coll_type`
--
ALTER TABLE `mst_coll_type`
  MODIFY `coll_type_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mst_content_type`
--
ALTER TABLE `mst_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `mst_frequency`
--
ALTER TABLE `mst_frequency`
  MODIFY `frequency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mst_gmd`
--
ALTER TABLE `mst_gmd`
  MODIFY `gmd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `mst_label`
--
ALTER TABLE `mst_label`
  MODIFY `label_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mst_loan_rules`
--
ALTER TABLE `mst_loan_rules`
  MODIFY `loan_rules_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_media_type`
--
ALTER TABLE `mst_media_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mst_member_type`
--
ALTER TABLE `mst_member_type`
  MODIFY `member_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_module`
--
ALTER TABLE `mst_module`
  MODIFY `module_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mst_place`
--
ALTER TABLE `mst_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mst_publisher`
--
ALTER TABLE `mst_publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mst_relation_term`
--
ALTER TABLE `mst_relation_term`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mst_servers`
--
ALTER TABLE `mst_servers`
  MODIFY `server_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_supplier`
--
ALTER TABLE `mst_supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_topic`
--
ALTER TABLE `mst_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `mst_voc_ctrl`
--
ALTER TABLE `mst_voc_ctrl`
  MODIFY `vocabolary_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `reserve_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serial`
--
ALTER TABLE `serial`
  MODIFY `serial_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `stock_take`
--
ALTER TABLE `stock_take`
  MODIFY `stock_take_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_log`
--
ALTER TABLE `system_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitor_count`
--
ALTER TABLE `visitor_count`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
