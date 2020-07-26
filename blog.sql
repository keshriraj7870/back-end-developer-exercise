-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2020 at 10:33 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `sno` int(8) NOT NULL,
  `content` varchar(200) NOT NULL,
  `post_id` int(8) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`sno`, `content`, `post_id`, `dt`) VALUES
(6, 'This is my first comment in django', 15, '2020-07-24 19:47:51'),
(12, '', 14, '2020-07-24 19:53:08'),
(29, 'first', 16, '2020-07-25 11:50:40'),
(30, 'second', 16, '2020-07-25 11:50:46'),
(31, 'third', 16, '2020-07-25 11:50:53');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(8) NOT NULL,
  `title` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `postedby` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp(),
  `USERNAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `content`, `postedby`, `dt`, `USERNAME`) VALUES
(14, 'flask', 'Flask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. Wikipedia', 'dear', '2020-07-24 18:21:43', 'Dear'),
(15, 'Django', 'Flask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. WikipediaFlask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. WikipediaFlask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. Wikipedia', 'dear', '2020-07-24 18:22:08', 'Dear'),
(16, 'sklearn', 'Flask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. WikipediaFlask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. WikipediaFlask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. WikipediaFlask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. WikipediaFlask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. Wikipedia', 'admin', '2020-07-24 18:22:50', 'admin'),
(19, 'planet', 'Tabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListvTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort List\r\nTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort List', 'admin', '2020-07-25 12:06:18', 'ADMIN'),
(20, 'my audio', 'Tabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort List', 'admin', '2020-07-25 12:06:33', 'ADMIN'),
(21, 'Java', 'javaTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort List', 'admin', '2020-07-25 12:06:48', 'ADMIN'),
(22, 'Python', 'Tpythonabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort List', 'admin', '2020-07-25 12:07:09', 'ADMIN'),
(23, 'planet', 'Tabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort List', 'dear', '2020-07-25 12:07:43', 'DEAR'),
(24, 'planet', 'dheuhiuediuwe\r\nTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort List', 'dear', '2020-07-25 12:07:53', 'DEAR'),
(25, 'planet', 'dheuhiuediuwe\r\nTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort List', 'dear', '2020-07-25 12:07:54', 'DEAR'),
(26, 'my audio', 'cjjeefioarTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort List', 'dear', '2020-07-25 12:08:04', 'DEAR'),
(27, 'dear RajTab', 'Tabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort List', 'dear', '2020-07-25 12:08:30', 'DEAR'),
(30, 'planet', 'wefjeriofheoaigjea', 'dear', '2020-07-25 13:09:36', 'DEAR'),
(31, 'C', 'all about c', 'dear', '2020-07-25 13:09:49', 'DEAR'),
(32, 'my blog', 'my whole life story', 'admin', '2020-07-25 13:14:02', 'ADMIN'),
(33, 'Java', 'java admij', 'admin', '2020-07-25 13:29:42', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(8) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `username`, `password`, `dt`) VALUES
(1, 'admin', 'admin', '2020-07-24 11:33:00'),
(2, 'Dear', 'raj', '2020-07-24 11:33:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `content` (`content`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `sno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
