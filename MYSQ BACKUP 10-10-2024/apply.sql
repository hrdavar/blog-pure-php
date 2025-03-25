-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2024 at 11:47 AM
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
-- Database: `apply`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `pname` text NOT NULL,
  `ename` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_id`, `pname`, `ename`) VALUES
(1, 38, 'هالیفاکس', 'Halifax'),
(2, 38, 'تورنتو', 'Toronto'),
(3, 38, 'ونکوور', 'Vancouver'),
(4, 38, 'کلگری', 'Calgary'),
(5, 38, 'مونترال', 'Montreal'),
(6, 38, 'اوتاوا', 'Ottawa'),
(7, 38, 'ادمونتون', 'Edmonton'),
(8, 38, 'شهر کبک', 'Quebec City'),
(9, 38, 'ویکتوریا', 'Victoria');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `ptitle` text NOT NULL,
  `content` text NOT NULL,
  `img_id1` int(11) NOT NULL,
  `visitor` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `country_id`, `ptitle`, `content`, `img_id1`, `visitor`, `date`) VALUES
(1, 38, 'نمره زبان برای اپلای کانادا', 'در این پست قصد داریم به تمامی مزایا و معایب زندگی در آمریکا بپردازیم ', 1, 0, '2023-11-09 22:57:07'),
(2, 223, 'مزایای تحصیل در آمریکا', '', 0, 0, '2023-11-09 22:57:07'),
(3, 223, 'شرایط تحصیل در آمریکا', '', 0, 0, '2023-11-09 22:57:07'),
(4, NULL, 'علت رجکتی پرونده های ایرانیان', 'خالی', 0, 0, '2023-11-09 22:57:55'),
(5, NULL, 'ارازنترین ایالت برای زندگی در آمریکا', '', 0, 0, '2023-11-09 22:59:15'),
(6, NULL, 'معروف ترین دانشگاه های آمریکا', '', 0, 0, '2023-11-10 01:21:54'),
(7, NULL, 'لیست دانشگاه های آمریکا', '', 0, 0, '2023-11-10 01:21:54'),
(8, 38, 'شرایط تحصیل در تورنتو', '', 0, 0, '2023-12-27 13:24:21'),
(9, 38, 'زندگی دانشجویی تورنتو', '', 0, 0, '2023-12-27 13:25:32'),
(10, NULL, 'کلگری', '', 0, 0, '2023-12-27 13:25:32'),
(11, NULL, 'پاسپورت کانادا', '', 0, 0, '2023-12-27 13:26:01'),
(12, NULL, 'پاسپورت آلمان', '', 0, 0, '2023-12-27 13:26:01'),
(13, NULL, 'زندگی در ایتالیا', '', 0, 0, '2023-12-27 13:27:23'),
(14, NULL, 'پاسپورت ایتالیا', '', 0, 0, '2023-12-27 13:27:23'),
(15, NULL, 'تحصیل در ایتالیا', '', 0, 0, '2023-12-27 13:27:48'),
(16, NULL, 'معایب زندگی در ایتالیا', '', 0, 0, '2023-12-27 13:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `name_persian` text DEFAULT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `name_persian`, `postcode_required`, `status`) VALUES
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', 'ارمنستان', 0, 1),
(13, 'Australia', 'AU', 'AUS', 'استرالیا', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', ' ', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', 'کانادا', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', 'قبرس', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', 'دانمارک', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', 'مصر', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', 'آلمان', 1, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', 'مجارستان', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', 'هند', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'جمهوری اسلامی ایران', 'IR', 'IRN', 'ایران', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', 'ایتالیا', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'Korea, Republic of', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', 'مالزی', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', ' ', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', 'ترکیه', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', 'ترکمنستان', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', 'امارات متحده', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', 'انگلستان', 1, 1),
(223, 'United States', 'US', 'USA', 'آمریکا', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', 'ازبکستان', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `country_info`
--

CREATE TABLE `country_info` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `advantages` text NOT NULL,
  `disadvantages` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country_info`
