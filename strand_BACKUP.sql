-- phpMyAdmin SQL Dump
-- version 3.5.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2017 at 04:22 PM
-- Server version: 5.1.73-log
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `b5044102_db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyid` int(11) DEFAULT NULL,
  `type` enum('google','facebook','twitter','tumblr') DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `data1` text,
  `data2` text,
  `data3` text,
  `data4` text,
  `active` int(11) DEFAULT '0',
  `record_created` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `companyid`, `type`, `name`, `data1`, `data2`, `data3`, `data4`, `active`, `record_created`) VALUES
(1, 1, 'facebook', 'Meta42', '1481903588779435', 'CAAK4R8eNlQwBAAsbnUg6F35GhOYVyR1nJY3eylTmVQQ20uxc7vI7Rcz202HyOAsB1ZADFobuHHpIRttQrjy8357HnmdkBeToAUXe84HldandOic0G3bSBSYHe6dxgXe4DzSPSjB2pInNb1niGStYneVE5ktefR7kZCZAV9mfHy0mjvtNl1k', NULL, NULL, 1, 0),
(2, 1, 'facebook', 'Linktagger', '454682217887015', 'CAAK4R8eNlQwBAGMHGxJgtonu4sTibsIjXBi9txW70CaRnFGFZBudSRyGYBRDjyGnFfQP07EWAppIwZBP7idW9VdpbEEZC5wPPBYYKYu2fp9qUhJfkIUph3gqCmtAKvbwrTLZB4D6Mg1xiow6LEvZCzV9GipIGOyxZAx95ZAVMfZAAeULeTHj446cr1VPKkTR1XYZD', NULL, NULL, 0, 0),
(3, 1, 'twitter', 'LiamWinder', '52456965', '52456965-98cuoa4gamIR7c5Qffr3YRLXIb6apklqH3K9XAQpf', '9woL94Jvr0kUcLV5Z1Nl5smwh2Adk2RdhfhTT3HU7kKBe', 'https://pbs.twimg.com/profile_images/3104699145/2bd619f6953b4c58b2b7c1208ecdb29b_normal.jpeg', 1, 0),
(4, 1, 'twitter', 'Meta42xyz', '3939675495', '3939675495-y0bNjs3viSPoNoA2Mlvfo7prFNGtsefl5ZcXXhB', 'BAQUK4mVORW9uqUoTmoG7EpivVx5wY98V62uGdx0Bv7tH', 'https://abs.twimg.com/sticky/default_profile_images/default_profile_0_normal.png', 1, 0),
(5, 3, 'facebook', 'Meta42', '1481903588779435', 'CAAK4R8eNlQwBABBPR8VwJi1l49ROkUlNdWVDkz5FPLFikgIFZC50wTqPqUwWpi9B2PCsz6HVJ4FQtfdHyOiqvZAu9zrLZA5VxF7f7tRpyhLWm44b0dtJPCfR53mtERy1MKuxulUQVaescv44j9jupw7x0AcxKIcVQ6UpzsS0YWP2EnCsVS6', NULL, NULL, 1, 0),
(6, 4, 'twitter', 'LiamWinder', '52456965', '52456965-98cuoa4gamIR7c5Qffr3YRLXIb6apklqH3K9XAQpf', '9woL94Jvr0kUcLV5Z1Nl5smwh2Adk2RdhfhTT3HU7kKBe', 'https://pbs.twimg.com/profile_images/3104699145/2bd619f6953b4c58b2b7c1208ecdb29b_normal.jpeg', 1, 0),
(7, 4, 'facebook', 'Metafortytwo', '1481903588779435', 'EAAK4R8eNlQwBAAHOAnBVLJxSZBZCkUmI3jFfZAusNlZB7ISqA1Kd6mxRN2cWDpqX6cmku4zn9DuYdAzEgZAW3qNNCZCqZCetW0AzOfyp9AlUwItsOet73SmXRv52s70cGQjZBurThXAv7EZAWmSTeFLacwRvLfMaNFRzVel3ZABZBysjAZDZD', NULL, NULL, 1, 0),
(8, 4, 'facebook', 'CrossEyes Sheffield', '722060884599162', 'EAAK4R8eNlQwBAH471R2jncATliuudPinkXWTvTpM2kAIYVvJLojxsEqqbFjxqiVg67Vp2V1RIBWLZBIm93A8ZBWtAcVKxZBvHhYkq8fQWNseRiCUQR4M9cKsVoxfDHFiVDYWjb7TKra8LpuNumZBdfq3ZAZASbApGEddVOBwgcUAZDZD', NULL, NULL, 1, 0),
(9, 5, 'twitter', 'walker1_harry', '2216016777', '2216016777-mhqxCDUbVNS0caZrVbPjyQ9MqKKFTphYJaKJwLa', '9oegx22StipZEaur3oDHGjYn7sIiDt5iwaDjn6YdKK23I', 'https://abs.twimg.com/sticky/default_profile_images/default_profile_2_normal.png', 0, 0),
(10, 6, 'twitter', 'SheffmunFangirl', '805040153060376577', '805040153060376577-OKouBGERLHLjBbyaSFFGWP92BGfaMF9', '0jAc9pgQ6HqBxlCdE7I9zU6VDRsriF9uFaBMf4ckjJiHB', 'https://abs.twimg.com/sticky/default_profile_images/default_profile_1_normal.png', 1, 0),
(11, 5, 'twitter', 'SheffmunFangirl', '805040153060376577', '805040153060376577-OKouBGERLHLjBbyaSFFGWP92BGfaMF9', '0jAc9pgQ6HqBxlCdE7I9zU6VDRsriF9uFaBMf4ckjJiHB', 'https://abs.twimg.com/sticky/default_profile_images/default_profile_1_normal.png', 0, 0),
(12, 5, 'facebook', 'Impulsepk', '100441736716109', 'EAAIVEUTqZAA0BAMQ6ppBVZCGEkZASOPriDx0WiJcruZB6cxwPSaG3aPRP3hIXRyQ4gyuit541v4w9lEtZCRs7N6j8olaCBceXPpYWOU0HW1LaEhEoZBc9KIzSeSBJ3ulg6kZBm8YxLzVu8HWqtUAxvGvsl8fX70nRrWTKZBkPkYGLgZDZD', NULL, NULL, 1, 0),
(13, 11, 'twitter', 'jordyrichards', '164678114', '164678114-zCAqXJLcNJsx7SordfhIjLdxyQBUvYvR29l63CAm', 'OwvSApfgqOTvDYDwutqx1FZ7SjeO0iK53VXqBpInqqewR', 'https://pbs.twimg.com/profile_images/2381721072/PhotoChooser-47272c9d-819f-479f-b179-1571fd764d98_normal.jpg', 0, 0),
(52, 8, 'twitter', 'jordyrichards', '164678114', '164678114-zCAqXJLcNJsx7SordfhIjLdxyQBUvYvR29l63CAm', 'OwvSApfgqOTvDYDwutqx1FZ7SjeO0iK53VXqBpInqqewR', 'https://pbs.twimg.com/profile_images/2381721072/PhotoChooser-47272c9d-819f-479f-b179-1571fd764d98_normal.jpg', 1, 0),
(54, 6, 'tumblr', 'mellowmakerfire', NULL, 'aL5o3NBYwSKH17aIUXe1uxHgraEZTVF5Xo7UQBCBlUqRF6Ehze', '0CJBoVHzBAunW2KqTg5QD8Hu3pIf1MEHoK33DDQaiL1cNohgYR', 'http://i.imgur.com/VGk6lQb.png', 1, 0),
(55, 6, 'facebook', 'Impulsepk', '100441736716109', 'EAAIVEUTqZAA0BAGqTApRlAq1vyxMqkJZAkx6uhcRIM6tgKYdX4YDwXrRAyzZCO1nHIEVPa4GIzdxgoDjlUEZBHcZBWrMY3r3XlpAkWgycLE5c97IZCYnVlfJeDng0mTEHAr65baa7mhk2nmT6vLvv3f6CIYApOCfkZD', NULL, NULL, 1, 0),
(58, 11, 'google', 'Alex HRry', '4/jKCBMiDjtadS5F376zE6LbZ98bkfk3rkPv9YYCY8lJ8', 'ya29.Ci_SA4mUoPlzxeRivuDAc15Z0P6eadz7ttbY9uj66lU5oY34eSa5v0XKkmUxWTnS0A', NULL, 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50', 1, 0),
(59, 6, 'google', 'naruichgo', '4/NVh6pXDQUCm4T7iv50wz6Km48CGLgYM7_0tOdzQKh4Y', 'ya29.Ci_SA9CvAlcY1alMaI3X8cB5a78avvEV4d6fKfsVTiH07qNdurtykc0zNbxDaWecpg', NULL, 'https://lh3.googleusercontent.com/-4jFR9AfEDtk/AAAAAAAAAAI/AAAAAAAAADE/7uFo0VRhMk0/photo.jpg?sz=50', 1, 0),
(60, 14, 'google', 'Alex HRry', '4/5toE4HOpEFzD7W-P6v76jfIxgFVZCDp0Yr9kDfrVzlc', 'ya29.CjDWAwcFjRpZy1qYF1QMKbtCXhnHGGinKhJ-U-LI8AowBdtSm1O-BM5DnLoIe4UB1D0', NULL, 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50', 1, 0),
(61, 8, 'tumblr', 'mellowmakerfire', NULL, 'ch34TjR1jlV3RZnKca3ZERwBcEo3Xh28FppObOAj4tsoHMleWw', '6nE1yoUC8RBE4TXZToLYCrhHmecm4gnUohLfdbERYwcfSIEZL8', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_queue`
--

CREATE TABLE IF NOT EXISTS `accounts_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyid` int(11) DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `message` text,
  `image` text,
  `suggestion_id` varchar(50) DEFAULT '0',
  `scheduled_time` int(11) DEFAULT '0',
  `sent_time` int(11) DEFAULT '0',
  `error` text,
  `record_created` int(11) DEFAULT '0',
  `schedule_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=236 ;

--
-- Dumping data for table `accounts_queue`
--

INSERT INTO `accounts_queue` (`id`, `companyid`, `accountid`, `userid`, `message`, `image`, `suggestion_id`, `scheduled_time`, `sent_time`, `error`, `record_created`, `schedule_id`) VALUES
(213, 6, 54, 7, 'HI', '', '0', 1, 1484313070, '', 1484313062, 0),
(214, 6, 10, 7, '#Tristram Hunt #friday13th \r\nYO!', '', '0', 1, 1484313684, '', 1484313642, 0),
(215, 6, 54, 7, '#Tristram Hunt #friday13th \r\nYO!', '', '0', 1, 1484313684, '', 1484313642, 0),
(216, 6, 55, 7, '#Tristram Hunt #friday13th \r\nYO!', '', '0', 1, 1484313685, '', 1484313642, 0),
(218, 6, 57, 7, 'Test google+', '', '0', 1, 1484313847, '', 1484313752, 0),
(220, 6, 54, 7, 'This is a queued test', '', '0', 1484313900, 1484313902, '', 1484313849, 0),
(221, 6, 55, 7, 'This is a queued test', '', '0', 1484313900, 1484313903, '', 1484313849, 0),
(222, NULL, NULL, NULL, 'mellowmakerfire', NULL, '0', 0, 0, NULL, 0, 0),
(223, 11, 58, 13, 'sassdsdsdsdasa', '', '0', 0, 1484315726, '', 1484315659, 0),
(224, 11, 58, 13, 'asdadasasd132', '', '0', 1, 1484315726, '', 1484315714, 0),
(225, 11, 58, 13, 'dadasdasdasdsadas', '', '0', 1, 1484315726, '', 1484315719, 0),
(226, 5, 12, 12, 'tyyt', '', '0', 0, 1484315845, '', 1484315833, 0),
(227, 5, 12, 12, 'ytyt', '', '0', 1484182800, 1484315906, '', 1484315845, 0),
(228, 6, 10, 7, 'Testing posting on three accounts', '', '0', 1, 1484316684, '', 1484316672, 0),
(229, 6, 54, 7, 'Testing posting on three accounts', '', '0', 1, 1484316685, '', 1484316672, 0),
(230, 6, 55, 7, 'Testing posting on three accounts', '', '0', 1, 1484316686, '', 1484316672, 0),
(231, NULL, NULL, NULL, 'mellowmakerfire', NULL, '0', 0, 0, NULL, 0, 0),
(232, 6, 10, 7, '#friday13th ', '', '0', 1484316780, 1484316788, '', 1484316778, 0),
(233, 6, 10, 7, '#Snowmageddon ', '', '0', 1484316840, 1484316854, '', 1484316803, 0),
(234, 5, 12, 6, 'fdgdfgd', '', '0', 0, 1485754545, '', 1485754534, 0),
(235, 5, 12, 6, 'sadadasd', '', '0', 0, 1485780393, '', 1485780353, 0);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_schedule`
--

CREATE TABLE IF NOT EXISTS `accounts_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyid` int(11) DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `timezone` varchar(45) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `record_created` int(11) DEFAULT NULL,
  `schedule_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=574 ;

--
-- Dumping data for table `accounts_schedule`
--

INSERT INTO `accounts_schedule` (`id`, `companyid`, `accountid`, `userid`, `timezone`, `day`, `time`, `record_created`, `schedule_id`) VALUES
(31, 5, 9, 6, '0.0', 1, 100, 1484144334, 33),
(35, 6, 10, 7, '0.0', 4, 1500, 1484148855, 36),
(36, 6, 10, 7, '0.0', 4, 100, 1484149059, 37),
(383, 5, 11, 6, '0.0', 2, 2100, 1484162323, 47),
(384, 5, 12, 6, '0.0', 2, 300, 1484173221, 48),
(385, 5, 12, 6, '0.0', 2, 600, 1484173221, 48),
(386, 5, 12, 6, '0.0', 2, 1000, 1484173221, 48),
(387, 5, 12, 6, '0.0', 2, 1400, 1484173221, 48),
(388, 5, 12, 6, '0.0', 2, 1800, 1484173221, 48),
(389, 5, 12, 6, '0.0', 2, 2100, 1484173221, 48),
(390, 5, 9, 6, '0.0', 1, 100, 1484217713, 49),
(391, 5, 9, 6, '0.0', 1, 200, 1484217713, 49),
(392, 5, 9, 6, '0.0', 1, 1400, 1484217713, 49),
(393, 5, 9, 6, '0.0', 1, 1700, 1484217713, 49),
(394, 5, 9, 6, '0.0', 2, 100, 1484217713, 49),
(395, 5, 9, 6, '0.0', 2, 200, 1484217713, 49),
(396, 5, 9, 6, '0.0', 2, 1400, 1484217713, 49),
(397, 5, 9, 6, '0.0', 2, 1700, 1484217713, 49),
(398, 5, 9, 6, '0.0', 3, 100, 1484217713, 49),
(399, 5, 9, 6, '0.0', 3, 200, 1484217713, 49),
(400, 5, 9, 6, '0.0', 3, 1400, 1484217713, 49),
(401, 5, 9, 6, '0.0', 3, 1700, 1484217713, 49),
(420, 5, 12, 6, '0.0', 2, 300, 1484253145, 53),
(421, 5, 12, 6, '0.0', 2, 600, 1484253145, 53),
(422, 5, 12, 6, '0.0', 2, 1000, 1484253145, 53),
(423, 5, 12, 6, '0.0', 2, 1400, 1484253145, 53),
(424, 5, 12, 6, '0.0', 2, 1800, 1484253145, 53),
(425, 5, 12, 6, '0.0', 2, 2100, 1484253145, 53),
(426, 5, 12, 6, '0.0', 4, 2100, 1484253215, 54),
(427, 6, 10, 7, '0.0', 4, 100, 1484307502, 56),
(428, 6, 10, 7, '0.0', 4, 1500, 1484307502, 56),
(429, 6, 55, 7, '0.0', 2, 1900, 1484307528, 57),
(477, 5, 12, 6, '0.0', 5, 1300, 1484310014, 66),
(499, 11, 58, 13, '-3.5', 1, 1200, 1484315605, 68),
(500, 11, 58, 13, '-3.5', 1, 1800, 1484315605, 68),
(501, 11, 58, 13, '-3.5', 3, 1200, 1484315605, 68),
(502, 11, 58, 13, '-3.5', 3, 1800, 1484315605, 68),
(503, 11, 58, 13, '-3.0', 3, 700, 1484315632, 69),
(504, 11, 58, 13, '-3.0', 3, 1200, 1484315632, 69),
(505, 11, 58, 13, '-3.0', 3, 1800, 1484315632, 69),
(506, 11, 58, 13, '-3.0', 5, 700, 1484315632, 69),
(507, 11, 58, 13, '-3.0', 5, 1200, 1484315632, 69),
(508, 11, 58, 13, '-3.0', 5, 1800, 1484315632, 69),
(513, 6, 10, 7, '0.0', 4, 100, 1484316892, 71),
(514, 6, 10, 7, '0.0', 4, 1500, 1484316892, 71),
(515, 5, 12, 6, '0.0', 2, 300, 1484680498, 72),
(516, 5, 12, 6, '0.0', 2, 600, 1484680498, 72),
(517, 5, 12, 6, '0.0', 2, 1000, 1484680498, 72),
(518, 5, 12, 6, '0.0', 2, 1300, 1484680498, 72),
(519, 5, 12, 6, '0.0', 2, 1400, 1484680498, 72),
(520, 5, 12, 6, '0.0', 2, 1800, 1484680498, 72),
(521, 5, 12, 6, '0.0', 2, 2100, 1484680498, 72),
(522, 5, 12, 6, '0.0', 4, 300, 1484680498, 72),
(523, 5, 12, 6, '0.0', 4, 600, 1484680498, 72),
(524, 5, 12, 6, '0.0', 4, 1000, 1484680498, 72),
(525, 5, 12, 6, '0.0', 4, 1300, 1484680498, 72),
(526, 5, 12, 6, '0.0', 4, 1400, 1484680498, 72),
(527, 5, 12, 6, '0.0', 4, 1800, 1484680498, 72),
(528, 5, 12, 6, '0.0', 4, 2100, 1484680498, 72),
(529, 5, 12, 6, '0.0', 5, 300, 1484680498, 72),
(530, 5, 12, 6, '0.0', 5, 600, 1484680498, 72),
(531, 5, 12, 6, '0.0', 5, 1000, 1484680498, 72),
(532, 5, 12, 6, '0.0', 5, 1300, 1484680498, 72),
(533, 5, 12, 6, '0.0', 5, 1400, 1484680498, 72),
(534, 5, 12, 6, '0.0', 5, 1800, 1484680498, 72),
(535, 5, 12, 6, '0.0', 5, 2100, 1484680498, 72),
(536, 14, 60, 16, '0.0', 1, 1000, 1484692813, 75),
(537, 14, 60, 16, '0.0', 1, 1600, 1484692813, 75),
(538, 14, 60, 16, '0.0', 4, 1000, 1484692813, 75),
(539, 14, 60, 16, '0.0', 4, 1600, 1484692813, 75),
(540, 8, 52, 9, '0.0', 2, 1100, 1484823853, 76),
(541, 8, 52, 9, '0.0', 2, 1300, 1484823853, 76),
(542, 8, 52, 9, '0.0', 2, 1500, 1484823853, 76),
(543, 8, 52, 9, '0.0', 4, 1100, 1484823853, 76),
(544, 8, 52, 9, '0.0', 4, 1300, 1484823853, 76),
(545, 8, 52, 9, '0.0', 4, 1500, 1484823853, 76),
(546, 8, 52, 9, '0.0', 5, 1100, 1484823853, 76),
(547, 8, 52, 9, '0.0', 5, 1300, 1484823853, 76),
(548, 8, 52, 9, '0.0', 5, 1500, 1484823853, 76),
(549, 8, 52, 9, '0.0', 3, 1100, 1484824065, 77),
(550, 8, 52, 9, '0.0', 3, 1300, 1484824065, 77),
(551, 8, 52, 9, '0.0', 4, 1100, 1484824065, 77),
(552, 8, 52, 9, '0.0', 4, 1300, 1484824065, 77),
(553, 5, 12, 6, '0.0', 2, 300, 1485780345, 78),
(554, 5, 12, 6, '0.0', 2, 600, 1485780345, 78),
(555, 5, 12, 6, '0.0', 2, 1000, 1485780345, 78),
(556, 5, 12, 6, '0.0', 2, 1300, 1485780345, 78),
(557, 5, 12, 6, '0.0', 2, 1400, 1485780345, 78),
(558, 5, 12, 6, '0.0', 2, 1800, 1485780345, 78),
(559, 5, 12, 6, '0.0', 2, 2100, 1485780345, 78),
(560, 5, 12, 6, '0.0', 4, 300, 1485780345, 78),
(561, 5, 12, 6, '0.0', 4, 600, 1485780345, 78),
(562, 5, 12, 6, '0.0', 4, 1000, 1485780345, 78),
(563, 5, 12, 6, '0.0', 4, 1300, 1485780345, 78),
(564, 5, 12, 6, '0.0', 4, 1400, 1485780345, 78),
(565, 5, 12, 6, '0.0', 4, 1800, 1485780345, 78),
(566, 5, 12, 6, '0.0', 4, 2100, 1485780345, 78),
(567, 5, 12, 6, '0.0', 5, 300, 1485780345, 78),
(568, 5, 12, 6, '0.0', 5, 600, 1485780345, 78),
(569, 5, 12, 6, '0.0', 5, 1000, 1485780345, 78),
(570, 5, 12, 6, '0.0', 5, 1300, 1485780345, 78),
(571, 5, 12, 6, '0.0', 5, 1400, 1485780345, 78),
(572, 5, 12, 6, '0.0', 5, 1800, 1485780345, 78),
(573, 5, 12, 6, '0.0', 5, 2100, 1485780345, 78);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE IF NOT EXISTS `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `plan` int(11) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `plan`, `active`) VALUES
(1, 'Meta', 1, 1),
(2, 'Test1', 1, 1),
(3, 'Esther', 1, 1),
(4, 'MetaFortyTwo', 1, 1),
(5, 'Strand_Dev', 1, 1),
(6, 'Maria', 1, 1),
(7, 'MetaFortyTwo', 1, 1),
(8, 'test', 1, 1),
(9, 'Niggaz', 1, 1),
(10, 'jdsajasdjsadjdsa', 1, 1),
(11, 'strand123456', 1, 1),
(12, 'asd', 1, 1),
(13, 'sadas', 1, 1),
(14, 'Testing', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `festivals`
--

CREATE TABLE IF NOT EXISTS `festivals` (
  `festivalID` int(11) NOT NULL AUTO_INCREMENT,
  `festivalName` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `festivalDescription` text COLLATE utf8_unicode_ci NOT NULL,
  `festivalImage` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'tank.jpg',
  `festivalLineup` text COLLATE utf8_unicode_ci NOT NULL,
  `musicTypeID` int(11) NOT NULL,
  `venueID` int(11) NOT NULL,
  `ticketID` int(11) NOT NULL,
  PRIMARY KEY (`festivalID`),
  KEY `musicTypeID` (`musicTypeID`,`venueID`,`ticketID`),
  KEY `venueID` (`venueID`),
  KEY `ticketID` (`ticketID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `festivals`
--

INSERT INTO `festivals` (`festivalID`, `festivalName`, `festivalDescription`, `festivalImage`, `festivalLineup`, `musicTypeID`, `venueID`, `ticketID`) VALUES
(1, 'Leeds Festival', 'Leeds', 'leeds.jpg', 'Bob Marley', 1, 1, 1),
(2, 'Leeds Festival', 'Leeds', 'leeds.jpg', 'Bob Marley', 1, 2, 2),
(3, 'No Man''s Land Festival 2017', 'No Man''s Land is a home grown self sustained festival, a collaboration of UK promoters, artists, producers and audio visual technicians each adding their own unique skills and imagination to bring you the real UK festival experience!', 'nomans.jpg', 'ASWAD EXPERIENCE FT. BRINSLEY FORDE, EZ ROLLERS FT. ELLA SOPP, BLISS, AVALON, SONIC SPECIES, KRUST, DEEKLINE, SLAMBOREE SOUNDSYSTEM', 4, 3, 3),
(4, 'Weyfest 2017', '4 stages, Great bar prices, great quality food vendors, posh toilets (cleaned all weekend), museum attractions, steam railway rides and much more!', 'mayfest.jpg', 'Jools Holland, The Buzzcocks, Inglorious, Jeramiah Ferrari, Broken Witt Rebels, Mike Sanchez, Atomic Rooster and many more to be announced', 4, 4, 4),
(5, 'Leeds Festival', 'Leeds', 'tank.jpg', 'Bob Marley', 1, 5, 5),
(6, 'dfd', 'Leeds', 'tank.jpg', 'Bob Marley', 1, 6, 6),
(7, 'Leeds Festival', 'Leeds', 'tank.jpg', 'Bob Marley', 3, 7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `filmID` int(11) NOT NULL AUTO_INCREMENT,
  `filmCertificate` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `filmName` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `filmDescription` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `filmImage` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `filmPrice` decimal(5,2) NOT NULL,
  `filmReview` int(11) NOT NULL,
  `releaseDate` date NOT NULL,
  PRIMARY KEY (`filmID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`filmID`, `filmCertificate`, `filmName`, `filmDescription`, `filmImage`, `filmPrice`, `filmReview`, `releaseDate`) VALUES
(1, '15', 'Tropic Thunder', 'A film crew is in Southeast Asia filming a Vietnam-war memoir. It&#39;s early in the shooting, but they&#39;re already behind schedule and over budget. On the day an accident befalls the novice director, the cast and crew are attacked by a gang of poppy-growing local drug dealers, except the cast and crew don&#39;t realize these aren&#39;t actors who are stalking them. The thugs kidnap Tugg Speedman, an actor whose star seems on the decline, and it&#39;s up to the rest of the ragtag team to band together long enough to attempt his rescue. But will Tugg want to leave?', 'tropicThunder.jpg', 3.50, 1, '2008-09-19'),
(2, 'PG', 'TRON: Legacy', 'Sam Flynn, the tech-savvy 27-year-old son of Kevin Flynn, looks into his father''s disappearance and finds himself pulled into the same world of fierce programs and gladiatorial games where his father has been living for 20 years. Along with Kevin''s loyal confidant, father and son embark on a life-and-death journey across a visually-stunning cyber universe that has become far more advanced and exceedingly dangerous.', 'tronLegacy.jpg', 1.00, 1, '2010-12-17'),
(3, '12', 'Inception', 'Dom Cobb is a skilled thief, the absolute best in the dangerous art of extraction, stealing valuable secrets from deep within the subconscious during the dream state, when the mind is at its most vulnerable. Cobb''s rare ability has made him a coveted player in this treacherous new world of corporate espionage, but it has also made him an international fugitive and cost him everything he has ever loved. Now Cobb is being offered a chance at redemption. One last job could give him his life back but only if he can accomplish the impossible-inception. Instead of the perfect heist, Cobb and his team of specialists have to pull off the reverse: their task is not to steal an idea but to plant one. If they succeed, it could be the perfect crime. But no amount of careful planning or expertise can prepare the team for the dangerous enemy that seems to predict their every move. An enemy that only Cobb could have seen coming.', 'inception.jpg', 2.99, 1, '2010-07-16'),
(4, '12', 'The Tourist', 'Elise (Angelina Jolie) randomly sits next to an American tourist, Frank (Johnny Depp), on a train going to Venice. The police have been following Elise for two years waiting for her to contact her lover who embezzled over $2 Billion. Not only will they need to evade the police, but also the mobster whose money he stole.', 'theTourist.jpg', 1.99, 1, '2010-12-10'),
(5, '15', 'The Shawshank Redemption', 'Andy Dufresne is a young and successful banker whose life changes drastically when he is convicted and sentenced to life imprisonment for the murder of his wife and her lover. Set in the 1940''s, the film shows how Andy, with the help of his friend Red, the prison entrepreneur, turns out to be a most unconventional prisoner.', 'shawshankRedemption.jpg', 1.00, 0, '1994-02-17'),
(6, '18', 'The Usual Suspects', 'Following a truck hijack in New York, five conmen are arrested and brought together for questioning. As none of them is guilty, they plan a revenge operation against the police. The operation goes well, but then the influence of a legendary mastermind criminal called Keyser Söze is felt. It becomes clear that each one of them has wronged Söze at some point and must pay back now. The payback job leaves 27 men dead in a boat explosion, but the real question arises now: Who actually is Keyser Söze?', 'usualSuspects.jpg', 1.00, 5, '1995-08-25'),
(7, '18', 'In Bruges 2', 'A Christmas story. Should one who killed a child be allowed to live? Harry Waters, a London thug, sends Irish hitmen Ken and Ray to Bruges to lie low after a job goes awry in a London church. Ken&#39;s the old hand, fascinated by the Medieval, with a fatherly attitude toward Ray, who&#39;s young and bored but chastened after the London job. Ray&#39;s disposition changes when he meets Chloë, a hip young woman who sells drugs on the local set of a movie featuring Jimmy, an American dwarf. Harry calls with irrevocable instructions. Ken balks, setting up a showdown in the town square. A pregnant innkeeper, dumdum bullets, and a code of conduct play into the resolution.', 'inBruges.jpg', 1.00, 5, '2008-04-18'),
(8, '15', 'Hurt Locker', 'An intense portrayal of elite soldiers who have one of the most dangerous jobs in the world: disarming bombs in the heat of combat. When a new sergeant, James, takes over a highly trained bomb disposal team amidst violent conflict, he surprises his two subordinates, Sanborn and Eldridge, by recklessly plunging them into a deadly game of urban combat. James behaves as if he''s indifferent to death. As the men struggle to control their wild new leader, the city explodes into chaos, and James'' true character reveals itself in a way that will change each man forever', 'hurtLocker.jpg', 1.00, 2, '2008-08-28'),
(9, '18', 'L.A. Confidential', '1950''s Los Angeles is the seedy backdrop for this intricate noir-ish tale of police corruption and Hollywood sleaze. Three very different cops are all after the truth, each in their own style: Ed Exley, the golden boy of the police force, willing to do almost anything to get ahead, except sell out; Bud White, ready to break the rules to seek justice, but barely able to keep his raging violence under control; and Jack Vincennes, always looking for celebrity and a quick buck until his conscience drives him to join Exley and White down the one-way path to find the truth behind the dark world of L.A. crime.', 'laConfidential.jpg', 1.00, 3, '1997-10-31'),
(10, 'U', 'WALL-E', 'In a distant, but not so unrealistic future, where mankind has abandoned earth because it has become covered with trash from products sold by the powerful multi-national Buy N Large corporation, WALL-E, a garbage collecting robot has been left to clean up the mess. Mesmerized with trinkets of Earth''s history and show tunes, WALL-E is alone on Earth except for a sprightly pet cockroach. One day, Eve, a sleek (and dangerous) reconnaissance robot, is sent to Earth to find proof that life is once again sustainable. WALL-E falls in love with Eve. WALL-E rescues Eve from a dust storm and shows her a living plant he found amongst the rubble. Consistent with her "directive" Eve takes the plant and automatically enters a deactivated state except for a blinking green beacon. WALL-E, doesn''t understand what has happened to his new friend, but true to his love, he protects her from wind, rain, and lightning...', 'wallE.jpg', 1.00, 4, '2008-07-18'),
(11, '15', 'No Country for Old Men', 'In rural Texas, welder and hunter Llewelyn Moss discovers the remains of several drug runners who have all killed each other in an exchange gone violently wrong. Rather than report the discovery to the police, Moss decides to simply take the two million dollars present for himself. This puts the psychopathic killer, Anton Chigurh, on his trail as he dispassionately murders nearly every rival, bystander and even employer in his pursuit of his quarry and the money. As Moss desperately attempts to keep one step ahead, the blood from this hunt begins to flow behind him with relentlessly growing intensity as Chigurh closes in. Meanwhile, the laconic Sherrif Ed Tom Bell blithely oversees the investigation even as he struggles to face the sheer enormity of the crimes he is attempting to thwart.', 'noCountryForOldMen.jpg', 1.00, 5, '2008-01-18'),
(12, '15', 'Donnie Darko', 'Donnie Darko doesn''t get along too well with his family, his teachers and his classmates; but he does manage to find a sympathetic friend in Gretchen, who agrees to date him. He has a compassionate psychiatrist, who discovers hypnosis is the means to unlock hidden secrets. His other companion may not be a true ally. Donnie has a friend named Frank - a large bunny which only Donnie can see. When an engine falls off a plane and destroys his bedroom, Donnie is not there. Both the event, and Donnie''s escape, seem to have been caused by supernatural events. Donnie''s mental illness, if such it is, may never allow him to find out for sure.', 'donnieDarko.jpg', 1.00, 4, '2001-10-25'),
(13, 'PG', 'Spirited Away', 'Chihiro and her family are on their way to their new house in the suburbs when her father decides to take a shortcut along a lonely-looking dirt road. After getting out of the car and walking along a path for a while, they discover an open-air restaurant filled with food but with no workers or customers present. Mom and Dad don''t hesitate to sit down and dig in, but Chihiro senses danger and refuses. As night falls, she is terrified to see the area fill with faceless spirits, but when she runs to find her parents, she discovers that they have been turned into pigs. She is found by a mysterious boy named Haku, who promises to help her. He gets her a job working in a nearby building, which turns out to be a bathhouse for the thousands of Japan''s gods and spirits. Though the work is hard and the people strange, she does as well as she can. Her parents, however, are still waiting in the hotel''s stockyard...', 'spiritedAway.jpg', 1.00, 3, '2003-09-12'),
(14, '15', 'Downfall', 'In April of 1945, Germany stands at the brink of defeat with the Russian Army closing in from the east and the Allied Expeditionary Force attacking from the west. In Berlin, capital of the Third Reich, Adolf Hitler proclaims that Germany will still achieve victory and orders his Generals and advisers to fight to the last man. "Downfall" explores these final days of the Reich, where senior German leaders (such as Himmler and Goring) began defecting from their beloved Fuhrer, in an effort to save their own lives, while still others (Joseph Goebbels) pledge to die with Hitler. Hitler, himself, degenerates into a paranoid shell of a man, full of optimism one moment and suicidal depression the next. When the end finally does comes, and Hitler lies dead by his own hand, what is left of his military must find a way to end the killing that is the Battle of Berlin, and lay down their arms in surrender.', 'downfall.jpg', 1.00, 2, '2005-04-01'),
(15, '15', 'The Big Lebowski', 'When "The Dude" Lebowski is mistaken for a millionaire Lebowski, two thugs urinate on his rug to coerce him into paying a debt he knows nothing about. While attempting to gain recompense for the ruined rug from his wealthy counterpart, he accepts a one-time job with high pay-off. He enlists the help of his bowling buddy, Walter, a gun-toting Jewish-convert with anger issues. Deception leads to more trouble, and it soon seems that everyone from porn empire tycoons to nihilists want something from The Dude.', 'bigLebowski.jpg', 1.00, 5, '1998-05-01'),
(16, '18', 'Lock, Stock and Two Smoking Barrels', 'Four Jack-the-lads find themselves heavily - seriously heavily - in debt to an East End hard man and his enforcers after a crooked card game. Overhearing their neighbours in the next flat plotting to hold up a group of out-of-their-depth drug growers, our heros decide to stitch up the robbers in turn. In a way the confusion really starts when a pair of antique double-barrelled shotguns go missing in a completely different scam.', 'lockStockandTwoSmokingBarrels.jpg', 1.00, 5, '1998-08-28'),
(17, '12', 'Harry Potter and the Deathly Hallows: Part 1', 'Voldemort''s power is growing stronger. He now has control over the Ministry of Magic and Hogwarts. Harry, Ron, and Hermione decide to finish Dumbledore''s work and find the rest of the Horcruxes to defeat the Dark Lord. But little hope remains for the Trio, and the rest of the Wizarding World, so everything they do must go as planned.', 'harryPotterDeathlyHallowsPartOne.jpg', 1.00, 4, '2010-11-19'),
(18, '15', 'The Lives of Others', 'Brit flick about two friends who try to cover up the death of one of their husbands. Done in a ''Thelma and Louise'' type fashion and accompanied by lashings of dark comedy.', 'livesOfOthers.jpg', 1.00, 3, '2006-04-16'),
(19, '15', 'Little Miss Sunshire', 'In Albuquerque, the housewife Sheryl Hoover brings her suicidal brother Frank to the breast of her dysfunctional and bankrupted family. Frank is homosexual and expert in Proust, and tried to commit suicide when he was rejected by his boyfriend and his great competitor became renowned and recognized as number one in the field of Proust. Sheryl''s husband Richard is unsuccessfully trying to sell his self-help and self-improvement technique using nine steps to reach success, but he is actually a complete loser. Her son Dwayne has taken a vow of silence as a follower of Nietzsche and aims to be a jet pilot. Dwayne''s grandfather Edwin was sent away from the institution for elders Sunset Manor and is addicted in heroin. When her seven years old daughter Olive has a chance to dispute the Little Miss Sunshine pageant in Redondo Beach, California, the whole family travels together in their old Volkswagen Type 2.', 'littleMissSunshine.jpg', 5.00, 4, '2006-09-08'),
(20, '15', 'The Matrix', 'Thomas A. Anderson is a man living two lives. By day he is an average computer programmer and by night a malevolent hacker known as Neo. Neo has always questioned his reality but the truth is far beyond his imagination. Neo finds himself targeted by the police when he is contacted by Morpheus, a legendary computer hacker branded a terrorist by the government. Morpheus awakens Neo to the real world, a ravaged wasteland where most of humanity have been captured by a race of machines which live off of their body heat and imprison their minds within an artificial reality known as the Matrix. As a rebel against the machines, Neo must return to the Matrix and confront the agents, super powerful computer programs devoted to snuffing out Neo and the entire human rebellion.', 'matrix.jpg', 1.99, 3, '1999-06-11'),
(21, '12', 'O Brother Where Art Thou', 'Loosely based on Homer''s ''Odyssey'' the movie deals with the grotesque adventures of Everett Ulysses McGill and his companions Delmar and Pete in 1930s Mississipi. Sprung from a chain gang and trying to reach Everetts home to recover the buried loot of a bank heist they are confronted by a series of strange characters. Among them sirens, a cyclops, bankrobber George ''Babyface'' Nelson (very annoyed by that nickname), a campaigning Governor, his opponent, a KKK lynch mob, and a blind prophet, who warns the trio that "the treasure you seek shall not be the treasure you find."', 'oBrotherWhereArtThou.jpg', 2.99, 2, '2000-09-15'),
(22, '18', 'Fargo', 'Jerry works in his father-in-law''s car dealership and has gotten himself in financial problems. He tries various schemes to come up with money needed for a reason that is never really explained. It has to be assumed that his huge embezzlement of money from the dealership is about to be discovered by father-in-law. When all else falls through, plans he set in motion earlier for two men to kidnap his wife for ransom to be paid by her wealthy father (who doesn''t seem to have the time of day for son-in-law). From the moment of the kidnapping, things go wrong and what was supposed to be a non-violent affair turns bloody with more blood added by the minute. Jerry is upset at the bloodshed, which turns loose a pregnant sheriff from Brainerd, MN who is tenacious in attempting to solve the three murders in her jurisdiction.', 'fargo.jpg', 1.99, 5, '1996-05-31'),
(23, '18', 'Inglourious Basterds', 'In Nazi occupied France, young Jewish refugee Shosanna Dreyfus witnesses the slaughter of her family by Colonel Hans Landa. Narrowly escaping with her life, she plots her revenge several years later when German war hero Fredrick Zoller takes a rapid interest in her and arranges an illustrious movie premiere at the theater she now runs. With the promise of every major Nazi officer in attendance, the event catches the attention of the "Basterds", a group of Jewish-American guerilla soldiers led by the ruthless Lt. Aldo Raine. As the relentless executioners advance and the conspiring young girl''s plans are set in motion, their paths will cross for a fateful evening that will shake the very annals of history.', 'inglouriousBasterds.jpg', 3.99, 4, '2009-08-19'),
(24, '15', 'Slumdog Millionaire', 'The story of Jamal Malik, an 18 year-old orphan from the slums of Mumbai, who is about to experience the biggest day of his life. With the whole nation watching, he is just one question away from winning a staggering 20 million rupees on India''s Kaun Banega Crorepati? (Who Wants To Be A Millionaire?) But when the show breaks for the night, police arrest him on suspicion of cheating; how could a street kid know so much? Desperate to prove his innocence, Jamal tells the story of his life in the slum where he and his brother grew up, of their adventures together on the road, of vicious encounters with local gangs, and of Latika, the girl he loved and lost. Each chapter of his story reveals the key to the answer to one of the game show''s questions. Each chapter of Jamal''s increasingly layered story reveals where he learned the answers to the show''s seemingly impossible quizzes. But one question remains...', 'slumdogMillionaire.jpg', 2.99, 3, '2009-01-09'),
(25, '15', 'Cinema Paradiso', 'A famous film director returns home to a Sicilian village for the first time after almost 30 years. He reminisces about his childhood at the Cinema Paradiso where Alfredo, the projectionist, first brought about his love of films. He is also reminded of his lost teenage love, Elena, who he had to leave before he left for Rome.', 'cinemaParadiso.jpg', 0.99, 2, '1988-02-23'),
(26, '12', 'Crouching Tiger Hidden Dragon', 'The disappearance of a magical jade sword spurs a breathtaking quest for the missing treasure. Li is embittered by the loss of his jade sword, and his unrequited pursuit of Yu is further complicated by the mysterious intrusion of an assassin. The identity of the assassin is gradually unveiled as another poignant tale of love begins to ravel with that of Li and Yu against the backdrop of Western China''s magnificent landscape.', 'crouchingTigerHiddenDragon.jpg', 3.00, 4, '2001-01-05'),
(27, '15', 'There Will Be Blood', 'The film follows the rise to power of Daniel Plainview - a charismatic and ruthless oil prospector, driven to succeed by his intense hatred of others and psychological need to see any and all competitors fail. When he learns of oil-rich land in California that can be bought cheaply, he moves his operation there and begins manipulating and exploiting the local landowners into selling him their property. Using his young adopted son H.W. to project the image of a caring family man, Plainview gains the cooperation of almost all the locals with lofty promises to build schools and cultivate the land to make their community flourish. Over time, Plainview''s gradual accumulation of wealth and power causes his true self to surface, and he begins to slowly alienate himself from everyone in his life.', 'thereWillBeBlood.jpg', 2.99, 3, '2007-02-15'),
(28, '18', 'Gangs of New York', '1863. America was born in the streets. In this movie, we see Amsterdam Vallon returning to the Five Points of America to seek vengeance against the psychotic gangland kingpin Bill the Butcher who murdered his father years ago. With an eager pickpocket by his side and a whole new army, Vallon fights his way to seek vengeance on the Butcher and restore peace in the area. However this is more said than done.', 'gangsOfNewYork.jpg', 1.99, 2, '2003-01-09'),
(29, '15', 'Hear My Song', 'The film cost less than £2 million to make and was shot in Ireland in under 6 weeks. Then first time director Peter Chelsom and co-writer/ star Adrian Dunbar took it to the Cannes Film Festival in search of a buyer. There, Harvey Weinstein snapped up the American distribution rights for Miramax, thus ensuring the film of a high degree of visibility. This duly paid off with its success at the American and UK box office, and a Golden Globe nomination for Ned Beatty.', 'hearMySong.jpg', 1.50, 5, '1991-03-13'),
(30, '15', 'Mulholland Drive', 'A bright-eyed young actress travels to Hollywood, only to be ensnared in a dark conspiracy involving a woman who was nearly murdered, and now has amnesia because of a car crash. Eventually, both women are pulled into a psychotic illusion involving a dangerous blue box, a director named Adam Kesher, and the mysterious night club Silencio.', 'mulhollandDrive.jpg', 3.50, 4, '2001-01-04'),
(31, '15', 'Somewhere', 'Hollywood actor Johnny Marco, nested in his luxury hotel of choice, is a stimulated man. Drinking, parties and women keep a creeping boredom under wraps in between jobs. He is the occasional father of a bright girl, Cleo, who may be spoiled but doesn''t act it. When Cleo''s mother drops her off and leaves town, Johnny brings her along for the ride, but can he fit an 11-year-old girl into his privileged lifestyle?', 'somewhere.jpg', 2.50, 3, '2010-12-10'),
(32, '18', 'The Company Men', 'The story centers on a year in the life of three men trying to survive a round of corporate downsizing at a major company - and how that affects them, their families, and their communities.', 'theCompanyMen.jpg', 3.00, 2, '2011-03-11'),
(33, 'U', 'The Chronicles of Narnia: The Voyage of the Dawn Treader', 'Lucy and Edmund Pevensie return to Narnia with their cousin Eustace where they meet up with Prince Caspian for a trip across the sea aboard the royal ship The Dawn Treader. Along the way they encounter dragons, dwarves, merfolk, and a band of lost warriors before reaching the edge of the world.', 'theChroniclesOfNariaTheVoyageOfTheDawnTreader.jpg', 4.00, 1, '2010-12-09'),
(34, 'U', 'Despicable Me', 'In a happy suburban neighborhood surrounded by white picket fences with flowering rose bushes, sits a black house with a dead lawn. Unbeknownst to the neighbors, hidden beneath this home is a vast secret hideout. Surrounded by a small army of minions, we discover Gru, planning the biggest heist in the history of the world. He is going to steal the moon. (Yes, the moon!) Gru delights in all things wicked. Armed with his arsenal of shrink rays, freeze rays, and battle-ready vehicles for land and air, he vanquishes all who stand in his way. Until the day he encounters the immense will of three little orphaned girls who look at him and see something that no one else has ever seen: a potential Dad. The world''s greatest villain has just met his greatest challenge: three little girls named Margo, Edith and Agnes.', 'despicableMe.jpg', 2.00, 3, '2010-10-15'),
(35, '12', 'Burleaque', 'The Burlesque Lounge has its best days behind it. Tess, a retired dancer and owner of the venue, struggles to keep the aging theater alive, facing all kinds of financial and artistic challenges. With the Lounge&#39;s troupe members becoming increasingly distracted by personal problems and a threat coming from a wealthy businessman&#39;s quest to buy the spot from Tess, the good fortune seems to have abandoned the club altogether. Meanwhile, the life of Ali, a small-town girl from Iowa, is about to change dramatically. Hired by Tess as a waitress at the Lounge, Ali escapes a hollow past and quickly falls in love with the art of burlesque. Backed by newfound friends amongst the theater&#39;s crew, she manages to fulfill her dreams of being on stage herself. Things take a dramatic turn though when Ali&#39;s big voice makes her become the main attraction of the revue.', 'burlesque.jpg', 3.00, 4, '2010-12-17'),
(36, '15', 'Prometheus', 'A team of explorers discover a clue to the origins of mankind on Earth, leading them on a journey to the darkest corners of the universe. There, they must fight a terrifying battle to save the future of the human race.', 'prometheus.jpg', 10.99, 5, '2012-06-01'),
(37, 'PG', 'Skyfall ', 'When Bond''s latest assignment goes gravely wrong and agents around the world are exposed, MI6 is attacked forcing M to relocate the agency. These events cause her authority and position to be challenged by Gareth Mallory (Ralph Fiennes), the new Chairman of the Intelligence and Security Committee. With MI6 now compromised from both inside and out, M is left with one ally she can trust: Bond. 007 takes to the shadows - aided only by field agent, Eve (Naomie Harris) - following a trail to the mysterious Silva (Javier Bardem), whose lethal and hidden motives have yet to reveal themselves', 'skyfall.jpg', 5.99, 4, '2012-11-09'),
(38, 'PG', 'The Fault in Our Stars', 'Teen weepie about cancer patients who fall in love after attending a support group, has been named the most popular film of summer 2014 on social media sites.', 'theFaultinOurStars.jpg', 6.99, 3, '2014-06-06'),
(39, '18', 'The Grand Budapest Hotel', 'For the Ralph Fiennes performance alone this is a must see. The film presents something new with each repeat viewing, offering a depth and complexity to every character, every scene; in actual fact every frame is awash with painstaking beauty.', 'grandBudapestHotel.jpg', 4.99, 5, '2014-03-24'),
(40, 'PG', 'Interstellar ', 'In the near future Earth has been devastated by drought and famine, causing a scarcity in food and extreme changes in climate. When humanity is facing extinction, a mysterious rip in the space-time continuum is discovered, giving mankind the opportunity to widen their lifespan. A group of explorers must travel beyond our solar system in search of a planet that can sustain life. The crew of the Endurance are required to think bigger and go further than any human in history as they embark on an interstellar voyage, into the unknown. However, through the wormhole, one hour is the equivalent of seven years back on Earth, so the mission won''t work if the people on Earth are dead by the time they pull it off. And Coop, the pilot of the Endurance, must decide between seeing his children again and the future of the human race.', 'interstellar.jpg', 15.99, 4, '2014-11-07'),
(41, '15', 'The Babadook', 'Six years after the violent death of her husband, Amelia is at a loss. She struggles to discipline her ‘out of control'' 6-year-old, Samuel, a son she finds impossible to love. Samuel''s dreams are plagued by a sinister monster he believes is coming to kill them both. When a disturbing storybook called ‘The Babadook'' turns up at their house, Samuel is convinced that the Babadook is the creature he''s been dreaming about. His hallucinations spiral out of control and as he becomes more unpredictable and violent, Amelia is genuinely frightened by her son''s behaviour. But when Amelia begins to see glimpses of a sinister presence all around her, it slowly dawns on her that the thing Samuel has been warning her about may be real', 'babadook.jpg', 15.99, 5, '2014-10-26'),
(42, '18', 'Gone Girl', 'On the occasion of his fifth wedding anniversary, Nick Dunne reports that his wife, Amy, has gone missing. Under pressure from the police and a growing media frenzy, Nick''s portrait of a blissful union begins to crumble. Soon his lies, deceits and strange behavior have everyone asking the same dark question: Did Nick Dunne kill his wife?', 'goneGirl.jpg', 12.99, 5, '2014-10-03'),
(43, '12', 'The Martian', 'During a manned mission to Mars, Astronaut Mark Watney is presumed dead after a fierce storm and left behind by his crew. But Watney has survived and finds himself stranded and alone on the hostile planet. With only meager supplies, he must draw upon his ingenuity, wit and spirit to subsist and find a way to signal to Earth that he is alive.', 'theMartian.jpg', 10.99, 5, '2015-10-02'),
(44, '12', 'Spectre ', 'A cryptic message from Bond''s past sends him on a trail to uncover a sinister organization. While M battles political forces to keep the secret service alive, Bond peels back the layers of deceit to reveal the terrible truth behind SPECTRE.', 'spectre.jpg', 10.99, 4, '2015-11-06'),
(45, '15', 'Steve Jobs', 'Set backstage at three iconic product launches and ending in 1998 with the unveiling of the iMac, Steve Jobs takes us behind the scenes of the digital revolution to paint an intimate portrait of the brilliant man at its epicenter.', 'steveJobs.jpg', 10.99, 5, '2015-11-13'),
(47, 'PG', 'Star Wars: The Force Awakens', 'It''s a bold move by director JJ Abrams but by the end of The Force Awakens, few will disagree that this is the Star Wars movie we have all been looking for.  30-plus years have passed since the end of the Return of the Jedi, both in the Star Wars universe and in real life.', 'forceAwakens.jpg', 5.99, 3, '2015-12-19'),
(50, 'PG', 'Miss Peregrine''s Home for Peculiar Children', 'When Jacob discovers clues to a mystery that stretches across time, he finds Miss Peregrine''s Home for Peculiar Children. But the danger deepens after he gets to know the residents and learns about their special powers.', 'missPeregrine.jpg', 4.99, 4, '2016-09-22'),
(51, '18', 'Captain Fantastic', 'In the forests of the Pacific Northwest, a father devoted to raising his six kids with a rigorous physical and intellectual education is forced to leave his paradise and enter the world, challenging his idea of what it means to be a parent.', 'captainFantastic.jpg', 3.99, 4, '2016-07-29'),
(52, 'PG', 'Captain America: Civil War', 'Yawn another Marvel weightlessness fight fest with people in fancy dress.  Political interference in the Avengers'' activities causes a rift between former allies Captain America and Iron Man.', 'captainAmericaCivilWar.jpg', 2.99, 1, '2016-05-06'),
(53, 'PG', 'Inferno', 'Run, explain, run, explain, find clues, run explain - a bit like Pokemon Go but less meaningful. When Robert Langdon wakes up in an Italian hospital with amnesia, he teams up with Dr. Sienna Brooks, and together they must race across Europe against the clock to foil a deadly global plot.', 'inferno.jpg', 2.99, 2, '2016-10-14'),
(54, '', 'tet', 'nsdoksdnovs', 'meh', 1.00, 2, '0000-00-00'),
(55, '', 'AAA', '', '', 0.00, 0, '0000-00-00'),
(56, '', 'tet', 'dfndsofsdfsd', 'dsdfsdf.jpg', 5.00, 3, '0000-00-00'),
(57, '', 'Harry&#39;s Walker', 'Harry Walker', 'image.jpg', 5.00, 2, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE IF NOT EXISTS `music` (
  `musicTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `musicType` varchar(20) NOT NULL,
  PRIMARY KEY (`musicTypeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`musicTypeID`, `musicType`) VALUES
(1, 'electronic'),
(2, 'hardstyle'),
(3, 'rock'),
(4, 'techno'),
(5, 'house'),
(6, 'dubstep'),
(7, 'jazz'),
(8, 'hip hop');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE IF NOT EXISTS `schedules` (
  `scheduleID` int(11) NOT NULL AUTO_INCREMENT,
  `companyID` int(11) NOT NULL,
  `scheduleName` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`scheduleID`),
  UNIQUE KEY `scheduleID` (`scheduleID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=79 ;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`scheduleID`, `companyID`, `scheduleName`) VALUES
(54, 5, '9pm'),
(60, 6, 'Nothing Selected'),
(66, 5, 'test'),
(68, 11, 'asdasdas'),
(69, 11, 'dsasadsa'),
(71, 6, 'Campaign One'),
(72, 5, ''),
(73, 14, 'dsadsadas'),
(74, 14, 'Post this'),
(75, 14, 'Post this on google'),
(76, 8, 'Test Schedule'),
(77, 8, 'Test 2'),
(78, 5, 'sadsadsa');

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE IF NOT EXISTS `suggestions` (
  `id` varchar(45) NOT NULL,
  `text` text,
  `screen_name` varchar(255) DEFAULT NULL,
  `media` text,
  `list` varchar(45) DEFAULT NULL,
  `record_created` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`id`, `text`, `screen_name`, `media`, `list`, `record_created`) VALUES
('', NULL, NULL, '', 'design', 1483691403);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `ticketID` int(11) NOT NULL AUTO_INCREMENT,
  `ticketPrice` decimal(11,2) NOT NULL,
  `numTickets` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ticketID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticketID`, `ticketPrice`, `numTickets`) VALUES
(1, 39.99, 100),
(2, 5.00, 100),
(3, 30.00, 100),
(4, 90.00, 20),
(5, 39.99, 100),
(6, 5.00, 100),
(7, 9.99, 100);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyid` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `active` int(1) DEFAULT '0',
  `type` int(1) DEFAULT '0',
  `record_created` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `companyid`, `email`, `password`, `active`, `type`, `record_created`) VALUES
(1, 1, 'liam.winder@gmail.com', 'qwerty123', 1, 1, 0),
(2, 1, 'liam@linktagger.com', 'daaad6e5604e8e17bd9f108d91e26afe6281dac8fda0091040a7a6d7bd9b43b5', 1, 100, 0),
(3, 2, 'test@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 1, 1, 0),
(4, 3, 'esther.winder@gmail.com', 'daaad6e5604e8e17bd9f108d91e26afe6281dac8fda0091040a7a6d7bd9b43b5', 1, 1, 0),
(5, 4, 'hello@metafortytwo.com', '34ef04dfd98d7783c9fbd9fbdecc0ae5b39943bf3d3ae2da9abd25673428f6bf', 1, 1, 0),
(6, 5, 'b5044102@my.shu.ac.uk', '29d2e3618e3aadafe58f2e9ba0fe7424b9cf063a03914c05defcbbe5776f5daa', 1, 1, 0),
(7, 6, 'maria2khan@hotmail.co.uk', '082dbf0ddc3e4bd127b4655dedda27f35561d9e26b9910afd86c78aa23096123', 1, 1, 0),
(8, 7, 'liam@metafortytwo.com', '6e40abef38401500b391484cb27a670fdd0362d8c75ba123ba58cf7cc8958cce', 1, 1, 0),
(9, 8, 'test@test.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae', 1, 1, 0),
(10, 9, 'Leoniworrall@gmail.com', '75920674f29db3a23885170afb5e0df540225574520f64441f51c35bc040a241', 1, 1, 0),
(11, 10, 'gfdgfdfdhghgfhgf', 'f6f339087133ec6632832ce26ff5f336585f06d64d759188517eed906351a607', 1, 1, 0),
(12, 5, 'admin@google.com', 'b49f425a7e1f9cff3856329ada223f2f9d368f15a00cf48df16ca95986137fe8', 1, 100, 0),
(13, 11, 'checking123@yahoo.om', 'eda15ce4834ac303532bc6973df5ff8a5deb75d7dfceb9fc2cdf1bb450a01cf5', 1, 1, 0),
(14, 12, 'laith123@yahoo.com', '2ee314a1fd96c539430c4eaae6d5d044b6b4359d90074b17be68a1b777cf519b', 1, 1, 0),
(15, 13, 'hello@yahoo.com', 'eda15ce4834ac303532bc6973df5ff8a5deb75d7dfceb9fc2cdf1bb450a01cf5', 1, 1, 0),
(16, 14, 'testing@yahoo.net', 'eda15ce4834ac303532bc6973df5ff8a5deb75d7dfceb9fc2cdf1bb450a01cf5', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_accounts`
--

CREATE TABLE IF NOT EXISTS `users_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyid` int(11) DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users_accounts`
--

INSERT INTO `users_accounts` (`id`, `companyid`, `accountid`, `userid`) VALUES
(1, 1, 1, 2),
(2, 1, 2, 2),
(3, 5, 11, 12),
(4, 5, 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE IF NOT EXISTS `venue` (
  `venueID` int(11) NOT NULL AUTO_INCREMENT,
  `venueLocation` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `venueStart` date NOT NULL,
  `venueEnd` date NOT NULL,
  PRIMARY KEY (`venueID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`venueID`, `venueLocation`, `venueStart`, `venueEnd`) VALUES
(1, 'Leeds', '2017-02-05', '2017-02-08'),
(2, 'Leeds', '2017-02-05', '2017-02-08'),
(3, 'West Sussex, UK', '2017-04-26', '2017-04-30'),
(4, 'Tilford, Farnham, Surrey', '2017-08-18', '2017-08-20'),
(5, 'Leeds', '2017-02-05', '2017-02-08'),
(6, 'dfd', '2017-02-05', '2017-02-08'),
(7, 'Leeds', '2017-02-05', '2017-02-08');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
