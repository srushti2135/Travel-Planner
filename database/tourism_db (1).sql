-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2025 at 01:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_list`
--

CREATE TABLE `book_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `package_id` int(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending,1=confirm, 2=cancelled\r\n',
  `schedule` date DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_list`
--

INSERT INTO `book_list` (`id`, `user_id`, `package_id`, `status`, `schedule`, `date_created`) VALUES
(2, 4, 8, 3, '2021-06-21', '2021-06-19 08:37:59'),
(3, 5, 8, 3, '2021-06-18', '2021-06-19 11:51:50'),
(4, 6, 1, 3, '2024-12-05', '2024-12-02 09:41:58'),
(5, 6, 1, 0, '0000-00-00', '2024-12-02 09:46:29'),
(6, 1, 8, 3, '2024-12-12', '2024-12-02 09:56:55'),
(7, 6, 7, 0, '0000-00-00', '2024-12-02 10:57:02'),
(8, 7, 9, 0, '0000-00-00', '2024-12-02 11:27:39'),
(9, 6, 8, 3, '2024-12-06', '2024-12-02 23:39:32'),
(10, 8, 7, 0, '2024-12-04', '2024-12-03 00:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `id` int(30) NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`id`, `name`, `email`, `subject`, `message`, `status`, `date_created`) VALUES
(6, 'asdasd', 'asdasd@asdasd.com', 'asdasd', 'asdasd', 1, '2021-06-19 10:19:27'),
(8, 'Srushti More', 'moresrushti0307@gmail.com', 'fhjhgfdfgg', 'no', 0, '2024-12-02 09:42:33'),
(9, 'Aishwarya Patil', 'aish2004@gmail.com', 'Releted to package', 'In this website your recommanded places to visit is very amazing . But as comparative to places the package is very high it means very costly', 1, '2024-12-02 11:02:09');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(30) NOT NULL,
  `title` text DEFAULT NULL,
  `tour_location` text DEFAULT NULL,
  `cost` double NOT NULL,
  `description` text DEFAULT NULL,
  `upload_path` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 =active ,2 = Inactive',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `tour_location`, `cost`, `description`, `upload_path`, `status`, `date_created`) VALUES
(1, 'Ajinkyatara', 'Satara', 2500, '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 25px; text-align: start;&quot;&gt;Ajinkyatara Fort is surrounded by 4-meter-high thick walls with bastions and features two gates. The main gate, located close to the northwest&lt;/span&gt;&lt;br style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 25px; text-align: start;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 25px; text-align: start;&quot;&gt;corner, is fortified with high buttresses, while the smaller gate is situated in the southeast corner. Inside the fort, there are several water tanks used for water storage.&lt;/span&gt;&lt;br style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 25px; text-align: start;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 25px; text-align: start;&quot;&gt;Visitors can explore the temples of Devi Mangalai, Lord Shankar, and Lord Hanuman, located on the northeast side of the fort. Ajinkyatara Fort is a tourist attraction in Satara. Tourists can reach the fort via road, with a two-hour drive from Pune and a four-hour drive from Mumbai. The nearest railway station is Satara Road, and the closest airport is Pune.&lt;/span&gt;&lt;br style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 25px; text-align: start;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 25px; text-align: start;&quot;&gt;Apart from exploring the fort, visitors can engage in other activities in the vicinity. The Hanuman Temple, known for its spacious interior, and the Mahadev Temple are notable religious sites&lt;/span&gt;&lt;br style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 25px; text-align: start;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 25px; text-align: start;&quot;&gt;near the fort. Other attractions include Tara Rani\'s Palace, a significant historical site, the revered Mangaldevi Mandir, and the lakes within the fort.&lt;/span&gt;&lt;/p&gt;', 'uploads/package_1', 1, '2021-06-18 10:31:03'),
(7, 'Kelvali Waterfall', 'Satara', 500, '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 25px;&quot;&gt;Kelavali is a beautiful waterfall in the Satara district that looks its best during the monsoon season. A lot of people partake in this journey not only for the Magnifique waterfall but because of the stupendous surroundings as well, which are verdant green with some of the most biodiverse environments with many different species of animals, birds, and plants to explore and observe. The trailhead for this particular trail lies by Kelavali Waterfall Parking at Venekhol which can be reached via various different modes of transports such cars, taxis, or private vehicles.&lt;/span&gt;&lt;/p&gt;', 'uploads/package_7', 1, '2021-06-18 11:17:11'),
(8, 'Thoseghar Waterfall', 'satara', 3000, '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 25px;&quot;&gt;People visit from all over to visit the Thoseghar Waterfalls especially during the rainy or monsoon season. Heavy rain falls during that season and because of this the falls have more water and are more spectacular.&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 25px;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 25px;&quot;&gt;There is a picnic area and a newly constructed platform which gives a good view of the waterfall. This platform can be entered in the valley, but it is not safe to do so when it is raining heavily. One can spot many birds near the waterfall. People visit from all over to&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 25px;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 25px;&quot;&gt;visit the Thoseghar Waterfalls especially during the rainy or monsoon season. Heavy rain falls during that season and because of this the falls have more water and are more spectacular.&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 25px;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 25px;&quot;&gt;Thosegar waterfalls can be reached using public transport, or by driving. There are regular buses from Swargate (Pune to Satara) and buses or rickshaws from Satara. A full view of the falls can be obtained by going to Chalkewadi where one can park their vehicles at a newly designated parking lot and then walking down the paved road for 0.5 km.&lt;/span&gt;&lt;/p&gt;', 'uploads/package_8', 1, '2021-06-18 13:34:08'),
(9, 'Kass Pathar', 'Satara', 500, '&lt;p&gt;&lt;/p&gt;&lt;div class=&quot;row&quot; style=&quot;display: flex; flex-wrap: wrap; padding: 0px 5px; color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;/div&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bolder; font-size: 25px;&quot;&gt;Name&lt;/span&gt;&lt;br&gt;The name Kaas Pathar comes from the Kaasa tree, botanically known as Elaeocarpus glandulosus (rudraksha family).&lt;/p&gt;&lt;dd style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;&lt;b style=&quot;font-size: 25px;&quot;&gt;Location&lt;/b&gt;&lt;br&gt;Kaas Pathar is located in the Sahyadri Sub Cluster of the Western Ghats, about 25 kilometers west of Satara city.&lt;br&gt;&lt;br&gt;&lt;b style=&quot;font-size: 25px;&quot;&gt;Known for&lt;/b&gt;&lt;br&gt;Kaas Pathar is a UNESCO World Heritage Site and a biodiversity hotspot. It\'s known for its seasonal wildflowers, endemic butterflies, and over 850 species of flowering plants.&lt;br&gt;&lt;br&gt;&lt;b style=&quot;font-size: 25px;&quot;&gt;To visit&lt;/b&gt;&lt;br&gt;The best time to visit is after the rains until the end of October. The plateau is full of wildflowers during August and September, and the blooms last for about two to three weeks.&lt;br&gt;&lt;br&gt;&lt;b style=&quot;font-size: 25px;&quot;&gt;Features&lt;/b&gt;&lt;br&gt;The plateau\'s colors change every 15&ndash;20 days as different species bloom and wither.&lt;/dd&gt;&lt;dd style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;br&gt;&lt;/dd&gt;', 'uploads/package_9', 1, '2024-12-02 10:17:20'),
(10, 'char bhinti', 'satara', 200, '&lt;p&gt;this is amazing place&lt;/p&gt;', 'uploads/package_10', 1, '2024-12-03 00:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `rate_review`
--

CREATE TABLE `rate_review` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `package_id` int(30) NOT NULL,
  `rate` int(11) NOT NULL,
  `review` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rate_review`
--

INSERT INTO `rate_review` (`id`, `user_id`, `package_id`, `rate`, `review`, `date_created`) VALUES
(3, 5, 8, 5, '<p>Sample</p>', '2021-06-19 11:53:16'),
(4, 5, 8, 3, '&lt;p&gt;Sample feedback only&lt;/p&gt;', '2021-06-19 13:49:26'),
(5, 1, 8, 4, '&lt;p&gt;It\'s an amazing place.Thank you so much for guding us.&lt;/p&gt;', '2024-12-02 10:01:17'),
(6, 1, 8, 1, '', '2024-12-02 23:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Tourism Management System'),
(6, 'short_name', 'TP'),
(11, 'logo', 'uploads/1733158920_087483a857edf4fe994ed0002d072a24.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1733167320_IMG_20240925_141612.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1620201300_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-18 16:47:05'),
(4, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', NULL, NULL, 0, '2021-06-19 08:36:09', '2021-06-19 10:53:12'),
(5, 'Claire', 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', NULL, NULL, 0, '2021-06-19 10:01:51', '2021-06-19 12:03:23'),
(6, 'Srushti', 'More', 'Srushti', '8ecc46853ff78eb3952c809d37b515a9', NULL, NULL, 0, '2024-12-02 09:41:43', NULL),
(7, 'Aishwarya', 'Patil', 'Aishwarya', '220616e32116037985df97555565aa49', NULL, NULL, 0, '2024-12-02 11:09:45', NULL),
(8, 'shreya', 'tarade', 'shreya', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, 0, '2024-12-03 00:44:50', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_list`
--
ALTER TABLE `book_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate_review`
--
ALTER TABLE `rate_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_list`
--
ALTER TABLE `book_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rate_review`
--
ALTER TABLE `rate_review`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