--

INSERT INTO `country_info` (`id`, `country_id`, `advantages`, `disadvantages`) VALUES
(1, 15, 'نزدیکی به ایران', 'تورم'),
(2, 195, 'اب و هوای 4 فصل و کاملا معتدل \nمردم بسیار خونگرم ', 'پیدا کردن شغل سخت است \r\nنرخ بیکاری زیاد است \r\nنرخ بیکاری اسپانیا در سال 2023 در مقایسه با ایران کاملا برابر است'),
(3, 0, 'ارتباطات دانشگاه‌های مالزی با دیگر دانشگاههای جهان بسیاز زیاد است و درحد عالی می‌باشد\nویزای فوری و بون دردسرهای رجکتی . درصد رجکتی ویزای مالزی بسیار پااین است تقریبا نزدیک به صفر\nپیدا کردن خانه بسیار ساده و بدون دردسر است\n', 'برای ایرانی‌ها در مالزی به سختی و دشواری زیاد حساب بانکی باز می‌کنند تقریبا اکثر دانشجویان ایرانی نمی‌توانند حساب بانکی باز کنند در مالزی مگر با داشتن کلی نامه از محل کار و مرفی نامه‌‌های خاص \nآب و هوا در مالزی تقریبا همیشه یک فصل است و در هفته روزهای بارانی بسیار زیادی را تجربه خواهید کرد.\nداشتن حشره زیاد به دلیل رطوبت هوا');

-- --------------------------------------------------------

--
-- Table structure for table `crm`
--

CREATE TABLE `crm` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `crm_category` int(4) NOT NULL,
  `country` int(11) NOT NULL,
  `city` int(4) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crm`
--

INSERT INTO `crm` (`id`, `name`, `crm_category`, `country`, `city`, `email`, `phone`) VALUES
(1, 'leyla farhadi', 1, 53, 9, 'lli@yahoo.com', '+1234578789'),
(15, 'ali', 1, 0, 0, '', '+1457894578'),
(16, 'ali', 1, 0, 0, '', '+123456789');

-- --------------------------------------------------------

--
-- Table structure for table `degree`
--

CREATE TABLE `degree` (
  `id` int(11) NOT NULL,
  `short_name` text NOT NULL,
  `ename` text NOT NULL,
  `pname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `degree`
--

