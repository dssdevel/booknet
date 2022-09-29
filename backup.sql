-- --------------------------------------------------------
-- Хост:                         192.168.0.2
-- Версия сервера:               10.5.2-MariaDB-1:10.5.2+maria~bionic - mariadb.org binary distribution
-- Операционная система:         debian-linux-gnu
-- HeidiSQL Версия:              12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Дамп структуры для таблица booknet.Country
CREATE TABLE IF NOT EXISTS `Country` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы booknet.Country: ~249 rows (приблизительно)
INSERT INTO `Country` (`id`, `code`, `name`) VALUES
	(1, 'AF', 'Afghanistan'),
	(2, 'AL', 'Albania'),
	(3, 'DZ', 'Algeria'),
	(4, 'AS', 'American Samoa'),
	(5, 'AD', 'Andorra'),
	(6, 'AO', 'Angola'),
	(7, 'AI', 'Anguilla'),
	(8, 'AQ', 'Antarctica'),
	(9, 'AG', 'Antigua and Barbuda'),
	(10, 'AR', 'Argentina'),
	(11, 'AM', 'Armenia'),
	(12, 'AW', 'Aruba'),
	(13, 'AU', 'Australia'),
	(14, 'AT', 'Austria'),
	(15, 'AZ', 'Azerbaijan'),
	(16, 'BS', 'Bahamas (the)'),
	(17, 'BH', 'Bahrain'),
	(18, 'BD', 'Bangladesh'),
	(19, 'BB', 'Barbados'),
	(20, 'BY', 'Belarus'),
	(21, 'BE', 'Belgium'),
	(22, 'BZ', 'Belize'),
	(23, 'BJ', 'Benin'),
	(24, 'BM', 'Bermuda'),
	(25, 'BT', 'Bhutan'),
	(26, 'BO', 'Bolivia (Plurinational State of)'),
	(27, 'BQ', 'Bonaire Sint Eustatius and Saba'),
	(28, 'BA', 'Bosnia and Herzegovina'),
	(29, 'BW', 'Botswana'),
	(30, 'BV', 'Bouvet Island'),
	(31, 'BR', 'Brazil'),
	(32, 'IO', 'British Indian Ocean Territory (the)'),
	(33, 'BN', 'Brunei Darussalam'),
	(34, 'BG', 'Bulgaria'),
	(35, 'BF', 'Burkina Faso'),
	(36, 'BI', 'Burundi'),
	(37, 'CV', 'Cabo Verde'),
	(38, 'KH', 'Cambodia'),
	(39, 'CM', 'Cameroon'),
	(40, 'CA', 'Canada'),
	(41, 'KY', 'Cayman Islands (the)'),
	(42, 'CF', 'Central African Republic (the)'),
	(43, 'TD', 'Chad'),
	(44, 'CL', 'Chile'),
	(45, 'CN', 'China'),
	(46, 'CX', 'Christmas Island'),
	(47, 'CC', 'Cocos (Keeling) Islands (the)'),
	(48, 'CO', 'Colombia'),
	(49, 'KM', 'Comoros (the)'),
	(50, 'CD', 'Congo (the Democratic Republic of the)'),
	(51, 'CG', 'Congo (the)'),
	(52, 'CK', 'Cook Islands (the)'),
	(53, 'CR', 'Costa Rica'),
	(54, 'HR', 'Croatia'),
	(55, 'CU', 'Cuba'),
	(56, 'CW', 'Curaçao'),
	(57, 'CY', 'Cyprus'),
	(58, 'CZ', 'Czechia'),
	(59, 'CI', 'Côte d\'Ivoire'),
	(60, 'DK', 'Denmark'),
	(61, 'DJ', 'Djibouti'),
	(62, 'DM', 'Dominica'),
	(63, 'DO', 'Dominican Republic (the)'),
	(64, 'EC', 'Ecuador'),
	(65, 'EG', 'Egypt'),
	(66, 'SV', 'El Salvador'),
	(67, 'GQ', 'Equatorial Guinea'),
	(68, 'ER', 'Eritrea'),
	(69, 'EE', 'Estonia'),
	(70, 'SZ', 'Eswatini'),
	(71, 'ET', 'Ethiopia'),
	(72, 'FK', 'Falkland Islands (the) [Malvinas]'),
	(73, 'FO', 'Faroe Islands (the)'),
	(74, 'FJ', 'Fiji'),
	(75, 'FI', 'Finland'),
	(76, 'FR', 'France'),
	(77, 'GF', 'French Guiana'),
	(78, 'PF', 'French Polynesia'),
	(79, 'TF', 'French Southern Territories (the)'),
	(80, 'GA', 'Gabon'),
	(81, 'GM', 'Gambia (the)'),
	(82, 'GE', 'Georgia'),
	(83, 'DE', 'Germany'),
	(84, 'GH', 'Ghana'),
	(85, 'GI', 'Gibraltar'),
	(86, 'GR', 'Greece'),
	(87, 'GL', 'Greenland'),
	(88, 'GD', 'Grenada'),
	(89, 'GP', 'Guadeloupe'),
	(90, 'GU', 'Guam'),
	(91, 'GT', 'Guatemala'),
	(92, 'GG', 'Guernsey'),
	(93, 'GN', 'Guinea'),
	(94, 'GW', 'Guinea-Bissau'),
	(95, 'GY', 'Guyana'),
	(96, 'HT', 'Haiti'),
	(97, 'HM', 'Heard Island and McDonald Islands'),
	(98, 'VA', 'Holy See (the)'),
	(99, 'HN', 'Honduras'),
	(100, 'HK', 'Hong Kong'),
	(101, 'HU', 'Hungary'),
	(102, 'IS', 'Iceland'),
	(103, 'IN', 'India'),
	(104, 'ID', 'Indonesia'),
	(105, 'IR', 'Iran (Islamic Republic of)'),
	(106, 'IQ', 'Iraq'),
	(107, 'IE', 'Ireland'),
	(108, 'IM', 'Isle of Man'),
	(109, 'IL', 'Israel'),
	(110, 'IT', 'Italy'),
	(111, 'JM', 'Jamaica'),
	(112, 'JP', 'Japan'),
	(113, 'JE', 'Jersey'),
	(114, 'JO', 'Jordan'),
	(115, 'KZ', 'Kazakhstan'),
	(116, 'KE', 'Kenya'),
	(117, 'KI', 'Kiribati'),
	(118, 'KP', 'Korea (the Democratic People\'s Republic of)'),
	(119, 'KR', 'Korea (the Republic of)'),
	(120, 'KW', 'Kuwait'),
	(121, 'KG', 'Kyrgyzstan'),
	(122, 'LA', 'Lao People\'s Democratic Republic (the)'),
	(123, 'LV', 'Latvia'),
	(124, 'LB', 'Lebanon'),
	(125, 'LS', 'Lesotho'),
	(126, 'LR', 'Liberia'),
	(127, 'LY', 'Libya'),
	(128, 'LI', 'Liechtenstein'),
	(129, 'LT', 'Lithuania'),
	(130, 'LU', 'Luxembourg'),
	(131, 'MO', 'Macao'),
	(132, 'MG', 'Madagascar'),
	(133, 'MW', 'Malawi'),
	(134, 'MY', 'Malaysia'),
	(135, 'MV', 'Maldives'),
	(136, 'ML', 'Mali'),
	(137, 'MT', 'Malta'),
	(138, 'MH', 'Marshall Islands (the)'),
	(139, 'MQ', 'Martinique'),
	(140, 'MR', 'Mauritania'),
	(141, 'MU', 'Mauritius'),
	(142, 'YT', 'Mayotte'),
	(143, 'MX', 'Mexico'),
	(144, 'FM', 'Micronesia (Federated States of)'),
	(145, 'MD', 'Moldova (the Republic of)'),
	(146, 'MC', 'Monaco'),
	(147, 'MN', 'Mongolia'),
	(148, 'ME', 'Montenegro'),
	(149, 'MS', 'Montserrat'),
	(150, 'MA', 'Morocco'),
	(151, 'MZ', 'Mozambique'),
	(152, 'MM', 'Myanmar'),
	(153, 'NA', 'Namibia'),
	(154, 'NR', 'Nauru'),
	(155, 'NP', 'Nepal'),
	(156, 'NL', 'Netherlands (the)'),
	(157, 'NC', 'New Caledonia'),
	(158, 'NZ', 'New Zealand'),
	(159, 'NI', 'Nicaragua'),
	(160, 'NE', 'Niger (the)'),
	(161, 'NG', 'Nigeria'),
	(162, 'NU', 'Niue'),
	(163, 'NF', 'Norfolk Island'),
	(164, 'MP', 'Northern Mariana Islands (the)'),
	(165, 'NO', 'Norway'),
	(166, 'OM', 'Oman'),
	(167, 'PK', 'Pakistan'),
	(168, 'PW', 'Palau'),
	(169, 'PS', 'Palestine State of'),
	(170, 'PA', 'Panama'),
	(171, 'PG', 'Papua New Guinea'),
	(172, 'PY', 'Paraguay'),
	(173, 'PE', 'Peru'),
	(174, 'PH', 'Philippines (the)'),
	(175, 'PN', 'Pitcairn'),
	(176, 'PL', 'Poland'),
	(177, 'PT', 'Portugal'),
	(178, 'PR', 'Puerto Rico'),
	(179, 'QA', 'Qatar'),
	(180, 'MK', 'Republic of North Macedonia'),
	(181, 'RO', 'Romania'),
	(182, 'RU', 'Russian Federation (the)'),
	(183, 'RW', 'Rwanda'),
	(184, 'RE', 'Réunion'),
	(185, 'BL', 'Saint Barthélemy'),
	(186, 'SH', 'Saint Helena Ascension and Tristan da Cunha'),
	(187, 'KN', 'Saint Kitts and Nevis'),
	(188, 'LC', 'Saint Lucia'),
	(189, 'MF', 'Saint Martin (French part)'),
	(190, 'PM', 'Saint Pierre and Miquelon'),
	(191, 'VC', 'Saint Vincent and the Grenadines'),
	(192, 'WS', 'Samoa'),
	(193, 'SM', 'San Marino'),
	(194, 'ST', 'Sao Tome and Principe'),
	(195, 'SA', 'Saudi Arabia'),
	(196, 'SN', 'Senegal'),
	(197, 'RS', 'Serbia'),
	(198, 'SC', 'Seychelles'),
	(199, 'SL', 'Sierra Leone'),
	(200, 'SG', 'Singapore'),
	(201, 'SX', 'Sint Maarten (Dutch part)'),
	(202, 'SK', 'Slovakia'),
	(203, 'SI', 'Slovenia'),
	(204, 'SB', 'Solomon Islands'),
	(205, 'SO', 'Somalia'),
	(206, 'ZA', 'South Africa'),
	(207, 'GS', 'South Georgia and the South Sandwich Islands'),
	(208, 'SS', 'South Sudan'),
	(209, 'ES', 'Spain'),
	(210, 'LK', 'Sri Lanka'),
	(211, 'SD', 'Sudan (the)'),
	(212, 'SR', 'Suriname'),
	(213, 'SJ', 'Svalbard and Jan Mayen'),
	(214, 'SE', 'Sweden'),
	(215, 'CH', 'Switzerland'),
	(216, 'SY', 'Syrian Arab Republic'),
	(217, 'TW', 'Taiwan (Province of China)'),
	(218, 'TJ', 'Tajikistan'),
	(219, 'TZ', 'Tanzania United Republic of'),
	(220, 'TH', 'Thailand'),
	(221, 'TL', 'Timor-Leste'),
	(222, 'TG', 'Togo'),
	(223, 'TK', 'Tokelau'),
	(224, 'TO', 'Tonga'),
	(225, 'TT', 'Trinidad and Tobago'),
	(226, 'TN', 'Tunisia'),
	(227, 'TR', 'Turkey'),
	(228, 'TM', 'Turkmenistan'),
	(229, 'TC', 'Turks and Caicos Islands (the)'),
	(230, 'TV', 'Tuvalu'),
	(231, 'UG', 'Uganda'),
	(232, 'UA', 'Ukraine'),
	(233, 'AE', 'United Arab Emirates (the)'),
	(234, 'GB', 'United Kingdom of Great Britain and Northern Ireland (the)'),
	(235, 'UM', 'United States Minor Outlying Islands (the)'),
	(236, 'US', 'United States of America (the)'),
	(237, 'UY', 'Uruguay'),
	(238, 'UZ', 'Uzbekistan'),
	(239, 'VU', 'Vanuatu'),
	(240, 'VE', 'Venezuela (Bolivarian Republic of)'),
	(241, 'VN', 'Viet Nam'),
	(242, 'VG', 'Virgin Islands (British)'),
	(243, 'VI', 'Virgin Islands (U.S.)'),
	(244, 'WF', 'Wallis and Futuna'),
	(245, 'EH', 'Western Sahara'),
	(246, 'YE', 'Yemen'),
	(247, 'ZM', 'Zambia'),
	(248, 'ZW', 'Zimbabwe'),
	(249, 'AX', 'Åland Islands');

