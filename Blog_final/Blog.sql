-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 15, 2018 at 12:46 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'email@email.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `text` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `text`) VALUES
(1, 'Weather'),
(2, 'Sports');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `post` int(11) NOT NULL,
  `website` varchar(200) NOT NULL,
  `status` int(1) DEFAULT '0',
  `is_admin` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `post`, `website`, `status`, `is_admin`) VALUES
(3, 'ccc', 'nice!', 1, '', NULL, NULL),
(4, 'ccccc', 'nice!', 1, '', NULL, NULL),
(5, 'ccccc', 'nice!', 1, '', NULL, NULL),
(6, 'asd', 'eerr', 2, '', 1, NULL),
(7, '123', 'onetwothree', 1, '', NULL, NULL),
(8, 'andrei', 'nice job bro', 1, 'http://vk.com', 1, NULL),
(9, 'john', 'good job, bro!', 2, 'sss', NULL, NULL),
(10, 'johnny', 'terrible', 1, '', 1, NULL),
(11, 'asd', 'asde', 1, 'sd', 0, 0),
(12, 'asd', 'adwdw', 1, '', 0, 0),
(13, 'asdas', 'bla bla bla', 1, '', 1, 0),
(14, 'Peter', 'terrible, so terrible', 2, '', 0, 0),
(15, 'john', 'hi ', 2, '', 1, 0),
(16, 'Pauly', 'so-so', 1, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `category` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `author` varchar(100) NOT NULL,
  `keywords` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `category`, `date`, `body`, `author`, `keywords`) VALUES