INSERT INTO `degree` (`id`, `short_name`, `ename`, `pname`) VALUES
(1, '1', 'Diploma', 'دیپلم'),
(2, '1', 'Associate’s degree', 'فوق دیپلم - کاردانی'),
(3, 'A', 'Associate of Arts', 'فوق دیپلم هنر - کاردانی هنر'),
(4, 'A.S', 'Associate of Arts and Science', 'فوق دیپلم هنر و علوم - کاردانی هنر و علوم'),
(5, 'S', 'Associate of Science', 'فوق دیپلم علوم - کاردانی علوم'),
(6, 'B.A', 'Bachelor - Licentiate', 'لیسانس - کارشناسی'),
(7, 'B.Eng', 'Bachelor of Engineering', 'لیسانس مهندسی - کارشناسی مهندسی'),
(8, 'B.Tech', 'Bachelor of Technology', 'لیسانس تکنولوژی - کارشناسی تکنولوژی'),
(9, 'B.Pharm', 'Bachelor of Pharmacy', 'لیسانس داروسازی - کارشناسی داروسازی'),
(10, 'B.Arch', 'Bachelor of Architecture', 'لیسانس معماری - کارشناسی معماری'),
(11, 'B.A.Sc', 'Bachelor of Applied Science', 'لیسانس علوم تجربی و کاربردی - کارشناسی علوم تجربی یا کاربردی'),
(12, 'B.B.A', 'Bachelor of Business Administration', 'لیسانس مدیریت شغلی - کارشناسی مدیریت شغلی'),
(13, 'B.F.A', 'Bachelor of Fine Arts', 'لیسانس هنرهای زیبا - کارشناسی هنرهای زیبا'),
(14, 'B.Ed', 'Bachelor of Education', 'لیسانس تربیت معلم - کارشناسی تربیت معلم'),
(15, 'B.Com', 'Bachelor of Commerce', 'لیسانس تجات -کارشناسی تجارت'),
(16, 'LL.B', 'Bachelor of Laws', 'لیسانس حقوق - کارشناسی حقوق'),
(17, '', 'Master', 'فوق لیسانس - کارشناسی ارشد'),
(18, 'M.S.W', 'Master of Social Work', 'فوق لیسانس کار اجتماعی - کارشناسی ارشد کار اجتماعی'),
(19, 'M.Tech', 'Master of Technology', 'فوق لیسانس تکنولوژی - کارشناسی ارشد تکنولوژی'),
(20, 'M.Phil', 'Master of Philosophy', 'فوق لیسانس فلسفه - کارشناسی ارشد فلسفه'),
(21, 'M.P.A', 'Master of Public Administration', 'فوق لیسانس مدیریت عمومی - کارشناسی ارشد مدیریت عمومی'),
(22, 'M.P.H', 'Master of Public Health', 'فوق لیسانس بهداشت عمومی - کارشناسی ارشد بهداشت عمومی'),
(23, 'M.Arch', 'Master of Architecture', 'فوق لیسانس معماری - کارشناسی ارشد معماری'),
(24, 'M.A', 'Master of Arts', 'فوق لیسانس هنر - کارشناسی ارشد هنر'),
(25, 'M.B.A', 'Master of Business Administration', 'فوق لیسانس مدیریت تجاری - کارشناسی ارشد مدیریت تجاری'),
(26, 'M.C.A', 'Master of Computer Applications', 'فوق لیسانس کاربردهای کامپیوتر - کارشناسی ارشد کاربردهای کامپیوتر'),
(27, 'M.Div', 'Master of Divinity', 'فوق لیسانس الهیات - کارشناسی ارشد الهیات'),
(28, 'LL.M', 'Master of Laws', 'فوق لیسانس حقوق - کارشناسی ارشد حقوق'),
(29, 'M.L.I.S', 'Master of Library & Information Science', 'فوق لیسانس علوم اطلاعات و کتابداری - کارشناسی ارشد علوم اطلاعات و کتابداری'),
(30, 'M.F.A', 'Master of Fine Arts', 'فوق لیسانس هنرهای زیبا - کارشناسی ارشد هنرهای زیبا'),
(31, 'M.Ed', 'Master of Education', 'فوق لیسانس تحصیلات - کارشناسی ارشد تحصیلات'),
(32, 'M.Eng', 'Master of Engineering', 'فوق لیسانس مهندسی - کارشناسی ارشد مهندسی'),
(33, '', 'Doctorate', 'دکتری'),
(34, 'Ed.D', 'Doctor of Education', 'دکترای تحصیلات'),
(35, 'Pharm.D', 'Doctor of Pharmacy', 'دکترای داروسازی'),
(36, 'Ph.D', 'Doctor of Philosophy', 'پی اچ دی - دکترای فلسفه'),
(37, 'J.D', 'Doctor of Law', 'دکترای حقوق'),
(38, 'M.D', 'Doctor of Medicine', 'دکترای پزشکی');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `alt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`, `alt`) VALUES
(1, '1.png', 'بدون متن جایگزین'),
(2, '2.png', ''),
(3, '3.png', ''),
(4, '4.png', ''),
(5, '5.png', ''),
(6, '6.png', ''),
(7, '7.png', ''),
(8, '8.png', ''),
(9, '9.png', ''),
(10, '10.png', ''),
(11, '11.png', ''),
(12, '12.png', ''),
(13, '13.png', ''),
(14, '14.png', ''),
(15, '15.png', ''),
(16, '16.png', ''),
(17, '17.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `ip` varchar(45) NOT NULL,
  `visitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` varchar(18) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `email`, `password`, `name`, `date`) VALUES