-- Дамп структуры для таблица booknet.Language
CREATE TABLE IF NOT EXISTS `Language` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы booknet.Language: ~3 rows (приблизительно)
INSERT INTO `Language` (`id`, `code`, `name`) VALUES
	(1, 'en', 'English'),
	(2, 'es', 'Spanish'),
	(3, 'uk', 'Ukrainian');

-- Дамп структуры для таблица booknet.Payment
CREATE TABLE IF NOT EXISTS `Payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paymentSystemId` int(10) unsigned NOT NULL,
  `paymentTypeId` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned NOT NULL DEFAULT 0,
  `isActive` tinyint(3) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `FK_Payment_PaymentSystem` (`paymentSystemId`),
  KEY `FK_Payment_PaymentType` (`paymentTypeId`),
  CONSTRAINT `FK_Payment_PaymentSystem` FOREIGN KEY (`paymentSystemId`) REFERENCES `PaymentSystem` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Payment_PaymentType` FOREIGN KEY (`paymentTypeId`) REFERENCES `PaymentType` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы booknet.Payment: ~9 rows (приблизительно)
INSERT INTO `Payment` (`id`, `paymentSystemId`, `paymentTypeId`, `priority`, `isActive`) VALUES
	(1, 1, 1, 110, 1),
	(2, 1, 2, 120, 1),
	(3, 1, 3, 1000, 1),
	(4, 2, 4, 130, 1),
	(5, 2, 5, 100, 1),
	(6, 2, 6, 1100, 1),
	(7, 2, 7, 1200, 1),
	(8, 3, 8, 115, 1),
	(9, 4, 1, 0, 1),
	(10, 4, 9, 0, 1),
	(11, 4, 10, 0, 1);

-- Дамп структуры для таблица booknet.PaymentImage
CREATE TABLE IF NOT EXISTS `PaymentImage` (
  `paymentId` int(10) unsigned NOT NULL,
  `countryId` int(10) unsigned NOT NULL,
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`paymentId`,`countryId`),
  KEY `FK_PaymentImage_Country` (`countryId`),
  CONSTRAINT `FK_PaymentImage_Country` FOREIGN KEY (`countryId`) REFERENCES `Country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PaymentImage_Payment` FOREIGN KEY (`paymentId`) REFERENCES `Payment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Дамп данных таблицы booknet.PaymentImage: ~0 rows (приблизительно)
