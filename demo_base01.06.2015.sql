-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июн 01 2015 г., 13:08
-- Версия сервера: 5.6.24
-- Версия PHP: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `vpn`
--

-- --------------------------------------------------------

--
-- Структура таблицы `access_level`
--

CREATE TABLE IF NOT EXISTS `access_level` (
  `id` int(11) NOT NULL,
  `programmist_id` int(11) DEFAULT NULL,
  `id_view_control` int(11) DEFAULT NULL,
  `add` enum('0','1') DEFAULT NULL,
  `edit` enum('0','1') DEFAULT NULL,
  `delete` enum('0','1') DEFAULT NULL,
  `date_add` varchar(20) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `date_change` varchar(20) DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=5461 COMMENT='InnoDB free: 11264 kB';

--
-- Дамп данных таблицы `access_level`
--

INSERT INTO `access_level` (`id`, `programmist_id`, `id_view_control`, `add`, `edit`, `delete`, `date_add`, `add_by`, `date_change`, `changed_by`) VALUES
(1, 1, 1, '1', '1', '1', '1384959269', 1, '1399434392', 1),
(2, 2, 2, '0', '1', '1', '1384959269', 1, '1396355797', 1),
(3, 3, 1, '1', '1', '1', '1384959269', 1, '1399363939', 1),
(4, 4, 2, '0', '0', '0', '1384959269', 1, '1390800788', 1),
(5, 5, 2, '0', '0', '0', '1384959269', 1, '1391428733', 1),
(6, 6, 2, '0', '0', '0', '1384959269', 1, '1390800750', 1),
(7, 7, 2, '0', '0', '0', '1384959269', 1, '1386653622', 1),
(8, 8, 1, '1', '1', '1', '1386653831', 1, '1399363955', 1),
(9, 9, 2, '0', '0', '0', '1386662585', 1, '1386653622', 1),
(10, 10, 1, '1', '1', '1', '1386663988', 1, '1399363935', 1),
(11, 11, 2, '0', '0', '0', '1386667005', 1, '1386653622', 1),
(12, 12, 2, '0', '0', '0', '1386759688', 1, '1386653622', 1),
(13, 13, 2, '0', '0', '0', '1386761713', 1, '1390717358', 1),
(14, 14, 2, '0', '0', '0', '1386823031', 1, '1390215189', 1),
(15, 15, 2, '0', '0', '0', '1390194962', 1, '1390801046', 1),
(16, 16, 2, '0', '0', '0', '1390195218', 1, '1390195324', 1),
(17, 17, 2, '0', '0', '0', '1390197775', 1, '1386653622', 1),
(18, 18, 2, '0', '0', '0', '1390565032', 1, '1390803188', 1),
(19, 19, 1, '1', '1', '1', '1390801173', 1, '1390891942', 1),
(20, 20, 1, '1', '1', '1', '1390801289', 1, '1391593211', 1),
(21, 21, 2, '0', '0', '0', '1390802873', 1, '1390886315', 1),
(22, 22, 1, '1', '1', '1', '1391414777', 1, '1399363930', 1),
(23, 23, 2, '0', '0', '0', '1391420016', 1, NULL, NULL),
(24, 24, 2, '0', '0', '0', '1392102022', 1, '1394768122', 1),
(25, 25, 1, '0', '1', '1', '1399363503', 1, '1404904301', 1),
(26, 26, 3, '0', '0', '0', '1400751985', 1, '1404906069', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `access_list`
--

CREATE TABLE IF NOT EXISTS `access_list` (
  `id` int(11) NOT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `group` int(11) DEFAULT NULL COMMENT 'from spr_ip_group',
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1092 COMMENT='InnoDB free: 5120 kB';

--
-- Дамп данных таблицы `access_list`
--

INSERT INTO `access_list` (`id`, `ip`, `description`, `group`, `status`) VALUES
(1, '193.33.122.18', 'blizko.net', 2, 1),
(2, '193.33.122.19', 'blizko.net', 2, 1),
(3, '193.33.122.20', 'blizko.net', 2, 1),
(4, '193.33.122.24', 'blizko.net', 2, 1),
(5, '193.33.122.54', 'blizko.net', 2, 1),
(6, '207.67.74.160', 'moneygram.com', 2, 1),
(7, '91.194.34.32', 'moneygram.com', 2, 1),
(8, '91.194.34.60', 'moneygram.com', 2, 1),
(9, '193.28.44.0/24', 'connect.raiffeisen.ru', 2, 1),
(10, '195.238.72.0/23', 'connect.raiffeisen.ru', 2, 1),
(11, '91.199.223.136', 'contact-sys.com', 2, 1),
(12, '84.16.139.68', 'interexpress.ru', 2, 1),
(13, '84.16.139.69', 'interexpress.ru', 2, 1),
(14, '81.13.58.142', 'interexpress.ru', 2, 1),
(15, '195.239.54.170', 'PrivateMoney', 2, 1),
(16, '217.117.65.28', 'PrivateMoney', 2, 1),
(17, '194.105.56.3', 'pro.perevod-korona.com', 2, 1),
(18, '193.232.37.20', 'pro.perevod-korona.com', 2, 1),
(19, '194.85.126.13', 'pro.perevod-korona.com', 2, 1),
(20, '109.120.131.114', 'pro.perevod-korona.com', 2, 1),
(21, '194.85.126.41', 'pro.perevod-korona.com', 2, 1),
(22, '194.85.126.90', 'pro.perevod-korona.com', 2, 1),
(23, '109.68.190.15', 'leadermt.ru', 2, 1),
(24, '87.249.30.73', 'leadermt.ru', 2, 1),
(25, '80.255.29.228', 'leadermt.ru', 2, 1),
(26, '87.249.30.89', 'leadermt.ru', 2, 1),
(27, '80.255.29.236', 'leadermt.ru', 2, 1),
(28, '195.208.48.90', 'leadermt.ru', 2, 1),
(29, '194.165.11.80', 'migom.com', 2, 1),
(30, '194.165.10.14', 'migom.com', 2, 1),
(31, '212.119.210.234', 'migom.com', 2, 1),
(32, '212.57.108.116', 'BTF-Soyuz', 2, 1),
(33, '109.74.68.47', 'soniya.tj', 2, 1),
(34, '62.76.190.87', 'unistream.ru', 2, 1),
(35, '206.201.228.190', 'westernunion.ru', 2, 1),
(36, '206.201.227.225', 'westernunion.ru', 2, 1),
(37, '206.201.228.242', 'westernunion.ru', 2, 1),
(38, '206.201.227.250', 'westernunion.ru', 2, 1),
(39, '206.201.228.250', 'westernunion.ru', 2, 1),
(40, '206.201.227.242', 'westernunion.ru', 2, 1),
(41, '206.201.227.186', 'westernunion.ru', 2, 1),
(42, '206.201.228.186', 'westernunion.ru', 2, 1),
(43, '83.137.219.5', 'anelik.ru', 2, 1),
(44, '195.2.80.62', 'anelik.ru', 2, 1),
(45, '213.5.80.121', 'begom.info', 2, 1),
(46, '213.5.80.3', 'begom.info', 2, 1),
(47, '213.131.38.110', 'Intelexpress.ru', 2, 1),
(48, '92.51.78.181', 'Intelexpress.ru', 2, 1),
(49, '10.10.2.0/24', 'Local_Url', 3, 1),
(50, '10.2.2.9', 'portal.eskhata.tj', 3, 1),
(51, '176.9.17.140', 'news.tj', 4, 1),
(52, '79.170.189.212', 'nbt.tj', 4, 1),
(53, '89.111.176.101', 'eskhata.com', 4, 1),
(54, '188.127.226.216', 'bankir.ru', 4, 1),
(55, '81.19.85.89', 'lenta.ru', 4, 1),
(56, '81.19.85.92', 'lenta.ru', 4, 1),
(57, '193.111.11.3', 'minfin.tj', 4, 1),
(58, '78.110.50.129', 'stat.tj', 4, 1),
(59, '216.220.38.23', 'xe.com', 4, 1),
(60, '216.220.38.24', 'xe.com', 4, 1),
(61, '216.220.38.25', 'xe.com', 4, 1),
(62, '37.98.152.5', 'cibt.tj', 4, 1),
(63, '216.220.38.20', 'xe.com', 4, 1),
(64, '217.8.34.8', 'Srv-Terminal', 4, 1),
(65, '217.11.179.33', 'Srv-Terminal', 4, 1),
(66, '98.158.104.44', 'ammyy.com', 4, 1),
(67, '88.198.6.56', 'ammyy.com', 4, 1),
(68, '109.74.68.45', 'mail.eskhata.tj', 4, 1),
(69, '10.2.2.0/24', 'Citrix_subnet', 1, 1),
(70, '95.142.80.10', 'Antivirus', 4, 1),
(71, '109.74.68.45', 'mail.eskhata.tj', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `connections`
--

CREATE TABLE IF NOT EXISTS `connections` (
  `id` int(11) NOT NULL,
  `id_podrazdelenie` int(11) DEFAULT NULL COMMENT 'id from table spr_fililas',
  `id_connection_type` int(11) DEFAULT NULL COMMENT 'id from table connection_type',
  `ipconfig_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `connections`
--

INSERT INTO `connections` (`id`, `id_podrazdelenie`, `id_connection_type`, `ipconfig_id`) VALUES
(1, 1, 4, 1),
(2, 1, 4, 2),
(3, 1, 4, 3),
(4, 1, 1, 4),
(5, 2, 1, 5),
(7, 3, 1, 7),
(8, 4, 1, 8),
(9, 5, 3, 9),
(10, 6, 3, 10),
(11, 7, 3, 11),
(12, 8, 3, 12),
(13, 9, 3, 13),
(14, 10, 3, 14),
(15, 11, 3, 15),
(16, 12, 3, 16),
(17, 13, 3, 17),
(18, 14, 3, 18),
(19, 15, 3, 19),
(21, 16, 1, 21),
(22, 17, 3, 22),
(23, 18, 3, 23),
(24, 19, 3, 24),
(25, 20, 3, 25),
(26, 21, 3, 26),
(27, 22, 3, 27),
(28, 23, 3, 28),
(29, 24, 3, 29),
(30, 25, 3, 30),
(31, 26, 3, 31),
(32, 27, 3, 32),
(33, 28, 3, 33),
(34, 29, 1, 34),
(35, 29, 2, 35),
(36, 30, 1, 36),
(38, 31, 1, 38),
(39, 32, 1, 39),
(40, 33, 1, 40),
(41, 34, 1, 41),
(42, 35, 1, 42),
(43, 36, 1, 43),
(44, 37, 1, 44),
(45, 38, 1, 45),
(46, 39, 1, 46),
(47, 41, 3, 47),
(48, 42, 3, 48),
(49, 43, 1, 49),
(51, 45, 3, 51),
(52, 46, 3, 52),
(53, 48, 3, 53),
(54, 49, 3, 54),
(55, 50, 3, 55),
(56, 51, 3, 56),
(57, 52, 3, 57),
(58, 53, 3, 58),
(59, 54, 3, 59),
(60, 55, 3, 60),
(61, 56, 3, 61),
(62, 57, 3, 62),
(63, 58, 3, 63);

-- --------------------------------------------------------

--
-- Структура таблицы `devices`
--

CREATE TABLE IF NOT EXISTS `devices` (
  `id` int(11) NOT NULL,
  `device_name` varchar(70) DEFAULT NULL,
  `id_podrazdelenie` int(11) DEFAULT NULL,
  `type_device` int(11) DEFAULT NULL COMMENT 'id from spr_device',
  `model` int(11) DEFAULT NULL,
  `serial_number` varchar(50) DEFAULT NULL,
  `type_os` int(11) DEFAULT NULL COMMENT 'id from spr_os_system',
  `version` varchar(20) DEFAULT NULL,
  `cert_name` varchar(70) DEFAULT NULL,
  `operator` int(11) DEFAULT NULL COMMENT 'id from spr_operator',
  `sim_number` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `date_add` varchar(20) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `date_change` varchar(20) DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `login` text,
  `password` text,
  `data_obtaining` varchar(20) DEFAULT NULL COMMENT 'Дата приобретения',
  `date_exploitation` varchar(20) DEFAULT NULL COMMENT 'Дата эксплуатация',
  `purveyor` int(11) DEFAULT NULL COMMENT 'Поставщик',
  `term_guarantee` varchar(20) DEFAULT NULL COMMENT 'Гарантийный срок',
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=518 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='InnoDB free: 5120 kB';

--
-- Дамп данных таблицы `devices`
--

INSERT INTO `devices` (`id`, `device_name`, `id_podrazdelenie`, `type_device`, `model`, `serial_number`, `type_os`, `version`, `cert_name`, `operator`, `sim_number`, `description`, `date_add`, `add_by`, `date_change`, `changed_by`, `login`, `password`, `data_obtaining`, `date_exploitation`, `purveyor`, `term_guarantee`, `status`) VALUES
(1, 'cbo_golovnoy_sharq6', 2, 1, 1, '4AC70277ADA0', 5, '6.7', 'cbo_golovnoy_sharq6', 1, '', '', '1394485991', 1, '1430800785', 1, 'Null', '', '', '1400589102', 1, '1460127821', NULL),
(2, 'cbo_golovnoy_lenina56', 3, 1, 1, '4AC7023A7D96', 5, '6.7', 'cbo_golovnoy_lenina56', 0, '', '', '1394486095', 1, '1399455512', 1, NULL, '', '1394485991', '', 1, '1460127821', NULL),
(3, 'cbo_golovnoy_lenina201', 4, 1, 2, '4AC702D8D530', 5, '6.7', 'cbo_golovnoy_lenina201', 0, '', '', '1394486145', 1, NULL, NULL, NULL, '', '1394485991', '1400589102', 1, '1460127821', NULL),
(4, 'cbo_golovnoy_19mkr', 5, 1, 2, '4AC702D0C751', 5, '6.7', 'cbo_golovnoy_19mkr', 0, '', '', '1394486194', 1, '1400589102', 1, NULL, '', '1394485991', '1400589102', 1, '1460127821', NULL),
(5, 'cbo_golovnoy_taboshar_mikr1', 6, 1, 1, '4AC7026B5A68', 5, '6.7', 'cbo_golovnoy_taboshar_mikr1', 0, '', '', '1394486246', 1, NULL, NULL, NULL, '', '1394485991', '1400589102', 1, '1460127821', NULL),
(6, 'cbo_golovnoy_31mkr', 302, 1, 1, '4AC7022AA79A', 5, '6.7', 'cbo_golovnoy_31mkr', 0, '', '', '1394486286', 1, NULL, NULL, NULL, '', '1394485991', '1400589102', 1, '1460127821', NULL),
(7, 'pdp_golovnoy_34mkr_abreshim', 9, 1, 2, '4AC702BADBED', 5, '6.7', 'pdp_golovnoy_34mkr_abreshim', 0, '', '', '1394486349', 1, NULL, NULL, NULL, '', '1394485991', '1400589102', 1, '1460127821', NULL),
(8, 'pdp_golovnoy_lenina72', 10, 1, 2, '4AC70221B82D', 5, '6.7', 'pdp_golovnoy_lenina72', 0, '', '', '1394486391', 1, NULL, NULL, NULL, '', '1394485991', '1400589102', 1, '1460127821', NULL),
(9, 'pdp_golovnoy_lenina10', 11, 1, 1, '4AC704F7ADD3', 5, '6.7', 'pdp_golovnoy_lenina10', 0, '', '', '1394486435', 1, NULL, NULL, NULL, '', '1394485991', '1400589102', 1, '1460127821', NULL),
(10, 'pdp_golovnoy_samgar_lenina83', 12, 1, 2, '4AC702022629', 5, '6.7', 'pdp_golovnoy_samgar_lenina83', 0, '', '', '1394486479', 1, NULL, NULL, NULL, '', '1394485991', '1400589102', 1, '1460127821', NULL),
(11, 'pdp_golovnoy_samgar_hamzaaliev', 13, 1, 1, '4AC7028DF009', 5, '6.7', 'pdp_golovnoy_samgar_hamzaaliev35', 0, '', '', '1394486522', 1, NULL, NULL, NULL, '', '1394485991', '1400589102', 1, '1460127821', NULL),
(12, 'pdp_golovnoy_adrasmon_gorkiy9', 14, 1, 1, '4AC7047FE162', 5, '6.7', 'pdp_golovnoy_adrasmon_gorkiy9', 0, '', '', '1394486582', 1, NULL, NULL, NULL, '', '1394485991', '1400589102', 1, '1460127821', NULL),
(13, 'pdp_golovnoy_k_khujandi_4', 15, 1, 1, '4AC704743D79', 5, '6.7', 'pdp_golovnoy_k_khujandi_4', 0, '', '', '1394486638', 1, NULL, NULL, NULL, '', '1394485991', '1400589102', 1, '1460127821', NULL),
(14, 'pdp_golovnoy_31mkr_25', 16, 1, 1, NULL, 5, '6.7', 'pdp_golovnoy_31mkr_25', 0, '', '', '1394486697', 1, NULL, NULL, NULL, '', '1394485991', '1400589102', 1, '1460127821', NULL),
(15, 'pdp_golovnoy_yova_54a', 17, 1, 1, NULL, 5, '6.7', 'pdp_golovnoy_yova_54a', 0, '', '', '1394486734', 1, NULL, NULL, NULL, '', '1394485991', '1400589102', 1, '1460127821', NULL),
(16, 'pdp_golovnoy_unji_m_avezova', 18, 1, 1, NULL, 5, '6.7', 'pdp_golovnoy_unji_m_avezova', 0, '', '', '1394486799', 1, NULL, NULL, NULL, '', '1394485991', '1400589102', 1, '1460127821', NULL),
(17, 'pdp_golovnoy_lenina81', 19, 1, 2, NULL, 5, '6.7', 'pdp_golovnoy_lenina81', 0, '', '', '1394486833', 1, NULL, NULL, NULL, '', '1394485991', '1400589102', 1, '1460127821', NULL),
(18, 'pdp_golovnoy_19mkr', 20, 1, 2, NULL, 5, '6.7', 'pdp_golovnoy_19mkr', 0, '', '', '1394486882', 1, NULL, NULL, NULL, '', '1394485991', '1400589102', 1, '1460127821', NULL),
(19, 'pdp_golovnoy_gafurov_50solagii', 306, 1, 2, NULL, 5, '6.7', 'pdp_golovnoy_gafurov_50solagii_tojikiston134', 0, '', '', '1394486954', 1, NULL, NULL, NULL, '', '1400589102', '1400589102', 1, '1460127821', NULL),
(20, 'pdp_golovnoy_k_khujand_108_vat', 357, 1, 2, NULL, 5, '6.7', 'pdp_golovnoy_k_khujand_108_vatan', 0, '', '', '1394486993', 1, NULL, NULL, NULL, '', '1400589102', '1400589102', 1, '1460127821', NULL),
(21, 'Asht_shaidan', 21, 1, 2, NULL, 5, '6.7', 'Asht_shaidan', 0, '', '', '1394487075', 1, NULL, NULL, NULL, '', '1400589102', '1400589102', 1, '1460127821', NULL),
(22, 'cbo_asht_dusti', 22, 1, 2, NULL, 5, '6.7', 'cbo_asht_dusti', 0, '', '', '1394487150', 1, NULL, NULL, NULL, '', '1400589102', '1400589102', 1, '1460127821', NULL),
(23, 'cbo_asht_oshoba_marhamat', 23, 1, 2, NULL, 5, '6.7', 'cbo_asht_oshoba_marhamat', 0, '', '', '1394487208', 1, NULL, NULL, NULL, '', '1400589102', '1400589102', 1, '1460127821', NULL),
(24, 'pdp_asht_pangaz', 24, 1, 2, NULL, 5, '6.7', 'pdp_asht_pangaz', 0, '', '', '1394487269', 1, NULL, NULL, NULL, '', '1400589102', '1400589102', 1, '1460127821', NULL),
(25, 'pdp_asht_bobodarhon', 25, 1, 2, NULL, 5, '6.7', 'pdp_asht_bobodarhon', 0, '', '', '1394487303', 1, NULL, NULL, NULL, '', '1400589102', '1400589102', 1, '1460127821', NULL),
(26, 'pdp_asht_p_shaidan_ul_lenina13', 26, 1, 2, NULL, 5, '6.7', 'pdp_asht_p_shaidan_ul_lenina13_1', 0, '', '', '1394487337', 1, NULL, NULL, NULL, '', '1400589102', '1400589102', 1, '1460127821', NULL),
(27, 'pdp_asht_p_shaidan_ul_somoni27', 27, 1, 2, NULL, 5, '6.7', 'pdp_asht_p_shaidan_ul_somoni270a', 0, '', '', '1394487373', 1, NULL, NULL, NULL, '', '1400589102', '1400589102', 1, '1460127821', NULL),
(28, 'pdp_asht_shodoba_bulok', 28, 1, 2, NULL, 5, '6.7', 'pdp_asht_shodoba_bulok', 0, '', '', '1394487414', 1, NULL, NULL, NULL, '', '1400589102', '1400589102', 1, '1460127821', NULL),
(29, 'pdp_asht_oshoba_marhamat', 29, 1, 2, NULL, 5, '6.7', 'pdp_asht_oshoba_marhamat', 0, '', '', '1394487455', 1, NULL, NULL, NULL, '', '1400589102', '1400589102', 1, '1460127821', NULL),
(30, 'pdp_asht_kirkuduk_jigda', 30, 1, 2, NULL, 5, '6.7', 'pdp_asht_kirkuduk_jigda', 0, '', '', '1394487509', 1, NULL, NULL, NULL, '', '1400589102', '1400589102', 1, '', NULL),
(31, 'pdp_asht_dusti', 31, 1, 2, NULL, 5, '6.7', 'pdp_asht_dusti', 0, '', '', '1394487571', 1, NULL, NULL, NULL, '', '1400589102', '1400589102', 1, '', NULL),
(32, 'pdp_asht_jarbulok_jarbulok', 32, 1, 2, NULL, 5, '6.7', 'pdp_asht_jarbulok_jarbulok', 0, '', '', '1394487615', 1, NULL, NULL, NULL, '', '1400589102', '1400589102', 1, '', NULL),
(33, 'pdp_asht_punuk_punuk', 33, 1, 2, NULL, 5, '6.7', 'pdp_asht_punuk_punuk', 0, '', '', '1394487657', 1, NULL, NULL, NULL, '', '1400589102', '1400589102', 1, '', NULL),
(34, 'pdp_asht_asht', 34, 1, 2, NULL, 5, '6.7', 'pdp_asht_asht', 0, '', '', '1394487706', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(35, 'pdp_asht_kamishkurgon', 35, 1, 2, NULL, 5, '6.7', 'pdp_asht_kamishkurgon', 0, '', '', '1394509858', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(36, 'pdp_asht_p_shaidan_dahana', 36, 1, 2, NULL, 5, '6.7', 'pdp_asht_p_shaidan_dahana', 0, '', '', '1394509888', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(37, 'pdp_asht_shodoba_gulshan', 37, 1, 2, NULL, 5, '6.7', 'pdp_asht_shodoba_gulshan', 0, '', '', '1394509920', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(38, 'pdp_asht_pangaz_saro', 38, 1, 2, NULL, 5, '6.7', 'pdp_asht_pangaz_saro', 0, '', '', '1394509948', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(39, 'pdp_asht_kamishkurgon2', 39, 1, NULL, NULL, 5, '6.7', 'pdp_asht_kamishkurgon2', 0, '', '', '1394509978', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(40, 'pdp_asht_pomgoz_burak', 339, 1, NULL, NULL, 5, '6.7', 'pdp_asht_pomgoz_burak', 0, '', '', '1394510008', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(42, 'pdp_asht_shodoba_gulshan_somoni_22a', 340, 1, NULL, NULL, 5, '6.7', 'pdp_asht_shodoba_gulshan_somoni_22a', 0, '', '', '1394510391', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(43, 'Istaravshan', 40, 1, NULL, NULL, 5, '6.7', 'Istaravshan', 0, '', '', '1394510535', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(44, 'cbo_istaravshan_gulisurkh', 41, 1, NULL, NULL, 5, '6.7', 'cbo_istaravshan_gulisurkh', 0, '', '', '1394510618', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(45, 'cbo_istaravshan_gonchi', 42, 1, NULL, NULL, 5, '6.7', 'cbo_istaravshan_gonchi', 0, '', '', '1394510655', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(46, 'cbo_istaravshan_ul_a_umarov5', 43, 1, NULL, NULL, 5, '6.7', 'cbo_istaravshan_ul_a_umarov5', 0, '', '', '1394510702', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(47, 'cbo_istaravshan_ayni_rudaki5', 44, 1, NULL, NULL, 5, '6.7', 'cbo_istaravshan_ayni_rudaki5', 0, '', '', '1394514097', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(48, 'pdp_istaravshan_ul_lenina112', 45, 1, NULL, NULL, 5, '6.7', 'pdp_istaravshan_ul_lenina112', 0, '', '', '1394514139', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(49, 'pdp_istaravshan_ul_lenina129', 46, 1, NULL, NULL, 5, '6.7', 'pdp_istaravshan_ul_lenina129', 0, '', '', '1394514168', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(50, 'pdp_istaravshan_gulisurkh_faiz', 47, 1, NULL, NULL, 5, '6.7', 'pdp_istaravshan_gulisurkh_faiz', 0, '', '', '1394514193', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(51, 'pdp_istaravshan_ul_a_umarov5', 48, 1, NULL, NULL, 5, '6.7', 'pdp_istaravshan_ul_a_umarov5', 0, '', '', '1394514236', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(52, 'pdp_istaravshan_ganchi_ul_b_salomov11', 49, 1, NULL, NULL, 5, '6.7', 'pdp_istaravshan_ganchi_ul_b_salomov11', 0, '', '', '1394514277', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(53, 'pdp_istaravshan_ganchi_nijniy_dalyan', 50, 1, NULL, NULL, 5, '6.7', 'pdp_istaravshan_ganchi_nijniy_dalyan', 0, '', '', '1394514307', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(54, 'pdp_istaravshan_ganchi_verkhniy_dalyan', 51, 1, NULL, NULL, 5, '6.7', 'pdp_istaravshan_ganchi_verkhniy_dalyan', 0, '', '', '1394514341', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(55, 'pdp_istaravshan_ganchi_ul_somoni12_1', 52, 1, NULL, NULL, 5, '6.7', 'pdp_istaravshan_ganchi_ul_somoni12_1', 0, '', '', '1394514368', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(56, 'pdp_istaravshan_shakhristan_ul_shakhristan2', 53, 1, NULL, NULL, 5, '6.7', 'pdp_istaravshan_shakhristan_ul_shakhristan2', 0, '', '', '1394514402', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(57, 'pdp_istaravshan_ganchi_kalai_mirzoboy', 54, 1, NULL, NULL, 5, '6.7', 'pdp_istaravshan_ganchi_kalai_mirzoboy', 0, '', '', '1394514424', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(58, 'pdp_istaravshan_ganchi_a_nasriev1', 55, 1, NULL, NULL, 5, '6.7', 'pdp_istaravshan_ganchi_a_nasriev1', 0, '', '', '1394514453', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(59, 'pdp_istaravshan_ul_a_umarov12', 56, 1, NULL, NULL, 5, '6.7', 'pdp_istaravshan_ul_a_umarov12', 0, '', '', '1394514482', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(60, 'pdp_istaravshan_ganchi_dashtikon', 57, 1, NULL, NULL, 5, '6.7', 'pdp_istaravshan_ganchi_dashtikon', 0, '', '', '1394514511', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(61, 'pdp_istaravshan_bozori_markazi', 337, 1, NULL, NULL, 5, '6.7', 'pdp_istaravshan_bozori_markazi', 0, '', '', '1394514536', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(62, 'pdp_istaravshan_ul_b_kalon_br', 341, 1, NULL, NULL, 5, '6.7', 'pdp_istaravshan_ul_b_kalon_br', 0, '', '', '1394514587', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(63, 'pdp_istaravshan_ul_h_rajabov_br', 342, 1, NULL, NULL, 5, '6.7', 'pdp_istaravshan_ul_h_rajabov_br', 0, '', '', '1394514616', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(64, 'Isfara', 58, 1, NULL, NULL, 5, '6.7', 'Isfara', 0, '', '', '1394514653', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(65, 'cbo_isfara_chorkuh_tojikiston_12', 59, 1, NULL, NULL, 5, '6.7', 'cbo_isfara_chorkuh_tojikiston_12', 0, '', '', '1394514683', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(66, 'cbo_isfara_jomi_15', 60, 1, NULL, NULL, 5, '6.7', 'cbo_isfara_jomi_15', 0, '', '', '1394514709', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(67, 'pdp_isfara_vorukh_rudaki', 61, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_vorukh_rudaki', 0, '', '', '1394514745', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(68, 'pdp_isfara_ul_jomi1', 62, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_ul_jomi1', 0, '', '', '1394514785', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(69, 'pdp_isfara_neftabad_sovetskaya52a', 63, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_neftabad_sovetskaya52a', 0, '', '', '1394514816', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(70, 'pdp_isfara_vorukh_lenina82', 64, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_vorukh_lenina82', 0, '', '', '1394514852', 1, '1396325573', 1, NULL, '', '', NULL, NULL, NULL, NULL),
(71, 'pdp_isfara_chorkuh_navobod', 65, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_chorkuh_navobod', 0, '', '', '1394514910', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(72, 'pdp_isfara_ul_markazi21', 66, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_ul_markazi21', 0, '', '', '1394514942', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(73, 'pdp_isfara_ul_markazi31', 67, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_ul_markazi31', 0, '', '', '1394514965', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(74, 'pdp_isfara_ul_jomi77', 68, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_ul_jomi77', 0, '', '', '1394514995', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(75, 'pdp_isfara_chilgizi_lenina', 69, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_chilgizi_lenina', 0, '', '', '1394515034', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(76, 'pdp_isfara_kulkent_lenina', 70, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_kulkent_lenina', 0, '', '', '1394515070', 1, '1396325582', 1, NULL, '', '', NULL, NULL, NULL, NULL),
(77, 'pdp_isfara_surkh_azimova72', 71, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_surkh_azimova72', 0, '', '', '1394515099', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(78, 'pdp_isfara_ul_jomi30', 72, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_ul_jomi30', 0, '', '', '1394515133', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(79, 'pdp_isfara_navgilem_oftobruy', 73, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_navgilem_oftobruy', 0, '', '', '1394515172', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(80, 'pdp_isfara_ul_b_makhkamova', 74, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_ul_b_makhkamova', 0, '', '', '1394515223', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(81, 'pdp_isfara_ul_b_gafurova_42', 75, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_ul_b_gafurova_42', 0, '', '', '1394515261', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(82, 'pdp_isfara_ul_l_buzurgzoda_128', 76, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_ul_l_buzurgzoda_128', 0, '', '', '1394515600', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(83, 'pdp_isfara_ul_markazi_53', 77, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_ul_markazi_53', 0, '', '', '1394515640', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(84, 'pdp_isfara_chorkuh_tojikiston_12', 78, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_chorkuh_tojikiston_12', 0, '', '', '1394515667', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(85, 'pdp_isfara_ul_markazi_11', 79, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_ul_markazi_11', 0, '', '', '1394515701', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(86, 'pdp_isfara_navobod_shams', 80, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_navobod_shams', 0, '', '', '1394515730', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(87, 'pdp_isfara_50solagii_oktyabr_46a', 343, 1, NULL, NULL, 5, '6.7', 'pdp_isfara_50solagii_oktyabr_46a', 0, '', '', '1394515759', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(88, 'Panjakent', 81, 1, NULL, NULL, 5, '6.7', 'Panjakent', 0, '', '', '1394534598', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(89, 'cbo_panjikent_l_sherali_rudaki85', 82, 1, NULL, NULL, 5, '6.7', 'cbo_panjikent_l_sherali_rudaki85', 0, '', '', '1394534644', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(90, 'cbo_panjikent_rudaki_141', 83, 1, NULL, NULL, 5, '6.7', 'cbo_panjikent_rudaki_141', 0, '', '', '1394534679', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(91, 'pdp_panjikent_sarazm_chimkurgan', 84, 1, NULL, NULL, 5, '6.7', 'pdp_panjikent_sarazm_chimkurgan', 0, '', '', '1394534724', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(92, 'pdp_panjikent_rudaki175', 85, 1, NULL, NULL, 5, '6.7', 'pdp_panjikent_rudaki175', 0, '', '', '1394534757', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(93, 'pdp_panjikent_kosatarosh_sugdien', 86, 1, NULL, NULL, 5, '6.7', 'pdp_panjikent_kosatarosh_sugdien', 0, '', '', '1394534794', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(94, 'pdp_panjikent_yori_yori', 87, 1, NULL, NULL, 5, '6.7', 'pdp_panjikent_yori_yori', 0, '', '', '1394534833', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(95, 'pdp_panjikent_l_sherali_navobod', 88, 1, NULL, NULL, 5, '6.7', 'pdp_panjikent_l_sherali_navobod', 0, '', '', '1394534903', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(96, 'pdp_panjikent_rudaki_margedar', 89, 1, NULL, NULL, 5, '6.7', 'pdp_panjikent_rudaki_margedar', 0, '', '', '1394534938', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(97, 'pdp_panjikent_voru_sovetobod', 90, 1, NULL, NULL, 5, '6.7', 'pdp_panjikent_voru_sovetobod', 0, '', '', '1394534973', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(98, 'pdp_panjikent_rudaki_panjrud', 91, 1, NULL, NULL, 5, '6.7', 'pdp_panjikent_rudaki_panjrud', 0, '', '', '1394535007', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(99, 'pdp_panjikent_amondara_maykatta', 92, 1, NULL, NULL, 5, '6.7', 'pdp_panjikent_amondara_maykatta', 0, '', '', '1394535033', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(100, 'pdp_panjikent_magiyan_magiyan', 93, 1, NULL, NULL, 5, '6.7', 'pdp_panjikent_magiyan_magiyan', 0, '', '', '1394535056', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(101, 'pdp_panjikent_shing_shing', 94, 1, NULL, NULL, 5, '6.7', 'pdp_panjikent_shing_shing', 0, '', '', '1394535080', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(102, 'pdp_panjikent_khalifa_hasan_shurcha', 95, 1, NULL, NULL, 5, '6.7', 'pdp_panjikent_khalifa_hasan_shurcha', 0, '', '', '1394535105', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(103, 'pdp_panjikent_rudaki_111', 96, 1, NULL, NULL, 5, '6.7', 'pdp_panjikent_rudaki_111', 0, '', '', '1394535128', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(104, 'pdp_panjikent_rudaki_156', 338, 1, NULL, NULL, 5, '6.7', 'pdp_panjikent_rudaki_156', 0, '', '', '1394535152', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(105, 'JRasulov', 97, 1, NULL, NULL, 5, '6.7', 'JRasulov', 0, '', '', '1394535182', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(106, 'cbo_proletarsk_spitamen_lenina54a', 98, 1, NULL, NULL, 5, '6.7', 'cbo_proletarsk_spitamen_lenina54a', 0, '', '', '1394535229', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(107, 'cbo_proletarsk_gulakandoz_d_samatov', 99, 1, NULL, NULL, 5, '6.7', 'cbo_proletarsk_gulakandoz_d_samatov', 0, '', '', '1394535270', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(108, 'pdp_proletarsk_spitamen_gafurov1', 100, 1, NULL, NULL, 5, '6.7', 'pdp_proletarsk_spitamen_gafurov1', 0, '', '', '1394535305', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(109, 'pdp_proletarsk_oktepa_lenina44', 101, 1, NULL, NULL, 5, '6.7', 'pdp_proletarsk_oktepa_lenina44', 0, '', '', '1394535330', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(110, 'pdp_proletarsk_kurkat_ul_urushov48', 102, 1, NULL, NULL, 5, '6.7', 'pdp_proletarsk_kurkat_ul_urushov48', 0, '', '', '1394535359', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(111, 'pdp_proletarsk_zafarobod_ul_uratyube', 103, 1, NULL, NULL, 5, '6.7', 'pdp_proletarsk_zafarobod_ul_uratyube', 0, '', '', '1394535386', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(112, 'pdp_proletarsk_rudaki10_4', 104, 1, NULL, NULL, 5, '6.7', 'pdp_proletarsk_rudaki10_4', 0, '', '', '1394535501', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(113, 'pdp_proletarsk_gulakandoz_lenina35', 105, 1, NULL, NULL, 5, '6.7', 'pdp_proletarsk_gulakandoz_lenina35', 0, '', '', '1394535582', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(114, 'pdp_proletarsk_rudaki', 106, 1, NULL, NULL, 5, '6.7', 'pdp_proletarsk_rudaki', 0, '', '', '1394535623', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(115, 'pdp_proletarsk_gulakandoz_d_samadov', 107, 1, NULL, NULL, 5, '6.7', 'pdp_proletarsk_gulakandoz_d_samadov', 0, '', '', '1394535655', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(116, 'pdp_proletarsk_zafarobod_ul_a_rudaki', 108, 1, NULL, NULL, 5, '6.7', 'pdp_proletarsk_zafarobod_ul_a_rudaki', 0, '', '', '1394535681', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(117, 'pdp_proletarsk_spitamen_yusufi1', 109, 1, NULL, NULL, 5, '6.7', 'pdp_proletarsk_spitamen_yusufi1', 0, '', '', '1394535734', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(118, 'pdp_proletarsk_rudaki_markazi', 110, 1, NULL, NULL, 5, '6.7', 'pdp_proletarsk_rudaki_markazi', 0, '', '', '1394535774', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(119, 'pdp_proletarsk_ashrof', 111, 1, NULL, NULL, 5, '6.7', 'pdp_proletarsk_ashrof', 0, '', '', '1394535867', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(120, 'pdp_proletarsk_gulakandoz_d_samatov_arvand', 344, 1, NULL, NULL, 5, '6.7', 'pdp_proletarsk_gulakandoz_d_samatov_arvand', 0, '', '', '1394535896', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(121, 'pdp_proletarsk_lenina_11', 345, 1, NULL, NULL, 5, '6.7', 'pdp_proletarsk_lenina_11', 0, '', '', '1394535931', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(122, 'pdp_proletarsk_zafarobod_kh_aliev_hiloli', 346, 1, NULL, NULL, 5, '6.7', 'pdp_proletarsk_zafarobod_kh_aliev_hiloli', 0, '', '', '1394535971', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(123, 'pdp_proletarsk_zafarobod_mehnatobod_bogot', 347, 1, NULL, NULL, 5, '6.7', 'pdp_proletarsk_zafarobod_mehnatobod_bogot', 0, '', '', '1394536066', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(124, 'Buston', 112, 1, NULL, NULL, 5, '6.7', 'Buston', 0, '', '', '1394536107', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(125, 'cbo_buston_oburdon_vahdat', 113, 1, NULL, NULL, 5, '6.7', '', 0, '', '', '1394536136', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(126, 'pdp_buston_avzikent_j_ergashev19', 115, 1, NULL, NULL, 5, '6.7', 'pdp_buston_avzikent_j_ergashev19', 0, '', '', '1394536227', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(127, 'pdp_buston_paldorak_kalenina1', 116, 1, NULL, NULL, 5, '6.7', 'pdp_buston_paldorak_kalenina1', 0, '', '', '1394536251', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(128, 'pdp_buston_matcha_somoniyon', 117, 1, NULL, NULL, 5, '6.7', 'pdp_buston_matcha_somoniyon', 0, '', '', '1394536306', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(129, 'pdp_buston_matcha_komsomol4', 118, 1, NULL, NULL, 5, '6.7', 'pdp_buston_matcha_komsomol4', 0, '', '', '1394536331', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(130, 'pdp_buston_matcha_s_rajabov1', 119, 1, NULL, NULL, 5, '6.7', 'pdp_buston_matcha_s_rajabov1', 0, '', '', '1394536359', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(131, 'pdp_buston_i_somoni_16', 120, 1, NULL, NULL, 5, '6.', '', 0, '', '', '1394536383', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(132, 'pdp_buston_obshoron_s_sharifov11', 121, 1, NULL, NULL, 5, '6.7', 'pdp_buston_obshoron_s_sharifov11', 0, '', '', '1394536417', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(133, 'pdp_buston_sugdiyon_m_ashurov1', 309, 1, NULL, NULL, 5, '6.7', 'pdp_buston_sugdiyon_m_ashurov1', 0, '', '', '1394536454', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(134, 'pdp_buston_obburdon_yu_vafo_m_azizov60', 310, 1, NULL, NULL, 5, '6.7', 'pdp_buston_obburdon_yu_vafo_m_azizov60', 0, '', '', '1394536486', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(135, 'pdp_buston_obburdon_f_sultonov_n_khusrav', 318, 1, NULL, NULL, 5, '6.7', 'pdp_buston_obburdon_f_sultonov_n_khusrav', 0, '', '', '1394536511', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(136, 'Kanibadam', 122, 1, NULL, NULL, 5, '6.7', 'Kanibadam', 0, '', '', '1394650054', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(137, 'cbo_kanibadam_ul_manonov65', 123, 1, NULL, NULL, 5, '6.7', 'cbo_kanibadam_ul_manonov65', 0, '', '', '1394650147', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(138, 'pdp_kanibadam_kuchkak_hamrabaeva150', 124, 1, NULL, NULL, 5, '6.7', 'pdp_kanibadam_kuchkak_hamrabaeva150', 0, '', '', '1394650226', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(139, 'pdp_kanibadam_ravot_ravotskaya92', 125, 1, NULL, NULL, 5, '6.7', 'pdp_kanibadam_ravot_ravotskaya92', 0, '', '', '1394650278', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(140, 'pdp_kanibadam_shurkurgon_pakhtabad63a', 126, 1, NULL, NULL, 5, '6.7', 'pdp_kanibadam_shurkurgon_pakhtabad63a', 0, '', '', '1394650359', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(141, 'pdp_kanibadam_niyozbek_lenina46', 127, 1, NULL, NULL, 5, '6.7', 'pdp_kanibadam_niyozbek_lenina46', 0, '', '', '1394650406', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(142, 'pdp_kanibadam_mahram_mirzoalieva1', 128, 1, NULL, NULL, 5, '6.7', 'pdp_kanibadam_mahram_mirzoalieva1', 0, '', '', '1394650506', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(143, 'pdp_kanibadam_lohuti_kodirov47', 129, 1, NULL, NULL, 5, '6.7', 'pdp_kanibadam_lohuti_kodirov47', 0, '', '', '1394650579', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(144, 'pdp_kanibadam_karakchikum_orjenikidze17', 130, 1, NULL, NULL, 5, '6.7', 'pdp_kanibadam_karakchikum_orjenikidze17', 0, '', '', '1394650629', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(145, 'pdp_kanibadam_kuchkak_hamrabaeva', 131, 1, NULL, NULL, 5, '6.7', 'pdp_kanibadam_kuchkak_hamrabaeva', 0, '', '', '1394650705', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(146, 'pdp_kanibadam_hamrabaeva_hamirjuy_ul_kim', 132, 1, NULL, NULL, 5, '6.7', 'pdp_kanibadam_hamrabaeva_hamirjuy_ul_kim', 0, '', '', '1394650788', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(147, 'pdp_kanibadam_sharipov_pakhtakor_gafur_gulomov', 133, 1, NULL, NULL, 5, '6.7', 'pdp_kanibadam_sharipov_pakhtakor_gafur_gulomov', 0, '', '', '1394650841', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(148, 'pdp_kanibadam_lenina', 134, 1, NULL, NULL, 5, '6.7', 'pdp_kanibadam_lenina', 0, '', '', '1394650888', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(149, 'pdp_kanibadam_karakchikum_orjenikidze', 135, 1, NULL, NULL, 5, '6.7', 'pdp_kanibadam_karakchikum_orjenikidze', 0, '', '', '1394650930', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(150, 'pdp_kanibadam_patar_kizilnur_mukimi', 326, 1, NULL, NULL, 5, '6.7', 'pdp_kanibadam_patar_kizilnur_mukimi', 0, '', '', '1394650984', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(151, 'pdp_kanibadam_ortikov_shahidkaroyantok_1may', 327, 1, NULL, NULL, 5, '6.7', 'pdp_kanibadam_ortikov_shahidkaroyantok_1may', 0, '', '', '1394651021', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(152, 'pdp_kanibadam_sharipov_madaniyat_b_tursunov', 328, 1, NULL, NULL, 5, '6.7', 'pdp_kanibadam_sharipov_madaniyat_b_tursunov', 0, '', '', '1394651061', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(153, 'pdp_kanibadam_lenina_336', 329, 1, NULL, NULL, 5, '6.7', 'pdp_kanibadam_lenina_336', 0, '', '', '1394651101', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(154, 'pdp_kanibadam_pulodon_zarbed_zarbed', 330, 1, NULL, NULL, 5, '6.7', 'pdp_kanibadam_pulodon_zarbed_zarbed', 0, '', '', '1394651139', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(155, 'Chkalovsk', 136, 1, NULL, NULL, 5, '6.7', 'Chkalovsk', 0, '', '', '1394651208', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(156, 'cbo_chkalovsk_gafurov_lenina44', 137, 1, NULL, NULL, 5, '6.7', 'cbo_chkalovsk_gafurov_lenina44', 0, '', '', '1394651252', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(157, 'cbo_chkalovsk_gafurov_lenina3', 138, 1, NULL, NULL, 5, '6.7', 'cbo_chkalovsk_gafurov_lenina3', 0, '', '', '1394651309', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(158, 'cbo_chkalovsk_kayrakkum_mukhina1', 139, 1, NULL, NULL, 5, '6.7', 'cbo_chkalovsk_kayrakkum_mukhina1', 0, '', '', '1394651362', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(159, 'cbo_chkalovsk_gafurov_lenina_korvon', 140, 1, NULL, NULL, 5, '6.7', 'cbo_chkalovsk_gafurov_lenina_korvon', 0, '', '', '1394651402', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(160, 'pdp_chkalovsk_gafurov_gafurov125', 141, 1, NULL, NULL, 5, '6.7', 'pdp_chkalovsk_gafurov_gafurov125', 0, '', '', '1394651459', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(161, 'pdp_chkalovsk_kosmonavt1_38', 142, 1, NULL, NULL, 5, '6.7', 'pdp_chkalovsk_kosmonavt1_38', 0, '', '', '1394651506', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(162, 'pdp_chkalovsk_kayrakkum_istiklol_54', 143, 1, NULL, NULL, 5, '6.7', 'pdp_chkalovsk_kayrakkum_istiklol_54', 0, '', '', '1394651547', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(163, 'pdp_chkalovsk_isfisor_ul_a_aliev_3_1', 333, 1, NULL, NULL, 5, '6.7', 'pdp_chkalovsk_isfisor_ul_a_aliev_3_1', 0, '', '', '1394651593', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(164, 'Vahdat', 144, 1, NULL, NULL, 5, '6.7', 'Vahdat', 0, '', '', '1394651637', 1, '1396325589', 1, NULL, '', '', NULL, NULL, NULL, NULL),
(165, 'cbo_vahdat_ul_n_rozik1', 145, 1, NULL, NULL, 5, '6.7', 'cbo_vahdat_ul_n_rozik1', 0, '', '', '1394651697', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(166, 'cbo_vahdat_fayzobod_ul_somoni1', 348, 1, NULL, NULL, 5, '6.7', 'cbo_vahdat_fayzobod_ul_somoni1', 0, '', '', '1394651734', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(167, 'cbo_vahdat_ul_ulugbek1', 349, 1, NULL, NULL, 5, '6.7', 'cbo_vahdat_ul_ulugbek1', 0, '', '', '1394651783', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(168, 'pdp_vahdat_ul_firdavsi45', 146, 1, NULL, NULL, 5, '6.7', 'pdp_vahdat_ul_firdavsi45', 0, '', '', '1394651852', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(169, 'pdp_vahdat_ul_somoni1', 151, 1, NULL, NULL, 5, '6.7', 'pdp_vahdat_ul_somoni1', 0, '', '', '1394651898', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(170, 'pdp_vahdat_ul_rudaki51', 148, 1, NULL, NULL, 5, '6.7', 'pdp_vahdat_ul_rudaki51', 0, '', '', '1394651957', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(171, 'pdp_vahdat_ul_ulugbek1', 149, 1, NULL, NULL, 5, '6.7', 'pdp_vahdat_ul_ulugbek1', 0, '', '', '1394652021', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(172, 'pdp_vahdat_guliston', 150, 1, NULL, NULL, 5, '6.7', 'pdp_vahdat_guliston', 0, '', '', '1394652082', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(173, 'pdp_vahdat_rogun_sokhtmonchiyon', 152, 1, NULL, NULL, 5, '6.7', 'pdp_vahdat_rogun_sokhtmonchiyon', 0, '', '', '1394652170', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(174, 'pdp_vahdat_ul_tugdona_36', 153, 1, NULL, NULL, 5, '6.7', 'pdp_vahdat_ul_tugdona_36', 0, '', '', '1394652214', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(175, 'pdp_vahdat_guliston_jangalobod', 154, 1, NULL, NULL, 5, '6.7', 'pdp_vahdat_guliston_jangalobod', 0, '', '', '1394652278', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(176, 'pdp_vahdat_simiganj_firishti', 155, 1, NULL, NULL, 5, '6.7', 'pdp_vahdat_simiganj_firishti', 0, '', '', '1394652319', 1, '1396333263', 1, NULL, '', '', NULL, NULL, NULL, NULL),
(177, 'pdp_vahdat_k_ismoil_vahdatobod', 156, 1, NULL, NULL, 5, '6.7', 'pdp_vahdat_k_ismoil_vahdatobod', 0, '', '', '1394652369', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(178, 'pdp_vahdat_ul_firdavsi45_1', 157, 1, NULL, NULL, 5, '6.7', 'pdp_vahdat_ul_firdavsi45_1', 0, '', '', '1394652447', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(179, 'pdp_vahdat_a_abdulvosiev_andigon', 332, 1, NULL, NULL, 5, '6.7', 'pdp_vahdat_a_abdulvosiev_andigon', 0, '', '', '1394652493', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(180, 'Kurgantube', 158, 1, NULL, NULL, 5, '6.7', 'Kurgantube', 0, '', '', '1394680610', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(181, 'cbo_kurgantyube_j_rumi_k_marks23', 159, 1, NULL, NULL, 5, '6.7', 'cbo_kurgantyube_j_rumi_k_marks23', 0, '', '', '1394680661', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(182, 'cbo_kurgantyube_dusti_1may26', 160, 1, NULL, NULL, 5, '6.7', 'cbo_kurgantyube_dusti_1may26', 0, '', '', '1394680693', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(183, 'cbo_kurgantyube_vose_i_rahimov6a', 161, 1, NULL, NULL, 5, '6.7', 'cbo_kurgantyube_vose_i_rahimov6a', 0, '', '', '1394680723', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(184, 'cbo_kurgantyube_kulob_somoni', 162, 1, NULL, NULL, 5, '6.7', 'cbo_kurgantyube_kulob_somoni', 0, '', '', '1394680752', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(185, 'cbo_kurgantyube_rinok_khoji_sharif', 163, 1, NULL, NULL, 5, '6.7', 'cbo_kurgantyube_rinok_khoji_sharif', 0, '', '', '1394709016', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(186, 'cbo_kurgantyube_vakhsh_lenina48', 164, 1, NULL, NULL, 5, '6.7', 'cbo_kurgantyube_vakhsh_lenina48', 0, '', '', '1394709078', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(187, 'cbo_kurgantyube_a_jomi_krupskaya', 165, 1, NULL, NULL, 5, '6.7', 'cbo_kurgantyube_a_jomi_krupskaya', 0, '', '', '1394709113', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(188, 'cbo_kurgantyube_sharituz_i_somoni49b', 166, 1, NULL, NULL, 5, '6.7', 'cbo_kurgantyube_sharituz_i_somoni49b', 0, '', '', '1394709143', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(189, 'cbo_kurgantyube_panj_50let_pogranvoisk48', 167, 1, NULL, NULL, 5, '6.7', 'cbo_kurgantyube_panj_50let_pogranvoisk48', 0, '', '', '1394709175', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(190, 'pdp_kurgantyube_sharituz_i_somoni49b', 168, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_sharituz_i_somoni49b', 0, '', '', '1394709236', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(191, 'pdp_kurgantyube_sharituz_lenina28', 169, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_sharituz_lenina28', 0, '', '', '1394709274', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(192, 'pdp_kurgantyube_a_jomi_somoniyon_bahor', 170, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_a_jomi_somoniyon_bahor', 0, '', '', '1394709302', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(193, 'pdp_kurgantyube_hojamaston_somoniyon', 171, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_hojamaston_somoniyon', 0, '', '', '1394709330', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(194, 'pdp_kurgantyube_jilikul_lenina_avesto', 172, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_jilikul_lenina_avesto', 0, '', '', '1394709361', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(195, 'pdp_kurgantyube_hamadoni_s_kurbonov2', 173, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_hamadoni_s_kurbonov2', 0, '', '', '1394709422', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(196, 'pdp_kurgantyube_moskva_rudaki18', 174, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_moskva_rudaki18', 0, '', '', '1394709452', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(197, 'pdp_kurgantyube_farkhor_lenina22_1', 175, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_farkhor_lenina22_1', 0, '', '', '1394709480', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(198, 'pdp_kurgantyube_fayzalisaid1', 176, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_fayzalisaid1', 0, '', '', '1394709509', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(199, 'pdp_kurgantyube_j_rumi_ayni14', 177, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_j_rumi_ayni14', 0, '', '', '1394709538', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(200, 'pdp_kurgantyube_vahdat31', 178, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_vahdat31', 0, '', '', '1394709563', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(201, 'pdp_kurgantyube_panj_rudaki_52', 179, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_panj_rudaki_52', 0, '', '', '1394709591', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(202, 'pdp_kurgantyube_panj_50let_pogranvoisk48', 180, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_panj_50let_pogranvoisk48', 0, '', '', '1394709623', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(203, 'pdp_kurgantyube_khuroson_uyali', 181, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_khuroson_uyali', 0, '', '', '1394709649', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(204, 'pdp_kurgantyube_norinova38', 182, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_norinova38', 0, '', '', '1394709701', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(205, 'pdp_kurgantyube_norinova11', 183, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_norinova11', 0, '', '', '1394709728', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(206, 'pdp_kurgantyube_j_rumi_barakat', 184, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_j_rumi_barakat', 0, '', '', '1394709753', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(207, 'pdp_kurgantyube_drujba_narod5', 185, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_drujba_narod5', 0, '', '', '1394709790', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(208, 'pdp_kurgantyube_kulob_somoni24', 186, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_kulob_somoni24', 0, '', '', '1394709819', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(209, 'pdp_kurgantyube_kulob_somoni2', 187, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_kulob_somoni2', 0, '', '', '1394709849', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(210, 'pdp_kurgantyube_kulob_somoni15', 188, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_kulob_somoni15', 0, '', '', '1394709875', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(211, 'pdp_kurgantyube_mirzokadirova36', 189, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_mirzokadirova36', 0, '', '', '1394709905', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(212, 'pdp_kurgantyube_kubodiyon_lenina_khusrav', 190, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_kubodiyon_lenina_khusrav', 0, '', '', '1394709944', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(213, 'pdp_kurgantyube_kubodiyon_lenina48', 191, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_kubodiyon_lenina48', 0, '', '', '1394709971', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(214, 'pdp_kurgantyube_dangara_dagaeva26_2', 192, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_dangara_dagaeva26_2', 0, '', '', '1394710009', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(215, 'pdp_kurgantyube_vose_isoeva_komsomola28', 193, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_vose_isoeva_komsomola28', 0, '', '', '1394710048', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(216, 'pdp_kurgantyube_vakhsh_lenina49', 194, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_vakhsh_lenina49', 0, '', '', '1394710080', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(217, 'pdp_kurgantyube_vakhsh_lenina62a', 195, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_vakhsh_lenina62a', 0, '', '', '1394710108', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(218, 'pdp_kurgantyube_b_gafurova19', 196, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_b_gafurova19', 0, '', '', '1394710164', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(219, 'pdp_kurgantyube_rinok_khoji_sharif', 197, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_rinok_khoji_sharif', 0, '', '', '1394710198', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(220, 'pdp_kurgantyube_dusti_1may9', 198, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_dusti_1may9', 0, '', '', '1394710230', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(221, 'pdp_kurgantyube_vahdat_42', 199, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_vahdat_42', 0, '', '', '1394710264', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(222, 'pdp_kurgantyube_khuroson_somoni', 200, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_khuroson_somoni', 0, '', '', '1394710300', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(223, 'pdp_kurgantyube_bokhtar_sino', 201, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_bokhtar_sino', 0, '', '', '1394710345', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(224, 'pdp_kurgantyube_jilikul_nuri_vakhsh', 202, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_jilikul_nuri_vakhsh', 0, '', '', '1394710377', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(225, 'pdp_kurgantyube_dangara_markazi_1', 203, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_dangara_markazi_1', 0, '', '', '1394710406', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(226, 'pdp_kurgantyube_j_rumi_k_marks', 204, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_j_rumi_k_marks', 0, '', '', '1394710451', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(227, 'pdp_kurgantyube_sharituz_i_somoni_inom', 206, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_sharituz_i_somoni_inom', 0, '', '', '1394710544', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(228, 'pdp_kurgantyube_vakhsh_lenina48', 315, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_vakhsh_lenina48', 0, '', '', '1394710588', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(229, 'pdp_kurgantyube_loginova46', 320, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_loginova46', 0, '', '', '1394710614', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(230, 'pdp_kurgantyube_a_kahorov', 321, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_a_kahorov', 0, '', '', '1394710645', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(231, 'pdp_kurgantyube_a_jomi_somoniyon_20', 322, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_a_jomi_somoniyon_20', 0, '', '', '1394710675', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(232, 'pdp_kurgantyube_a_jomi_somoniyon_magazin5', 325, 1, NULL, NULL, 5, '6.7', 'pdp_kurgantyube_a_jomi_somoniyon_magazin5', 0, '', '', '1394710708', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(233, 'Tursunzoda', 207, 1, NULL, NULL, 5, '6.7', 'Tursunzoda', 0, '', '', '1394710741', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(234, 'cbo_tursunzoda_shahrinav_sabo_navobod', 208, 1, NULL, NULL, 5, '6.7', 'cbo_tursunzoda_shahrinav_sabo_navobod', 0, '', '', '1394710799', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(235, 'cbo_tursunzoda_b_gafurova_sakhovat', 209, 1, NULL, NULL, 5, '6.7', 'cbo_tursunzoda_b_gafurova_sakhovat', 0, '', '', '1394710829', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(236, 'cbo_tursunzoda_p_tadjieva_5', 350, 1, NULL, NULL, 5, '6.7', 'cbo_tursunzoda_p_tadjieva_5', 0, '', '', '1394710887', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(237, 'pdp_tursunzoda_shahrinav_somoni8', 211, 1, NULL, NULL, 5, '6.7', 'pdp_tursunzoda_shahrinav_somoni8', 0, '', '', '1394710918', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(238, 'pdp_tursunzoda_shahrinav_somoni94', 212, 1, NULL, NULL, 5, '6.7', 'pdp_tursunzoda_shahrinav_somoni94', 0, '', '', '1394710948', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(239, 'pdp_tursunzoda_shahrinav_vokzalnaya7', 213, 1, NULL, NULL, 5, '6.7', 'pdp_tursunzoda_shahrinav_vokzalnaya7', 0, '', '', '1394710977', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(240, 'pdp_tursunzoda_p_tadjieva1', 214, 1, NULL, NULL, 5, '6.7', 'pdp_tursunzoda_p_tadjieva1', 0, '', '', '1394711001', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(241, 'pdp_tursunzoda_i_somoni12', 215, 1, NULL, NULL, 5, '6.7', 'pdp_tursunzoda_i_somoni12', 0, '', '', '1394711029', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(242, 'pdp_tursunzoda_b_gafurova', 216, 1, NULL, NULL, 5, '6.7', 'pdp_tursunzoda_b_gafurova', 0, '', '', '1394711056', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(243, 'pdp_tursunzoda_p_tadjieva_5', 217, 1, NULL, NULL, 5, '6.7', 'pdp_tursunzoda_p_tadjieva_5', 0, '', '', '1394711082', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(244, 'pdp_tursunzoda_p_tadjieva_9', 218, 1, NULL, NULL, 5, '6.7', 'pdp_tursunzoda_p_tadjieva_9', 0, '', '', '1394711110', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(245, 'pdp_tursunzoda_lenina_73', 219, 1, NULL, NULL, 5, '6.7', 'pdp_tursunzoda_lenina_73', 0, '', '', '1394711137', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(246, 'pdp_tursunzoda_p_tadjieva_8', 220, 1, NULL, NULL, 5, '6.7', 'pdp_tursunzoda_p_tadjieva_8', 0, '', '', '1394711167', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(247, 'pdp_tursunzoda_p_tadjieva', 221, 1, NULL, NULL, 5, '6.7', 'pdp_tursunzoda_p_tadjieva', 0, '', '', '1394711200', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(248, 'pdp_tursunzoda_a_mirzoev', 222, 1, NULL, NULL, 5, '6.7', 'pdp_tursunzoda_a_mirzoev', 0, '', '', '1394711252', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(249, 'pdp_tursunzoda_shahrinav_kbk', 223, 1, NULL, NULL, 5, '6.7', 'pdp_tursunzoda_shahrinav_kbk', 0, '', '', '1394711278', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(250, 'pdp_tursunzoda_i_somoni30', 308, 1, NULL, NULL, 5, '6.7', 'pdp_tursunzoda_i_somoni30', 0, '', '', '1394711305', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(251, 'pdp_tursunzoda_shahrinav_dusti1', 331, 1, NULL, NULL, 5, '6.7', 'pdp_tursunzoda_shahrinav_dusti1', 0, '', '', '1394711333', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(252, 'pdp_tursunzoda_k_chapaev_br', 351, 1, NULL, NULL, 5, '6.7', 'pdp_tursunzoda_k_chapaev_br', 0, '', '', '1394711362', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(253, 'Hisor', 224, 1, NULL, NULL, 5, '6.7', 'Hisor', 0, '', '', '1394711442', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(254, 'cbo_hisor_bozori_samoh', 225, 1, NULL, NULL, 5, '6.7', 'cbo_hisor_bozori_samoh', 0, '', '', '1394711475', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(255, 'pdp_hisor_ul_tursunzoda20', 226, 1, NULL, NULL, 5, '6.7', 'pdp_hisor_ul_tursunzoda20', 0, '', '', '1394711511', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(256, 'pdp_hisor_ul_yusufi11', 227, 1, NULL, NULL, 5, '6.7', 'pdp_hisor_ul_yusufi11', 0, '', '', '1394711534', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(257, 'pdp_hisor_ul_abdulloev28', 228, 1, NULL, NULL, 5, '6.7', 'pdp_hisor_ul_abdulloev28', 0, '', '', '1394711568', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(258, 'pdp_hisor_bozori_samoh', 229, 1, NULL, NULL, 5, '6.7', 'pdp_hisor_bozori_samoh', 0, '', '', '1394711591', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(259, 'pdp_hisor_chorteppa_ayni', 230, 1, NULL, NULL, 5, '6.7', 'pdp_hisor_chorteppa_ayni', 0, '', '', '1394711616', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(260, 'pdp_hisor_sharora', 231, 1, NULL, NULL, 5, '6.7', 'pdp_hisor_sharora', 0, '', '', '1394711643', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(261, 'pdp_hisor_somon_shurob', 232, 1, NULL, NULL, 5, '6.7', 'pdp_hisor_somon_shurob', 0, '', '', '1394711671', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(262, 'pdp_hisor_durbat_durbat', 233, 1, NULL, NULL, 5, '6.7', 'pdp_hisor_durbat_durbat', 0, '', '', '1394711695', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(263, 'pdp_hisor_hisor_hisor', 234, 1, NULL, NULL, 5, '6.7', 'pdp_hisor_hisor_hisor', 0, '', '', '1394711717', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(264, 'pdp_hisor_ul_isomoni47', 235, 1, NULL, NULL, 5, '6.7', 'pdp_hisor_ul_isomoni47', 0, '', '', '1394711741', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(265, 'Yovon', 236, 1, NULL, NULL, 5, '6.7', 'Yovon', 0, '', '', '1394790376', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(266, 'cbo_yavan_ul_tursunzoda20', 237, 1, NULL, NULL, 5, '6.7', 'cbo_yavan_ul_tursunzoda20', 0, '', '', '1394790406', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(267, 'cbo_yavan_norak_rudaki_7a', 238, 1, NULL, NULL, 5, '6.7', 'cbo_yavan_norak_rudaki_7a', 0, '', '', '1394790436', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(268, 'pdp_yavan_ul_bazarnaya_sadullo', 239, 1, NULL, NULL, 5, '6.7', 'pdp_yavan_ul_bazarnaya_sadullo', 0, '', '', '1394790465', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(269, 'pdp_yavan_ul_lenina36a', 240, 1, NULL, NULL, 5, '6.7', 'pdp_yavan_ul_lenina36a', 0, '', '', '1394790497', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(270, 'pdp_yavan_dahana_dahana', 241, 1, NULL, NULL, 5, '6.7', 'pdp_yavan_dahana_dahana', 0, '', '', '1394790529', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(271, 'pdp_yavan_urtakaynar_urtakaynar1', 242, 1, NULL, NULL, 6, '6.7', 'pdp_yavan_urtakaynar_urtakaynar1', 0, '', '', '1394790553', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(272, 'pdp_yavan_pakhtakor', 244, 1, NULL, NULL, 5, '6.7', 'pdp_yavan_pakhtakor', 0, '', '', '1394790899', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(273, 'pdp_yavan_ul_bazarnaya2', 245, 1, NULL, NULL, 5, '6.7', 'pdp_yavan_ul_bazarnaya2', 0, '', '', '1394790953', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(274, 'pdp_yavan_d_a_navoi', 246, 1, NULL, NULL, 5, '6.7', 'pdp_yavan_d_a_navoi', 0, '', '', '1394790992', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(275, 'pdp_yavan_komsomol', 247, 1, NULL, NULL, 5, '6.7', 'pdp_yavan_komsomol', 0, '', '', '1394791020', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(276, 'pdp_yavan_obshoron_dashtobod', 352, 1, NULL, NULL, 5, '6.7', 'pdp_yavan_obshoron_dashtobod', 0, '', '', '1394791046', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(277, 'pdp_yavan_norak_somoniyon', 353, 1, NULL, NULL, 5, '6.7', 'pdp_yavan_norak_somoniyon', 0, '', '', '1394791076', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(278, 'pdp_yavan_norak_rudaki_22', 354, 1, NULL, NULL, 5, '6.7', 'pdp_yavan_norak_rudaki_22', 0, '', '', '1394791106', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(279, 'Dushanbe', 248, 1, NULL, NULL, 5, '6.7', 'Dushanbe', 0, '', '', '1394791138', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(280, 'cbo_dushanbe_rudaki_3a', 249, 1, NULL, NULL, 5, '6.7', 'cbo_dushanbe_rudaki_3a', 0, '', '', '1394791168', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL);
INSERT INTO `devices` (`id`, `device_name`, `id_podrazdelenie`, `type_device`, `model`, `serial_number`, `type_os`, `version`, `cert_name`, `operator`, `sim_number`, `description`, `date_add`, `add_by`, `date_change`, `changed_by`, `login`, `password`, `data_obtaining`, `date_exploitation`, `purveyor`, `term_guarantee`, `status`) VALUES
(281, 'cbo_dushanbe_karabaeva_77', 250, 1, NULL, NULL, 5, '6.7', 'cbo_dushanbe_karabaeva_77', 0, '', '', '1394791199', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(282, 'cbo_dushanbe_shamsi23_saodat', 251, 1, NULL, NULL, 5, '6.7', 'cbo_dushanbe_shamsi23_saodat', 0, '', '', '1394791227', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(283, 'cbo_dushanbe_korvon', 252, 1, NULL, NULL, 5, '6.7', 'cbo_dushanbe_korvon', 0, '', '', '1394791262', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(284, 'cbo_dushanbe_rudaki_i_somoni', 253, 1, NULL, NULL, 5, '6.7', 'cbo_dushanbe_rudaki_i_somoni', 0, '', '', '1394791298', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(285, 'cbo_dushanbe_darvoz_63', 254, 1, NULL, NULL, 5, '6.7', 'cbo_dushanbe_darvoz_63', 0, '', '', '1394791336', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(286, 'cbo_dushanbe_j_rasulov_10', 255, 1, NULL, NULL, 5, '6.7', 'cbo_dushanbe_j_rasulov_10', 0, '', '', '1394791370', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(287, 'pdp_dushanbe_borbad_165', 256, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_borbad_165', 0, '', '', '1394791405', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(288, 'pdp_dushanbe_ayni_269a', 257, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_ayni_269a', 0, '', '', '1394791461', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(289, 'pdp_dushanbe_rudaki_somoni_57', 258, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_rudaki_somoni_57', 0, '', '', '1394791498', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(290, 'pdp_dushanbe_rudaki_marifat6', 259, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_rudaki_marifat6', 0, '', '', '1394791541', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(291, 'pdp_dushanbe_rudaki_tursunzoda', 260, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_rudaki_tursunzoda', 0, '', '', '1394791576', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(292, 'pdp_dushanbe_rudaki_rossiya_kushteppa_3', 261, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_rudaki_rossiya_kushteppa_3', 0, '', '', '1394791627', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(293, 'pdp_dushanbe_karabaeva_89_1', 262, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_karabaeva_89_1', 0, '', '', '1394791702', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(294, 'pdp_dushanbe_ul_sherozi_19', 263, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_ul_sherozi_19', 0, '', '', '1394791742', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(295, 'pdp_dushanbe_ayni_80_1', 264, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_ayni_80_1', 0, '', '', '1394791779', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(296, 'pdp_dushanbe_hamadoni', 265, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_hamadoni', 0, '', '', '1394791818', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(297, 'pdp_dushanbe_ispechak', 266, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_ispechak', 0, '', '', '1394791851', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(298, 'pdp_dushanbe_muhammad_5_1', 267, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_muhammad_5_1', 0, '', '', '1394791882', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(299, 'pdp_dushanbe_rudaki_zaynobod', 268, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_rudaki_zaynobod', 0, '', '', '1394791911', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(300, 'pdp_dushanbe_nabieva_7', 269, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_nabieva_7', 0, '', '', '1394791944', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(301, 'pdp_dushanbe_ak_kurgan', 270, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_ak_kurgan', 0, '', '', '1394791972', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(302, 'pdp_dushanbe_bukhoro_49', 271, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_bukhoro_49', 0, '', '', '1394792032', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(303, 'pdp_dushanbe_tursunzoda_83', 273, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_tursunzoda_83', 0, '', '', '1394792212', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(304, 'pdp_dushanbe_lohuti_91', 274, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_lohuti_91', 0, '', '', '1395053192', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(305, 'pdp_dushanbe_rudaki_128', 275, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_rudaki_128', 0, '', '', '1395053262', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(306, 'pdp_dushanbe_j_rasulov_10', 276, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_j_rasulov_10', 0, '', '', '1395053292', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(307, 'pdp_dushanbe_kahhorova_206_1', 277, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_kahhorova_206_1', 0, '', '', '1395053355', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(308, 'pdp_dushanbe_rudaki_136', 278, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_rudaki_136', 0, '', '', '1395053385', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(309, 'pdp_dushanbe_n_mahsum', 279, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_n_mahsum', 0, '', '', '1395053408', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(310, 'pdp_dushanbe_repina_1a', 280, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_repina_1a', 0, '', '', '1395053869', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(311, 'pdp_dushanbe_kahhorova_110', 281, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_kahhorova_110', 0, '', '', '1395053902', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(312, 'pdp_dushanbe_rudaki_somoni_bn', 282, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_rudaki_somoni_bn', 0, '', '', '1395053940', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(313, 'pdp_dushanbe_ayni_118', 283, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_ayni_118', 0, '', '', '1395053976', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(314, 'pdp_dushanbe_mahallai_guliston', 284, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_mahallai_guliston', 0, '', '', '1395054005', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(315, 'pdp_dushanbe_mahallai_lohur', 285, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_mahallai_lohur', 0, '', '', '1395054033', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(316, 'pdp_dushanbe_karabaeva_86_1', 303, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_karabaeva_86_1', 0, '', '', '1395054058', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(317, 'pdp_dushanbe_borbad_99_2', 304, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_borbad_99_2', 0, '', '', '1395054081', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(318, 'pdp_dushanbe_mayakovsky_78', 305, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_mayakovsky_78', 0, '', '', '1395054113', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(319, 'pdp_dushanbe_ayni_19_3', 355, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_ayni_19_3', 0, '', '', '1395054146', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(320, 'pdp_dushanbe_rudaki_somoni_sabina', 356, 1, NULL, NULL, 5, '6.7', 'pdp_dushanbe_rudaki_somoni_sabina', 0, '', '', '1395054188', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(321, 'Gafurov', 286, 1, NULL, NULL, 5, '6.7', 'Gafurov', 0, '', '', '1395054242', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(322, 'cbo_khiztevarz_kenjaev5', 287, 1, NULL, NULL, 5, '6.7', 'cbo_khiztevarz_kenjaev5', 0, '', '', '1395054268', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(323, 'cbo_gafurov_ovchikalacha_chak1', 288, 1, NULL, NULL, 5, '6.7', 'cbo_gafurov_ovchikalacha_chak1', 0, '', '', '1395054292', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(324, 'pdp_gafurov_lenina5', 289, 1, NULL, NULL, 5, '6.7', 'pdp_gafurov_lenina5', 0, '', '', '1395054321', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(325, 'pdp_gafurov_ovchikalacha_chak1', 290, 1, NULL, NULL, 5, '6.7', 'pdp_gafurov_ovchikalacha_chak1', 0, '', '', '1395054368', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(326, 'pdp_gafurov_kostakoz_d_zokirov', 291, 1, NULL, NULL, 5, '6.7', 'pdp_gafurov_kostakoz_d_zokirov', 0, '', '', '1395054429', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(327, 'pdp_gafurov_120_kvartal_kavsar', 292, 1, NULL, NULL, 5, '6.7', 'pdp_gafurov_120_kvartal_kavsar', 0, '', '', '1395054458', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(328, 'pdp_gafurov_lenina2a', 293, 1, NULL, NULL, 5, '6.7', 'pdp_gafurov_lenina2a', 0, '', '', '1395054497', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(329, 'pdp_gafurov_ovchikalacha_t_iskandarov', 294, 1, NULL, NULL, 5, '6.7', 'pdp_gafurov_ovchikalacha_t_iskandarov', 0, '', '', '1395054522', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(330, 'pdp_gafurov_katagan_r_yuldoshev84', 295, 1, NULL, NULL, 5, '6.7', 'pdp_gafurov_katagan_r_yuldoshev84', 0, '', '', '1395054554', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(331, 'pdp_gafurov_ul_1may_13', 314, 1, NULL, NULL, 5, '6.7', 'pdp_gafurov_ul_1may_13', 0, '', '', '1395054580', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(332, 'Kumsangir', 297, 1, NULL, NULL, 5, '6.7', 'Kumsangir', 0, '', '', '1395054629', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(333, 'cbo_kumsangir_panj_50let_pogranvoisk48', 334, 1, NULL, NULL, 5, '6.7', 'cbo_kumsangir_panj_50let_pogranvoisk48', 0, '', '', '1395054672', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(334, 'pdp_kumsangir_panj_50let_pogranvoisk28', 307, 1, NULL, NULL, 5, '6.7', 'pdp_kumsangir_panj_50let_pogranvoisk28', 0, '', '', '1395054716', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(335, 'pdp_kumsangir_dusti_1may9', 335, 1, NULL, NULL, 5, '6.7', 'pdp_kumsangir_dusti_1may9', 0, '', '', '1395054740', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(336, 'pdp_kumsangir_panj_rudaki_62', 336, 1, NULL, NULL, 6, '6.7', 'pdp_kumsangir_panj_rudaki_62', 0, '', '', '1395054774', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(337, 'Vose', 298, 1, NULL, NULL, 5, '6.7', 'Vose', 0, '', '', '1395054816', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(338, 'pdp_vose_kulob_ul_juma_ali158', 299, 1, NULL, NULL, 5, '6.7', 'pdp_vose_kulob_ul_juma_ali158', 0, '', '', '1395054849', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(339, '311648', 313, 3, NULL, NULL, 1, 'NCR-5877', 'Khujand_ul_kkhujandi_185a_anis_ncr5877', 0, '', 'г. Худжанд Суперм. Анис  ул.К.Худжанди 185а\r\n', '1395057194', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(340, '316865', 313, 3, NULL, NULL, 1, 'NCR-6625', 'Khujand_gagarina_135_ncr6625', 0, '', 'г. Худжанд Гагарина 135\r\n', '1395057307', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(341, '326826', 313, 3, NULL, NULL, 1, 'NCR-6622', 'Khujand_ul_javoni_1_ncr6622', 0, '', 'г. Худжанд, ул.Джавони 1\r\n', '1395057347', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(342, '326831', 313, 3, NULL, NULL, 1, 'NCR-5887', 'Khujand_ul_lenina_10_ncr5887', 0, '', 'г. Худжанд Ленина 10\r\n', '1395057394', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(343, '327342', 313, 3, NULL, NULL, 1, 'NCR-5887', 'Khujand_ul_sharq5_cbo_ozoda', 0, '', 'г. Худжанд ул. Шарк 5 ЦБО "Озода"\r\n', '1395057440', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(344, '399876', 313, 3, NULL, NULL, 1, 'NCR-5884', 'Khujand_ul_lenina_201_ncr6626', 0, '', 'г. Худжанд ул.Ленина 201\r\n', '1395057487', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(345, '399877', 313, 3, NULL, NULL, 1, 'NCR-6626', 'Khujand_ul_lenina_77_centralnaya_apteka_ncr6626', 0, '', 'г. Худжанд ул.Ленина 77 Центральная аптека\r\n', '1395057548', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(346, '573381', 313, 3, NULL, NULL, 1, 'NCR-6622', 'NCR-6622', 0, '', 'г. Худжанд магазин АМИД, 31 мкрн\r\n', '1395057620', 1, '1396324869', 1, NULL, '', '', NULL, NULL, NULL, NULL),
(347, '573382', 313, 3, NULL, NULL, 1, 'NCR-6626', 'Khujand_12_mkrn_mag_nazir_6626', 0, '', 'г. Худжанд, 12 мкрн, магазин Насим\r\n', '1395057670', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(348, '573383', 313, 3, NULL, NULL, 1, 'NCR-6626', 'Khujand_r_khojiev_19mkr_6626', 0, '', 'г. Худжанд, ул. Р.Хочиев (19 мкр, ', '1395057779', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(349, '573385', 313, 3, NULL, NULL, 1, 'NCR-6626', 'Khujand_ul_Gagarina_135_Zdanie_banka_inkasaciya_NCR6626', 0, '', 'г. Худжанд, ул.Гагарина 135 (Здание банка)\r\n', '1395057831', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(350, '573861', 313, 3, NULL, NULL, 1, 'NCR-6626', 'Khujand_31_mkr_ncr6626', 0, '', 'г. Худжанд 31 мкр.', '1396324745', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(351, '569814', 313, 3, NULL, NULL, 1, 'NCR-6626', 'Khujand_ul_k_khujandi_2a_mag_khurshed_ncr6622', 0, '', 'г. Худжанд, ул. К. Худжанди 2а (маг. Хуршед)\r\n', '1396324812', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(352, '371233', 313, 3, NULL, NULL, 1, 'NCR-5870', 'Khujand', 0, '', 'г. Худжанд NCR-5870 (Склад) бывший джавони\r\n', '1396332219', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(353, '577600', 313, 3, NULL, NULL, 1, 'NCR-6622', 'Khujand_34_mkr_mag_ariz_NCR6622', 0, '', 'г. Худжанд 34 микр., магазин Ариз\r\n', '1396332340', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(354, '577503', 313, 3, NULL, NULL, 1, 'NCR-6622', 'NCR-6622', 0, '', 'г. Худжанд, ул. К. Хучанди ул., 108\r\n\r\n', '1396332364', 1, '1396332463', 1, NULL, '', '', NULL, NULL, NULL, NULL),
(355, '577507', 313, 3, NULL, NULL, 1, 'NCR-6622', 'NCR-6622', 0, '', 'г. Худжанд,  ул.Гагарина 5, магазин Фазл\r\n', '1396332400', 1, '1396332444', 1, NULL, '', '', NULL, NULL, NULL, NULL),
(356, '577506', 313, 3, NULL, NULL, 1, 'NCR-6622', 'Khujand_ul_lenina_86a_ncr6622', 0, '', 'г. Худжанд, ул. Ленина  86 а  магазин Оазис\r\n\r\n', '1396332427', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(357, '316936', 248, 3, NULL, NULL, 1, 'NCR-5887', 'Dushanbe_ul_ayni_14a_ncr5887', 0, '', 'г. Душанбе ул. Айни 14а\r\n', '1396332602', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(358, '327524', 248, 3, NULL, NULL, 1, 'NCR-5887', 'Dushanbe_magazin_optika_ul_i_somoni_73_1_ncr5887', 0, '', 'г. Душанбе, Магазин Оптика, ул. И.Сомони , 73 / 1\r\n\r\n', '1396332646', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(359, '327525', 248, 3, NULL, NULL, 1, 'NCR-5887', 'Dushanbe_supermarket_saodat_ul_b_gafurova_54_ncr5887', 0, '', 'г. Душанбе, Супермаркет Саодат, ул. Б. Гафурова, 54\r\n', '1396332706', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(360, '327527', 248, 3, NULL, NULL, 1, 'NCR-5887', 'Dushanbe_ul_rudaki_3a_ncr5887', 0, '', 'г. Душанбе ул. Рудаки 3а\r\n', '1396332730', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(361, '327567', 248, 3, NULL, NULL, 1, 'NCR-5887', 'Dushanbe_ul_karabaeva_16_ncr5887', 0, '', 'г. Душанбе, ул. Карабаева 16\r\n\r\n', '1396332758', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(362, '395473', 248, 3, NULL, NULL, 1, 'NCR-6622', 'Dushanbe_ul_sino_134a_safo_ncr6622', 0, '', 'г. Душанбе ул.Сино 134а "САФО"\r\n\r\n\r\n', '1396332790', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(363, '398217', 248, 3, NULL, NULL, 1, 'NCR-6622', 'Dushanbe_pr_i_somoni_6_super_tim_ncr6622', 0, '', 'г. Душанбе пр. И.Сомони 6 Суперм. ТИМ\r\n', '1396332812', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(364, '398218', 248, 3, NULL, NULL, 1, 'NCR-6622', 'Dushanbe_ul_n_karabaeva_92_1_ncr22', 0, '', 'г. Душанбе ул.Н.Карабаева 92/1\r\n', '1396332842', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(365, '567578', 248, 3, NULL, NULL, 1, 'NCR-6622', 'Dushanbe_pr_rudaki_85a_magozai_javohirot_ncr6626', 0, '', 'г. Душанбе пр. Рудаки 85а "Магозаи Чавохирот"\r\n', '1396332871', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(366, '567579', 248, 3, NULL, NULL, 1, 'NCR-6622', 'Dushanbe_ul_karabaeva_86_1_saodat_ncr6626', 0, '', 'г. Душанбе ул. Н. Карабаева 86/1 "Садот"\r\n', '1396332907', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(367, '568006', 248, 3, NULL, NULL, 1, 'NCR-6622', 'Dushanbe_91_mkr_ul_n_makhsum_98_ncr6626', 0, '', 'г. Душанбе 91 мкр. ул Н.Махсум 98\r\n', '1396332938', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(368, '568007', 248, 3, NULL, NULL, 1, 'NCR-6622', 'Dushanbe_ul_n_muhammadieva_3_1_zeleniy_bazar_ncr6626', 0, '', 'г. Душанбе ул. Н. Мухаммадиева 3/1 Зеленый Базар\r\n\r\n', '1396332962', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(369, '568008', 248, 3, NULL, NULL, 1, 'NCR-6622', 'Dushanbe_ul_n_karabaeva_9_tc_guliston_ncr6626', 0, '', 'г. Душанбе Н.Карабаева 9, ТЦ Гулистон\r\n\r\n', '1396332992', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(370, '569582', 248, 3, NULL, NULL, 1, 'NCR-6622', 'Dushanbe_pr_rudaki_96_ncr6626', 0, '', 'г. Душанбе пр. Рудаки 96\r\n', '1396333014', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(371, '573546', 248, 3, NULL, NULL, 1, 'NCR-6622', 'Dushanbe_ul_ayni_6_supermarket_parastu_ncr6626', 0, '', 'г. Душанбе ул. Айни 6 (супермаркет Парасту)\r\n', '1396333038', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(372, '573547', 248, 3, NULL, NULL, 1, 'NCR-6622', 'Dushanbe_ul_darvoz_36_mhb_sultoni_kabir_ncr6626', 0, '', 'г. Душанбе ул. Дарвоз 36 (МХБ Султони Кабир)\r\n', '1396333058', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(373, '573549', 248, 3, NULL, NULL, 1, 'NCR-6622', 'Dushanbe_ul_tehron_21_kafe_formula_1_ncr6622', 0, '', 'г. Душанбе, ул. Техрон 21 (Кафе Формула 1)\r\n\r\n', '1396333076', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(374, '573550', 248, 3, NULL, NULL, 1, 'NCR-6622', 'Dushanbe_ul_a_donish_19_supermarket_evrova_tj_ncr6622', 0, '', 'г. Душанбе, ул. А. Дониш 19 (Супермаркет Европа TJ)\r\n', '1396333103', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(375, '574036', 248, 3, NULL, NULL, 1, 'NCR-6622', 'Dushanbe_ul_Bukhoro_37_dom_pechati_ncr6626', 0, '', 'г. Душанбе, ул. Бухоро 37 (Дом печати) \r\n', '1396333123', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(376, '577636', 248, 3, NULL, NULL, 1, 'NCR-6622', 'Dushanbe_ul_Atamov_11_ncr6626', 0, '', 'г. Душанбе, Атхамов ул., 11\r\n', '1396333142', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(377, '577637', 248, 3, NULL, NULL, 1, 'NCR-6622', 'Dushanbe_ul_Nmahsum_63_ncr6622', 0, '', 'г. Душанбе, Н. Махсум ул., 63/1, кафе "Кебаб Хаус"\r\n\r\n', '1396333170', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(378, '577638', 248, 3, NULL, NULL, 1, 'NCR-6622', 'Dushanbe_ul_Ayni_48_ncr6622', 0, '', 'г. Душанбе, Айни ул., 48, гостиница "Шэратон"\r\n\r\n', '1396333189', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(379, '577639', 248, 3, NULL, NULL, 1, 'NCR-6622', 'Dushanbe_ul_Jrasulov_10_ncr6626', 0, '', 'г. Душанбе, Ч.Расулов ул., 10, рынок "Фаровон"\r\n\r\n', '1396333207', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(380, '327526', 158, 3, NULL, NULL, 1, 'NCR-5887', 'Kurgantube_cbo_filiala_ncr5887', 0, '', 'г. Курган -Тюбе ЦБО филиала\r\n', '1396333339', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(381, '570589', 158, 3, NULL, NULL, 1, 'NCR-6626', 'Kurgantube_ul_vahdat_63_ncr6626', 0, '', 'г. Курган - Тюбе, ул. Вахдат 63\r\n', '1396333366', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(382, '346031', 312, 3, NULL, NULL, 1, 'NCR-6626', 'Khujand_ul_lenina_40_ncr6626', 0, '', 'г. Худжанд ул. Ленина 40\r\n', '1396333412', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(383, '574179', 40, 3, NULL, NULL, 1, 'NCR-6626', '', 0, '', 'Истаравшан\r\n', '1396333477', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(384, '313162', 58, 3, NULL, NULL, 1, 'NCR-6626 (5884)', 'Isfara_filial_oao_bank_eskhata_markazi_ncr6626', 0, '', 'г. Исфара Фил. ОАО "Банк Эсхата"  маркази 29/1\r\n', '1396333522', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(385, '573548', 58, 3, NULL, NULL, 1, 'NCR-6626 ', 'Isfara_ul_jomi_30_ncr6626', 0, '', 'Исфара, ул.Чоми 30\r\n\r\n', '1396333551', 1, '1396334545', 1, NULL, '', '', NULL, NULL, NULL, NULL),
(386, '568714', 58, 3, NULL, NULL, 1, 'NCR-6626 (5884)', 'Isfara_ul_markazi_21_ncr6622', 0, '', 'г. Исфара ул. Маркази 21\r\n\r\n', '1396333583', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(387, '573548', 58, 3, NULL, NULL, 1, 'NCR-6626 (5884)', 'Isfara_ul_jomi_30_supermarket_payvand_ncr6626', 0, '', 'г. Исфара ул. Чоми 30, супермаркет "Пайванд"\r\n\r\n', '1396333617', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(388, '326825', 81, 3, NULL, NULL, 1, 'NCR-5887', 'Penjikent_filial_oao_bank_eskhata_ncr5887', 0, '', 'г. Пенджикент  Фил. ОАО "Банк Эсхата"\r\n', '1396333668', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(389, '569580', 122, 3, NULL, NULL, 1, 'NCR-6626', 'Kanibadam_ul_lenina_169_telekom_ncr6626', 0, '', 'г. Канибадам ул. Ленина 169 "Телеком"\r\n', '1396333727', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(390, '327343', 122, 3, NULL, NULL, 1, 'NCR-5887', 'NCR-5887', 0, '', 'г. Канибадам, ул. Ленина 348\r\n', '1396333747', 1, '1396333791', 1, NULL, '', '', NULL, NULL, NULL, NULL),
(391, '577504', 122, 3, NULL, NULL, 1, 'NCR-6626', 'Kanibadam_ul_mansurov_mag_meros_ncr6626', 0, '', 'г. Канибадам Б.Мансуров ул., 30 "магазин Мерос"\r\n', '1396333773', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(392, '567577', 136, 3, NULL, NULL, 1, 'NCR-6626', 'Chkalovsk_ul_govorova_8a_ncr6626', 0, '', 'г. Чкаловск ул. Говорова 8а Филиал\r\n', '1396333845', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(393, '568641', 136, 3, NULL, NULL, 1, 'NCR-5887', 'Chkalovsk_ul_v_oplanchuka_2a_ncr5887', 0, '', 'г. Чкаловск , ул . В.Опланчука 2 а\r\n', '1396333880', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(394, '573384', 136, 3, NULL, NULL, 1, 'NCR-6622', 'Chkalovsk_ul_pushkina_15_aflesun_ncr6622', 0, '', 'г. Чкаловск ул. Пушкина 15 (супер маркет "Афлесун")\r\n', '1396333917', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(395, '567576', 21, 3, NULL, NULL, 1, 'NCR-6626', 'Asht_ul_i_somoni_38_ncr6626', 0, '', 'р. Ашт ул. И.Сомони 38 фил-л ОАО"Банк Эсхата."\r\n', '1396333956', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(396, '569581', 112, 3, NULL, NULL, 1, 'NCR-6626', 'Buston_ul_i_somoni_24_ncr6626', 0, '', 'р. Бустон ул. И. Сомони 24\r\n', '1396334058', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(397, '316883', 97, 3, NULL, NULL, 1, 'NCR-5887', 'J_Rasulov_pos_proletarsk_ul_nurmatova_1_ncr5887', 0, '', 'г. Ч.Расуловский р-н, пос Пролетарск , ул Нурматова 1\r\n', '1396334102', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(398, '567961', 236, 3, NULL, NULL, 1, 'NCR-6626', 'Yovon_ul_gagarina_2a_ncr6626', 0, '', 'г. Яван ул. Гагарина 2а\r\n', '1396334147', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(399, '346029', 207, 3, NULL, NULL, 1, 'NCR-5684', 'Tursunzoda_ul_i_somoni_55_ncr5684', 0, '', 'г. Турсунзаде ул.И.Сомони 55\r\n', '1396334196', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(400, '567962', 144, 3, NULL, NULL, 1, 'NCR-6626', 'Vahdat_ul_tugdona_6_ncr6626', 0, '', 'г. Вахдат ул. Тугдона 6\r\n', '1396334238', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(401, '316949', 224, 3, NULL, NULL, 1, 'NCR-5887', 'Hisor_ul_i_somoni_10_ncr5887', 0, '', 'г. Хисор ул. И. Сомони 10 (Хукумат г.Хисор)\r\n', '1396334280', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(402, '001002', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд, ул. Гагарина 135 (В здан)', '1396340841', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(403, '001003', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'Базар Баракат 1', '1396340886', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(404, '001004', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'Панчшанбе Мечеть', '1396343209', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(405, '001005', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'ул.Лермонтов магазин "Рахими"', '1396343223', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(406, '001006', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'ул. Гагарина 135 (В здании)ОПУ.', '1396343459', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(407, '001007', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд, ул. 50 лет СССР, ТЦ "Доро"', '1396343486', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(408, '001008', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд, ул. К. Худжанди, ТЦ "Анис"', '1396343505', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(409, '001009', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'ул. К. Худжанди 163 (СШ4)', '1396343518', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(410, '001010', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд, ул. Гагарина 135 (На улице)', '1396343531', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(411, '001012', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд (рядом с рес. "БАРС")', '1396343548', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(412, '001013', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'Гафуров, ул. Ленина 5', '1396343562', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(413, '001014', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд, 18мкр, дом 9', '1396343595', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(414, '001015', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд, 8мкр, дом 87', '1396343641', 1, '1396346278', 1, NULL, '', '', NULL, NULL, NULL, NULL),
(415, '001016', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Кайраккум, Бахористон', '1396344884', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(416, '001018', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд, маг. Мухайё', '1396344907', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(417, '001019', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд, Диагностический центр', '1396344948', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(418, '001020', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд, АЗС Очил', '1396344991', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(419, '001021', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд, Общежитие ХГУ', '1396345004', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(420, '001022', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд, ул. Ленина (ост. 8-12)', '1396345049', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(421, '001023', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд, ул. Ленина 10', '1396345066', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(422, '001024', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'Кардиология', '1396345144', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(423, '001025', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'Панчшанбе Шапарак', '1396345335', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(424, '001026', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд, р. Баракат 1', '1396345354', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(425, '001028', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд, р. Баракат 1', '1396345543', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(426, '001029', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд, ул. А.Рахимов маг. Абдухамид', '1396345572', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(427, '001030', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г.Чкаловск маг. Афлесун', '1396345598', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(428, '001031', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд, маг. "Дусти Амирхан"', '1396345610', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(429, '001033', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г.Хучанд магазин Чашма 28 мкр', '1396345625', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(430, '001034', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г.Худжанд Гор.больница', '1396345640', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(431, '001035', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'дж. Х.Усмон, маг. "Абдувохид"', '1396345678', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(432, '001036', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд, ул. Ленина 46а', '1396345695', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(433, '001037', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд, ул. К.Хучанди 58', '1396345709', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(434, '001038', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд, ул. Ленина 5', '1396345723', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(435, '001039', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Чкаловск гос.Сино', '1396345755', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(436, '001040', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд,8 мкр. дом 88. маг. Азизхон', '1396345768', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(437, '001041', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Худжанд, ул. Ленина 77', '1396345780', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(438, '001042', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г.Худжанд, 19 мкр, ЦБО "Бахори Ачам"', '1396345792', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(439, '001043', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г. Кайраккум ул. Истиклол 54', '1396345809', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(440, '001044', 313, 4, NULL, NULL, 1, '3.8', '', 0, '', 'г.Худжанд ул.Гагарина (рядом с гост. Эхсон)', '1396345833', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(443, 'MT-1', 1, 1, 1, '4AC702BADBED', 5, '6.15', 'cert1', NULL, NULL, '', '1399258717', 1, '1430825949', 1, 'admin', '123456', '01.04.2015', '01.04.2015', 1, '10.04.2015', NULL),
(444, 'cbo_golovnoy_sartukay_38', 358, 1, 2, NULL, 5, '6.7', 'cbo_golovnoy_sartukay_38', NULL, NULL, '', '1399262936', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(445, 'pdp_golovnoy_32mkr_60solagii_oktyabr', 359, 1, 2, NULL, 5, '6.7', 'pdp_golovnoy_32mkr_60solagii_oktyabr', NULL, NULL, '', '1399264742', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(446, 'pdp_golovnoy_13mkr', 360, 1, 2, NULL, 5, '6.7', 'pdp_golovnoy_13mkr', NULL, NULL, '', '1399264824', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(447, 'pdp_golovnoy_gafurov_p_bobokalonov', 361, 1, NULL, NULL, 5, '6.7', 'pdp_golovnoy_gafurov_p_bobokalonov', NULL, NULL, '', '1399264924', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(448, 'pdp_golovnoy_istiklol_1mkr', 362, 1, NULL, NULL, 5, '6.7', 'pdp_golovnoy_istiklol_1mkr', NULL, NULL, '', '1399265042', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(449, 'cbo_dushanbe_j_rasulov_3', 363, 1, NULL, NULL, 5, '6,7', 'cbo_dushanbe_j_rasulov_3', NULL, NULL, '', '1399266585', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(450, 'pdp_dushanbe_ayni_289', 272, 1, NULL, NULL, 5, '6.6', 'pdp_dushanbe_ayni_289', NULL, NULL, '', '1399268217', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(451, 'pdp_dushanbe_ul_matrosov_5', 364, 1, NULL, NULL, 5, '6,7', 'pdp_dushanbe_ul_matrosov_5', NULL, NULL, '', '1399269837', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(452, 'pdp_istaravshan_guli_surkh2', 366, 1, NULL, NULL, 5, '6.7', 'pdp_istaravshan_guli_surkh2', NULL, NULL, '', '1399278523', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(453, 'pdp_istaravshan_gonchi_bobosalomov11', 367, 1, NULL, NULL, 5, '6.7', 'pdp_istaravshan_gonchi_bobosalomov11', NULL, NULL, '', '1399278779', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(454, 'pdp_istaravshan_gonchi_yangiarik_poyon', 368, 1, NULL, NULL, 5, '6.7', 'pdp_istaravshan_gonchi_yangiarik_poyon', NULL, NULL, '', '1399278874', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(455, 'pdp_istaravshan_ul_dilshod', 369, 1, NULL, NULL, 5, '6.7', 'pdp_istaravshan_ul_dilshod', NULL, NULL, '', '1399278945', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(456, 'cbo_isfara_markazi_29', 370, 1, NULL, NULL, 5, '6,7', 'cbo_isfara_markazi_29', NULL, NULL, '', '1399279542', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(457, 'pdp_isfara_bgafurov_83_2', 371, 1, NULL, NULL, 5, '6,7', 'pdp_isfara_bgafurov_83_2', NULL, NULL, '', '1399283716', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(458, 'pdp_panjikent_hurmi_suhrob', 372, 1, NULL, NULL, 5, '6.7', 'pdp_panjikent_hurmi_suhrob', NULL, NULL, '', '1399286535', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(459, 'pdp_panjikent_rudaki_zeri_hisor', 373, 1, NULL, NULL, 5, '6.7', 'pdp_panjikent_rudaki_zeri_hisor', NULL, NULL, '', '1399286609', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(460, 'pdp_panjikent_l_sherali_gusar', 374, 1, NULL, NULL, 5, '6.7', 'pdp_panjikent_l_sherali_gusar', NULL, NULL, '', '1399286698', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(461, 'cbo_buston_navbahor_j_ergashev19', 375, 1, NULL, NULL, 5, '6.7', 'cbo_buston_navbahor_j_ergashev19', NULL, NULL, '', '1399289065', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(462, 'pdp_buston_oburdon_vahdat', 114, 1, NULL, NULL, 5, '6.7', 'pdp_buston_oburdon_vahdat', NULL, NULL, '', '1399289174', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(463, 'pdp_buston_obburdon_f_sultonov_n_khusrav', 311, 1, NULL, NULL, 5, '6.7', 'pdp_buston_obburdon_f_sultonov_n_khusrav', NULL, NULL, '', '1399290097', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(464, 'test22', 1, 1, 2, '4AC702BADBED', 5, '6,8', 'test', NULL, NULL, '', '1400142336', 1, '1427870232', 1, '', '', '', '', 1, NULL, NULL),
(465, 'test1', 1, 2, 2, '4AC702BADBED', 5, '2.3', 'test1', NULL, NULL, '', '1400149417', 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(467, 'MT-COP', 8, 1, 2, '4AC702BADBED', 5, '6.11', '', NULL, '', '', '1404365058', 1, '1404711344', 1, 'admin', 'gagarina135_cop_555', '', NULL, NULL, NULL, NULL),
(494, 'MTTEST2', NULL, 1, 1, '12', 1, '12', '12', NULL, NULL, '12', '1426136917', 1, NULL, NULL, '12', '12', '', '', 1, '', NULL),
(495, 'MTTEST3', NULL, 1, 1, '12', 1, '11', '11', NULL, NULL, '11', '1426137675', 1, NULL, NULL, '11', '11', '', '', 1, '', NULL),
(497, 'PPP', NULL, 1, 1, '12', 1, '11', '11', NULL, NULL, '11', '1426139460', 1, NULL, NULL, '11', '11', '', '', 1, '', NULL),
(498, 'PPP', NULL, 1, 1, '12', 1, '11', '11', NULL, NULL, '11', '1426139538', 1, NULL, NULL, '11', '11', '', '', 1, '', NULL),
(499, 'PPP', NULL, 1, 1, '12', 1, '11', '11', NULL, NULL, '11', '1426139547', 1, NULL, NULL, '11', '11', '', '', 1, '', NULL),
(501, 'oooo', NULL, 1, 1, '11', 1, '11', '11', NULL, NULL, '111', '1426139868', 1, NULL, NULL, '111', '11', '', '', 1, '', NULL),
(503, 'ttttt', NULL, 1, 1, '1', 1, '1', '1', NULL, NULL, '1', '1426140115', 1, NULL, NULL, '1', '1', '', '', 1, '', NULL),
(504, 'qwerty', NULL, 1, 1, '1', 1, '1', '1', NULL, NULL, '1', '1426140475', 1, NULL, NULL, '1', '1', '', '', 1, '', NULL),
(505, 'qwerty', NULL, 1, 1, '1', 1, '1', '1', NULL, NULL, '1', '1426140584', 1, NULL, NULL, '1', '1', '', '', 1, '', NULL),
(506, 'MT-300', NULL, 1, 1, '1', 1, '1', '1', NULL, NULL, '1', '1426140840', 1, NULL, NULL, '1', '1', '', '', 1, '', NULL),
(507, 'MT-300', NULL, 1, 1, '111', 1, '1', '11', NULL, NULL, '1', '1426140906', 1, NULL, NULL, '1', '1', '', '', 1, '', NULL),
(508, 'MT-300', NULL, 1, 1, '111', 1, '1', '11', NULL, NULL, '1', '1426140997', 1, NULL, NULL, '1', '1', '', '', 1, '', NULL),
(509, 'MT-300', NULL, 1, 1, '111', 1, '1', '11', NULL, NULL, '1', '1426141000', 1, NULL, NULL, '1', '1', '', '', 1, '', NULL),
(510, 'MT-1000', NULL, 1, 1, '1', 1, '1', '1', NULL, NULL, '1', '1426141033', 1, NULL, NULL, '1', '1', '', '', 1, '', NULL),
(511, 'MT-1000', NULL, 1, 1, '1', 1, '1', '1', NULL, NULL, '1', '1426141185', 1, NULL, NULL, '1', '1', '', '', 1, '', NULL),
(512, 'MT-1000', NULL, 1, 1, '1', 1, '1', '1', NULL, NULL, '1', '1426141188', 1, NULL, NULL, '1', '1', '', '', 1, '', NULL),
(513, 'ddd', NULL, 1, 1, '11', 1, '11', '11', NULL, NULL, '11', '1426141279', 1, NULL, NULL, '11', '11', '', '', 1, '', NULL),
(514, 'ddd', NULL, 1, 1, '11', 1, '11', '11', NULL, NULL, '11', '1426141298', 1, NULL, NULL, '11', '11', '', '', 1, '', NULL),
(515, 'ddd', 1, 1, 1, '1', 1, '1', '1', NULL, NULL, '1', '1426141321', 1, NULL, NULL, '1', '1', '', '', 1, '', NULL),
(516, 'test_device', 1, 1, 1, 'sdfafsd', 1, '6.13', 'asdfasdf', NULL, NULL, '123', '1430798675', 1, NULL, NULL, 'admin', 'asd', '', '', NULL, '', NULL),
(517, 'test_device1', 1, 1, 1, 'sdfafsd', 1, '6.13', 'asdfasdf', NULL, NULL, '11', '1430799230', 1, NULL, NULL, 'admin', '1', '', '', 1, '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `device_upd_history`
--

CREATE TABLE IF NOT EXISTS `device_upd_history` (
  `id` int(11) NOT NULL,
  `id_device` int(11) DEFAULT NULL,
  `description` text,
  `date` varchar(25) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `date_add` varchar(25) DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_change` varchar(25) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `device_upd_history`
--

INSERT INTO `device_upd_history` (`id`, `id_device`, `description`, `date`, `add_by`, `date_add`, `changed_by`, `date_change`) VALUES
(1, 1, 'Изменено', '11.04.2014', 1, '1397187078', NULL, NULL),
(2, 1, 'ваывыавыа', '11,04,2014', 20, '1397191233', NULL, '1397191233'),
(3, 1, 'апвапвпвпвпавпавпв', '11.04.2014', 19, '1397191261', NULL, '1397191261'),
(4, 1, 'впапврыпавыавы', '11.04.2014', 20, '1397192438', NULL, '1397192438'),
(5, 1, 'впапврыпавыавы', '11.04.2014', 20, '1397192440', NULL, '1397192440'),
(6, 1, 'впапврыпавыавы', '11.04.2014', 20, '1397192440', NULL, '1397192440'),
(7, 1, 'впапврыпавыавы', '11.04.2014', 20, '1397192441', NULL, '1397192441'),
(8, 1, 'впапврыпавыавы', '11.04.2014', 20, '1397192441', NULL, '1397192441'),
(9, 1, 'впапврыпавыавы', '11.04.2014', 20, '1397192441', NULL, '1397192441'),
(10, 1, 'впапврыпавыавы', '11.04.2014', 20, '1397192441', NULL, '1397192441'),
(11, 1, 'впапврыпавыавы', '11.04.2014', 20, '1397192441', NULL, '1397192441'),
(12, 10, 'сячсячсчясячсчяс', '11.04.2014', 1, '1397192824', NULL, '1397192824'),
(13, 15, 'вамсчмсчмаввпавпвпавпав', '11.04.2014', 20, '1397192854', NULL, '1397192854'),
(14, 1, 'fdgfdgdfg', '11.04.2014', 14, '1397195659', NULL, '1397195659'),
(15, 10, 'авылагвыанвыггаывшанвы', '11.04.2014', 13, '1397199213', NULL, '1397199213'),
(16, 10, 'Изменен IP адрес', '11.04.2014', 1, '1397199276', NULL, '1397199276'),
(17, 10, 'Изменен тип подключения на Wi-Max и Ip адрес!', '11.04.2014', 1, '1397199366', NULL, '1397199366'),
(18, 111, 'ffff<br>', '12.05.2014', 1, '1400474934', NULL, '1400474934'),
(19, 111, 'ffff<br>', '12.05.2014', 1, '1400474981', NULL, '1400474981'),
(20, 111, 'ffff<br>sdfsdfs<br>sdfsdfds<br>sdfdsfds<br>sdfdsfds<br>', '12.05.2014', 1, '1400475022', NULL, '1400475022'),
(21, 106, 'Замена IP адрес <br>', '12.05.2014', 1, '1400475271', NULL, '1400475271'),
(22, 283, 'Замена IP адрес на 100.100.100.100<br>', '12.05.2014', 1, '1400475336', NULL, '1400475336'),
(23, 1, 'Замена IP test<br>', '12.05.2014', 1, '1404467657', NULL, '1404467657');

-- --------------------------------------------------------

--
-- Структура таблицы `dns_name`
--

CREATE TABLE IF NOT EXISTS `dns_name` (
  `id` int(11) NOT NULL,
  `dns_name` varchar(30) DEFAULT NULL,
  `ip_adress` varchar(20) DEFAULT NULL,
  `podrazdelenie` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096 COMMENT='InnoDB free: 5120 kB';

--
-- Дамп данных таблицы `dns_name`
--

INSERT INTO `dns_name` (`id`, `dns_name`, `ip_adress`, `podrazdelenie`, `status`) VALUES
(1, 'portal.eskhata.tj', '10.2.2.9', 1, 2),
(2, 'soniya.tj', '10.10.2.22', 1, 1),
(3, 'nip.soniya.tj', '10.10.2.23', 1, 1),
(4, 'portal.eskhata.tj', '10.2.2.9', 112, 1),
(5, 'portal.eskhata.tj', '10.2.2.9', 236, 1),
(6, 'portal.eskhata.tj', '10.2.2.9', 21, 1),
(7, 'portal.eskhata.tj', '10.2.2.9', 286, 1),
(8, 'portal.eskhata.tj', '10.2.2.9', 144, 1),
(9, 'soniya.tj', '10.10.2.22', 144, 1),
(10, 'nip.soniya.tj', '10.10.2.23', 144, 1),
(11, 'portal.eskhata.tj', '10.2.2.9', 21, 1),
(12, 'soniya.tj', '10.10.2.22', 21, 1),
(13, 'nip.soniya.tj', '10.10.2.23', 21, 1),
(14, 'portal.eskhata.tj', '10.2.2.9', 298, 1),
(15, 'soniya.tj', '10.10.2.22', 298, 1),
(16, 'nip.soniya.tj', '10.10.2.23', 298, 1),
(19, 'soniya.tj', '10.10.2.22', 236, 1),
(20, 'nip.soniya.tj', '10.10.2.21', 236, 1),
(21, 'testing1', '192.168.7.14', 1, 1),
(22, 'portal.eskhata.tj', '10.2.2.9', 58, 1),
(23, 'soniya.tj', '10.10.2.22', 58, 1),
(24, 'nip.soniya.tj', '10.10.2.23', 58, 1),
(25, 'testing1', '192.168.7.14', 58, 1),
(26, 'qqqqq', '10.10.10.10', 144, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `ipconfig`
--

CREATE TABLE IF NOT EXISTS `ipconfig` (
  `id` int(11) NOT NULL,
  `id_device` int(11) DEFAULT NULL,
  `connection_type` int(11) DEFAULT NULL,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mask` int(11) DEFAULT '0',
  `gateway` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dns1` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dns2` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_operator` int(11) DEFAULT NULL,
  `sim_number` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date_add` varchar(20) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `date_change` varchar(20) DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `descriptions` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `provider` int(11) DEFAULT NULL,
  `tarif` int(11) DEFAULT NULL,
  `speed` varchar(55) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `contract_number` varchar(55) DEFAULT NULL,
  `contract_date` varchar(20) DEFAULT NULL,
  `contract_action_from` varchar(20) DEFAULT NULL,
  `contract_action_to` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=546 COMMENT='InnoDB free: 11264 kB';

--
-- Дамп данных таблицы `ipconfig`
--

INSERT INTO `ipconfig` (`id`, `id_device`, `connection_type`, `ip`, `mask`, `gateway`, `dns1`, `dns2`, `code_operator`, `sim_number`, `status`, `date_add`, `add_by`, `date_change`, `changed_by`, `descriptions`, `provider`, `tarif`, `speed`, `price`, `contract_number`, `contract_date`, `contract_action_from`, `contract_action_to`) VALUES
(1, 443, 4, '217.8.34.8', 24, '217.8.34.1', '217.8.39.10', '', 0, '', 2, 'Null', 0, '1430894781', 1, '', 5, NULL, '', NULL, '', '', '', ''),
(2, 443, 4, '217.11.179.33', 26, '', '109.74.69.254', '193.111.11.2', 0, '', 2, '1399260581', 1, '1400475393', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 443, 4, '109.74.68.44', 26, '109.74.68.1', '109.74.69.254', '193.111.11.2', 0, '', 2, '1399260688', 1, '1399433610', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 443, 4, '95.142.86.154', 29, '95.142.86.153', '', '', 0, '', 2, '1399261441', 1, '1399433621', 1, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, 1, '109.74.69.34', 27, '109.74.69.33', '109.74.69.254', '193.111.11.2', 0, '', 2, '1399261671', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 2, 1, '109.74.68.33', NULL, '109.74.68.1', '109.74.68.254', '193.111.11.2', 0, '', 2, '1399261795', 1, '1428060366', 1, '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 3, 1, '217.11.179.174', 27, '217.11.179.161', '109.74.69.254', '193.111.11.2', 0, '', 2, '1399261887', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 4, 2, '109.74.69.4', 24, '46.20.205.1', '217.11.190.2', '193.111.11.2', 0, '', 2, '1399262154', 1, '1399446128', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, 6, '10.5.1.1', 24, '', '', '', 0, '', 2, '1399262267', 1, '', NULL, '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 2, 6, '10.5.1.2', 24, '', '', '', 0, '', 2, '1399262519', 1, '', NULL, '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 3, 6, '10.5.1.3', 0, '', '', '', 0, '', 2, '1399262546', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 4, 6, '10.5.1.4', 0, '', '', '', 0, '', 2, '1399262595', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 5, 3, '217.8.33.71', 0, '', '', '', 0, '', 2, '1399262637', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 5, 6, '10.5.1.5', 0, '', '', '', 0, '', 2, '1399262698', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 6, 3, '217.8.33.200', 0, '', '', '', 1, '7523978', 2, '1399262741', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 6, 6, '10.5.1.6', 0, '', '', '', 0, '', 2, '1399262780', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 444, 3, '217.8.33.20', 0, '', '', '', 1, '7519289', 2, '1399262945', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 444, 6, '10.5.1.7', 0, '', '', '', 0, '', 2, '1399262980', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 7, 3, '217.8.33.115', 0, '', '', '', 0, '', 2, '1399263387', 1, '1399273337', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 7, 6, '10.7.1.2', 0, '', '', '', 0, '', 2, '1399263387', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 8, 3, '217.8.33.90', 0, '', '', '', 0, '', 2, '1399263473', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 8, 6, '10.7.1.3', 0, '', '', '', 0, '', 2, '1399263473', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 9, 1, '217.11.179.10', 26, '217.11.179.1', '217.11.190.2', '193.111.11.2', 0, '', 2, '1399263537', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 9, 6, '10.7.1.4', 19, '10.7.0.1', '', '', 0, '', 2, '1399263568', 1, '1400645290', 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 10, 3, '217.8.33.91', 0, '', '', '', 0, '', 2, '1399263622', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 10, 6, '10.7.1.8', 0, '', '', '', 0, '', 0, '1399263651', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 11, 3, '217.8.33.88', 0, '', '', '', 0, '', 2, '1399263696', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 11, 6, '10.7.1.9', 0, '', '', '', 0, '', 2, '1399263723', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 12, 3, '217.8.36.53', 0, '', '', '', 0, '', 2, '1399263768', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 12, 6, '10.7.1.10', 0, '', '', '', 0, '', 2, '1399263768', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 13, 3, '217.8.36.139', 0, '', '', '', 0, '', 2, '1399263856', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 13, 6, '10.7.1.13', 0, '', '', '', 0, '', 2, '1399263856', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 14, 3, '217.8.36.140', 0, '', '', '', 1, '7960207', 2, '1399263965', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 14, 6, '10.7.1.14', 0, '', '', '', 0, '', 2, '1399263965', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 15, 3, '217.8.36.128', 0, '', '', '', 0, '', 2, '1399264037', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 15, 6, '10.7.1.15', 0, '', '', '', 0, '', 2, '1399264037', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 16, 3, '217.8.36.116', 0, '', '', '', 0, '', 2, '1399264091', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 16, 6, '10.7.1.16', 0, '', '', '', 0, '', 2, '1399264091', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 17, 3, '217.8.33.91', 0, '', '', '', 0, '', 2, '1399264134', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 17, 6, '10.7.1.17', 0, '', '', '', 0, '', 2, '1399264134', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 19, 3, '217.8.35.64', 0, '', '', '', 1, '7516961', 2, '1399264196', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 19, 6, '10.7.1.19', 0, '', '', '', 0, '', 2, '1399264196', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 20, 3, '217.8.35.106', 0, '', '', '', 0, '', 2, '1399264254', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 20, 6, '10.7.1.20', 0, '', '', '', 0, '', 2, '1399264254', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 445, 3, '217.8.36.132', 0, '', '', '', 1, '7940207', 2, '1399264745', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 445, 6, '10.7.1.21', 0, '', '', '', 0, '', 2, '1399264779', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 446, 3, '217.8.33.85', 0, '', '', '', 1, '7537174', 2, '1399264829', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 446, 6, '10.7.1.22', 0, '', '', '', 0, '', 2, '1399264861', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 447, 3, '217.8.33.41', 0, '', '', '', 1, '7519279', 2, '1399264925', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 447, 6, '10.7.1.23', 0, '', '', '', 0, '', 2, '1399264964', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 448, 3, '217.8.35.166', 0, '', '', '', 1, '7519286', 2, '1399265044', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 448, 6, '10.7.1.24', 0, '', '', '', 0, '', 2, '1399265077', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 280, 1, '217.11.180.115', 28, '217.11.180.113', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399265250', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 280, 6, '10.5.2.1', 0, '', '', '', 0, '', 2, '1399265295', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 281, 1, '217.11.187.170', 27, '217.11.187.161', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399265338', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 281, 6, '10.5.2.2', 0, '', '', '', 0, '', 2, '1399265338', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 282, 1, '217.11.176.195', 27, '217.11.176.193', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399265469', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 282, 6, '10.5.2.3', 0, '', '', '', 0, '', 2, '1399265513', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 283, 1, '217.11.186.100', 28, '217.11.186.97', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399265563', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 283, 6, '10.5.2.4', 0, '', '', '', 0, '', 2, '1399265651', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 284, 1, '217.11.182.196', 27, '217.11.182.193', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399265701', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 284, 6, '10.5.2.5', 0, '', '', '', 0, '', 2, '1399265738', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 285, 2, '46.20.205.176', 24, '46.20.205.1', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399265782', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 285, 6, '10.5.2.6', 0, '', '', '', 0, '', 2, '1399265832', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 449, 2, '46.20.205.108', 24, '46.20.205.1', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399266588', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 449, 6, '10.5.2.8', 0, '', '', '', 0, '', 2, '1399266635', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 287, 1, '46.20.205.114', 24, '46.20.205.1', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399266702', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 287, 6, '10.8.2.1', 0, '', '', '', 0, '', 2, '1399266740', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 288, 1, '217.11.178.135', 27, '217.11.178.129', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399266782', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 288, 6, '10.8.2.2', 0, '', '', '', 0, '', 2, '1399266832', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 289, 1, '217.11.182.201', 27, '217.11.182.193', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399267136', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 289, 6, '10.8.2.3', 0, '', '', '', 0, '', 2, '1399267222', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 290, 1, '79.170.186.230', 28, '79.170.186.225', '193.111.11.2', '193.111.11.3', 0, '', 2, '1399267256', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 290, 6, '10.8.2.4', 0, '', '', '', 0, '', 2, '1399267298', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 291, 2, '109.74.65.101', 24, '109.74.65.1', '193.111.11.2', '193.111.11.3', 0, '', 2, '1399267334', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 291, 6, '10.8.2.5', 0, '', '', '', 0, '', 2, '1399267378', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 292, 3, '217.11.190.252', 0, '', '', '', 0, '', 2, '1399267446', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 292, 6, '10.8.2.6', 0, '', '', '', 0, '', 2, '1399267469', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 293, 1, '46.20.205.115', 24, '46.20.205.1', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399267513', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 293, 6, '10.8.2.7', 0, '', '', '', 0, '', 2, '1399267543', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 294, 1, '94.199.18.195', 27, '94.199.18.193', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399267577', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 294, 6, '10.8.2.8', 0, '', '', '', 0, '', 2, '1399267611', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 295, 1, '94.199.22.110', 28, '94.199.22.97', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399267644', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 295, 6, '10.8.2.9', 0, '', '', '', 0, '', 2, '1399267672', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 296, 1, '217.11.176.198', 27, '217.11.176.193', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399267709', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 296, 6, '10.8.2.10', 0, '', '', '', 0, '', 2, '1399267740', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 297, 3, '217.11.190.252', 0, '', '', '', 0, '', 2, '1399267779', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 297, 6, '10.8.2.11', 0, '', '', '', 0, '', 2, '1399267779', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 298, 1, '94.199.18.44', 28, '94.199.18.1', '193.111.11.2', '193.111.190.2', 0, '', 2, '1399267828', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 298, 6, '10.8.2.12', 0, '', '', '', 0, '', 2, '1399267873', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 299, 2, '109.74.65.198', 24, '109.74.65.1', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399267911', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 299, 6, '10.8.2.13', 0, '', '', '', 0, '', 2, '1399267946', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 300, 3, '217.11.190.252', 0, '', '', '', 0, '', 2, '1399267986', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 300, 6, '10.8.2.14', 0, '', '', '', 0, '', 2, '1399268003', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 301, 3, '217.11.190.252', 0, '', '', '', 0, '', 2, '1399268044', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 301, 6, '10.8.2.15', 0, '', '', '', 0, '', 2, '1399268044', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 302, 1, '94.199.22.131', 26, '94.199.22.129', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399268091', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 302, 6, '10.8.2.16', 0, '', '', '', 0, '', 2, '1399268129', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 450, 1, '217.11.178.133', 28, '217.11.178.129', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399268219', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 450, 6, '10.8.2.17', 0, '', '', '', 0, '', 2, '1399268251', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 303, 1, '217.11.187.130', 31, '217.11.187.129', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399268285', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 303, 6, '10.8.2.18', 0, '', '', '', 0, '', 2, '1399268322', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 304, 1, '46.20.205.166', 24, '46.20.205.1', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399268362', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 304, 6, '10.8.2.19', 0, '', '', '', 0, '', 2, '1399268387', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 305, 1, '46.20.205.92', 24, '46.20.205.1', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399268432', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 305, 6, '10.8.2.20', 0, '', '', '', 0, '', 2, '1399268459', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 307, 1, '46.20.205.122', 24, '46.20.205.1', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399268540', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 307, 6, '10.8.2.22', 0, '', '', '', 0, '', 2, '1399268573', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 308, 1, '46.20.205.132', 24, '46.20.205.1', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399268612', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 308, 6, '10.8.2.23', 0, '', '', '', 0, '', 2, '1399268644', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 309, 1, '46.20.205.164', 24, '46.20.205.1', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399268678', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 309, 6, '10.8.2.24', 0, '', '', '', 0, '', 2, '1399268718', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 310, 1, '46.20.205.165', 24, '46.20.205.1', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399268784', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 310, 6, '10.8.2.25', 0, '', '', '', 0, '', 2, '1399268901', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 311, 1, '46.20.205.180', 24, '46.20.205.1', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399268953', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 311, 6, '10.8.2.26', 0, '', '', '', 0, '', 2, '1399268983', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 312, 1, '46.20.205.179', 24, '46.20.205.1', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399269034', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 312, 6, '10.8.2.27', 0, '', '', '', 0, '', 2, '1399269067', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 313, 2, '46.20.205.181', 24, '46.20.205.1', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399269103', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 313, 6, '10.8.2.28', 0, '', '', '', 0, '', 2, '1399269136', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 314, 3, '217.11.190.252', 0, '', '', '', 0, '', 2, '1399269172', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 314, 6, '10.8.2.29', 0, '', '', '', 0, '', 2, '1399269172', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 315, 3, '217.11.190.252', 0, '', '', '', 4, '5863657', 2, '1399269223', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 315, 6, '10.8.2.30', 0, '', '', '', 0, '', 2, '1399269223', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 316, 3, '217.11.190.252', 0, '', '', '', 4, '8695408', 2, '1399269304', 1, '1399431760', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 316, 6, '10.8.2.31', 0, '', '', '', 0, '', 2, '1399269335', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 317, 1, '46.20.205.174', 24, '46.20.205.1', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399269379', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 317, 6, '10.8.2.32', 0, '', '', '', 0, '', 2, '1399269417', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 318, 1, '46.20.205.175', 24, '46.20.205.1', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399269458', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 318, 6, '10.8.2.33', 0, '', '', '', 0, '', 2, '1399269496', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 319, 2, '46.20.205.235', 24, '46.20.205.1', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399269531', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 319, 6, '10.8.2.34', 0, '', '', '', 0, '', 2, '1399269585', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 320, 1, '217.11.182.195', 27, '217.11.182.193', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399269630', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 320, 6, '10.8.2.35', 0, '', '', '', 0, '', 2, '1399269670', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 451, 2, '46.20.205.199', 24, '46.20.205.1', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399269841', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 451, 6, '10.8.2.36', 0, '', '', '', 0, '', 2, '1399269886', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 22, 3, '217.8.33.196', 0, '', '', '', 0, '', 2, '1399269961', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 22, 6, '10.5.10.1', 0, '', '', '', 0, '', 2, '1399269982', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 23, 3, '217.8.36.197', 0, '', '', '', 0, '', 2, '1399270027', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 23, 6, '10.5.10.2', 0, '', '', '', 0, '', 2, '1399270046', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 24, 3, '217.8.33.152', 0, '', '', '', 0, '', 2, '1399270090', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 24, 6, '10.7.10.1', 0, '', '', '', 0, '', 2, '1399270110', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 25, 3, '217.8.33.148', 0, '', '', '', 0, '', 2, '1399270171', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 25, 6, '10.7.10.2', 0, '', '', '', 0, '', 2, '1399270200', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 26, 3, '217.8.36.41', 0, '', '', '', 0, '', 2, '1399270236', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 26, 6, '10.7.10.3', 0, '', '', '', 0, '', 2, '1399270248', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 27, 3, '217.8.36.59', 0, '', '', '', 0, '', 2, '1399270469', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 27, 6, '10.7.10.4', 0, '', '', '', 0, '', 2, '1399270469', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 28, 3, '217.8.33.149', 0, '', '', '', 0, '', 2, '1399270533', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 28, 6, '10.7.10.5', 0, '', '', '', 0, '', 2, '1399270544', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 29, 3, '109.68.235.44', 0, '', '', '', 0, '', 2, '1399270576', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 29, 6, '10.7.10.6', 0, '', '', '', 0, '', 2, '1399270602', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 30, 3, '217.8.33.80', 0, '', '', '', 0, '', 2, '1399270649', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 30, 6, '10.7.10.8', 19, '10.7.0.1', '', '', 0, '', 2, '1399270649', 1, '1399357284', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 31, 3, '217.8.33.153', 0, '', '', '', 0, '', 2, '1399270700', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 31, 6, '10.7.10.9', 0, '', '', '', 0, '', 2, '1399270700', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 32, 3, '217.8.33.151', 0, '', '', '', 0, '', 2, '1399270739', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 32, 6, '10.7.10.10', 0, '', '', '', 0, '', 2, '1399270739', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 33, 3, '217.8.33.81', 0, '', '', '', 0, '', 2, '1399270773', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 33, 6, '10.7.10.11', 0, '', '', '', 0, '', 2, '1399270773', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 34, 3, '217.8.36.131', 0, '', '', '', 0, '', 2, '1399270812', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 34, 6, '10.7.10.12', 0, '', '', '', 0, '', 2, '1399270812', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 35, 3, '217.8.36.137', 0, '', '', '', 0, '', 2, '1399270849', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 35, 6, '10.7.10.13', 0, '', '', '', 0, '', 2, '1399270880', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 36, 3, '217.8.36.150', 0, '', '', '', 0, '', 2, '1399270907', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 36, 6, '10.7.10.14', 0, '', '', '', 0, '', 2, '1399270926', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 37, 3, '217.8.36.180', 0, '', '', '', 0, '', 2, '1399270963', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 37, 6, '10.7.10.15', 0, '', '', '', 0, '', 2, '1399270975', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 38, 3, '217.8.36.194', 0, '', '', '', 0, '', 2, '1399271024', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 38, 6, '10.7.10.16', 0, '', '', '', 0, '', 2, '1399271036', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 39, 3, '217.8.36.196', 0, '', '', '', 0, '', 2, '1399271070', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 39, 6, '10.7.10.17', 0, '', '', '', 0, '', 2, '1399271081', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 40, 3, '217.8.36.198', 0, '', '', '', 1, '7513784', 2, '1399271121', 1, '1399271711', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 40, 6, '10.7.10.18', 0, '', '', '', 0, '', 2, '1399271121', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 42, 3, '217.8.36.193', 0, '', '', '', 1, '7516165', 2, '1399271386', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 42, 6, '10.7.10.19', 0, '', '', '', 0, '', 2, '1399271386', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 279, 4, '79.170.186.244', 29, '79.170.186.241', '193.111.11.2', '', 0, '', 2, '1399271781', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 279, 6, '10.3.3.2', 0, '', '', '', 0, '', 2, '1399271781', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 21, 1, '109.74.70.180', 27, '109.74.70.161', '193.111.11.2', '109.74.69.254', 0, '', 2, '1399272087', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 21, 1, '109.74.70.166', 27, '109.74.70.161', '193.111.11.2', '109.74.69.254', 0, '', 2, '1399272087', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 21, 6, '10.3.3.10', 0, '', '', '', 0, '', 2, '1399272087', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 43, 1, '217.11.179.145', 19, '217.11.179.129', '109.74.69.254', '193.111.11.2', 0, '', 2, '1399272266', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 43, 1, '217.11.179.146', 19, '217.11.179.129', '109.74.69.254', '193.111.11.2', 0, '', 2, '1399272266', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 43, 2, '217.11.191.59', 24, '217.11.191.1', '193.111.11.2', '109.74.69.254', 0, '', 2, '1399272266', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 43, 6, '10.3.3.5', 0, '', '', '', 0, '', 2, '1399272374', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 44, 1, '109.74.69.150', 19, '109.74.69.129', '109.74.69.254', '193.111.11.2', 0, '', 2, '1399272419', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 44, 3, '217.8.33.206', 0, '', '', '', 1, '7523969', 2, '1399272419', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 44, 6, '10.5.5.1', 0, '', '', '', 0, '', 2, '1399272536', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 45, 1, '109.74.70.137', 27, '109.74.70.129', '109.74.70.254', '', 0, '', 2, '1399272583', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 46, 1, '109.74.69.158', 27, '109.74.69.129', '109.74.69.254', '193.111.11.2', 0, '', 2, '1399272655', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 46, 6, '10.5.5.3', 0, '', '', '', 0, '', 2, '1399272694', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 47, 3, '109.74.68.209', 0, '', '', '', 0, '', 2, '1399272732', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 47, 6, '10.5.5.4', 0, '', '', '', 0, '', 2, '1399272732', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 48, 1, '109.74.69.141', 27, '109.74.69.129', '109.74.69.254', '193.111.11.2', 0, '', 2, '1399272802', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 48, 6, '10.7.5.1', 0, '', '', '', 0, '', 2, '1399272841', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 49, 1, '109.74.69.132', 27, '109.74.69.129', '109.74.69.254', '193.111.11.2', 0, '', 2, '1399272890', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 49, 6, '10.7.5.2', 0, '', '', '', 0, '', 2, '1399272922', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 50, 1, '109.74.70.130', 27, '109.74.70.129', '109.74.70.254', '193.111.11.2', 0, '', 2, '1399276142', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 50, 6, '10.7.5.3', 0, '', '', '', 0, '', 2, '1399276482', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 51, 1, '109.74.69.158', 27, '109.74.69.129', '109.74.69.254', '193.111.11.2', 0, '', 2, '1399276643', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 51, 6, '10.7.5.4', 0, '', '', '', 0, '', 2, '1399276758', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 53, 3, '217.8.33.205', 0, '', '', '', 1, '7523968', 2, '1399276906', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 53, 6, '10.7.5.6', 0, '', '', '', 0, '', 2, '1399277017', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 54, 3, '217.8.36.38', 0, '', '', '', 0, '', 2, '1399277285', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 54, 6, '10.7.5.7', 0, '', '', '', 0, '', 2, '1399277348', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 55, 1, '109.74.69.140', 27, '109.74.69.129', '109.74.70.254', '193.111.11.2', 0, '', 2, '1399277449', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 55, 6, '10.7.5.8', 0, '', '', '', 0, '', 2, '1399277511', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 56, 3, '217.8.36.47', 0, '', '', '', 1, '7567684', 2, '1399277563', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 56, 6, '10.7.5.9', 0, '', '', '', 0, '', 2, '1399277563', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 57, 3, '217.8.36.18', 0, '', '', '', 1, '7543984', 2, '1399277652', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 58, 1, '109.74.70.134', 27, '109.74.70.129', '109.74.69.254', '193.111.11.2', 0, '', 2, '1399277702', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 58, 6, '10.7.5.11', 0, '', '', '', 0, '', 2, '1399277735', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, 59, 1, '109.74.70.135', 27, '109.74.70.129', '109.74.69.254', '193.111.11.2', 0, '', 2, '1399277769', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 59, 6, '10.7.5.12', 0, '', '', '', 0, '', 2, '1399277801', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, 60, 3, '217.8.36.39', 0, '', '', '', 0, '', 2, '1399277843', 1, '1399282096', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, 60, 3, '10.7.5.13', 0, '', '', '', 0, '', 2, '1399277868', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 61, 3, '217.8.35.82', 0, '', '', '', 1, '8911005', 2, '1399277910', 1, '1399431925', 1, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, 61, 6, '10.7.5.14', 0, '', '', '', 0, '', 2, '1399277951', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 62, 3, '217.8.35.5', 0, '', '', '', 1, '8051005', 2, '1399277989', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, 62, 6, '10.7.5.15', 0, '', '', '', 0, '', 2, '1399277989', 1, '1399278130', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, 63, 3, '217.8.35.85', 0, '', '', '', 1, '8971005', 2, '1399278180', 1, '1400150020', 1, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, 63, 6, '10.7.5.16', 0, '', '', '', 0, '', 2, '1399278180', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, 452, 3, '217.8.33.32', 0, '', '', '', 1, '8891005', 2, '1399278525', 1, '1399376695', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, 452, 6, '10.7.5.17', 0, '', '', '', 0, '', 2, '1399278557', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, 453, 3, '217.8.33.25', 0, '', '', '', 1, '8341005', 2, '1399278780', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, 453, 6, '10.7.5.18', 0, '', '', '', 0, '', 2, '1399278780', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 454, 3, '217.8.33.35', 0, '', '', '', 1, '8931005', 2, '1399278876', 1, '1399432056', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 454, 6, '10.7.5.19', 0, '', '', '', 0, '', 2, '1399278902', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 455, 3, '217.8.33.24', 0, '', '', '', 1, '8521005', 2, '1399278946', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 455, 6, '10.7.5.20', 0, '', '', '', 0, '', 2, '1399278988', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, 64, 1, '109.74.70.187', 27, '109.74.70.161', '109.74.69.254', '193.111.11.2', 0, '', 2, '1399279049', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, 64, 1, '217.11.179.74', 27, '217.11.179.65', '', '', 0, '', 2, '1399279049', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, 64, 3, '217.8.33.169', 0, '', '', '', 1, '7506093', 2, '1399279049', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 64, 6, '10.3.3.6', 0, '', '', '', 0, '', 2, '1399279150', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, 65, 3, '217.8.36.220', 0, '', '', '', 0, '', 2, '1399279200', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, 65, 6, '10.5.6.1', 0, '', '', '', 0, '', 2, '1399279224', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 66, 1, '217.11.179.66', 27, '217.11.179.65', '109.74.69.254', '193.111.11.2', 0, '', 2, '1399279247', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, 66, 6, '10.5.6.2', 0, '', '', '', 0, '', 2, '1399279284', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, 456, 3, '217.8.33.169', 0, '', '', '', 0, '', 2, '1399279543', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, 456, 6, '10.5.6.3', 0, '', '', '', 0, '', 2, '1399279577', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, 67, 3, '217.8.36.141', 0, '', '', '', 0, '', 2, '1399279613', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, 67, 6, '10.7.6.1', 0, '', '', '', 0, '', 2, '1399279632', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, 68, 3, '217.8.33.119', 0, '', '', '', 1, '7503915', 2, '1399279667', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, 68, 6, '10.7.6.2', 0, '', '', '', 0, '', 2, '1399279698', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, 69, 3, '217.8.33.134', 0, '', '', '', 1, '7503926', 2, '1399279737', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, 69, 6, '10.7.6.3', 0, '', '', '', 0, '', 2, '1399279758', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, 70, 3, '217.8.33.164', 0, '', '', '', 1, '7506081', 2, '1399279802', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, 70, 6, '10.7.6.4', 0, '', '', '', 0, '', 2, '1399279832', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 71, 3, '217.8.35.98', 0, '', '', '', 0, '', 2, '1399279895', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, 71, 6, '10.7.6.5', 0, '', '', '', 0, '', 2, '1399279921', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, 72, 3, '217.8.33.166', 0, '', '', '', 1, '7506085', 2, '1399279963', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, 72, 6, '10.7.6.6', 0, '', '', '', 0, '', 2, '1399280003', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, 73, 3, '217.8.36.54', 0, '', '', '', 1, '7506087', 2, '1399280047', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, 73, 6, '10.7.6.7', 0, '', '', '', 0, '', 2, '1399280068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, 74, 3, '217.8.33.168', 0, '', '', '', 1, '7506092', 2, '1399280103', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, 74, 6, '10.7.6.8', 0, '', '', '', 0, '', 2, '1399280135', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, 75, 3, '217.8.33.194', 0, '', '', '', 1, '7522923', 2, '1399280227', 1, '1399280781', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, 75, 6, '10.7.6.9', 0, '', '', '', 0, '', 2, '1399280253', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, 76, 3, '217.8.33.195', 0, '', '', '', 1, '7522924', 2, '1399282764', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, 76, 6, '10.7.6.10', 0, '', '', '', 0, '', 2, '1399282868', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, 77, 3, '217.8.33.240', 0, '', '', '', 1, '7524931', 2, '1399282905', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, 77, 6, '10.7.6.11', 0, '', '', '', 0, '', 2, '1399282935', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 78, 3, '217.8.33.72', 0, '', '', '', 1, '7537169', 2, '1399282982', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 78, 6, '10.7.6.12', 0, '', '', '', 0, '', 2, '1399283008', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 79, 3, '217.8.33.205', 0, '', '', '', 1, '7537158', 2, '1399283043', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, 79, 6, '10.7.6.13', 0, '', '', '', 0, '', 2, '1399283068', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, 80, 3, '217.8.36.40', 0, '', '', '', 0, '', 2, '1399283117', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, 80, 6, '10.7.6.14', 0, '', '', '', 0, '', 2, '1399283137', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, 81, 3, '217.8.33.118', 0, '', '', '', 0, '', 2, '1399283188', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, 81, 6, '10.7.6.15', 0, '', '', '', 0, '', 2, '1399283213', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 82, 3, '217.8.36.93', 0, '', '', '', 0, '', 2, '1399283251', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, 82, 6, '10.7.6.16', 0, '', '', '', 0, '', 2, '1399283268', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, 83, 3, '217.8.36.92', 0, '', '', '', 0, '', 2, '1399283302', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, 83, 6, '10.7.6.17', 0, '', '', '', 0, '', 2, '1399283322', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, 84, 3, '217.8.36.142', 0, '', '', '', 0, '', 2, '1399283364', 1, '1399365782', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, 84, 6, '10.7.6.18', 0, '', '', '', 0, '', 2, '1399283380', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, 85, 3, '217.8.35.44', 0, '', '', '', 0, '', 2, '1399283412', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, 85, 6, '10.7.6.19', 0, '', '', '', 0, '', 2, '1399283412', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, 86, 3, '217.8.35.45', 0, '', '', '', 0, '', 2, '1399283459', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, 86, 6, '10.7.6.20', 0, '', '', '', 0, '', 2, '1399283472', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, 87, 3, '217.8.35.113', 0, '', '', '', 0, '', 2, '1399283522', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, 87, 6, '10.7.6.21', 0, '', '', '', 0, '', 2, '1399283533', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, 457, 3, '217.8.35.114', 0, '', '', '', 1, '8419293', 2, '1399283720', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, 88, 1, '109.74.68.194', 27, '109.74.68.193', '109.74.68.254', '', 0, '', 2, '1399284220', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, 88, 1, '109.74.68.198', 27, '109.74.68.193', '109.74.68.254', '', 0, '', 2, '1399284220', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, 88, 6, '10.3.3.7', 0, '', '', '', 0, '', 2, '1399284299', 1, '1399284315', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, 89, 3, '217.8.33.55', 0, '', '', '', 0, '', 2, '1399284364', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, 89, 6, '10.5.7.1', 0, '', '', '', 0, '', 2, '1399284411', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, 90, 2, '46.20.205.79', 24, '46.20.205.1', '217.11.190.2', '193.111.11.2', 0, '', 2, '1399284464', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, 90, 6, '10.5.7.2', 0, '', '', '', 0, '', 2, '1399284500', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, 91, 3, '217.8.33.46', 0, '', '', '', 0, '', 2, '1399285357', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, 91, 6, '10.7.7.1', 0, '', '', '', 0, '', 2, '1399285402', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, 92, 3, '217.8.33.57', 0, '', '', '', 0, '', 2, '1399285445', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, 92, 6, '10.7.7.2', 0, '', '', '', 0, '', 2, '1399285466', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, 93, 3, '217.8.36.16  ', 0, '', '', '', 0, '', 2, '1399285504', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, 93, 6, '10.7.7.3', 0, '', '', '', 0, '', 2, '1399285520', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, 94, 3, '217.8.33.45', 0, '', '', '', 0, '', 2, '1399285558', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, 94, 6, '10.7.7.4', 0, '', '', '', 0, '', 2, '1399285615', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, 95, 3, '217.8.33.105 ', 0, '', '', '', 0, '', 2, '1399285652', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, 95, 6, '10.7.7.5', 0, '', '', '', 0, '', 2, '1399285652', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, 96, 3, '217.8.36.15  ', 0, '', '', '', 0, '', 2, '1399285720', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, 96, 6, '10.7.7.6', 0, '', '', '', 0, '', 2, '1399285762', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, 97, 3, '217.8.33.48', 0, '', '', '', 0, '', 2, '1399285805', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, 97, 6, '10.7.7.7', 0, '', '', '', 0, '', 2, '1399285805', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, 98, 3, '217.8.33.128  ', 0, '', '', '', 0, '', 2, '1399285851', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, 98, 6, '10.7.7.8', 0, '', '', '', 0, '', 2, '1399285851', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, 99, 3, '217.8.33.56', 0, '', '', '', 0, '', 2, '1399285906', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, 99, 6, '10.7.7.9', 0, '', '', '', 0, '', 2, '1399285906', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, 100, 3, '217.8.36.215', 0, '', '', '', 0, '', 2, '1399285961', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, 100, 6, '10.7.7.10', 0, '', '', '', 0, '', 2, '1399285961', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, 102, 3, '217.8.36.14', 0, '', '', '', 1, '7543296', 2, '1399286015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, 102, 6, '10.7.7.12', 0, '', '', '', 0, '', 2, '1399286015', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, 103, 3, '217.8.36.232', 0, '', '', '', 0, '', 2, '1399286074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, 103, 6, '10.7.7.13', 0, '', '', '', 0, '', 2, '1399286074', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, 104, 3, '217.8.35.84', 0, '', '', '', 1, '7518241', 2, '1399286186', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, 104, 6, '10.7.7.14', 0, '', '', '', 0, '', 2, '1399286186', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, 458, 3, '217.8.35.145', 0, '', '', '', 1, '7519507', 2, '1399286538', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, 458, 6, '10.7.7.15', 0, '', '', '', 0, '', 2, '1399286538', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, 459, 3, '217.8.35.146', 0, '', '', '', 1, '7519447', 2, '1399286611', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, 459, 6, '10.7.7.16', 0, '', '', '', 0, '', 2, '1399286611', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, 460, 3, '217.8.35.147', 0, '', '', '', 1, '7519527', 2, '1399286700', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, 460, 6, '10.7.7.17', 0, '', '', '', 0, '', 2, '1399286730', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, 105, 1, '217.11.179.251', 28, '217.11.179.241', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399286802', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, 105, 1, '217.11.179.253', 28, '217.11.179.241', '193.111.11.2', '217.11.190.2', 0, '', 2, '1399286802', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, 105, 6, '10.3.3.13', 0, '', '', '', 0, '', 2, '1399286802', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, 120, 3, '217.8.35.115', 0, '', '', '', 0, '', 2, '1399287076', 1, '1399287819', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, 120, 6, '10.7.13.13', 0, '', '', '', 0, '', 2, '1399287076', 1, '1399287919', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, 110, 3, '217.8.33.193', 0, '', '', '', 1, '7503379', 2, '1399287297', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, 110, 6, '10.7.13.3', 0, '', '', '', 0, '', 2, '1399287297', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, 112, 3, '217.8.33.139', 0, '', '', '', 1, '7547077', 2, '1399287398', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, 112, 6, '10.7.13.5', 0, '', '', '', 0, '', 2, '1399287398', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, 113, 3, '217.8.33.140', 0, '', '', '', 1, '7807077', 2, '1399287477', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, 113, 6, '10.7.13.6', 0, '', '', '', 0, '', 2, '1399287477', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, 114, 3, '217.8.36.145', 0, '', '', '', 0, '', 2, '1399287539', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, 114, 6, '10.7.13.7', 0, '', '', '', 0, '', 2, '1399287539', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, 115, 3, '217.8.36.202', 0, '', '', '', 0, '', 2, '1399287588', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, 115, 6, '10.7.13.8', 0, '', '', '', 0, '', 2, '1399287588', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, 118, 3, '217.8.35.60', 0, '', '', '', 1, '7513694', 2, '1399287669', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, 118, 6, '10.7.13.11', 0, '', '', '', 0, '', 2, '1399287721', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, 119, 3, '217.8.35.61', 0, '', '', '', 1, '7513819', 2, '1399287749', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, 119, 6, '10.7.13.12', 0, '', '', '', 0, '', 2, '1399287749', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, 121, 3, '217.8.35.116', 0, '', '', '', 0, '', 2, '1399287961', 1, '1399288007', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, 121, 6, '10.7.13.14', 0, '', '', '', 0, '', 2, '1399287961', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, 124, 1, '109.74.70.152', 27, '109.74.70.129', '109.74.69.254', '193.111.11.2', 0, '', 2, '1399288063', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, 124, 3, '217.8.35.42', 0, '', '', '', 1, '7504094', 2, '1399288063', 1, '1399288063', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, 125, 1, '91.218.161.110', 28, '91.218.161.97', '91.218.160.3', '91.218.160.4', 0, '', 2, '1399288704', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, 125, 6, '10.5.11.1', 0, '', '', '', 0, '', 2, '1399288704', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, 461, 3, '217.8.35.156', 0, '', '', '', 0, '', 2, '1399289076', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, 461, 6, '10.5.11.2', 0, '', '', '', 0, '', 2, '1399289076', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ipconfig` (`id`, `id_device`, `connection_type`, `ip`, `mask`, `gateway`, `dns1`, `dns2`, `code_operator`, `sim_number`, `status`, `date_add`, `add_by`, `date_change`, `changed_by`, `descriptions`, `provider`, `tarif`, `speed`, `price`, `contract_number`, `contract_date`, `contract_action_from`, `contract_action_to`) VALUES
(350, 462, 3, '217.8.33.230', 0, '', '', '', 0, '', 2, '1399289176', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, 462, 6, '10.7.11.1', 0, '', '', '', 0, '', 2, '1399289211', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, 126, 3, '217.8.33.216', 0, '', '', '', 0, '', 2, '1399289330', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, 126, 6, '10.7.11.2', 0, '', '', '', 0, '', 2, '1399289352', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, 127, 3, '217.8.33.217', 0, '', '', '', 0, '', 2, '1399289404', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, 127, 6, '10.7.11.3', 0, '', '', '', 0, '', 2, '1399289404', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, 128, 3, '217.8.33.218', 0, '', '', '', 0, '', 2, '1399289513', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, 128, 6, '10.7.11.4', 0, '', '', '', 0, '', 2, '1399289513', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, 129, 3, '217.8.36.37', 0, '', '', '', 0, '', 2, '1399289574', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, 129, 6, '10.7.11.5', 0, '', '', '', 0, '', 2, '1399289574', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, 130, 3, '217.8.33.250', 0, '', '', '', 0, '', 2, '1399289636', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, 130, 6, '10.7.11.6', 0, '', '', '', 0, '', 2, '1399289636', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, 131, 3, '217.8.36.184 ', 0, '', '', '', 0, '', 2, '1399289702', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, 131, 6, '10.7.11.7', 0, '', '', '', 0, '', 2, '1399289702', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, 132, 3, '217.8.36.183', 0, '', '', '', 0, '', 2, '1399289760', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, 132, 6, '10.7.11.8', 0, '', '', '', 0, '', 2, '1399289760', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, 133, 3, '217.8.35.74', 0, '', '', '', 1, '7522374', 2, '1399289828', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, 133, 6, '10.7.11.9', 0, '', '', '', 0, '', 2, '1399289828', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, 134, 3, '217.8.35.75', 0, '', '', '', 1, '7521128', 2, '1399289961', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, 134, 6, '10.7.11.10', 0, '', '', '', 0, '', 2, '1399289961', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, 463, 3, '217.8.35.76', 0, '', '', '', 1, '7521123', 2, '1399290099', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, 463, 6, '10.7.11.11', 0, '', '', '', 0, '', 2, '1399290099', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, 136, 1, '217.11.179.103', 27, '217.11.179.97', '109.74.69.254', '193.111.11.2', 0, '', 2, '1399290206', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, 136, 1, '217.11.179.102', 27, '217.11.179.97', '109.74.69.254', '193.111.11.2', 0, '', 2, '1399290206', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, 136, 6, '10.3.3.8', 0, '', '', '', 0, '', 2, '1399290206', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, 467, 4, '192.168.7.14', 24, '192.168.7.12', '192.168.7.1', '192.168.7.12', 0, '', 2, '1404365063', 1, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, 466, 4, '192.168.7.29', 24, '192.168.7.12', '', '', 0, '', 2, '1404722610', 1, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, 1, 1, '', 1, '', '', '', NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, 1, 1, '100.100.100.101', 1, '100.100.100.100', '100.100.100.100', '100.100.100.100', NULL, NULL, 2, '1424251761', 1, '1424251943', 2, 'qwe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, 443, 2, '95.142.86.155', 29, '95.142.86.1', '95.142.86.158', '95.142.86.199', NULL, NULL, 2, '1430805078', 1, NULL, NULL, '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(384, 443, 2, '95.142.86.156', 28, '95.142.86.1', '95.142.86.159', '95.142.86.158', NULL, NULL, 2, '1430805688', 1, NULL, NULL, '', 1, 3, '1024/1024', 350, '135', '15.04.2015', '15.04.2015', '15.05.2015'),
(385, 443, 2, '142.142.142.42', 17, '142.142.142.42', '142.142.142.42', '142.142.142.42', NULL, NULL, 2, '1430894827', 1, NULL, NULL, '', 1, 3, '256/256', 350, '155/05.2015', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL,
  `router` varchar(50) DEFAULT NULL,
  `soft_version` varchar(20) DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL,
  `get_date` varchar(20) DEFAULT NULL,
  `script` int(11) DEFAULT NULL COMMENT 'id from spr_scripts',
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=585 COMMENT='InnoDB free: 5120 kB';

--
-- Дамп данных таблицы `log`
--

INSERT INTO `log` (`id`, `router`, `soft_version`, `model`, `get_date`, `script`, `status`) VALUES
(1, 'test_router', '6.5', 'RB951Ui-2HnD', '1404979353', 2, 2),
(2, 'test_router', '6.5', 'RB951Ui-2HnD', '1404979421', 1, 2),
(3, 'test_router', '6.15', 'RB951Ui-2HnD', '1404980129', 2, 2),
(4, 'test_router', '6.15', 'RB951Ui-2HnD', '1404981234', 1, 2),
(5, 'test_router', '', '', '1404981557', 2, 1),
(6, 'test_router', '6.15', 'RB951Ui-2HnD', '1404981990', 2, 2),
(7, 'test_router', '6.15', 'RB951Ui-2HnD', '1404982192', 2, 2),
(8, 'test_router', '6.15', 'RB951Ui-2HnD', '1404982435', 2, 2),
(9, 'test_router', '6.15', 'RB951Ui-2HnD', '1404982546', 1, 2),
(10, 'test_router', '6.15', 'RB951Ui-2HnD', '1404982794', 1, 2),
(11, 'test_router', '', '', '1404983064', 2, 1),
(12, 'test_router', '', '', '1404983144', 2, 1),
(13, 'test_router', '6.15', 'RB951Ui-2HnD', '1404983210', 1, 2),
(14, 'test_router', '6.15', 'RB951Ui-2HnD', '1404983283', 1, 2),
(15, 'test_router', '6.15', 'RB951Ui-2HnD', '1404983351', 1, 2),
(16, 'test_router', '6.15', 'RB951Ui-2HnD', '1404983441', 2, 2),
(17, 'test_router', '6.15', 'RB951Ui-2HnD', '1404983586', 2, 2),
(18, 'test_router', '', '', '1404983828', 1, 1),
(19, 'test_router', '6.15', 'RB951Ui-2HnD', '1404983878', 1, 3),
(20, 'test_router', '6.15', 'RB951Ui-2HnD', '1404984119', 1, 2),
(21, 'test_router', '6.15', 'RB951Ui-2HnD', '1404985485', 1, 2),
(22, 'test_router', '6.15', 'RB951Ui-2HnD', '1404985551', 1, 2),
(23, 'test_router', '6.15', 'RB951Ui-2HnD', '1404985589', 2, 2),
(24, 'test_router', '', '', '1404986131', 2, 1),
(25, 'test_router', '', '', '1404986201', 1, 1),
(26, 'test_router', '6.15', 'RB951Ui-2HnD', '1404986279', 1, 2),
(27, 'test_router', '6.15', 'RB951Ui-2HnD', '1404986344', 2, 2),
(28, 'test_router', '6.15', 'RB951Ui-2HnD', '1404986403', 1, 2),
(29, 'test_router', '6.15', 'RB951Ui-2HnD', '1404987531', 1, 2),
(30, 'test_router', '6.15', 'RB951Ui-2HnD', '1404987574', 2, 2),
(31, 'test_router', '6.15', 'RB951Ui-2HnD', '1404988208', 2, 2),
(32, 'test_router', '6.15', 'RB951Ui-2HnD', '1404988360', 1, 2),
(33, 'test_router', '6.15', 'RB951Ui-2HnD', '1404988397', 2, 2),
(34, 'test_router', '6.15', 'RB951Ui-2HnD', '1404988491', 2, 2),
(35, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `oblast`
--

CREATE TABLE IF NOT EXISTS `oblast` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oblast`
--

INSERT INTO `oblast` (`id`, `name`) VALUES
(1, 'Север'),
(2, 'Юг');

-- --------------------------------------------------------

--
-- Структура таблицы `podrazdelenie`
--

CREATE TABLE IF NOT EXISTS `podrazdelenie` (
  `id` int(11) NOT NULL,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `adres` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `podrazdelenie_type` int(11) DEFAULT NULL,
  `id_programmist` int(11) DEFAULT NULL,
  `id_oblast` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date_add` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `date_change` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `slave` int(11) NOT NULL DEFAULT '0',
  `forming_date` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `latitude` varchar(15) COLLATE utf8_bin DEFAULT NULL COMMENT 'Широта',
  `longitude` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'Долгота'
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AVG_ROW_LENGTH=220 COMMENT='InnoDB free: 3072 kB';

--
-- Дамп данных таблицы `podrazdelenie`
--

INSERT INTO `podrazdelenie` (`id`, `code`, `name`, `adres`, `region_id`, `parent_id`, `podrazdelenie_type`, `id_programmist`, `id_oblast`, `status`, `date_add`, `add_by`, `date_change`, `changed_by`, `position`, `slave`, `forming_date`, `latitude`, `longitude`) VALUES
(1, '0001', 'Головной', 'ул. Гагарина 135', 353, 0, 1, 22, 1, 2, NULL, 0, '2015-06-01 16:06:35', 1, 0, 0, '10.04.2015', '40.2853,69.6403', '40.2893,69.6324'),
(2, '0001', 'ЦБО Озода', 'Худжанд, ул. Шарк 6', 353, 313, 3, 2, 1, 2, '1389949730', 1, '2015-06-01 16:07:04', 1, 0, 0, '05.04.2015', '40.2853,69.6403', '40.2893,69.6324'),
(3, '0001', 'ЦБО Аэрокасса', 'ул. Ленина 561', 353, 313, 3, 2, 1, 2, '1389949829', 1, '1424236464', NULL, 0, 0, '0000-00-00', NULL, NULL),
(5, '0001', 'ЦБО 19 мкр', '19 мкр (магазин Оазис)', 353, 313, 3, 2, 1, 2, '1389949912', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(6, '0001', 'ЦБО Истиклол', 'мкр1', 313, 313, 3, 2, 1, 2, '1389951884', 1, '1391414415', 1, 0, 0, NULL, NULL, NULL),
(7, '0001', 'ПДП Шарк 86 а ', 'ул. Шарк 86 а ', 353, 313, 4, 2, 1, 2, '1389952744', 1, '1391414428', 1, 0, 0, NULL, NULL, NULL),
(8, '0001', 'ЦОП', 'ул.Гагарина 135', 353, 1, 4, 22, 1, 2, '1389952795', 1, '1404452310', 1, 0, 0, NULL, NULL, NULL),
(9, '0001', 'ПДП Рохи Абрешим', '34 мкр, "Рохи Абрешим" ', 353, 313, 4, 2, 1, 2, '1389952892', 1, '1391414442', 1, 0, 0, NULL, NULL, NULL),
(10, '0001', 'ПДП Ленина 72', 'улЛенин 72 ', 353, 313, 4, 2, 1, 2, '1389952943', 1, '1391414454', 1, 0, 0, NULL, NULL, NULL),
(11, '0001', 'ПДП Ленина 10 ', 'Худжанд,куч.Ленин 10 ', 353, 313, 4, 2, 1, 2, '1389953045', 1, '1391414462', 1, 0, 0, NULL, NULL, NULL),
(12, '0001', 'ПДП Самгар ', 'ш.Сомгар, куч.Ленин 83', 297, 313, 4, 2, 1, 3, '1389953108', 1, '1391414471', 1, 0, 0, NULL, NULL, NULL),
(13, '0001', 'ПДП Самгар ', 'ул. Хамзаалиев 35', 297, 313, 4, 2, 1, 2, '1389953163', 1, '1391414491', 1, 0, 0, NULL, NULL, NULL),
(14, '0001', 'ПДП Кайраккум', 'Адрасмон ул.Горкий 9 ', 71, 313, 4, 2, 1, 2, '1389953205', 1, '1391414504', 1, 0, 0, NULL, NULL, NULL),
(15, '0001', 'ПДП Автовакзал Пахтакор', 'ул. К.Худжанди 4 "г"', 353, 313, 4, 2, 1, 2, '1389953260', 1, '1391414533', 1, 0, 0, NULL, NULL, NULL),
(16, '0001', 'ПДП 31 микр.', 'ул. 30 солагии Галаба д.25 (31 микр)', 353, 313, 4, 2, 1, 2, '1389953303', 1, '1391414543', 1, 0, 0, NULL, NULL, NULL),
(17, '0001', 'ПДП Ёва', 'дж. Ёва, ул. Ёва 54 а', 353, 313, 4, 2, 1, 2, '1389953348', 1, '1391414555', 1, 0, 0, NULL, NULL, NULL),
(18, '0001', 'ПДП Унджи', 'М.Авезов б/н', 331, 313, 4, 2, 1, 2, '1389953390', 1, '1391414564', 1, 0, 0, NULL, NULL, NULL),
(19, '0001', 'ПДП Ленина 81', 'ул.Ленин 81', 353, 313, 4, 2, 1, 2, '1389953748', 1, '1391414574', 1, 0, 0, NULL, NULL, NULL),
(20, '0001', 'ПДП 19 мкр', '19 мкр (магазин Оазис)', 353, 313, 4, 2, 1, 2, '1389953934', 1, '1391414582', 1, 0, 0, '0000-00-00', NULL, NULL),
(21, '0010', 'Филиал Ашт', 'ул.Сомони 38', 364, 1, 2, 3, 1, 2, '1389954050', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(22, '0010', 'ЦБО Дусти', 'п.Дусти, ул.Дусти 1', 137, 21, 3, 3, 1, 2, '1389954126', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(23, '0010', 'ЦБО Мархамат', 'дж.Ошоба, п.Мархамат', 0, 21, 3, 3, 1, 2, '1389954213', 1, '1394487190', 1, 0, 0, NULL, NULL, NULL),
(24, '0010', 'ПДП Пангаз', 'уч.Пангаз', 258, 21, 4, 3, 1, 2, '1389954261', 1, '1389954327', 1, 0, 0, NULL, NULL, NULL),
(25, '0010', 'ПДП Бободархон', 'уч.Бободархон', 258, 21, 4, 3, 1, 2, '1389954339', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(26, '0010', 'ПДП Ленина 13/1', 'ул.Ленина 13/1', 364, 21, 4, 3, 1, 2, '1389954385', 1, '1389954443', 1, 0, 0, NULL, NULL, NULL),
(27, '0010', 'ПДП Сомони 270а', 'ул.Сомони 270а', 364, 21, 4, 3, 1, 2, '1389954445', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(28, '0010', 'ПДП Булок', 'уч.Булок', 374, 21, 4, 3, 1, 2, '1389954504', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(29, '0010', 'ПДП Мархамат', 'п.Мархамат', 255, 21, 4, 3, 1, 2, '1389954542', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(30, '0010', 'ПДП Чигда', 'уч.Чигда', 171, 21, 4, 3, 1, 2, '1389954883', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(31, '0010', 'ПДП Дусти', 'п.Дусти', 81, 21, 4, 3, 1, 2, '1389954940', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(32, '0010', 'ПДП Чарбулок', 'дж.Чарбулок, уч.Чарбулок', 355, 21, 4, 3, 1, 2, '1389954978', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(33, '0010', 'ПДП Пунук', 'уч.Пунук', 275, 21, 4, 3, 1, 2, '1389955033', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(34, '0010', 'НИП к.Ашт', 'Ашт', 81, 21, 4, 3, 1, 2, '1389955074', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(35, '0010', 'НИП к.Камишкургон', 'Камишкургон', 212, 21, 4, 3, 1, 2, '1389955132', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(36, '0010', 'НИП к.Дахана', 'п. Шайдон, Дахана', 364, 21, 4, 3, 1, 2, '1389955209', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(37, '0010', 'НИП п.Гулшан', 'Гулшан', 374, 21, 4, 3, 1, 2, '1389955246', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(38, '0010', 'ПДП Саро', ' Саро', 258, 21, 4, 3, 1, 2, '1389955289', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(39, '0010', 'ПДП Камишкургон-2', 'Камишкургон-2', 212, 21, 4, 3, 1, 2, '1389955336', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(40, '0005', 'Филиал Истаравшан ', 'ул. Рохи Ленин 12 "б"', 151, 1, 2, 4, 1, 2, '1389955379', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(41, '0005', 'ЦБО "Гули Сурх"', 'пос. Гули Сурх ТЦ "Мусаффо"', 151, 40, 3, 4, 1, 2, '1389955458', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(42, '0005', 'ЦБО "Гончи"', 'к. Бобо Саломов 11', 108, 40, 3, 4, 1, 2, '1389955575', 1, '1391422424', 1, 0, 0, NULL, NULL, NULL),
(43, '0005', 'ЦБО "Умаров"', 'к. А.Умаров 5', 151, 40, 3, 4, 1, 2, '1389955633', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(44, '0005', 'ЦБО "Айни"', 'к. Рудаки 5', 72, 40, 3, 4, 1, 2, '1389955685', 1, '1389955746', 1, 0, 0, NULL, NULL, NULL),
(45, '0005', 'ПДП ул.Ленина 112', 'ул.Ленина 112', 151, 40, 4, 4, 1, 2, '1389955748', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(46, '0005', 'ПДП ул.Ленина 129 ', 'ул.Ленина 129', 151, 40, 4, 4, 1, 2, '1389956003', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(47, '0005', 'ПДП ТЦ "Файз"', 'пос Гули Сурх ТЦ "Файз"', 151, 40, 4, 4, 1, 2, '1389956106', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(48, '0005', 'ПДП ул. А.Умаров 5', 'ул.А.Умаров 5', 151, 40, 4, 4, 1, 2, '1389956153', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(49, '0005', 'ПДП ул. Б.Саломов 11', 'ул.Б.Саломов 11', 108, 40, 4, 4, 1, 2, '1389956202', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(50, '0005', 'ПДП к.Нижный Далян', 'к.Нижный Далян', 108, 40, 4, 4, 1, 2, '1389956242', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(51, '0005', 'ПДП к.Верхный Далян', 'к.верхный Далян', 108, 40, 4, 4, 1, 2, '1389956279', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(52, '0005', 'ПДП ул. И.Сомони 12/1', 'ул И.Сомони 12/1', 108, 40, 4, 4, 1, 2, '1389956338', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(53, '0005', 'ПДП Шахристан-2', ' ул.Шахристан 2', 369, 40, 4, 4, 1, 2, '1389956383', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(54, '0005', 'ПДП к.Калъаи Мирзобой ', 'к.Калъаи Мирзобой', 108, 40, 4, 4, 1, 2, '1389956419', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(55, '0005', 'ПДП Гончи', 'к.А.Насриев 1', 108, 40, 4, 4, 1, 2, '1389956463', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(56, '0005', 'ПДП- А.Умаров 12 ', 'ул.  А.Умаров 12 ', 151, 40, 4, 4, 1, 2, '1389956514', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(57, '0005', 'ПДП Даштикон', 'пос. Даштикон', 108, 40, 4, 4, 1, 2, '1389956585', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(58, '0006', 'Филиал Исфара', 'Маркази 291', 152, 1, 2, 5, 1, 2, '1389956631', 1, '1390799531', 1, 0, 0, NULL, NULL, NULL),
(59, '0006', 'ЦБО ЧОРКУ', 'ул.Точикистон 12', 361, 58, 3, 5, 1, 2, '1389956699', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(60, '0006', 'ЦБО Чоми 15', 'ул.Чоми 15 ', 152, 58, 3, 5, 1, 2, '1389956752', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(61, '0006', 'ПДП Ворух2', 'ул. Рудаки Б/Н', 102, 58, 4, 5, 1, 2, '1389956789', 1, '1389956893', 1, 0, 0, NULL, NULL, NULL),
(62, '0006', 'ПДП Чоми 1', 'ул. Чоми 1', 152, 58, 4, 5, 1, 2, '1389956834', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(63, '0006', 'ПДП Нефтеабад', ' ул.Советская 52 "а"', 229, 58, 4, 5, 1, 2, '1389956895', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(64, '0006', 'ПДП Ворух', 'ул. Ленина 82', 102, 58, 4, 5, 1, 2, '1389956937', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(65, '0006', 'ПДП Чорку', 'ул. Навобод бн', 361, 58, 4, 5, 1, 2, '1389956983', 1, '1389957047', 1, 0, 0, NULL, NULL, NULL),
(66, '0006', 'ПДП Маркази 21', 'ул.Макарзи 21', 152, 58, 4, 5, 1, 2, '1389957048', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(67, '0006', 'ПДП Маркази 31', 'ул. Маркази 31', 152, 58, 4, 5, 1, 2, '1389957094', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(68, '0006', 'ПДП Чоми 77', 'ул. Чоми 77', 152, 58, 4, 5, 1, 2, '1389957138', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(69, '0006', 'ПДП Чилгази', 'ул.Ленина б/н', 356, 58, 4, 5, 1, 2, '1389957180', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(70, '0006', 'ПДП Кулкент', 'ул. Ленина бн', 187, 58, 4, 5, 1, 2, '1389957214', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(71, '0006', 'ПДП Сурх-2', 'Азимова 72', 310, 58, 4, 5, 1, 2, '1389957274', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(72, '0006', 'ПДП Чоми 30', 'ул.Чоми 30', 152, 58, 4, 5, 1, 2, '1389957334', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(73, '0006', 'ПДП Офтобруй', 'Офтобруй бн', 224, 58, 4, 5, 1, 2, '1389958070', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(74, '0006', 'ПДП Б.Махкамова', 'ул.Бобо Махкамова', 152, 58, 4, 5, 1, 2, '1389958117', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(75, '0006', 'ПДП Сурх-1', 'Б.Гафурова 42', 152, 58, 4, 5, 1, 2, '1389958166', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(76, '0006', 'ПДП Навгилем', 'ул.Л.Бузургзода 128', 152, 58, 4, 5, 1, 2, '1389958227', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(77, '0006', 'ПДП Лаккон', 'ул Маркази 53', 152, 58, 4, 5, 1, 2, '1389958274', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(78, '0006', 'ПДП ЧОРКУ', 'ул.Точикистон 12', 361, 58, 4, 5, 1, 2, '1389958314', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(79, '0006', 'ПДП Маркази 11', 'ул Маркази 11', 152, 58, 4, 5, 1, 2, '1389958355', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(80, '0006', 'ПДП Шамс', 'Навобод,магозаи "Шамс"', 152, 58, 4, 5, 1, 2, '1389958355', 1, '1389959179', 1, 0, 0, NULL, NULL, NULL),
(81, '0007', 'Филиал Панчикент', 'пр.Рудаки-97', 260, 1, 2, 6, 1, 2, '1389959182', 1, '1390793924', 1, 0, 0, NULL, NULL, NULL),
(82, '0007', 'ЦБО "Гусар"', 'дж.Л.Шерали Рудаки-85', 260, 81, 3, 6, 1, 2, '1389959414', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(83, '0007', 'ЦБО «Дарвозаи Бухор»', 'пр. Рудаки 141', 260, 81, 3, 6, 1, 2, '1389959540', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(84, '0007', 'ПДП Саразм', 'дж.Саразм,к-к Чимкурган  б/н', 260, 81, 4, 6, 1, 2, '1389959587', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(85, '0007', 'ПДП Рудаки-175', 'пр.Рудаки-175', 260, 81, 4, 6, 1, 2, '1389959870', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(86, '0007', 'ПДП Сугдиён', 'пос.Сугдиён', 182, 81, 4, 6, 1, 2, '1389959915', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(87, '0007', 'ПДП Ёри', 'к-к Ёри', 68, 81, 4, 6, 1, 2, '1389959974', 1, '1389960036', 1, 0, 0, NULL, NULL, NULL),
(88, '0007', 'ПДП Навобод', 'р-н,дж.Л.Шерали ,к-к Навобод', 260, 81, 4, 6, 1, 2, '1389960037', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(89, '0007', 'ПДП Маргедар', 'дж.Рудаки,к-к Маргедар', 260, 81, 4, 6, 1, 2, '1389960197', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(90, '0007', 'ПДП Советобод', 'к-к Советобод', 101, 81, 4, 6, 1, 2, '1389961566', 1, '1390017738', 1, 0, 0, NULL, NULL, NULL),
(91, '0007', 'ПДП Панджруд', 'дж.Рудаки,к-к Панджруд', 44, 81, 4, 6, 1, 2, '1390017740', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(92, '0007', 'ПДП Майкатта', 'дж.Амондара,к-к Майкатта', 75, 81, 4, 6, 1, 2, '1390017864', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(93, '0007', 'ПДП Магиян', 'к-к Магиян', 214, 81, 4, 6, 1, 2, '1390017919', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(94, '0007', 'ПДП Шинг', 'дж.Шинг,к-к Шинг', 372, 81, 4, 6, 1, 2, '1390017977', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(95, '0007', 'ПДП  Шурча', 'дж.Халифа Хасан,к-к Шурча', 260, 81, 4, 6, 1, 2, '1390018099', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(96, '0007', 'ПДП Рудаки-111', 'пр. Рудаки 111', 44, 81, 4, 6, 1, 2, '1390018213', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(97, '0013', 'Филиал Ч.Расулова', 'ул Нурматов 1', 272, 1, 2, 7, 1, 2, '1390018362', 1, '1391422169', 1, 0, 0, NULL, NULL, NULL),
(98, '', 'ЦБО Спитамен', 'ул. Ленина 54а', 308, 97, 3, 7, 1, 3, '1390018822', 1, '1399287196', 1, 0, 0, NULL, NULL, NULL),
(99, '0013', 'ЦБО Гулакандоз', 'Гулакандоз, ул. Д.Саматов б/н', 112, 97, 3, 7, 1, 2, '1390019298', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(100, '', 'ПДП Гафуров 1', 'ул. Гафуров 1', 308, 97, 4, 7, 1, 3, '1390019351', 1, '1399287356', 1, 0, 0, NULL, NULL, NULL),
(101, '', 'ПДП Ленина 44', 'Ленина 44', 249, 97, 4, 7, 1, 3, '1390019415', 1, '1399287269', 1, 0, 0, NULL, NULL, NULL),
(102, '0013', 'ПДП  Урушов 48', 'Пролетарск,Куркат. Ул. Урушов 48', 191, 97, 4, 7, 1, 2, '1390019508', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(103, '', 'ПДП Зафаробод', 'Ура-тюбе (бе ракам)', 144, 97, 4, 7, 1, 3, '1390019817', 1, '1399287378', 1, 0, 0, NULL, NULL, NULL),
(104, '0013', 'ПДП  Рудаки 104', 'ул Рудаки 104', 272, 97, 4, 7, 1, 2, '1390019855', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(105, '0013', 'ПДП Гулакандоз', 'Гулакандоз, ул. Ленина 35', 112, 97, 4, 7, 1, 2, '1390020153', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(106, '0013', 'ПДП Рудаки б/н', 'ул Рудаки б/н', 272, 97, 4, 7, 1, 2, '1390020204', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(107, '0013', 'ПДП Гулакандоз2', 'ул. Д.Самадов б/н', 112, 97, 4, 7, 1, 2, '1390020262', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(108, '', 'ПДП Зафаробод2', 'пос. Зафаробод, ул. А.Рудаки б/н', 144, 97, 4, 7, 1, 3, '1390020335', 1, '1399287643', 1, 0, 0, NULL, NULL, NULL),
(109, '', 'ПДП Юсуфи1', 'ул. Э.Юсуфи 1', 308, 97, 4, 7, 1, 3, '1390020462', 1, '1399287654', 1, 0, 0, NULL, NULL, NULL),
(110, '0013', 'ПДП Бозори Маркази', 'ул Рудаки б/н "Бозори Маркази"', 272, 97, 4, 7, 1, 2, '1390020550', 1, '1390214773', 1, 0, 0, NULL, NULL, NULL),
(111, '0013', 'ПДП Ашроф', 'ул Рохи Исфана Пролетар б/н "Бозори Ашроф"', 272, 97, 4, 7, 1, 2, '1390020618', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(112, '0011', 'Филиал Бустон', 'ул. И.Сомони 24', 89, 1, 2, 8, 1, 2, '1390020670', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(113, '0011', 'ЦБО Оббурдон', 'ринок.Вахдат', 239, 112, 3, 8, 1, 2, '1390020797', 1, '1390020887', 1, 0, 0, NULL, NULL, NULL),
(114, '0011', 'ПДП Оббурдон', 'ринок.Вахдат', 239, 112, 4, 8, 1, 2, '1390020954', 1, '1390735415', 1, 0, 0, NULL, NULL, NULL),
(115, '0011', 'ПДП Авзикент ', 'ул.Ч.Эргашов-19', 70, 112, 4, 8, 1, 2, '1390021021', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(116, '0011', 'ПДП Палдорак', 'ул.Каленина-1', 257, 112, 4, 8, 1, 2, '1390021095', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(117, '0011', 'ПДП Сомониен', 'Сомониен-б/н.', 205, 112, 4, 8, 1, 2, '1390021133', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(118, '0011', 'ПДП Матча', 'АХД "Хочи Амиров", ул.Комсомол-4', 205, 112, 4, 8, 1, 2, '1390021182', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(119, '0011', 'ПДП Комсомол', 'Комсомолская площадка, ул. С.Рачабов-1', 205, 112, 4, 8, 1, 2, '1390021224', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(120, '0011', 'ПДП Сомони-16', 'ул. И.Сомони-16', 89, 112, 4, 8, 1, 2, '1390021284', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(121, '0011', 'ПДП Обшорон', 'ул. С.Шарифов 11', 243, 112, 4, 8, 1, 2, '1390021348', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(122, '0008', 'Филиал Канибадам', 'ул.Ленина 348', 36, 1, 2, 14, 1, 2, '1390021543', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(123, '0008', 'ЦБО Маннонов', 'ул.Маннонова 65', 180, 122, 3, 14, 1, 2, '1390022504', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(124, '0008', 'ПДП Кучкак', 'с.Кучкак ул. Хамрабаева 150', 180, 122, 4, 14, 1, 2, '1390022627', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(125, '0008', 'ПДП Равот', 'с. Равот ул. Равотская 92  ', 180, 122, 4, 14, 1, 2, '1390022710', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(126, '0008', 'ПДП Шуркургон', 'с. Шуркургон ул. Пахтабад 63а', 180, 122, 4, 14, 1, 2, '1390022807', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(127, '0008', 'ПДП Ниезбек', 'с.Ниёзбек ул. Ленина 46', 180, 122, 4, 14, 1, 2, '1390022866', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(128, '0008', 'ПДП Махрам', 'с. Махрам ул. Мирзоалиева 1', 180, 122, 4, 14, 1, 2, '1390022942', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(129, '0008', 'ПДП Лохути', 'с.Лохути ул. Кодиров 47', 180, 122, 4, 14, 1, 2, '1390023016', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(130, '0008', 'ПДП Каракчикум', 'с.Каракчикум ул.Орженикидзе 17', 180, 122, 4, 14, 1, 2, '1390023096', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(131, '0008', 'ПДП Кучкак 2', 'с. Кучкак ул. Хамрабаева бн', 180, 122, 4, 14, 1, 2, '1390023149', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(132, '0008', 'ПДП Хамирчу', 'дж. Хамробоева с. Хамирчу ул. Ким', 180, 122, 4, 14, 1, 2, '1390023206', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(133, '0008', 'ПДП Пахтакор', 'дж. Шарипов, с. Пахтакор ул. Гафур Гулом', 180, 122, 4, 14, 1, 2, '1390023392', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(134, '0008', 'ПДП Ленина б/р', 'ул. Ленина Б/н', 180, 122, 4, 14, 1, 2, '1390023443', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(135, '0008', 'ПДП Каракчикум2', 'с.Каракчикум ул.Орженикидзе бн', 180, 122, 4, 14, 1, 2, '1390023479', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(136, '0008', 'Филиал Чкаловск', 'ул. Говорова 8а', 359, 1, 2, 9, 1, 2, '1390023598', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(137, '0008', 'ЦБО "Сомон"', 'ул. Ленина 44', 110, 136, 3, 9, 1, 2, '1390023658', 1, '1390023869', 1, 0, 0, NULL, NULL, NULL),
(138, '0008', 'ЦБО "Гафуров"', 'ул. Ленина 3', 110, 136, 3, 9, 1, 2, '1390023796', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(139, '0008', 'ЦБО "Кайраккум"', ' ул.Мухина 1', 157, 136, 3, 9, 1, 2, '1390023906', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(140, '0009', 'ЦБО "Корвон"', 'ул. Ленина Т/Ц "Корвон" ', 110, 136, 3, 9, 1, 2, '1390023982', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(141, '0009', 'ПДП "Исфисор"', 'ул.Гафуров 125', 110, 136, 4, 9, 1, 2, '1390024053', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(142, '0009', 'ПДП "Памир"', 'Космонавт 1/38', 359, 136, 4, 9, 1, 2, '1390024139', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(143, '0009', 'ПДП "Истиклол"', 'ул. Истиклол 54', 157, 136, 4, 9, 1, 2, '1390024185', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(144, '0016', 'Филиал Вахдат', 'ул.Тугдона-6', 96, 1, 2, 10, 2, 2, '1390024237', 1, '1390024804', 1, 0, 0, NULL, NULL, NULL),
(145, '0016', 'ЦБО Н.Розик-1', 'Вахдат,ул.Н.Розик-1', 95, 144, 3, 10, 2, 2, '1390024312', 1, '1390024794', 1, 0, 0, NULL, NULL, NULL),
(146, '0016', 'ПДП Фирдавси-45', 'ул.Фирдавси-45', 96, 144, 4, 10, 2, 2, '1390024440', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(147, '0016', 'ПДП Сомони-1', 'ул.Сомони-1', 96, 144, 4, 10, 2, 2, '1390024576', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(148, '0016', 'ПДП Рудаки-51', 'ул. Рудаки-51', 96, 144, 4, 10, 2, 2, '1390024647', 1, '1390024782', 1, 0, 0, NULL, NULL, NULL),
(149, '0016', 'ПДП Улугбек-1', 'ул.Улугбек-1', 96, 144, 4, 10, 2, 2, '1390024807', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(150, '0016', 'ПДП Гулистон', 'чамоати Гулистон', 96, 144, 4, 10, 2, 2, '1390024898', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(151, '0016', 'ПДП ул.Сомони-1', 'рн.Файзобод ул.Сомони-1', 96, 144, 4, 10, 2, 2, '1390024977', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(152, '0016', 'ПДП Сохтумончиён', 'ш.Рогун ул.Сохтумончиён', 96, 144, 4, 10, 2, 2, '1390025048', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(153, '0016', 'ПДП Тугдона-36', 'ул.Тугдона-36', 96, 144, 4, 10, 2, 2, '1390025128', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(154, '0016', 'ПДП Чангалобод', 'Чамоати Гулистон дехаи Чангалобод', 96, 144, 4, 10, 2, 2, '1390025206', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(155, '0016', 'ПДП Фиришти', 'Чамоати Симиганч дехаи Фиришти', 96, 144, 4, 10, 2, 2, '1390025255', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(156, '0016', 'ПДП Вахдатобод', 'Чамоати Карим Исмоил дехаи Вахдатобод', 96, 144, 4, 7, 2, 2, '1390025314', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(157, '0016', 'ПДП Фирдавси-45/1', 'ул.Фирдавси-45/1', 96, 144, 4, 10, 2, 2, '1390025383', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(158, '0003', 'Филиал Курган-тюбе', 'ул. вахдат, 9', 190, 1, 2, 11, 2, 2, '1390025432', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(159, '0003', 'ЦБО Маркс 23', ' р-он Ч.Руми ул Карл Маркс 23', 355, 158, 3, 11, 2, 2, '1390025524', 1, '1390025727', 1, 0, 0, NULL, NULL, NULL),
(160, '0003', 'ЦБО  1 май 26', 'ул.1 май 26', 137, 158, 3, 11, 2, 2, '1390025609', 1, '1390025850', 1, 0, 0, NULL, NULL, NULL),
(161, '0003', 'ЦБО Рахимов 6А', ' ул. И Рахимов 6А', 103, 158, 3, 11, 2, 2, '1390025732', 1, '1390025818', 1, 0, 0, NULL, NULL, NULL),
(162, '0003', 'ЦБО ТЦ.Равшан', 'ул. Сомони (ТЦ.Равшан)', 185, 158, 3, 11, 2, 2, '1390025852', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(163, '0003', 'ЦБО Хочи Шариф', 'рынок Хочи Шариф', 190, 158, 3, 11, 2, 2, '1390025911', 1, '1390199006', 1, 0, 0, NULL, NULL, NULL),
(164, '0003', 'ЦБО Ленина 49', 'пгт. ул. Ленина 49', 97, 158, 3, 11, 2, 2, '1390025999', 1, '1390026084', 1, 0, 0, NULL, NULL, NULL),
(165, '0003', 'ЦБО Крупская', 'р-он А.Чоми ул.Крупская', 190, 158, 3, 11, 2, 2, '1390026108', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(166, '0003', 'ЦБО', 'УЛ. И.СОМОНИ 49/Б', 58, 158, 3, 11, 2, 2, '1390032432', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(167, '0003', 'ЦБО Погранвойск 48', 'ул.50 лет Погранвойск 48', 45, 158, 3, 11, 2, 2, '1390032490', 1, '1390037932', 1, 0, 0, NULL, NULL, NULL),
(168, '0003', 'ПДП ', 'ул.И.Сомони 49/Б', 58, 158, 4, 11, 2, 3, '1390032568', 1, '1390736787', 1, 0, 0, NULL, NULL, NULL),
(169, '0003', 'ПДП Ленина, 28', 'ул. Ленина, 28', 58, 158, 4, 11, 2, 2, '1390032568', 1, '1390198975', 1, 0, 0, NULL, NULL, NULL),
(170, '0003', 'ПДП рынок Бахор', 'р-он А.Чоми ул.Сомониён рынок Бахор', 190, 158, 4, 11, 2, 2, '1390032829', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(171, '0003', 'ПДП Сомониён', 'р-он Ходжамастон пгт. ул. Сомониён,', 190, 158, 4, 11, 2, 2, '1390033362', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(172, '0003', 'ПДП рынок Авесто', 'р-он чиликул ул Лнина рынок Авесто', 190, 158, 4, 11, 2, 2, '1390033362', 1, '1390033713', 1, 0, 0, NULL, NULL, NULL),
(173, '0003', 'ПДП Курбонов 2', 'ул.Курбонов 2', 343, 158, 4, 11, 2, 2, '1390033716', 1, '1390033797', 1, 0, 0, NULL, NULL, NULL),
(174, '0003', 'ПДП Рудаки, 18', 'р-он москва пгт, ул. Рудаки, 18', 190, 158, 4, 11, 2, 2, '1390033799', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(175, '0003', 'ПДП Ленина 22/1', 'ул.Ленина 22/1', 338, 158, 4, 11, 2, 2, '1390033895', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(176, '0003', 'ПДП Файзали Саид', 'Файзали Саид дом1 ', 190, 158, 4, 11, 2, 2, '1390033998', 1, '1390214883', 1, 0, 0, NULL, NULL, NULL),
(177, '0003', 'ПДП АЙНИ 14', 'р-он Ч.Руми УЛЮ АЙНИ 14', 190, 158, 4, 11, 2, 2, '1390034076', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(178, '0003', 'ПДП Вахдат, 31', 'ул. Вахдат, 31', 190, 158, 4, 11, 2, 2, '1390034180', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(179, '0003', 'ПДП ул. Рудаки 52', 'ул. Рудаки 52', 278, 158, 4, 11, 2, 3, '1390034286', 1, '1392098488', 1, 0, 0, NULL, NULL, NULL),
(180, '0003', 'ПДП 50 лет Погранвойск 48', 'ул.50 лет Погранвойск 48', 278, 158, 4, 11, 2, 3, '1390034434', 1, '1392098557', 1, 0, 0, NULL, NULL, NULL),
(181, '0003', 'ПДП Хуросон г.Уяли ', 'г.Уяли ', 352, 158, 4, 11, 2, 2, '1390034582', 1, '1390034668', 1, 0, 0, NULL, NULL, NULL),
(182, '0003', 'ПДП  ТЦ "Аиннджон"', 'ул. Норинова, 38, ТЦ "Аиннджон"', 190, 158, 4, 11, 2, 2, '1390034671', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(183, '0003', 'ПДП Норинова 11', 'ул. Норинова 11', 190, 158, 4, 11, 2, 2, '1390034779', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(184, '0003', 'ПДП рынок Баракат', 'р-он Ч.Руми рынок Баракат', 190, 158, 4, 11, 2, 2, '1390034853', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(185, '0003', 'ПДП Дружба Народ дом 5', 'ул.Дружба Народ дом 5', 190, 158, 4, 11, 2, 2, '1390034929', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(186, '0003', 'ПДП ул. Сомони 24', 'ул. Сомони 24', 185, 158, 4, 11, 2, 2, '1390034990', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(187, '0003', 'ПДП Сомони 2', 'ул. Сомони 2', 185, 158, 4, 11, 2, 2, '1390035039', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(188, '0003', 'ПДП Сомони 15', 'ул. Сомони 15', 185, 158, 4, 11, 2, 2, '1390035409', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(189, '0003', 'ПДП Мирзокадырова 36', 'ул.Мирзокадырова 36', 190, 158, 4, 11, 2, 2, '1390035597', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(190, '0003', 'ПДП ресторан Н.Хусрав', 'ул.Ленин ресторан Н.Хусрав', 156, 158, 4, 11, 2, 2, '1390035660', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(191, '0003', 'ПДП Ленина 48', 'ул. Ленина 48', 156, 158, 4, 11, 2, 3, '1390035878', 1, '1391742934', 1, 0, 0, NULL, NULL, NULL),
(192, '0003', 'ПДП ул. Дагаева 26/2', 'ул. Дагаева 26/2', 121, 158, 4, 11, 2, 2, '1390036161', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(193, '0003', 'ПДП Комсомола 28', 'пгт. Исиоева ул. Комсомола 28', 103, 158, 4, 11, 2, 2, '1390036240', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(194, '0003', 'ПДП Ленина 49', 'ул. Ленина 49', 103, 158, 4, 11, 2, 2, '1390036326', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(195, '0003', 'ПДП Ленина 62 а', 'ул. Ленина 62 а', 97, 158, 4, 11, 2, 2, '1390037220', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(196, '0003', 'ПДП Б.Гафурова 19', 'ул. Б.Гафурова 19', 190, 158, 4, 11, 2, 2, '1390037287', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(197, '0003', 'ПДП рынок Хочи Шариф', 'рынок Хочи Шариф', 190, 158, 4, 11, 2, 2, '1390037363', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(198, '0003', 'ПДП ул. 1 Мая 9', 'ул. 1 Мая 9', 137, 158, 4, 11, 2, 2, '1390037415', 1, '1390037504', 1, 0, 0, NULL, NULL, NULL),
(199, '0003', 'ПДП Вахдат, 42', 'ул. Вахдат, 42', 190, 158, 4, 11, 2, 2, '1390037506', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(200, '0003', 'ПДП Сомони б/н', 'Хуросон, ул. Сомони б/н', 352, 158, 4, 11, 2, 2, '1390037615', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(201, '0003', 'ПДП Сино б/н', 'ул. Сино б/н', 88, 158, 4, 11, 2, 2, '1390037673', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(202, '0003', 'ПДП Нури Вахш', 'н.Чиликул, дж. Нури Вахш', 190, 158, 4, 11, 2, 2, '1390037738', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(203, '0003', 'ПДП Маркази 1', 'ул. Маркази 1', 121, 158, 4, 11, 2, 2, '1390189748', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(204, '0003', 'ПДП Карл Маркс', ' ул Карл Маркс', 355, 158, 4, 11, 2, 2, '1390189892', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(205, '0003', 'ПДП И.Сомони б/р', 'ул И.Сомони б/р', 58, 158, 4, 11, 2, 2, '1390190565', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(206, '0003', 'ПДП бозори Ином', 'И.Сомони бозори Ином', 58, 158, 4, 11, 2, 2, '1390190612', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(207, '0015', 'Филиал Турсунзаде', 'ул. И.Сомони 55', 327, 1, 2, 12, 2, 2, '1390190658', 1, '1390799551', 1, 0, 0, NULL, NULL, NULL),
(208, '0015', 'ЦБО "Сабо"', 'дж. Сабо уч. Навобод', 368, 207, 3, 12, 2, 2, '1390190750', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(209, '0015', 'ЦБО "Саховат"', 'ул. Б.Гафурова бн', 327, 207, 3, 12, 2, 2, '1390190835', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(210, '0015', 'ЦБО "П.Таджиева"', 'ул. П.Таджиева 5', 327, 207, 4, 12, 2, 2, '1390190876', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(211, '0015', 'ПДП ул. И.Сомони 8', 'ул. И.Сомони 8', 368, 207, 4, 12, 2, 2, '1390190935', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(212, '0015', 'ПДП ул. И.Сомони 94', 'ул. И.Сомони 94', 368, 207, 4, 12, 2, 2, '1390190981', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(213, '0015', 'ПДП Вокзалная 7', 'ул.Вокзалная 7', 252, 207, 4, 12, 2, 2, '1390191027', 1, '1390301912', 1, 0, 0, NULL, NULL, NULL),
(214, '0015', 'ПДП П.Таджиева 1', 'ул. П.Таджиева 1', 327, 207, 4, 12, 2, 2, '1390191115', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(215, '0015', 'ПДП И.Сомони 12', 'ул. И.Сомони 12', 327, 207, 4, 12, 2, 2, '1390191178', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(216, '0015', 'ПДП Б.Гафурова', 'ул. Б.Гафурова', 327, 207, 4, 12, 2, 2, '1390191226', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(217, '0015', 'ПДП Таджиева 5', 'ул. П.Таджиева 5', 327, 207, 4, 12, 2, 2, '1390191280', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(218, '0015', 'ПДП Таджиева 9', 'ул. П.Таджиева 9', 327, 207, 4, 12, 2, 2, '1390191324', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(219, '0015', 'ПДП Ленина 73', 'ул. Ленина 73', 327, 207, 4, 12, 2, 2, '1390191355', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(220, '0015', 'ПДП Таджиева 8', 'ул. П.Таджиева 8', 327, 207, 4, 12, 2, 2, '1390191390', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(221, '0015', 'ПДП Таджиева Б/Р', 'ул. П.Таджиева Б/Р', 327, 207, 4, 12, 2, 2, '1390191429', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(222, '0015', 'ПДП А.Мирзоев ', 'дж Ч.Рахмонов д А.Мирзоев', 327, 207, 4, 12, 2, 2, '1390191568', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(223, '0015', 'ПДП КБК', 'А.Хасанов д КБК', 368, 207, 4, 12, 2, 2, '1390191625', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(224, '0017', 'Филиал Гиссар', 'ул.И.Сомони 2', 347, 1, 2, 13, 2, 2, '1390191678', 1, '1390793958', 1, 0, 0, NULL, NULL, NULL),
(225, '0017', 'ЦБО бозори Самох', 'ул.60 летия  Гисара', 347, 224, 3, 13, 2, 2, '1390191759', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(226, '0017', 'ПДП Турсунзода 20', 'ул.Турсунзода 20', 347, 224, 4, 13, 2, 2, '1390191898', 1, '1390219003', 1, 0, 0, NULL, NULL, NULL),
(227, '0017', 'ПДП Юсуфи 11', 'ул.Юсуфи 11', 347, 224, 4, 13, 2, 2, '1390191941', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(228, '0017', 'ПДП Абдуллоев 28', 'ул.Абдуллоев 28', 347, 224, 4, 13, 2, 2, '1390191983', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(229, '0017', 'ПДП Бозори Самох', 'Бозори Самох', 347, 224, 4, 13, 2, 2, '1390192024', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(230, '0017', 'ПДП Чортеппа Айни', 'Чортеппа Айни', 347, 224, 4, 13, 2, 2, '1390192082', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(231, '0017', 'ПДП Шарора', 'Шарора', 347, 224, 4, 13, 2, 2, '1390192122', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(232, '0017', 'ПДП д.Шуроб', 'дж.Сомон, дех.Шуроб', 347, 224, 4, 13, 2, 2, '1390192160', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(233, '0017', 'ПДП дех. Дурбат', 'Гисар,дж. Дурбат, дех. Дурбат', 347, 224, 4, 13, 2, 2, '1390192272', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(234, '0017', 'ПДП дех Хисор', 'дех Хисор', 347, 224, 4, 13, 2, 2, '1390192387', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(235, '0017', 'ПДП И. Сомони 47', 'ул. И. Сомони 47', 347, 224, 4, 13, 2, 2, '1390192443', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(236, '0014', 'Филиал Яван', 'ул. Гагарина 2а', 378, 1, 2, 16, 2, 2, '1390192510', 1, '1390199062', 1, 0, 0, NULL, NULL, NULL),
(237, '0014', 'ЦБО Турсунзода 20 ', 'ул. Турсунзода 20 ', 378, 236, 3, 16, 2, 2, '1390192559', 1, '1390199088', 1, 0, 0, NULL, NULL, NULL),
(238, '0014', 'ЦБО Норак', 'ул. Рудаки 7а', 236, 236, 3, 16, 2, 2, '1390192631', 1, '1390199107', 1, 0, 0, NULL, NULL, NULL),
(239, '0014', 'ПДП по ул Базарная', 'ул. Базараная тц "Саъдулло"', 378, 236, 4, 16, 2, 2, '1390192729', 1, '1390199156', 1, 0, 0, NULL, NULL, NULL),
(240, '0014', 'ПДП по ул. Ленина 36а', 'ул. Ленина 36 а', 378, 236, 4, 16, 2, 2, '1390192785', 1, '1390199175', 1, 0, 0, NULL, NULL, NULL),
(241, '0014', 'ПДП пос. Дахана', 'дж. Дахана, пос. Дахана, тц "Ходжи Нуриддин"', 125, 236, 4, 16, 2, 2, '1390192857', 1, '1390199186', 1, 0, 0, NULL, NULL, NULL),
(242, '0014', 'ПДП пос. Урта-Кайнар', 'пос. Урта-Кайнар, ул. Урта-Кайнар 1', 378, 236, 4, 16, 2, 2, '1390192929', 1, '1390199203', 1, 0, 0, NULL, NULL, NULL),
(243, '0014', 'ПДП г. Нурек ул Рудаки', 'ул. Рудаки (центральные ворота базара)', 236, 236, 4, 16, 2, 2, '1390193018', 1, '1390199212', 1, 0, 0, NULL, NULL, NULL),
(244, '0014', 'ПДП Пахтакор', 'д.Пахтакор', 378, 236, 4, 16, 2, 2, '1390193075', 1, '1390199224', 1, 0, 0, NULL, NULL, NULL),
(245, '0014', 'ПДП Базарная 2', 'ул. Базараная 2  (наваш )', 378, 236, 4, 16, 2, 2, '1390193141', 1, '1390199250', 1, 0, 0, NULL, NULL, NULL),
(246, '0014', 'ПДП А.Навои', 'ч.Хаёти нав д. А.Навои', 345, 236, 4, 16, 2, 2, '1390193212', 1, '1390199276', 1, 0, 0, NULL, NULL, NULL),
(247, '0014', 'ПДП Комсомол б/р', 'ул. Комсомол б/р', 378, 236, 4, 16, 2, 2, '1390193483', 1, '1390199307', 1, 0, 0, NULL, NULL, NULL),
(248, '0002', 'Филиал Душанбе', 'ул.Н.Каробоев 16', 5, 1, 2, 15, 2, 2, '1390193556', 1, '1390194980', 1, 0, 0, NULL, NULL, NULL),
(249, '0002', 'ЦБО Садбарг', 'хиёб. Рудаки 3а  ', 5, 248, 3, 15, 2, 2, '1390193673', 1, '1390195000', 1, 0, 0, NULL, NULL, NULL),
(250, '', 'ЦБО  Н.Каробоев  77', 'ул.Н.Каробоев  77', 5, 248, 3, 15, 2, 2, '1390195328', 1, '1399265351', 1, 0, 0, NULL, NULL, NULL),
(251, '', 'ул.Шамси 23 "Саодат"          ', 'ЦБО  "Саодат"          ', 5, 248, 3, 15, 2, 2, '1390195436', 1, '1399265477', 1, 0, 0, NULL, NULL, NULL),
(252, '', 'ЦБО Корвон                     ', 'бозори Корвон', 5, 248, 3, 15, 2, 2, '1390195511', 1, '1399265574', 1, 0, 0, NULL, NULL, NULL),
(253, '', 'ЦБО  И.Сомони', 'И.Сомони', 10, 248, 3, 15, 2, 2, '1390195572', 1, '1399265711', 1, 0, 0, NULL, NULL, NULL),
(254, '', 'ЦБО Дарвоз 63 (С.Кабир)', 'ул.Дарвоз 63 (С.Кабир)', 5, 248, 3, 15, 2, 2, '1390195656', 1, '1399265788', 1, 0, 0, NULL, NULL, NULL),
(255, '', 'ПДП Ч.Расулов 10', 'Ч.Расулов 10', 5, 248, 3, 15, 2, 3, '1390195711', 1, '1399265907', 1, 0, 0, NULL, NULL, NULL),
(256, '0002', 'ПДП Борбад 165', 'ул. Борбад 165', 5, 248, 4, 15, 2, 2, '1390195851', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(257, '0002', 'ПДП Айни 269а', 'ул. Айни 269а', 5, 248, 4, 15, 2, 2, '1390195918', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(258, '0002', 'ПДП Сомони 57', 'ул. Сомони 57', 10, 248, 4, 15, 2, 2, '1390195964', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(259, '0002', 'ПДП Маърифат 6', 'ул. Маърифат 6', 10, 248, 4, 15, 2, 2, '1390196015', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(260, '0002', 'ПДП М.Турсунзода', 'М.Турсунзода', 10, 248, 4, 15, 2, 2, '1390196056', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(261, '0002', 'ПДП  Куштеппа   3, 153', 'Чамоат «Россия », Куштеппа   3, 153', 10, 248, 4, 15, 2, 2, '1390196139', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(262, '0002', 'ПДП Н.Карабаева 89/1', 'ул. Н.Карабаева 89/1', 5, 248, 4, 15, 2, 2, '1390196201', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(263, '0002', 'ПДП C.Шерози  19', 'ул. C.Шерози  19', 5, 248, 4, 15, 2, 2, '1390196279', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(264, '0002', 'ПДП  Айни 80/1', 'ул. Айни 80/1', 5, 248, 4, 15, 2, 2, '1390196324', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(265, '0002', 'ПДП Хамадони 20/2', 'ул. Хамадони 20/2', 5, 248, 4, 15, 2, 2, '1390196365', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(266, '0002', 'ПДП Испечак', 'мах.Испечак', 5, 248, 4, 15, 2, 2, '1390196431', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(267, '0002', 'ПДП Мухаммад 5/1', 'ул. Мухаммад 5/1', 5, 248, 4, 15, 2, 2, '1390196477', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(268, '0002', 'ПДП Зайнобод', 'Зайнобод', 10, 248, 4, 15, 2, 2, '1390196609', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(269, '0002', 'ПДП Набиева 7 ', 'ул. Набиева 7 ', 5, 248, 4, 15, 2, 2, '1390196646', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(270, '0002', 'ПДП Ак-курган', 'Ак-курган', 5, 248, 4, 15, 2, 2, '1390196700', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(271, '0002', 'ПДП Бухоро 49', 'ул. Бухоро 49', 5, 248, 4, 15, 2, 2, '1390196763', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(272, '0003', 'ПДП Айни 289', 'ул. Айни 289', 5, 248, 4, 15, 2, 2, '1390196804', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(273, '0002', 'ПДП Турсунзода 83', 'ул. Турсунзода 83', 5, 248, 4, 15, 2, 2, '1390196844', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(274, '0002', 'ПДП Лохути 91', 'ул. Лохути 91', 5, 248, 4, 15, 2, 2, '1390196899', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(275, '0002', 'ПДП Рудаки 128', 'Рудаки 128', 5, 248, 4, 15, 2, 2, '1390196956', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(276, '', 'ПДП Ч.Расулов 10', 'ул. Ч.Расулов 10', 5, 248, 4, 15, 2, 3, '1390197001', 1, '1399268506', 1, 0, 0, NULL, NULL, NULL),
(277, '0002', 'ПДП Каххорова 206/1', 'ул. Каххорова 206/1', 5, 248, 4, 15, 2, 2, '1390197101', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(278, '0002', 'ПДП Рудаки 136', 'ш.Душанбе, Рудаки 136', 5, 248, 4, 15, 2, 2, '1390197156', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(279, '0002', 'ПДП Нусратулло Махсум', 'Нусратулло Махсум', 5, 248, 4, 15, 2, 2, '1390197284', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(280, '0002', 'ПДП Репина 1А', 'ул. Репина 1А', 5, 248, 4, 15, 2, 2, '1390197321', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(281, '0002', 'ПДПКаххорова 110', 'ул. Каххорова 110', 5, 248, 4, 15, 2, 2, '1390197363', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(282, '0002', 'ПДП Сомони б/н', 'ул. Сомони б/н', 10, 248, 4, 15, 2, 2, '1390197401', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(283, '0002', 'ПДП Айни 118', 'ул.Айни 118', 5, 248, 4, 15, 2, 2, '1390197451', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(284, '0002', 'ПДП мах Гулистон', 'мах. Гулистон', 5, 248, 4, 15, 2, 2, '1390197504', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(285, '0002', 'ПДП Лохур', 'мах Лохур', 5, 248, 4, 15, 2, 2, '1390197560', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(286, '0020', 'Филиал Гафуров', 'ул. Ленина 3', 110, 1, 2, 17, 1, 2, '1390197614', 1, '1390197788', 1, 0, 0, NULL, NULL, NULL),
(287, '0020', 'ЦБО Хизтеварз', 'ул.Х.Кенчаев 5 ', 173, 286, 3, 17, 1, 2, '1390197790', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(288, '0020', 'ЦБО Овчикалача', 'ул.Чак 1 ', 245, 286, 3, 17, 1, 2, '1390197871', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(289, '0020', 'ПДП Ленина 5 ', 'ул. Ленина 5 ', 110, 286, 4, 17, 1, 2, '1390197914', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(290, '0020', 'ПДП Овчикалача', 'ул.Чак 1 ', 245, 286, 4, 17, 1, 2, '1390197965', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(291, '0020', 'ПДП Кистакуз 2', 'ул.Д.Зокиров', 173, 286, 4, 17, 1, 2, '1390198034', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(292, '0020', 'ПДП Кавсар', '120 квартал  магазин Кавсар', 110, 286, 4, 17, 1, 2, '1390198083', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(293, '0020', 'ПДП Гафуров Ленина 2а', 'ул.Ленина 2а', 110, 286, 4, 17, 1, 2, '1390198123', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(294, '0020', 'ПДП Т.Искандаров', 'ул. Т.Искандаров', 245, 286, 4, 17, 1, 2, '1390198157', 1, '1390214808', 1, 0, 0, NULL, NULL, NULL),
(295, '0020', 'ПДП Р.Юлдошев 84', 'ул. Р.Юлдошев 84', 168, 286, 4, 17, 1, 2, '1390198192', 1, '1390214900', 1, 0, 0, NULL, NULL, NULL),
(296, '0018', 'Филиал Курган-тюбе 2', 'ул. Норинова1а', 190, 1, 2, 23, 2, 2, '1390198229', 1, '1391420115', 1, 0, 0, NULL, NULL, NULL),
(297, '0019', 'Филиал Кумсангир', 'пгт Дусти ул.1 май 26', 189, 1, 2, 18, 2, 2, '1390198314', 1, '1390565055', 1, 0, 0, NULL, NULL, NULL),
(298, '0021', 'Филиал Восеъ', 'ул. И Рахимов 6А', 103, 1, 2, 24, 2, 2, '1390198499', 1, '1392102214', 1, 0, 0, NULL, NULL, NULL),
(299, '0021', 'ПДП Чума Али 158', 'ул. Чума Али 158', 185, 298, 4, 24, 2, 2, '1390198660', 1, '1392102228', 1, 0, 0, NULL, NULL, NULL),
(300, '0021', 'ПДП И.Сомони 4', 'ул. И.Сомони 4', 185, 298, 4, 24, 2, 2, '1390198725', 1, '1392102243', 1, 0, 0, NULL, NULL, NULL),
(301, '0022', 'Филиал Спитамен', 'ул. Ленина 54а', 308, 1, 2, 0, 1, 1, '1390198778', 1, '1396331486', 1, 0, 0, NULL, NULL, NULL),
(302, '0001', 'ЦБО  31 мкр.', 'ул. 30 солагии Галаба  (31 микр)', 353, 313, 3, 2, 1, 2, '1390215268', 1, '1391414592', 1, 0, 0, NULL, NULL, NULL),
(303, '0002', 'ПДП Карабаева 86/1', 'ул.Карабаева 86/1', 5, 248, 4, 15, 2, 1, '1390215428', 1, '1390215557', 1, 0, 0, NULL, NULL, NULL),
(304, '0002', 'ПДП Борбад 99/2', 'ул.Борбад 99/2', 5, 248, 4, 15, 2, 1, '1390215497', 1, '1390215567', 1, 0, 0, NULL, NULL, NULL),
(305, '0002', 'ПДП Маяковский 78', 'ул.Маяковский 78', 5, 248, 4, 15, 2, 1, '1390215569', 1, '1390215623', 1, 0, 0, NULL, NULL, NULL),
(306, '0001', 'ПДП 40 сола', 'ул. 50 солагии Точикистон 134', 0, 313, 4, 2, 1, 2, '1390561225', 1, '1394485324', 1, 0, 0, NULL, NULL, NULL),
(307, '0019', 'ПДП Панч', '50 солагии Кушунхои Сархади 28', 277, 297, 4, 18, 2, 2, '1390561378', 1, '1391419706', 1, 0, 0, NULL, NULL, NULL),
(308, '0015', 'ПДП И.Сомони 30', 'ул. И.Сомони 30', 327, 207, 4, 12, 2, 3, '1390562703', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(309, '0011', 'ПДП Сугдиён', 'с/с Сугдиён, ул. М.Ашуров 1', 89, 112, 4, 8, 1, 2, '1390563025', 1, '1390563276', 1, 0, 0, NULL, NULL, NULL),
(310, '0011', 'ПДП Ю.Вафо', 'АХД Ю.Вафо ул. М.Азизов 60', 239, 112, 4, 8, 1, 2, '1390563143', 1, '1390563284', 1, 0, 0, NULL, NULL, NULL),
(311, '0011', 'ПДП Ф.Султонов', 'АХД Ф.Султонов ул. Н.Хусрав', 239, 112, 4, 8, 1, 2, '1390563199', 1, '1390563295', 1, 0, 0, NULL, NULL, NULL),
(312, '0004', 'Филиал Худжанд', 'ул.Ленина 40', 353, 1, 2, 21, 1, 2, '1390802237', 1, '1390802935', 1, 0, 0, NULL, NULL, NULL),
(313, '0001', 'Операционное упровление', 'ул. Гагарина 135', 353, 1, 2, 2, 1, 2, '1391410742', 1, '1424674682', 1, 0, 0, NULL, NULL, NULL),
(314, '0020', 'ПДП  1-май', 'ш-ки Гафуров ул. 1 май 13', 0, 286, 4, 17, 1, 2, '1391742129', 1, '1394485513', 1, 0, 0, NULL, NULL, NULL),
(315, '0003', 'ПДП Вахш. ул. Ленина 48', 'ул. Ленина 48', 97, 158, 4, 11, 2, 3, '1391742957', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(316, '0011', 'ПДП М.Ашуров 1', 'с/с Сугдиён, ул. М.Ашуров 1', 0, 112, 4, 8, 1, 2, '1391743276', 1, '1394482367', 1, 0, 0, NULL, NULL, NULL),
(320, '0003', 'ПДП Логинова 46', 'ул. Логинова 46', 190, 158, 4, 11, 2, 2, '1391744188', 1, '1391744308', 1, 0, 0, NULL, NULL, NULL),
(321, '0003', 'ПДП ул. А. Кахоров', 'ул. А. Кахоров', 190, 158, 4, 11, 2, 2, '1391744427', 1, '1392096185', 1, 0, 0, NULL, NULL, NULL),
(322, '0003', 'ПДП А.Чоми ул.Сомониён 20', 'А.Чоми ул.Сомониён 20', 190, 158, 4, 11, 2, 2, '1391744510', 1, '1391744631', 1, 0, 0, NULL, NULL, NULL),
(325, '0003', 'ПДП Чоми ул.Сомониён магозаи 5', 'А.Чоми ул.Сомониён магозаи 5', 190, 158, 4, 11, 2, 3, '1392094930', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(326, '0008', 'ПДП Кизилнур', 'с. Кизилнур ул. Мукими б/н', 263, 122, 4, 14, 1, 2, '1392095113', 1, '1392095643', 1, 0, 0, NULL, NULL, NULL),
(327, '0008', 'ПДП Шахидкароянток', 'дж.Ортиков с. Шахидкароянток ул. 1 май б/н', 180, 122, 4, 14, 1, 3, '1392095262', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(328, '0008', 'ПДП Маданият', 'ул. Б.Турсунов б/н', 36, 122, 4, 14, 1, 3, '1392095321', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(329, '0008', 'ПДП Ленина 336', 'ул. Ленина 336', 36, 122, 4, 14, 1, 3, '1392095492', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(330, '0008', 'ПДП Зарбад', 'Канибадам, дж. Пулодон, с. Зарбед ул. Зарбед б/н', 274, 122, 4, 14, 1, 3, '1392095551', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(331, '0015', 'ПДП Дусти 1', 'ул.Дусти 1', 368, 207, 4, 12, 2, 3, '1392096651', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(332, '0016', 'ПДП Андигон', 'Ч.А.Абдулвосиев дехаи Андигон', 96, 144, 4, 10, 2, 2, '1392096906', 1, '1392097110', 1, 0, 0, NULL, NULL, NULL),
(333, '0009', 'ПДП "ЗОС"', 'Институти тадкикоти илмии зироаткори ул.А.Алиев 3/1', 153, 136, 4, 9, 1, 3, '1392097242', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(334, '0019', 'ЦБО Панч', '50 солагии Кушунхои Сархади 48', 277, 297, 3, 18, 2, 2, '1392097382', 1, '1396331208', 1, 0, 0, NULL, NULL, NULL),
(335, '0019', 'ПДП Дусти', 'р-он Дусти ул. 1 Мая 9', 137, 297, 4, 18, 2, 2, '1392097594', 1, '1392097695', 1, 0, 0, NULL, NULL, NULL),
(336, '0019', 'ПДП Рудаки 62', 'пгт. ул. Рудаки 62', 45, 297, 4, 18, 2, 2, '1392097780', 1, '1392097853', 1, 0, 0, NULL, NULL, NULL),
(337, '0005', 'ПДП Бозори маркази', 'Бозори маркази', 151, 40, 4, 4, 1, 3, '1392098128', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(338, '0007', 'ПДП Рудаки-156', 'пр. Рудаки 156', 260, 81, 4, 6, 1, 3, '1392100550', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(339, '0010', 'ПДП Бурак', ' м. Бурак', 258, 21, 4, 3, 1, NULL, '1394480084', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(340, '0010', 'ПДП Гулшан', ' ш. Гулшан к. И.Сомони 22/а', 117, 21, 4, 3, 1, NULL, '1394480270', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(341, '0005', 'ПДП Боги Калон', 'Истаравшан, к. Боги Калон б/р', 151, 40, 4, 4, 1, NULL, '1394480870', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(342, '0005', 'ПДП к.Холик Рачабов', 'к.Холик Рачабов б/р', 151, 40, 4, 4, 1, NULL, '1394481094', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(343, '0006', 'ПДП 50 солагии Октябр 46а', 'ул. 50-солагии Октябр 46а', 152, 58, 4, 5, 1, NULL, '1394481304', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(344, '0013', 'ПДП Гулакандоз3', ' ул. Д.Саматов ТАКХ "Арванд"', 112, 97, 4, 7, 1, NULL, '1394481580', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(345, '0013', 'ПДП Ленина 11', 'ул Ленина 11 ', 272, 97, 4, 7, 1, NULL, '1394481729', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(346, '0013', 'ПДП Зафаробод Х.Алиев', 'ш. Х.Алиев, к. Хилоли б/р', 144, 97, 4, 7, 1, NULL, '1394481880', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(347, '0013', 'ПДП Зафаробод Мехнатобод', ' ш. Мехнатобод, к. Богот б/р', 144, 97, 4, 7, 1, NULL, '1394482000', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(348, '0016', 'ЦБО Файзобод ул.Сомони-1', 'Файзобод ул.Сомони-1', 7, 144, 3, 10, 2, NULL, '1394482636', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(349, '0016', 'ЦБО Улугбек-1', 'ул.Улугбек-1', 96, 144, 3, 10, 2, NULL, '1394482798', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(350, '0015', 'ЦБО П.Таджиева', 'ул. П.Таджиева 5', 327, 207, 3, 12, 2, NULL, '1394483228', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(351, '0015', 'ПДП Чапаева б/р', 'к. Чапаева б/р', 327, 207, 4, 12, 2, NULL, '1394483466', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(352, '0014', 'ПДП д. Даштобод', 'д.Даштобод', 243, 236, 4, 16, 2, NULL, '1394483766', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(353, '0014', 'ПДП Сомониен', ' бозори "Сомониён"', 236, 236, 4, 16, 2, NULL, '1394483988', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(354, '0014', 'ПДП Рудаки 22', 'к. Рудаки 22', 236, 236, 4, 16, 2, NULL, '1394484178', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(355, '0002', 'ПДП  Айни 19-3', ' Айни 19-3', 138, 248, 4, 15, 2, NULL, '1394484412', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(356, '0002', 'ПДП Сомони, тц "Сабина"', 'Сомони, тц "Сабина"', 10, 248, 4, 15, 2, NULL, '1394484668', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(357, '0001', 'ПДП Ватан', 'ул. К.Хучнади 108 (Ватан)', 353, 313, 4, 2, 1, NULL, '1394485008', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(358, '0001', 'Сартукай № 38(УОЗК)', 'Сартукай № 38(УОЗК)', 353, 313, 3, 2, 1, NULL, '1399262817', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(359, '0001', 'ПДП 32 мкр', '32 мкр. ул. 60 солагии октябр', 353, 313, 4, 2, 1, NULL, '1399264319', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(360, '0001', 'ПДП 13 мкр', 'ш.Худжанд, 13 мкр', 353, 313, 4, 2, 1, NULL, '1399264319', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(361, '0001', 'ПДП Гозиён', 'куч Пулод Бобокалонов б/р', 111, 313, 4, 2, 1, NULL, '1399264319', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(362, '0001', 'ПДП Истиклол', 'ш.Истиклол 1 мкр б/р', 2, 313, 4, 2, 1, NULL, '1399264319', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(363, '0002', 'ЦБО Ч.Расулов 3', 'ул.Ч.Расулов 3', 5, 248, 3, 15, 2, NULL, '1399266306', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(364, '0002', 'ПДП  Матросов 5', 'ш.Душанбе, к. Матросов 5', 5, 248, 4, 15, 2, NULL, '1399269764', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(366, '0005', 'ПДП Гули Сурх-2', 'Гули Сурх 2', 32, 40, 4, 4, 1, NULL, '1399278384', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(367, '0005', 'ПДП Бобосаломов 11', 'к. Бобосаломов 11', 108, 40, 4, 4, 1, NULL, '1399278603', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(368, '0005', 'ПДП ', 'Янгиарики Поён', 108, 40, 4, 4, 1, NULL, '1399278603', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(369, '0005', 'ПДП Дилшод', 'кучаи Дилшод', 32, 40, 4, 4, 1, NULL, '1399278603', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(370, '0006', 'ЦБО Маркази 29/1', 'ул.Маркази 29/1', 33, 58, 3, 5, 1, NULL, '1399279327', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(371, '0006', 'ПДП Б.Гафуров 83/2', 'кучаи Б.Гафуров 83/2', 33, 58, 4, 5, 1, NULL, '1399283609', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(372, '0007', 'ПДП Хурми Сухроб', 'ул. Сухроб', 351, 81, 4, 6, 1, NULL, '1399286269', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(373, '0007', 'ПДП Рудаки Зери Хисор', 'ул. Зери Хисор', 446, 81, 4, 6, 1, NULL, '1399286269', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(374, '0007', 'ПДП Шерали Гусар', 'дж. Л.Шерали, ул.Гусар', 260, 81, 4, 6, 1, NULL, '1399286269', 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(375, '0011', 'ЦБО Навбахор', 'дж. Навбахор, ул. Ч.Эргашев 19', 40, 112, 4, 8, 1, 1, '1399288795', 1, '1425976326', 1, 0, 0, NULL, NULL, NULL),
(376, '', 'Новый', 'Новый', 353, 0, 4, 1, 1, 2, '1430889822', 1, NULL, NULL, 0, 0, '', NULL, NULL),
(377, '', 'Test', 'Test', 353, 0, 4, 1, 1, 2, '1430890531', 1, NULL, NULL, 0, 0, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `programmists`
--

CREATE TABLE IF NOT EXISTS `programmists` (
  `id` int(11) NOT NULL,
  `surname` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `patronymic` varchar(40) DEFAULT NULL,
  `operator` int(11) DEFAULT NULL,
  `tell` varchar(10) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `password` text,
  `status` enum('admin','user') DEFAULT 'user',
  `comment_access` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=528 COMMENT='InnoDB free: 11264 kB';

--
-- Дамп данных таблицы `programmists`
--

INSERT INTO `programmists` (`id`, `surname`, `name`, `patronymic`, `operator`, `tell`, `email`, `login`, `password`, `status`, `comment_access`) VALUES
(1, 'Юнусов', 'Мубин', '', 1, '7960093', 'M.Yunusov@eskhata.tj', 'admin', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin', 1),
(2, 'Исомадинов', 'Начмидин', '', 1, '7799776', 'n.isomadinov@eskhata.tj', 'n_isomadinov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 1),
(3, 'Бердиев', 'Баходур', '', 1, '7661655', 'B.Berdiev@eskhata.tj', 'B_Berdiev', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 0),
(4, 'Миразимов', 'Баходур', '', 1, '7100000', 'B.Mirazimov@eskhata.tj', 'B_Mirzoazimov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 1),
(5, 'Самадов', 'Абдусамад', '', 1, '7702277', 'A.Samadov@eskhata.tj', 'A_Samadov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 1),
(6, 'Кенчаев', 'Неъматчон', '', 1, '8126606', 'N.Kenjaev@eskhata.tj', 'N_Kenjaev', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 1),
(7, 'Рахмонов', 'Бехзод', '', 1, '8454809', 'B.Rahmonov@eskhata.tj', 'B_Rahmonov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 1),
(8, 'Сафаров ', 'Хасанчон', 'Сафарбекович', 1, '7185008', 'safarov.h@eskhata.tj', 'h_safarov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 1),
(9, 'Сайфиддинов', 'Мухсинчон', '', 1, '7755446', 'M.Sayfiddinov@eskhata.tj', 'M_Sayfiddinov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 1),
(10, 'Астанкулов', 'Абдурахим', '', 2, '4849009', 'A.Astanakulov@eskhata.tj', 'A_Astanakulov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 0),
(11, 'Рахимов', 'Комрон', '', 5, '7330880', 'K.Rakhimov@eskhata.tj', 'K_Rakhimov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 1),
(12, 'Исматов', 'Одилчон', '', 1, '8454767', 'Ismatovo@eskhata.tj', 'O_Ismatov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 1),
(13, 'Чабборов', 'Фирдавс', '', 2, '7239990', 'F.Jabborov@eskhata.tj', 'F_Jabborov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 1),
(14, 'Исроилов', 'Максудчон', '', 1, '9755181', 'M.Isroilov@eskhata.tj', 'M_Isroilov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 1),
(15, 'Сулейманов', 'Фаррух', '', 5, '0098809', 'Farruh@eskhata.tj', 'F_Suleymanov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 1),
(16, 'Шарифов', 'Диловар', '', 2, '4165359', 'D.Sharifov@eskhata.tj', 'D.Sharifov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 1),
(17, 'Исмоилов', 'Шухратчон', '', 1, '7827572', 'Sh.Ismoilov@eskhata.tj', 'Sh_Ismoilov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 1),
(18, 'Хасанов', 'Халирахмон', '', 2, '4536833', 'H.Hasanov@eskhata.tj', 'H_Hasanov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 1),
(19, 'Джалолов', 'Азимджон', '', 1, '7999649', 'A.Jalolov@eskhata.tj', 'A_Jalolov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin', 1),
(20, 'Шарипов', 'Насимчон', '', 1, '7248303', 'Ns.Sharipov@eskhata.tj', 'Ns_Sharipov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin', 1),
(21, 'Хамидов', 'Анатолий', '', 1, '7660205', 'A.Hamidov@eskhata.tj', 'A_Hamidov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 1),
(22, 'Абдурахимов', 'Бахриддин', '', 1, '7565388', 'B.Abdurahimov@eskhata.tj', 'B_Abdurahimov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 0),
(23, 'Хайдаров', 'Рахимчон', '', 3, '483029', 'R.Haydarov@eskhata.tj', 'R_Haydarov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 1),
(24, 'Шеров', 'Фирдавс', '', 2, '9536390', 'F.Sherov@eskhata.tj', 'F_Sherov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 1),
(25, 'Сирочиддинов', 'Сирочиддин', '', 1, '7901133', 'S.Sirojidinov@eskhata.tj', 'S_Sirojidinov', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin', 0),
(26, '1111', 'test1', 'test1', 1, '7541452', 'test1', 'test', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', 0),
(28, 'Точибоев', 'Равшан', '', 5, '0098700', 'r.tojiboev@eskhata.tj', 'r_tojiboev', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `provider_problem`
--

CREATE TABLE IF NOT EXISTS `provider_problem` (
  `id` int(11) NOT NULL,
  `podrazdelenie_id` int(11) DEFAULT NULL,
  `device_id` int(11) DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `date_begin` varchar(20) DEFAULT NULL,
  `date_end` varchar(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `provider_problem`
--

INSERT INTO `provider_problem` (`id`, `podrazdelenie_id`, `device_id`, `provider_id`, `reason`, `date_begin`, `date_end`, `image`) VALUES
(1, 1, 443, 5, 'Нет доступ к сети Интернету.', '15.04.2015 09:27', '17.04.2015 19:26', NULL),
(2, 1, 443, 2, 'Нет доступ к сети Интернета.', '01.04.2015 09:16', '14.04.2015 10:56', NULL),
(3, 1, 443, 1, 'Нет доступ к сети Интернету.', '14.04.2015 12:33', '14.04.2015 01:16', NULL),
(4, 1, 443, 2, 'Нет доступ к сети Интернету.', '14.04.2015 12:39', '14.04.2015 01:15', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `slave` binary(1) NOT NULL DEFAULT '0',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `ownerEl` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=486 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=77 COMMENT='InnoDB free: 11264 kB';

--
-- Дамп данных таблицы `region`
--

INSERT INTO `region` (`id`, `name`, `parent_id`, `slave`, `position`, `ownerEl`) VALUES
(1, 'Таджикистан', 0, 0x30, 0, 1),
(2, 'Согдийская область', 1, 0x30, 0, 0),
(3, 'Хатлонская область', 1, 0x30, 7, 0),
(4, 'Горно-Бадахшанская Автономная область', 1, 0x30, 6, 0),
(5, 'Душанбе', 1, 0x30, 20, 0),
(6, 'Варзобский район', 1, 0x30, 7, 0),
(7, 'Вахдатский район', 1, 0x30, 7, 0),
(8, 'Гиссарский район', 1, 0x30, 6, 0),
(9, 'Нурабадский район', 3, 0x30, 32, 0),
(10, 'Район Рудаки', 66, 0x30, 1, 0),
(11, 'Районы Республиканского Подчинения', 10, 0x30, 1, 0),
(12, 'Раштский район', 11, 0x30, 1, 0),
(13, 'Рогунский район', 12, 0x30, 1, 0),
(14, 'Шахринавский район', 65, 0x30, 0, 0),
(15, 'А.Сино', 5, 0x30, 0, 0),
(16, 'Айнинский район', 110, 0x30, 1, 0),
(17, 'Аштский район', 2, 0x30, 1, 0),
(18, 'Б.Гафуровский район', 2, 0x30, 1, 0),
(19, 'Бальджувонский район', 3, 0x30, 0, 0),
(20, 'Бешкентский район', 3, 0x30, 0, 0),
(21, 'Бохтарский район', 286, 0x30, 1, 0),
(22, 'Ванчский район', 23, 0x30, 1, 0),
(23, 'Вахшский район', 3, 0x30, 0, 0),
(24, 'Восейский район', 3, 0x30, 0, 0),
(25, 'Ганчинский район', 2, 0x30, 1, 0),
(26, 'Дангаринский район', 27, 0x30, 1, 0),
(27, 'Дарвозский район', 4, 0x30, 0, 0),
(28, 'Джабар-Расуловский район', 2, 0x30, 1, 0),
(29, 'Джиликульский район', 3, 0x30, 0, 0),
(30, 'Зафарободский район', 2, 0x30, 1, 0),
(31, 'И. Сомони', 5, 0x30, 0, 0),
(32, 'Истаравшанский  район', 2, 0x30, 1, 0),
(33, 'Исфаринский район', 2, 0x30, 1, 0),
(34, 'Ишкашимский район', 4, 0x30, 0, 0),
(35, 'Кабодиёнский район', 3, 0x30, 0, 0),
(36, 'Канибадамский район', 2, 0x30, 1, 0),
(37, 'Кулябский район', 3, 0x30, 0, 0),
(38, 'Кумсангирский район', 3, 0x30, 0, 0),
(39, 'Кухистони Мастчохский район', 2, 0x30, 1, 0),
(40, 'Матчинский район', 2, 0x30, 1, 0),
(41, 'Мургабский район', 40, 0x30, 0, 0),
(42, 'Нурекский район', 3, 0x30, 0, 0),
(43, 'Пархарский район', 45, 0x30, 1, 0),
(44, 'Пенджикентский район', 2, 0x30, 1, 0),
(45, 'Пянджский район', 46, 0x30, 1, 0),
(46, 'Район А.Джами', 47, 0x30, 1, 0),
(47, 'Район Хамадони', 3, 0x30, 0, 0),
(48, 'районы г.  Душанбе', 5, 0x30, 0, 0),
(49, 'Рошткалинский район', 4, 0x30, 0, 0),
(50, 'Рушанский район', 4, 0x30, 0, 0),
(51, 'Сарбандский район', 53, 0x30, 1, 0),
(52, 'Спитаменский  район', 2, 0x30, 1, 0),
(53, 'Темурмаликский район', 55, 0x30, 1, 0),
(54, 'Фирдавси', 5, 0x30, 0, 0),
(55, 'Ховалингский район', 56, 0x30, 1, 0),
(56, 'Хуросонский район', 3, 0x30, 0, 0),
(57, 'Чалолиддин Руми район', 3, 0x30, 0, 0),
(58, 'Шаартузский район', 62, 0x30, 1, 0),
(59, 'Шахристанский район', 52, 0x30, 3, 0),
(60, 'Шохмансур', 5, 0x30, 0, 0),
(61, 'Шугнанский район', 4, 0x30, 0, 0),
(62, 'Шурообод', 63, 0x30, 1, 0),
(63, 'Яванский район', 57, 0x30, 1, 0),
(64, '50-летие Таджикской ССР', 46, 0x30, 0, 0),
(65, 'DUSHANBE', 13, 0x30, 1, 0),
(66, 'KHUJAND', 7, 0x30, 1, 0),
(67, 'Ёва', 18, 0x30, 0, 0),
(68, 'Ёри', 44, 0x30, 0, 0),
(69, 'Авангард', 21, 0x30, 0, 0),
(70, 'Авзикент', 40, 0x30, 1, 0),
(71, 'Адрасман', 52, 0x30, 1, 0),
(72, 'Айнинский', 16, 0x30, 0, 0),
(73, 'Аличур', 41, 0x30, 0, 0),
(74, 'Алтын-Топкан', 52, 0x30, 2, 0),
(75, 'Амондара', 44, 0x30, 0, 0),
(76, 'Андароб', 34, 0x30, 0, 0),
(77, 'Анзоб', 16, 0x30, 0, 0),
(78, 'Араб', 45, 0x30, 0, 0),
(79, 'Арал', 24, 0x30, 0, 0),
(80, 'Аральский', 46, 0x30, 0, 0),
(81, 'Ашт', 12, 0x30, 0, 0),
(82, 'Б.Гафуров', 18, 0x30, 0, 0),
(83, 'Бальджувон', 19, 0x30, 0, 0),
(84, 'Барвоз', 49, 0x30, 0, 0),
(85, 'Бартанг', 50, 0x30, 0, 0),
(86, 'Басид', 50, 0x30, 0, 0),
(87, 'Бахрушан', 50, 0x30, 0, 0),
(88, 'Бохтар', 21, 0x30, 0, 0),
(89, 'Бустон', 40, 0x30, 1, 0),
(90, 'Бустонкала', 21, 0x30, 0, 0),
(91, 'Ванкала', 61, 0x30, 0, 0),
(92, 'Ванч', 22, 0x30, 5, 0),
(93, 'Ватан', 53, 0x30, 0, 0),
(94, 'Ватан', 43, 0x30, 0, 0),
(95, 'Вахдат', 51, 0x30, 0, 0),
(96, 'Вахдат', 7, 0x30, 0, 0),
(97, 'Вахш', 23, 0x30, 0, 0),
(98, 'Вир', 61, 0x30, 0, 0),
(99, 'Вишхарв', 27, 0x30, 0, 0),
(100, 'Водхуд', 139, 0x30, 1, 0),
(101, 'Вору', 44, 0x30, 0, 0),
(102, 'Ворух', 33, 0x30, 0, 0),
(103, 'Восе', 24, 0x30, 0, 0),
(104, 'Вранг', 34, 0x30, 0, 0),
(105, 'Гаджиабад', 28, 0x30, 0, 0),
(106, 'Гайрат', 43, 0x30, 0, 0),
(107, 'Галаба', 43, 0x30, 0, 0),
(108, 'Ганчи', 25, 0x30, 0, 0),
(109, 'Гаравути', 29, 0x30, 0, 0),
(110, 'Гафуров', 2, 0x30, 1, 0),
(111, 'Гозиён', 18, 0x30, 0, 0),
(112, 'Гулакандоз', 28, 0x30, 0, 0),
(113, 'Гулистан', 24, 0x30, 0, 0),
(114, 'Гулистан', 51, 0x30, 0, 0),
(115, 'Гулисурх', 32, 0x30, 0, 0),
(116, 'Гульхона', 28, 0x30, 0, 0),
(117, 'Гульшан', 43, 0x30, 0, 0),
(118, 'Гулякандоз', 28, 0x30, 0, 0),
(119, 'Д.Холматов', 18, 0x30, 0, 0),
(120, 'Дальёни-Боло', 25, 0x30, 0, 0),
(121, 'Дангара', 26, 0x30, 0, 0),
(122, 'Дардар', 16, 0x30, 0, 0),
(123, 'Даркад', 43, 0x30, 0, 0),
(124, 'Дарморахт', 61, 0x30, 0, 0),
(125, 'Дахана', 37, 0x30, 0, 0),
(126, 'Даханакиик', 3, 0x30, 3, 0),
(127, 'Даштигуль', 47, 0x30, 0, 0),
(128, 'Дектур', 19, 0x30, 0, 0),
(129, 'Дехконабадский', 29, 0x30, 0, 0),
(130, 'Дехконарык', 43, 0x30, 0, 0),
(131, 'Дехмой', 28, 0x30, 0, 0),
(132, 'Дж. Расулов', 7, 0x30, 0, 0),
(133, 'Джавкандак', 32, 0x30, 0, 0),
(134, 'Джами', 30, 0x30, 0, 0),
(135, 'Джиликуль', 29, 0x30, 0, 0),
(136, 'Дуконинский', 42, 0x30, 1, 0),
(137, 'Дусти', 38, 0x30, 0, 0),
(138, 'Душанбе', 5, 0x30, 0, 0),
(139, 'Жовид', 22, 0x30, 0, 0),
(140, 'Зарбдор', 37, 0x30, 0, 0),
(141, 'Заргарон', 21, 0x30, 0, 0),
(142, 'Заркух', 55, 0x30, 0, 0),
(143, 'Зафар', 43, 0x30, 0, 0),
(144, 'Зафаробод', 30, 0x30, 0, 0),
(145, 'Зеравшан', 16, 0x30, 0, 0),
(146, 'Зираки', 37, 0x30, 0, 0),
(147, 'Зонг', 34, 0x30, 0, 0),
(148, 'Иван-Таджик', 39, 0x30, 0, 0),
(149, 'Исмоил', 18, 0x30, 0, 0),
(150, 'Исмоили Самони', 21, 0x30, 0, 0),
(151, 'Истаравшан', 152, 0x30, 1, 0),
(152, 'Исфара', 157, 0x30, 1, 0),
(153, 'Исфисор', 18, 0x30, 0, 0),
(154, 'Иттифок', 46, 0x30, 0, 0),
(155, 'Ишкашим', 34, 0x30, 0, 0),
(156, 'Кабодиён', 35, 0x30, 0, 0),
(157, 'Кайраккум', 260, 0x30, 1, 0),
(158, 'Калаибаланд', 32, 0x30, 0, 0),
(159, 'Калаихум', 27, 0x30, 0, 0),
(160, 'Калининабад', 25, 0x30, 0, 0),
(161, 'Калининский', 21, 0x30, 0, 0),
(162, 'Калининский', 47, 0x30, 0, 0),
(163, 'Калининский', 57, 0x30, 0, 0),
(164, 'Кангурт', 53, 0x30, 0, 0),
(165, 'Кансай', 157, 0x30, 0, 0),
(166, 'Каракамиш', 53, 0x30, 0, 0),
(167, 'Каракуль', 41, 0x30, 0, 0),
(168, 'Катаган', 18, 0x30, 0, 0),
(169, 'Кахрамон', 47, 0x30, 0, 0),
(170, 'Ким', 33, 0x30, 0, 0),
(171, 'Кирккудук', 17, 0x30, 0, 0),
(172, 'Кировский', 23, 0x30, 0, 0),
(173, 'Кистакуз', 18, 0x30, 0, 0),
(174, 'Козидех', 34, 0x30, 0, 0),
(175, 'Колхозчиён', 44, 0x30, 0, 0),
(176, 'Коммунизм', 32, 0x30, 0, 0),
(177, 'Комсомол', 43, 0x30, 0, 0),
(178, 'Комсомольский', 20, 0x30, 0, 0),
(179, 'Конакурган', 41, 0x30, 0, 0),
(180, 'Конибодом', 2, 0x30, 29, 0),
(181, 'Корез', 26, 0x30, 0, 0),
(182, 'Косатарош', 44, 0x30, 0, 0),
(183, 'Куйбышевск', 46, 0x30, 0, 0),
(184, 'Куйбышевский', 21, 0x30, 0, 0),
(185, 'Кулоб', 37, 0x30, 0, 0),
(186, 'Кульдиман', 45, 0x30, 0, 0),
(187, 'Кулькент', 33, 0x30, 0, 0),
(188, 'Куляб', 3, 0x30, 0, 0),
(189, 'Кумсангир', 38, 0x30, 0, 0),
(190, 'Кургонтеппа', 3, 0x30, 0, 0),
(191, 'Куркат', 52, 0x30, 0, 0),
(192, 'Куруксай', 40, 0x30, 1, 0),
(193, 'Кушкия', 53, 0x30, 0, 0),
(194, 'Куштегирмон', 52, 0x30, 0, 0),
(195, 'Куштеппа', 44, 0x30, 0, 0),
(196, 'Кызылкалинский', 56, 0x30, 0, 0),
(197, 'Кызылрабат', 41, 0x30, 0, 0),
(198, 'Лаккон', 33, 0x30, 0, 0),
(199, 'Лангар', 39, 0x30, 0, 0),
(200, 'Лахутинский', 55, 0x30, 0, 0),
(201, 'Ленинабад', 32, 0x30, 0, 0),
(202, 'Лолазор', 26, 0x30, 0, 0),
(203, 'Лохур', 26, 0x30, 0, 0),
(204, 'Маданият', 57, 0x30, 0, 0),
(205, 'Мастчох', 40, 0x30, 1, 0),
(206, 'Матчинский', 40, 0x30, 1, 0),
(207, 'Машал', 23, 0x30, 0, 0),
(208, 'Мехнатабад', 30, 0x30, 0, 0),
(209, 'Мехнатабад', 24, 0x30, 0, 0),
(210, 'Мехнатабад', 21, 0x30, 0, 0),
(211, 'Мехнатабадский', 47, 0x30, 0, 0),
(212, 'Мехробод', 12, 0x30, 0, 0),
(213, 'Мичуринский', 24, 0x30, 0, 0),
(214, 'Могиён', 44, 0x30, 0, 0),
(215, 'Муджум', 25, 0x30, 0, 0),
(216, 'Муминобод', 3, 0x30, 0, 0),
(217, 'Мургаб', 41, 0x30, 0, 0),
(218, 'Навабад', 12, 0x30, 0, 0),
(219, 'Навабад', 61, 0x30, 0, 0),
(220, 'Навабад', 35, 0x30, 0, 0),
(221, 'Навабадский', 57, 0x30, 0, 0),
(222, 'Навабадский', 10, 0x30, 0, 0),
(223, 'Навбахор', 21, 0x30, 0, 0),
(224, 'Навгилем', 33, 0x30, 0, 0),
(225, 'Навзамин', 29, 0x30, 0, 0),
(226, 'Навкорам', 63, 0x30, 0, 0),
(227, 'Намуна', 45, 0x30, 0, 0),
(228, 'Наугарзан', 17, 0x30, 3, 0),
(229, 'Нефтеабад', 33, 0x30, 0, 0),
(230, 'Ниджони', 32, 0x30, 0, 0),
(231, 'Нов', 52, 0x30, 0, 0),
(232, 'Норын', 63, 0x30, 0, 0),
(233, 'Нофародж', 32, 0x30, 0, 0),
(234, 'Нульванд', 27, 0x30, 0, 0),
(235, 'Нурабад', 9, 0x30, 0, 0),
(236, 'Нурек', 42, 0x30, 1, 0),
(237, 'Нури Вахш', 29, 0x30, 0, 0),
(238, 'Нуробод', 11, 0x30, 0, 0),
(239, 'Оббурдон', 40, 0x30, 1, 0),
(240, 'Обигарм', 13, 0x30, 0, 0),
(241, 'Обикиик', 56, 0x30, 0, 0),
(242, 'Обимуки', 63, 0x30, 0, 0),
(243, 'Обшорон', 58, 0x30, 0, 0),
(244, 'Овчи', 25, 0x30, 0, 0),
(245, 'Овчикалача', 18, 0x30, 0, 0),
(246, 'Озоди', 63, 0x30, 0, 0),
(247, 'Окгаза', 23, 0x30, 0, 0),
(248, 'Оксу', 26, 0x30, 0, 0),
(249, 'Октеппа', 52, 0x30, 0, 0),
(250, 'Октябрь', 49, 0x30, 0, 0),
(252, 'Октябрьский', 65, 0x30, 2, 0),
(253, 'Орзу', 57, 0x30, 0, 0),
(254, 'Ориён', 12, 0x30, 0, 0),
(255, 'Ошоба', 12, 0x30, 0, 0),
(256, 'Палас', 484, 0x30, 0, 0),
(257, 'Палдорак', 40, 0x30, 1, 0),
(258, 'Пангаз', 17, 0x30, 0, 0),
(259, 'Панжаб', 47, 0x30, 0, 0),
(260, 'Панчакент', 44, 0x30, 1, 0),
(261, 'Пархар', 43, 0x30, 0, 0),
(262, 'Пастхуф', 50, 0x30, 0, 0),
(263, 'Патар', 36, 0x30, 0, 0),
(264, 'Пахтаабад', 24, 0x30, 0, 0),
(265, 'Пахтаабад', 58, 0x30, 0, 0),
(266, 'Пахтакор', 24, 0x30, 0, 0),
(267, 'Пахтакорон', 30, 0x30, 0, 0),
(268, 'Пахтакорский', 18, 0x30, 0, 0),
(269, 'Поршнев', 61, 0x30, 0, 0),
(270, 'Пошкент', 32, 0x30, 0, 0),
(271, 'Правда', 32, 0x30, 0, 0),
(272, 'Пролетар', 28, 0x30, 0, 0),
(273, 'Пулисангинский', 42, 0x30, 1, 0),
(274, 'Пулотон', 36, 0x30, 0, 0),
(275, 'Пунук', 12, 0x30, 0, 0),
(276, 'Пушинг', 26, 0x30, 0, 0),
(277, 'Пяндж', 38, 0x30, 0, 0),
(278, 'Пяндж', 45, 0x30, 0, 0),
(279, 'Равшан', 30, 0x30, 0, 0),
(280, 'Район А.Сино', 31, 0x30, 1, 0),
(281, 'Район И. Сомони', 31, 0x30, 0, 0),
(282, 'Район Фирдавси', 54, 0x30, 0, 0),
(283, 'Район Шохмансур', 60, 0x30, 0, 0),
(284, 'Район районы г.  Душанбе', 48, 0x30, 0, 0),
(285, 'Рангкуль', 41, 0x30, 0, 0),
(286, 'Рарз', 16, 0x30, 9, 0),
(287, 'Рашт', 288, 0x30, 1, 0),
(288, 'Рованд', 289, 0x30, 1, 0),
(289, 'Рогун', 13, 0x30, 0, 0),
(290, 'Росровут', 25, 0x30, 0, 0),
(291, 'Рохи Ленин', 23, 0x30, 0, 0),
(292, 'Рошткала', 49, 0x30, 0, 0),
(293, 'Рушан', 50, 0x30, 0, 0),
(294, 'Савноб', 50, 0x30, 0, 0),
(295, 'Сагирдашт', 27, 0x30, 0, 0),
(296, 'Сайёд', 58, 0x30, 0, 0),
(297, 'Самгар', 18, 0x30, 0, 0),
(298, 'Сангтуда', 26, 0x30, 0, 0),
(299, 'Сарбанд', 43, 0x30, 1, 0),
(300, 'Сарихосор', 19, 0x30, 0, 0),
(301, 'Сармантой', 45, 0x30, 0, 0),
(302, 'Саталмуш', 19, 0x30, 0, 0),
(303, 'Себистонский', 26, 0x30, 0, 0),
(304, 'Сежд', 49, 0x30, 0, 0),
(305, 'Ситораи Сурх', 63, 0x30, 0, 0),
(306, 'Сомониён', 10, 0x30, 0, 0),
(307, 'Сохчарв', 61, 0x30, 0, 0),
(308, 'Спитамен', 52, 0x30, 0, 0),
(309, 'Суджина', 44, 0x30, 0, 0),
(310, 'Сурх', 33, 0x30, 0, 0),
(311, 'Сучон', 61, 0x30, 0, 0),
(312, 'Сырдарьинский', 2, 0x30, 28, 0),
(313, 'Табошар', 157, 0x30, 2, 0),
(314, 'Тавдем', 49, 0x30, 0, 0),
(315, 'Тагояк', 52, 0x30, 0, 0),
(316, 'Таджикабад', 23, 0x30, 0, 0),
(317, 'Таджикистан', 19, 0x30, 0, 0),
(320, 'Танобчи', 53, 0x30, 0, 0),
(321, 'Тельманский', 38, 0x30, 0, 0),
(322, 'Темурмалик', 53, 0x30, 0, 0),
(323, 'Техарв', 22, 0x30, 0, 0),
(325, 'Тугарак', 24, 0x30, 0, 0),
(326, 'Тугуль', 45, 0x30, 0, 0),
(327, 'Турсунзода', 11, 0x30, 0, 0),
(328, 'Тусен', 49, 0x30, 0, 0),
(329, 'Узбеккишлак', 28, 0x30, 0, 0),
(330, 'Узун', 57, 0x30, 0, 0),
(331, 'Унджи', 18, 0x30, 0, 0),
(332, 'Урметан', 16, 0x30, 7, 0),
(333, 'Уткансой', 18, 0x30, 0, 0),
(334, 'Файзабад', 18, 0x30, 0, 0),
(335, 'Файзобод', 11, 0x30, 0, 0),
(336, 'Фармонкургон', 52, 0x30, 0, 0),
(337, 'Фароб', 44, 0x30, 0, 0),
(338, 'Фархор', 43, 0x30, 0, 0),
(339, 'Фируза', 20, 0x30, 0, 0),
(340, 'Фондарья', 16, 0x30, 8, 0),
(341, 'Фрунзенский', 32, 0x30, 0, 0),
(342, 'Хайдар Усмон', 18, 0x30, 0, 0),
(343, 'Хамадони', 47, 0x30, 0, 0),
(344, 'Хамрабаев', 36, 0x30, 0, 0),
(345, 'Хаётинав', 63, 0x30, 0, 0),
(346, 'Хилоли', 56, 0x30, 0, 0),
(347, 'Хисор', 8, 0x30, 0, 0),
(348, 'Ховалинг', 55, 0x30, 0, 0),
(349, 'Хонабад', 33, 0x30, 0, 0),
(350, 'Хорог', 4, 0x30, 0, 0),
(351, 'Хурми', 44, 0x30, 0, 0),
(352, 'Хуросон', 51, 0x30, 1, 0),
(353, 'Хучанд', 2, 0x30, 0, 0),
(354, 'Ч.Расулов', 28, 0x30, 0, 0),
(355, 'Чалолиддин Руми', 57, 0x30, 0, 0),
(356, 'Чильгази', 33, 0x30, 0, 0),
(357, 'Чимкургон', 44, 0x30, 0, 0),
(358, 'Чинорский', 44, 0x30, 0, 0),
(359, 'Чкалов', 483, 0x30, 1, 0),
(360, 'Чоргуль', 63, 0x30, 0, 0),
(361, 'Чорку', 33, 0x30, 0, 0),
(362, 'Чорух-Дайрон', 157, 0x30, 3, 0),
(363, 'Чубек', 47, 0x30, 0, 0),
(364, 'Шайдон', 12, 0x30, 0, 0),
(365, 'Шамтуч', 16, 0x30, 0, 0),
(366, 'Шарора', 8, 0x30, 0, 0),
(367, 'Шахрак', 33, 0x30, 0, 0),
(368, 'Шахринав', 11, 0x30, 0, 0),
(369, 'Шахристан', 59, 0x30, 0, 0),
(370, 'Шахритус', 58, 0x30, 0, 0),
(371, 'Шидз', 50, 0x30, 0, 0),
(372, 'Шинг', 44, 0x30, 0, 0),
(373, 'Шитхарв', 34, 0x30, 0, 0),
(374, 'Шодоба', 12, 0x30, 0, 0),
(375, 'Шугновский', 55, 0x30, 0, 0),
(376, 'Шураб', 33, 0x30, 0, 0),
(377, 'Шурообод', 62, 0x30, 0, 0),
(378, 'Яван', 63, 0x30, 0, 0),
(379, 'Язгулом', 22, 0x30, 0, 0),
(380, 'Яккадин', 38, 0x30, 0, 0),
(381, 'Яккатут', 46, 0x30, 0, 0),
(382, 'Янгиабадский', 23, 0x30, 0, 0),
(383, 'Янгикишлок', 28, 0x30, 0, 0),
(384, 'Янгикургон', 59, 0x30, 0, 0),
(385, 'Янгиобод', 28, 0x30, 0, 0),
(386, 'Янгихаёт', 28, 0x30, 0, 0),
(387, 'Янгиюль', 35, 0x30, 0, 0),
(388, 'Яхтан', 25, 0x30, 0, 0),
(389, 'города районного подчинени Б.Гафуроского', 18, 0x30, 0, 0),
(390, 'города районного подчинения Исфаринского', 33, 0x30, 0, 0),
(391, 'города районного подчинения Нурекского р', 42, 0x30, 1, 0),
(392, 'города районного подчинения Пянджского р', 45, 0x30, 0, 0),
(393, 'города районного подчинения Яванского ра', 63, 0x30, 0, 0),
(394, 'дехоты  Кухистони Мастчох', 39, 0x30, 0, 0),
(395, 'дехоты Айнинского р-на', 16, 0x30, 0, 0),
(396, 'дехоты Аштского р-на', 12, 0x30, 0, 0),
(397, 'дехоты Б.Гафуровского района', 18, 0x30, 0, 0),
(398, 'дехоты Бальджувонского района', 19, 0x30, 0, 0),
(399, 'дехоты Бешкентского района', 20, 0x30, 0, 0),
(400, 'дехоты Бохтарского района', 21, 0x30, 0, 0),
(401, 'дехоты Ванчского района', 22, 0x30, 0, 0),
(402, 'дехоты Вахшского района', 23, 0x30, 0, 0),
(403, 'дехоты Восейского района', 24, 0x30, 0, 0),
(404, 'дехоты Ганчинского р-на', 25, 0x30, 0, 0),
(405, 'дехоты Дангаринского района', 26, 0x30, 0, 0),
(406, 'дехоты Дарвозского района', 27, 0x30, 0, 0),
(407, 'дехоты Джабар-Расуловского района', 28, 0x30, 0, 0),
(408, 'дехоты Джилкульского района', 29, 0x30, 0, 0),
(409, 'дехоты Зафарободского р-на', 30, 0x30, 0, 0),
(410, 'дехоты Истаравшанского района', 32, 0x30, 0, 0),
(411, 'дехоты Исфаринского района', 33, 0x30, 0, 0),
(412, 'дехоты Ишкашимского района', 34, 0x30, 0, 0),
(413, 'дехоты Кабодиёнского района', 35, 0x30, 0, 0),
(414, 'дехоты Канибадамского района', 36, 0x30, 0, 0),
(415, 'дехоты Колхозабадского района', 57, 0x30, 0, 0),
(416, 'дехоты Кулябского района', 37, 0x30, 0, 0),
(417, 'дехоты Кумсангирского района', 38, 0x30, 0, 0),
(418, 'дехоты Матчинского р-на', 40, 0x30, 1, 0),
(419, 'дехоты Мургабского района', 41, 0x30, 0, 0),
(420, 'дехоты Пархарского района', 43, 0x30, 0, 0),
(421, 'дехоты Пенджикентского р-на', 44, 0x30, 0, 0),
(422, 'дехоты Пянджского района', 45, 0x30, 0, 0),
(423, 'дехоты Рошткалинского района', 49, 0x30, 0, 0),
(424, 'дехоты Рушанского района', 50, 0x30, 0, 0),
(425, 'дехоты Сарбандского района', 51, 0x30, 0, 0),
(426, 'дехоты Спитаменского района', 52, 0x30, 0, 0),
(427, 'дехоты Темурмаликского района', 53, 0x30, 0, 0),
(428, 'дехоты Ховалингского района', 55, 0x30, 0, 0),
(429, 'дехоты Хуросонского района', 56, 0x30, 0, 0),
(430, 'дехоты Шаартузского района', 58, 0x30, 0, 0),
(431, 'дехоты Шахристанского р-на', 59, 0x30, 0, 0),
(432, 'дехоты Шугнанского района', 61, 0x30, 0, 0),
(433, 'дехоты Яванского района', 63, 0x30, 0, 0),
(434, 'дехоты р-на А.Джами', 46, 0x30, 0, 0),
(435, 'дехоты района Хамадони', 47, 0x30, 0, 0),
(436, 'им Айни', 56, 0x30, 0, 0),
(437, 'им Артыкова Гафурджона', 36, 0x30, 0, 0),
(438, 'им Лахути', 36, 0x30, 0, 0),
(439, 'им.  Бобоюнуса', 53, 0x30, 0, 0),
(440, 'им.  Джуры Назарова', 58, 0x30, 0, 0),
(441, 'им.  Ишмурода Ниязова', 35, 0x30, 0, 0),
(442, 'им. И.Шарипова', 26, 0x30, 0, 0),
(443, 'им. Калинина', 46, 0x30, 0, 0),
(444, 'им. Крупской', 38, 0x30, 0, 0),
(445, 'им. Носира Хисрава', 35, 0x30, 0, 0),
(446, 'им. Рудаки', 44, 0x30, 0, 0),
(447, 'им. Саидназара Худайкулова', 35, 0x30, 0, 0),
(448, 'им. Свердлова', 29, 0x30, 0, 0),
(449, 'им. Турдыева', 47, 0x30, 0, 0),
(450, 'им. Утакары Назарова', 35, 0x30, 0, 0),
(451, 'им. Фрунзе', 57, 0x30, 0, 0),
(452, 'им. Х. Холматова', 58, 0x30, 0, 0),
(453, 'им. Хайдара Усманова', 18, 0x30, 0, 0),
(454, 'им.Э.Шарипова', 36, 0x30, 0, 0),
(455, 'нохияи Турсунзода', 11, 0x30, 0, 0),
(456, 'нохияи Шахринав', 13, 0x30, 4, 0),
(457, 'поселки  Дангаринского района', 26, 0x30, 0, 0),
(458, 'поселки  района Хамадони', 47, 0x30, 0, 0),
(459, 'поселки Айнинского района 1', 16, 0x30, 0, 0),
(460, 'поселки Аштского района', 17, 0x30, 0, 0),
(461, 'поселки Бохтарского района', 21, 0x30, 0, 0),
(462, 'поселки Варзобского района', 6, 0x30, 0, 0),
(463, 'поселки Вахшского района', 23, 0x30, 0, 0),
(464, 'поселки Восейского района', 24, 0x30, 0, 0),
(465, 'поселки Ганчинского района', 25, 0x30, 0, 0),
(466, 'поселки Гиссарского района', 1, 0x30, 6, 0),
(467, 'поселки Джабар-Расуловского района', 28, 0x30, 0, 0),
(468, 'поселки Джиликульского района', 29, 0x30, 0, 0),
(469, 'поселки Зафарободского района', 30, 0x30, 0, 0),
(470, 'поселки Исфаринского р-на', 33, 0x30, 0, 0),
(471, 'поселки Колхозабадского р-на', 57, 0x30, 0, 0),
(472, 'поселки Кумсангирского района', 38, 0x30, 0, 0),
(473, 'поселки Матчинского района', 40, 0x30, 1, 0),
(474, 'поселки Нурабадского района', 9, 0x30, 0, 0),
(475, 'поселки Раштского района', 12, 0x30, 0, 0),
(476, 'поселки Рогунского района', 13, 0x30, 0, 0),
(477, 'поселки Спитаменского района', 52, 0x30, 0, 0),
(478, 'поселки Шаартузского района', 58, 0x30, 0, 0),
(479, 'поселки Яванского района', 63, 0x30, 0, 0),
(480, 'поселки района А.Джами', 46, 0x30, 0, 0),
(481, 'поселки района Рудаки', 10, 0x30, 0, 0),
(482, 'поселки района Темурмалик', 53, 0x30, 0, 0),
(483, 'поселки, подчиненные Кайраккумскому хукумат', 59, 0x30, 1, 0),
(484, 'поселки, подчиненные Чкаловскому хукумат', 2, 0x30, 1, 0),
(485, 'посёлки Пархарского района', 43, 0x30, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `spr_connections_type`
--

CREATE TABLE IF NOT EXISTS `spr_connections_type` (
  `id_conn` int(11) NOT NULL,
  `connection` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 5120 kB';

--
-- Дамп данных таблицы `spr_connections_type`
--

INSERT INTO `spr_connections_type` (`id_conn`, `connection`, `kind`) VALUES
(1, 'ADSL', 1),
(2, 'WiMAX', 1),
(3, '3G Modem', 1),
(4, 'Оптика', 1),
(5, 'Локальный ГО', 2),
(6, 'oVPN', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `spr_conn_kind`
--

CREATE TABLE IF NOT EXISTS `spr_conn_kind` (
  `id` int(11) NOT NULL,
  `kind` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 5120 kB';

--
-- Дамп данных таблицы `spr_conn_kind`
--

INSERT INTO `spr_conn_kind` (`id`, `kind`) VALUES
(1, 'Internet'),
(2, 'Local');

-- --------------------------------------------------------

--
-- Структура таблицы `spr_devices`
--

CREATE TABLE IF NOT EXISTS `spr_devices` (
  `id` int(11) NOT NULL,
  `device_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `spr_devices`
--

INSERT INTO `spr_devices` (`id`, `device_type`) VALUES
(1, 'Router'),
(2, 'Switch'),
(3, 'Банкомат'),
(4, 'Терминал'),
(5, 'POS терминал');

-- --------------------------------------------------------

--
-- Структура таблицы `spr_ip_group`
--

CREATE TABLE IF NOT EXISTS `spr_ip_group` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=3276 COMMENT='InnoDB free: 5120 kB';

--
-- Дамп данных таблицы `spr_ip_group`
--

INSERT INTO `spr_ip_group` (`id`, `name`, `description`, `status`) VALUES
(1, 'CFT', 'Ip адрес Citrix сервера', 2),
(2, 'dp', 'Ip адреса система ден. перевод', 2),
(3, 'url-local', 'Ip адреса. (Локальные)', 2),
(4, 'url-ok', 'Ip адреса разрешеных сайтов', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `spr_localities`
--

CREATE TABLE IF NOT EXISTS `spr_localities` (
  `id` int(11) unsigned NOT NULL,
  `name_russ` varchar(40) DEFAULT NULL,
  `name_taj` varchar(40) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 5120 kB';

--
-- Дамп данных таблицы `spr_localities`
--

INSERT INTO `spr_localities` (`id`, `name_russ`, `name_taj`) VALUES
(1, 'область', 'вилоят'),
(2, 'город', 'шахр'),
(3, 'район', 'нохия'),
(4, 'посёлок ', 'шахрак'),
(5, 'сельская община', 'чамоати дехот');

-- --------------------------------------------------------

--
-- Структура таблицы `spr_mask`
--

CREATE TABLE IF NOT EXISTS `spr_mask` (
  `id` int(11) NOT NULL,
  `sidr` varchar(10) DEFAULT NULL,
  `mask` varchar(16) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `spr_mask`
--

INSERT INTO `spr_mask` (`id`, `sidr`, `mask`) VALUES
(17, '/17', '255.255.128.0'),
(18, '/18', '255.255.192.0'),
(19, '/19', '255.255.224.0'),
(20, '/20', '255.255.240.0'),
(21, '/21', '255.255.248.0'),
(22, '/22', '255.255.252.0'),
(23, '/23', '255.255.254.0'),
(24, '/24', '255.255.255.0'),
(25, '/25', '255.255.255.128'),
(26, '/26', '255.255.255.192'),
(27, '/27', '255.255.255.224'),
(28, '/28', '255.255.255.240'),
(29, '/29', '255.255.255.248'),
(30, '/30', '255.255.255.252'),
(31, '/31', '255.255.255.254'),
(32, '/32', '255.255.255.255');

-- --------------------------------------------------------

--
-- Структура таблицы `spr_model_device`
--

CREATE TABLE IF NOT EXISTS `spr_model_device` (
  `id` int(11) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `device` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `spr_model_device`
--

INSERT INTO `spr_model_device` (`id`, `model`, `device`) VALUES
(1, '750UP', 1),
(2, 'RB951Ui-2HnD', 1),
(3, 'VeriFone 670', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `spr_operator`
--

CREATE TABLE IF NOT EXISTS `spr_operator` (
  `id` int(11) NOT NULL,
  `code_operator` varchar(20) DEFAULT NULL,
  `nazvanie` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `spr_operator`
--

INSERT INTO `spr_operator` (`id`, `code_operator`, `nazvanie`) VALUES
(1, '+99292', 'Tcell'),
(2, '+99293', 'Индиго Таджикистан'),
(3, '+992918', 'Babilon-M'),
(4, '+99298', 'Babilon-M'),
(5, '+99290', 'Megafon'),
(6, '+99291', 'Beeline');

-- --------------------------------------------------------

--
-- Структура таблицы `spr_os_system`
--

CREATE TABLE IF NOT EXISTS `spr_os_system` (
  `id` int(11) NOT NULL,
  `os_system` varchar(40) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 5120 kB';

--
-- Дамп данных таблицы `spr_os_system`
--

INSERT INTO `spr_os_system` (`id`, `os_system`) VALUES
(1, 'Windows'),
(2, 'Linux'),
(3, 'Unix'),
(4, 'IOS'),
(5, 'Router OS'),
(6, 'CiscoIOS');

-- --------------------------------------------------------

--
-- Структура таблицы `spr_place_router`
--

CREATE TABLE IF NOT EXISTS `spr_place_router` (
  `id` int(11) NOT NULL,
  `place_status` varchar(25) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `spr_place_router`
--

INSERT INTO `spr_place_router` (`id`, `place_status`) VALUES
(1, 'На складе ГО'),
(2, 'На складе филиала'),
(3, 'У программиста');

-- --------------------------------------------------------

--
-- Структура таблицы `spr_podrazdelenie_type`
--

CREATE TABLE IF NOT EXISTS `spr_podrazdelenie_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 5120 kB';

--
-- Дамп данных таблицы `spr_podrazdelenie_type`
--

INSERT INTO `spr_podrazdelenie_type` (`id`, `name`) VALUES
(1, 'Головной'),
(2, 'Филиал'),
(3, 'ЦБО'),
(4, 'ПДП');

-- --------------------------------------------------------

--
-- Структура таблицы `spr_providers`
--

CREATE TABLE IF NOT EXISTS `spr_providers` (
  `id` int(11) NOT NULL,
  `provider` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 5120 kB';

--
-- Дамп данных таблицы `spr_providers`
--

INSERT INTO `spr_providers` (`id`, `provider`) VALUES
(1, 'Вавилон-Т'),
(2, 'Телекомм Технолоджи'),
(4, ' Интерком'),
(5, 'TCEL'),
(6, 'Эстера'),
(7, 'Tarena'),
(9, 'Saturn OnLine');

-- --------------------------------------------------------

--
-- Структура таблицы `spr_purveyors`
--

CREATE TABLE IF NOT EXISTS `spr_purveyors` (
  `id` int(11) NOT NULL,
  `purveyor` varchar(20) DEFAULT NULL,
  `site` varchar(20) DEFAULT NULL,
  `surname` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `patronymic` varchar(20) DEFAULT NULL,
  `operator` int(11) DEFAULT NULL,
  `tell` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `spr_purveyors`
--

INSERT INTO `spr_purveyors` (`id`, `purveyor`, `site`, `surname`, `name`, `patronymic`, `operator`, `tell`) VALUES
(1, 'Aset', 'aset.tj', 'Абдуазиз', '', NULL, 1, '7701234');

-- --------------------------------------------------------

--
-- Структура таблицы `spr_rule_status`
--

CREATE TABLE IF NOT EXISTS `spr_rule_status` (
  `id` int(11) NOT NULL,
  `rule_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `spr_rule_status`
--

INSERT INTO `spr_rule_status` (`id`, `rule_status`) VALUES
(1, '0-Откл.'),
(2, '1-Вкл.');

-- --------------------------------------------------------

--
-- Структура таблицы `spr_scripts`
--

CREATE TABLE IF NOT EXISTS `spr_scripts` (
  `id` int(11) NOT NULL,
  `script_identification` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 5120 kB';

--
-- Дамп данных таблицы `spr_scripts`
--

INSERT INTO `spr_scripts` (`id`, `script_identification`, `description`) VALUES
(1, 1, 'Access List'),
(2, 2, 'DNS Name');

-- --------------------------------------------------------

--
-- Структура таблицы `spr_status`
--

CREATE TABLE IF NOT EXISTS `spr_status` (
  `id` int(11) NOT NULL,
  `status_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `spr_status`
--

INSERT INTO `spr_status` (`id`, `status_name`) VALUES
(1, 'Новый'),
(2, 'Активный'),
(3, 'Отключен');

-- --------------------------------------------------------

--
-- Структура таблицы `spr_status_podrazdelenie`
--

CREATE TABLE IF NOT EXISTS `spr_status_podrazdelenie` (
  `id` int(11) NOT NULL,
  `status_podrazdelenie` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `spr_status_podrazdelenie`
--

INSERT INTO `spr_status_podrazdelenie` (`id`, `status_podrazdelenie`) VALUES
(1, 'Новый'),
(2, 'Активный'),
(3, 'Закрыто'),
(4, 'Переведен в ЦБО'),
(5, 'Переведен в Филиал');

-- --------------------------------------------------------

--
-- Структура таблицы `spr_status_router`
--

CREATE TABLE IF NOT EXISTS `spr_status_router` (
  `id` int(11) NOT NULL,
  `status_router` varchar(25) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=5461 COMMENT='InnoDB free: 5120 kB';

--
-- Дамп данных таблицы `spr_status_router`
--

INSERT INTO `spr_status_router` (`id`, `status_router`) VALUES
(1, 'Установлено'),
(2, 'На складе ГО'),
(3, 'На складе филиала'),
(4, 'У программиста');

-- --------------------------------------------------------

--
-- Структура таблицы `spr_status_script`
--

CREATE TABLE IF NOT EXISTS `spr_status_script` (
  `id` int(11) NOT NULL,
  `script_status` varchar(20) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `spr_status_script`
--

INSERT INTO `spr_status_script` (`id`, `script_status`, `status_id`) VALUES
(1, 'Запрошено', 0),
(2, 'Отправлено', 1),
(3, 'Выполнено', 2),
(5, 'Не выполнено', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `spr_tarif`
--

CREATE TABLE IF NOT EXISTS `spr_tarif` (
  `id` int(11) NOT NULL,
  `tarif` varchar(60) DEFAULT NULL,
  `provider` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `spr_tarif`
--

INSERT INTO `spr_tarif` (`id`, `tarif`, `provider`) VALUES
(1, 'Home office', 1),
(2, 'Офис', 1),
(3, 'Деловой', 1),
(4, 'Бизнес', 1),
(5, 'Мега-Бизнес', 1),
(6, 'Престиж 64', 1),
(7, 'Престиж 128', 1),
(8, 'Престиж 256', 1),
(9, 'Престиж 512', 1),
(10, 'Престиж 1024', 1),
(11, 'CyberStart1', 1),
(12, 'CyberStart2', 1),
(13, 'CyberStart3', 1),
(14, 'CyberStart4', 1),
(15, 'CyberMax1', 1),
(16, 'CyberMax2', 1),
(17, 'CyberMax3', 1),
(18, 'CyberMax4', 1),
(19, 'Connect', 5),
(20, 'Connect 1000', 5),
(21, 'Connect 2000', 5),
(22, 'Connect 4000', 5),
(23, 'Connect 8000', 5),
(24, 'Terminal ', 5),
(25, 'Terminal 50', 5),
(26, 'Terminal 100', 5),
(27, 'Terminal 300', 5),
(28, 'Terminal 600', 5),
(29, 'Terminal 1200', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `view_control`
--

CREATE TABLE IF NOT EXISTS `view_control` (
  `id` int(11) NOT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `view_control`
--

INSERT INTO `view_control` (`id`, `description`) VALUES
(1, 'Все подразделение'),
(2, 'Свое подразделение и подчененные'),
(3, 'Только свое подразделение');

-- --------------------------------------------------------

--
-- Структура таблицы `_elements`
--

CREATE TABLE IF NOT EXISTS `_elements` (
  `Id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `ownerEl` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'parent',
  `slave` binary(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `_elements`
--

INSERT INTO `_elements` (`Id`, `name`, `position`, `ownerEl`, `slave`) VALUES
(1, 'Согдийский область', 0, 0, 0x30),
(2, 'Хатлонский область', 2, 1, 0x30),
(3, 'Горно-Бадахшанская Автономная ', 1, 0, 0x30),
(4, 'Душанбе', 2, 0, 0x30),
(5, 'Варзобский район', 3, 0, 0x30),
(8, 'Айнинский район', 1, 1, 0x30),
(9, 'Аштский район', 0, 10, 0x30),
(10, 'Б.Гафуровский район', 3, 1, 0x30),
(11, 'Айнинский', 0, 2, 0x31),
(12, 'Анзоб', 0, 8, 0x31),
(13, 'Дардар', 1, 8, 0x31),
(14, 'Зеравшан', 0, 4, 0x31),
(15, 'Рарз', 0, 9, 0x31);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `access_level`
--
ALTER TABLE `access_level`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `access_list`
--
ALTER TABLE `access_list`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `connections`
--
ALTER TABLE `connections`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_device` (`id`);

--
-- Индексы таблицы `device_upd_history`
--
ALTER TABLE `device_upd_history`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `dns_name`
--
ALTER TABLE `dns_name`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `ipconfig`
--
ALTER TABLE `ipconfig`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `oblast`
--
ALTER TABLE `oblast`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `podrazdelenie`
--
ALTER TABLE `podrazdelenie`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `programmists`
--
ALTER TABLE `programmists`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `provider_problem`
--
ALTER TABLE `provider_problem`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `spr_connections_type`
--
ALTER TABLE `spr_connections_type`
  ADD UNIQUE KEY `id_conn` (`id_conn`);

--
-- Индексы таблицы `spr_conn_kind`
--
ALTER TABLE `spr_conn_kind`
  ADD UNIQUE KEY `id_conn` (`id`);

--
-- Индексы таблицы `spr_devices`
--
ALTER TABLE `spr_devices`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `spr_ip_group`
--
ALTER TABLE `spr_ip_group`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `spr_localities`
--
ALTER TABLE `spr_localities`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `spr_mask`
--
ALTER TABLE `spr_mask`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `spr_model_device`
--
ALTER TABLE `spr_model_device`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `spr_operator`
--
ALTER TABLE `spr_operator`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `spr_os_system`
--
ALTER TABLE `spr_os_system`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `spr_place_router`
--
ALTER TABLE `spr_place_router`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `spr_podrazdelenie_type`
--
ALTER TABLE `spr_podrazdelenie_type`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `spr_providers`
--
ALTER TABLE `spr_providers`
  ADD UNIQUE KEY `id_conn` (`id`);

--
-- Индексы таблицы `spr_purveyors`
--
ALTER TABLE `spr_purveyors`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `spr_rule_status`
--
ALTER TABLE `spr_rule_status`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `spr_scripts`
--
ALTER TABLE `spr_scripts`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `spr_status`
--
ALTER TABLE `spr_status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `spr_status_podrazdelenie`
--
ALTER TABLE `spr_status_podrazdelenie`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `spr_status_router`
--
ALTER TABLE `spr_status_router`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `spr_status_script`
--
ALTER TABLE `spr_status_script`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `spr_tarif`
--
ALTER TABLE `spr_tarif`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `view_control`
--
ALTER TABLE `view_control`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `_elements`
--
ALTER TABLE `_elements`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `access_level`
--
ALTER TABLE `access_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `access_list`
--
ALTER TABLE `access_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT для таблицы `connections`
--
ALTER TABLE `connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT для таблицы `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=518;
--
-- AUTO_INCREMENT для таблицы `device_upd_history`
--
ALTER TABLE `device_upd_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT для таблицы `dns_name`
--
ALTER TABLE `dns_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `ipconfig`
--
ALTER TABLE `ipconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=386;
--
-- AUTO_INCREMENT для таблицы `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT для таблицы `oblast`
--
ALTER TABLE `oblast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `podrazdelenie`
--
ALTER TABLE `podrazdelenie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=378;
--
-- AUTO_INCREMENT для таблицы `programmists`
--
ALTER TABLE `programmists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT для таблицы `provider_problem`
--
ALTER TABLE `provider_problem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=486;
--
-- AUTO_INCREMENT для таблицы `spr_connections_type`
--
ALTER TABLE `spr_connections_type`
  MODIFY `id_conn` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `spr_conn_kind`
--
ALTER TABLE `spr_conn_kind`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `spr_devices`
--
ALTER TABLE `spr_devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `spr_ip_group`
--
ALTER TABLE `spr_ip_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `spr_localities`
--
ALTER TABLE `spr_localities`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `spr_mask`
--
ALTER TABLE `spr_mask`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT для таблицы `spr_model_device`
--
ALTER TABLE `spr_model_device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `spr_operator`
--
ALTER TABLE `spr_operator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `spr_os_system`
--
ALTER TABLE `spr_os_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `spr_place_router`
--
ALTER TABLE `spr_place_router`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `spr_podrazdelenie_type`
--
ALTER TABLE `spr_podrazdelenie_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `spr_providers`
--
ALTER TABLE `spr_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `spr_purveyors`
--
ALTER TABLE `spr_purveyors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `spr_rule_status`
--
ALTER TABLE `spr_rule_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `spr_scripts`
--
ALTER TABLE `spr_scripts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `spr_status`
--
ALTER TABLE `spr_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `spr_status_podrazdelenie`
--
ALTER TABLE `spr_status_podrazdelenie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `spr_status_router`
--
ALTER TABLE `spr_status_router`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `spr_status_script`
--
ALTER TABLE `spr_status_script`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `spr_tarif`
--
ALTER TABLE `spr_tarif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT для таблицы `view_control`
--
ALTER TABLE `view_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `_elements`
--
ALTER TABLE `_elements`
  MODIFY `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