(1, 'hamid@gmail.com', '123', 'حمید رضا مدیر کل سیستم', '1'),
(3, 'h@yahoo.com', 'cc2bd8f09bb88b5dd20f9b432631b8ca', 'sdsd', '2'),
(8, 'ma@gmail.com', '56ab3144716e48abb2420a50ac2ee5ae', 'محمد', '3'),
(14, 'ma@gmail.com', '56ab3144716e48abb2420a50ac2ee5ae', 'محمد', '4'),
(20, 'ma@gmail.com', '56ab3144716e48abb2420a50ac2ee5ae', 'محمد', ''),
(24, 'ma@gmail.com', '56ab3144716e48abb2420a50ac2ee5ae', 'محمد', ''),
(26, 'hamid@gmail.com', '202cb962ac59075b964b07152d234b70', 'hamid@gmail.com', ''),
(27, 'hamid@gmail.com', '67d43f6f19c43cbcfd9e035e6b8d4ac1', '211as', ''),
(28, 'elnaz@yahoo.com', '202cb962ac59075b964b07152d234b70', 'الناز حسینی', ''),
(29, 'sasasassa@yahoo.com', '2f3e9eccc22ee583cf7bad86c751d865', 'asasaswqe2342424', '');

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `ename` text NOT NULL,
  `country_id` int(11) NOT NULL,
  `logo` text NOT NULL,
  `url` text NOT NULL,
  `ranking` int(5) NOT NULL,
  `city_id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`id`, `pname`, `ename`, `country_id`, `logo`, `url`, `ranking`, `city_id`, `description`) VALUES
(1, 'گیرنه امریکن', '', 55, '7.png', '', 250, 0, ''),
(2, 'سی آی یو', 'CIU', 55, '8.png', '', 643, 0, ''),
(3, 'آداکنت', '', 55, '12.png', 'https://adakent.edu.tr/', 600, 0, ''),
(4, 'EMU مدیترانه', 'EMU', 55, '5.png', '', 2, 0, ''),
(5, 'گیرنه', '', 55, '7.png', '', 0, 0, ''),
(6, 'خاور نزدیک', 'NEU', 55, '13.png', 'https://neu.edu.tr/', 0, 0, ''),
(9, 'تکنولوژی قبرس', 'University of Nevada', 223, '.jpg', 'unlv.edu', 1172, 0, ''),
(10, 'دالاهو', 'Dalhousie', 38, '4.png', 'https://www.dal.ca/', 314, 0, ''),
(11, 'سنت مری', '', 38, '', 'https://www.smu.ca/', 0, 0, ''),
(12, 'تورنتو', 'Toronto', 38, '10.png', '', 0, 0, ''),
(13, 'کلگری', 'calgary university', 38, '9.png', 'https://www.ucalgary.ca/', 182, 0, ''),
(14, 'مونیخ', 'LMU', 81, '1.webp', 'https://www.lmu.de/', 54, 0, ''),
(15, 'فنی مونیخ', 'TUM', 81, '3.png', 'https://www.tum.de/', 37, 0, ''),
(16, 'کالج لانگارا', 'langara', 38, '6.png', 'https://langara.ca/', 7059, 0, 'ونکوور international@langara.ca ببخش بین الملل'),
(17, 'آلبرتا', 'ualberta', 38, '11.png', 'www.ualberta.ca', 111, 0, ''),
(18, 'ترینیتی وسترن', 'twu ', 38, '', 'www.twu.ca', 0, 0, ''),
(19, '', '', 223, '14.svg', 'linguistics.arizona.edu', 0, 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `country_info`
--
ALTER TABLE `country_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm`
--
ALTER TABLE `crm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degree`
--
ALTER TABLE `degree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `country_info`
--
ALTER TABLE `country_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `crm`
--
ALTER TABLE `crm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `degree`
--
ALTER TABLE `degree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