INSERT INTO `PaymentImage` (`paymentId`, `countryId`, `imageUrl`) VALUES
	(10, 48, 'ebanx_card_co.jpg'),
	(10, 103, 'ebanx_card_in.jpg');

-- Дамп структуры для таблица booknet.PaymentOption
CREATE TABLE IF NOT EXISTS `PaymentOption` (
  `paymentId` int(10) unsigned NOT NULL,
  `languageId` int(10) unsigned NOT NULL,
  `productTypeId` int(10) unsigned NOT NULL,
  `userOsId` int(10) unsigned NOT NULL,
  `commission` decimal(10,2) unsigned DEFAULT NULL,
  `amountMin` decimal(10,2) unsigned DEFAULT NULL,
  `amountMax` decimal(10,2) unsigned DEFAULT NULL,
  `payUrl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isActive` tinyint(3) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`paymentId`,`languageId`,`productTypeId`,`userOsId`),
  KEY `FK_PaymentOption_Language` (`languageId`),
  KEY `FK_PaymentOption_ProductType` (`productTypeId`),
  KEY `FK_PaymentOption_UserOs` (`userOsId`),
  CONSTRAINT `FK_PaymentOption_Language` FOREIGN KEY (`languageId`) REFERENCES `Language` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PaymentOption_Payment` FOREIGN KEY (`paymentId`) REFERENCES `Payment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PaymentOption_ProductType` FOREIGN KEY (`productTypeId`) REFERENCES `ProductType` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PaymentOption_UserOs` FOREIGN KEY (`userOsId`) REFERENCES `UserOs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Дамп данных таблицы booknet.PaymentOption: ~1 rows (приблизительно)
INSERT INTO `PaymentOption` (`paymentId`, `languageId`, `productTypeId`, `userOsId`, `commission`, `amountMin`, `amountMax`, `payUrl`, `imageUrl`, `isActive`) VALUES
	(9, 2, 1, 1, 3.00, 0.50, NULL, '/pay', NULL, 1),
	(10, 2, 1, 1, 2.50, 0.10, NULL, '/pay', 'ebanx_card.jpg', 1),
	(11, 2, 1, 3, 1.00, 0.10, NULL, '/pay', NULL, 1);

-- Дамп структуры для таблица booknet.PaymentPermission
CREATE TABLE IF NOT EXISTS `PaymentPermission` (
  `paymentId` int(10) unsigned NOT NULL,
  `countryId` int(10) unsigned NOT NULL,
  `isAllow` tinyint(3) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`paymentId`,`countryId`),
  KEY `FK_PaymentPermission_Country` (`countryId`),
  CONSTRAINT `FK_PaymentPermission_Country` FOREIGN KEY (`countryId`) REFERENCES `Country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PaymentPermission_Payment` FOREIGN KEY (`paymentId`) REFERENCES `Payment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Дамп данных таблицы booknet.PaymentPermission: ~0 rows (приблизительно)