(1, 'WEATHER ON THE FIRST THANKSGIVING', 1, 'Nobember 19, 2018', '<p>Thanksgiving travel always makes weather a big concern, so I thought it might be fun to write <b>about weather on the very first Thanksgiving.</b> Ironically, we know more about the weather than the date itself!</p>\n            <hr>\n            <p>We believe that first Thanksgiving feast held by the pilgrims of Plymouth colony in 1621 was probably in September or October, not the last Thursday in November. No exact date was every recorded, however, we know it was a harvest festival.</p>\n            <blockquote>\n              <p>Celebrating a fall harvest was an English tradition at the time—usually lasting several days. The Plymouth area would be harvesting from September through mid-October.</p>\n            </blockquote>\n            <blockquote>\n              <p>As new arrivals, the Pilgrims frequently described the harsh local climate; weather conditions and weather survival were common topics for the colonists.</p>\n            </blockquote>\n            <blockquote>\n              <p>So, the fact that they only wrote about the harvest festival and not the weather indicates it was probably relatively normal. For New England in mid-autumn, that meant mostly sunny weather in the mid-to-low 60?s.</p>\n            </blockquote>', 'Andrei', 'weather'),
(2, '\"The Stack\" 11-13-18', 2, 'November 13, 2018', '            <p>Jimmy Butler has finally been traded from the Minnesota Timberwolves. The Wolves traded him to the Philadelphia 76ers for Robert Covington, Dario Saric and a second round draft pick.</p>\n            <hr>\n            <p>You know, this was a very blah week of college football. There weren’t a lot of exciting results. The best games arguably occurred in the Big 12 where Oklahoma State attempted to go for two to beat #6 Oklahoma, but ultimately fell short and lost 48-47. #19 Texas survived at Texas Tech 41-34. They are still alive for a spot in the Big 12 Championship.</p>\n            <blockquote>\n              <p>Holy cow, how did we forget? Northwestern is in the B1G Ten Championship game for the first time I believe in program history after going on the road and upsetting #21 Iowa 14-10. What an absolutely incredible job by the Wildcats. That touchdown catch by Skowronek was insane. Congrats to them.</p>\n            </blockquote>\n            <blockquote>\n              <p>There were a couple of other upsets. One happened on Thursday night when Wake Forest took down #14 North Carolina State 27-23 in Raleigh. Boise State beat #23 Fresno State on Friday night 24-17, but I wouldn’t call it a major upset. And #11 Kentucky lost 24-7 to Tennessee, but is that really an upset, because do we believe that Kentucky was the #11 team in the country? I don’t think so.</p>\n            </blockquote>\n            <blockquote>\n              <p>Other than that, there were no other upsets. #8 Washington State avoided the upset and beat Colorado 31-7. #9 West Virginia pummeled TCU 47-10. #10 Ohio State beat #18 Michigan State 26-6. Kansas nearly won their fourth game of the year, but ultimately lost 21-17 to Kansas State. What the heck has happened to Virginia Tech? My Hokies have fallen on tough times losing 52-22 to Pittsburgh and speaking of what the hell is going on, the same could be said for USC. They had a 14-0 lead at halftime at home against California and promptly lost 15-14. What?! We’ll see what happens this week and we’ll have your college football weekend forecast on Thursday. The College Football Playoff rankings should remain the same. Alabama will be number one, Clemson number two, Notre Dame three and Michigan four.</p>\n            </blockquote>', 'Pauly', 'sport'),
(3, 'Mid-Atlantic ski season is off to a promising start, but itâ€™s about to get rained on', 1, 'December 14, 2018', '<p style=\"box-sizing: border-box; margin: 4px 0px 18px; padding: 0px; border: 0px; outline: 0px; font-size: 18.92px; vertical-align: baseline; background: transparent; font-family: Georgia, Times, \'Times New Roman\', serif; line-height: calc(1.5em + 0.3333vw); color: #111111;\" data-elm-loc=\"1\">After a long offseason lounging and dreaming of knee-deep powder, the moment has finally come for Mid-Atlantic skiers and snowboarders who are eager to shred. The 2018-2019 ski season is here.</p>\r\n<p style=\"box-sizing: border-box; margin: 4px 0px 18px; padding: 0px; border: 0px; outline: 0px; font-size: 18.92px; vertical-align: baseline; background: transparent; font-family: Georgia, Times, \'Times New Roman\', serif; line-height: calc(1.5em + 0.3333vw); color: #111111;\" data-elm-loc=\"2\">Thanks to below-average temperatures in November and early December that made for prime snow-making conditions, several ski areas have been open for several weeks now. These include the usual &ldquo;high country&rdquo; cold spots such as Snowshoe in West Virginia, and Seven Springs and Hidden Valley in Pennsylvania but also &ldquo;front range&rdquo; resorts such as Bryce and Massanutten in Virginia, which have gotten a good bit of natural snow to boost the man-made.</p>\r\n<p style=\"box-sizing: border-box; margin: 4px 0px 18px; padding: 0px; border: 0px; outline: 0px; font-size: 18.92px; vertical-align: baseline; background: transparent; font-family: Georgia, Times, \'Times New Roman\', serif; line-height: calc(1.5em + 0.3333vw); color: #111111;\" data-elm-loc=\"4\">Wintergreen in Virginia picked up 21 inches of snow from the storm on Sunday that barely missed D.C., and the conditions right now are excellent for this early in the season.</p>\r\n<p style=\"box-sizing: border-box; margin: 4px 0px 18px; padding: 0px; border: 0px; outline: 0px; font-size: 18.92px; vertical-align: baseline; background: transparent; font-family: Georgia, Times, \'Times New Roman\', serif; line-height: calc(1.5em + 0.3333vw); color: #111111;\" data-elm-loc=\"5\">Liberty, Roundtop and Whitetail, in central Pennsylvania, have stockpiled the man-made white stuff but are going to wait out the rain event forecast for this weekend before laying down corduroy. According to Anne Weimer with Liberty Mountain, &ldquo;we are looking forward to opening at some point next week with terrain on both the front and the backside of the mountain available.&rdquo; The ski area plans to announce the date for opening day on Monday or Tuesday.</p>\r\n<p style=\"box-sizing: border-box; margin: 4px 0px 18px; padding: 0px; border: 0px; outline: 0px; font-size: 18.92px; vertical-align: baseline; background: transparent; font-family: Georgia, Times, \'Times New Roman\', serif; line-height: calc(1.5em + 0.3333vw); color: #111111;\" data-elm-loc=\"5\">Katie Buchan with Seven Springs Mountain Resort rightfully boasted that they had some of the best November conditions in several years. This allowed them to spin the lifts on Thanksgiving and weekends since for a total of nine days on the slopes this season. On Friday, they lower the ropes again for the public and will remain open seven days a week for the remainder of the season.</p>\r\n<p style=\"box-sizing: border-box; margin: 4px 0px 18px; padding: 0px; border: 0px; outline: 0px; font-size: 18.92px; vertical-align: baseline; background: transparent; font-family: Georgia, Times, \'Times New Roman\', serif; line-height: calc(1.5em + 0.3333vw); color: #111111;\" data-elm-loc=\"8\">Perched almost a mile high up in the Allegheny mountains, Snowshoe, as usual, has been open the longest and enjoying the best conditions. Shawn Cassell, public relations manager for Snowshoe, said they opened the western territory the earliest in a decade. Besides the below-average cold temperatures, a $4 million upgrade in snow-making equipment has been a game-changer.</p>\r\n<p style=\"box-sizing: border-box; margin: 4px 0px 18px; padding: 0px; border: 0px; outline: 0px; font-size: 18.92px; vertical-align: baseline; background: transparent; font-family: Georgia, Times, \'Times New Roman\', serif; line-height: calc(1.5em + 0.3333vw); color: #111111;\" data-elm-loc=\"9\">&ldquo;We have had mostly cooperative weather but the real difference maker has been the nearly $4M in snow-making upgrades that we invested this past offseason,&rdquo; Cassell said in an email.</p>\r\n<p style=\"box-sizing: border-box; margin: 4px 0px 18px; padding: 0px; border: 0px; outline: 0px; font-size: 18.92px; vertical-align: baseline; background: transparent; font-family: Georgia, Times, \'Times New Roman\', serif; line-height: calc(1.5em + 0.3333vw); color: #111111;\" data-elm-loc=\"10\">He continued: &ldquo;We&rsquo;re making more snow in less time &hellip; the new equipment utilizes automation technology that enables us to better take advantage of smaller windows of snow-making. For example, it takes 4-5 hours to manually turn on all the guns, so you can imagine how much snow can be made in that time when the guns are automated and fire up the second their onboard weather station tells them to.&rdquo;</p>', 'Andrei', 'weather');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `name`, `email`) VALUES
(1, 'andrei', 'atryfanau@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