INSERT INTO `PaymentPermission` (`paymentId`, `countryId`, `isAllow`) VALUES
	(9, 2, 1),
	(9, 9, 1),
	(11, 103, 0);

-- Дамп структуры для таблица booknet.PaymentPriority
CREATE TABLE IF NOT EXISTS `PaymentPriority` (
  `paymentTypeId` int(10) unsigned NOT NULL,
  `countryId` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paymentTypeId`,`countryId`),
  KEY `FK_PaymentPriority_Country` (`countryId`),
  CONSTRAINT `FK_PaymentPriority_Country` FOREIGN KEY (`countryId`) REFERENCES `Country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PaymentPriority_PaymentType` FOREIGN KEY (`paymentTypeId`) REFERENCES `PaymentType` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Дамп данных таблицы booknet.PaymentPriority: ~0 rows (приблизительно)
INSERT INTO `PaymentPriority` (`paymentTypeId`, `countryId`, `priority`) VALUES
	(1, 9, 200),
	(9, 9, 100);

-- Дамп структуры для таблица booknet.PaymentSystem
CREATE TABLE IF NOT EXISTS `PaymentSystem` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(10) unsigned NOT NULL DEFAULT 0,
  `isActive` tinyint(3) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы booknet.PaymentSystem: ~4 rows (приблизительно)
INSERT INTO `PaymentSystem` (`id`, `name`, `priority`, `isActive`) VALUES
	(1, 'Interkassa', 0, 1),
	(2, 'PayU', 0, 1),
	(3, 'CardPay', 0, 1),
	(4, 'EBANX ', 0, 1);

-- Дамп структуры для таблица booknet.PaymentType
CREATE TABLE IF NOT EXISTS `PaymentType` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(10) unsigned NOT NULL DEFAULT 0,
  `isActive` tinyint(3) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы booknet.PaymentType: ~13 rows (приблизительно)
INSERT INTO `PaymentType` (`id`, `name`, `priority`, `isActive`) VALUES
	(1, 'Банковские карты', 100, 1),
	(2, 'LiqPay', 50, 1),
	(3, 'Терминалы IBOX', 65, 1),
	(4, 'Локальные карты Индии', 70, 1),
	(5, 'Карты VISA / MasterCard', 150, 1),
	(6, 'Яндекс.Кошелек', 250, 1),
	(7, 'QIWI-кошелек', 300, 1),
	(8, 'Visa / MasterCard', 450, 1),
	(9, 'PayPal', 270, 1),
	(10, 'GooglePay', 160, 1),
	(11, 'ApplePay', 10, 1),
	(12, 'Оплата картой', 30, 1),
	(13, 'Оплата картой ПриватБанка', 90, 1);

-- Дамп структуры для таблица booknet.ProductType
CREATE TABLE IF NOT EXISTS `ProductType` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы booknet.ProductType: ~3 rows (приблизительно)
INSERT INTO `ProductType` (`id`, `code`, `name`) VALUES
	(1, 'book', 'покупка книги'),
	(2, 'reward', 'покупка платной награды'),
	(3, 'walletRefill', 'пополнение внутреннего кошелька на сайте');

-- Дамп структуры для таблица booknet.UserOs
CREATE TABLE IF NOT EXISTS `UserOs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы booknet.UserOs: ~3 rows (приблизительно)
INSERT INTO `UserOs` (`id`, `code`, `name`) VALUES
	(1, 'windows', 'windows'),
	(2, 'ios', 'ios'),
	(3, 'android', 'android');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
