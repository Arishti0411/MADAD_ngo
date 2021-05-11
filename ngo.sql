-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2021 at 09:41 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ngo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_Id` varchar(15) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_Id`, `password`) VALUES
('admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `avaliable` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `avaliable`) VALUES
('CT7hjkb6h8j65gv', 'Toys', 0),
('CT876hu74t8jhf5', 'Clothes', 3),
('CT87hjuyhgt6yhg', 'Health', 0),
('CT9783gt43ft5v6', 'Elders', 0),
('CT98kju6yhgfr45', 'Education', 0),
('CTujh678jh6543g', 'Food', 0);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(5) NOT NULL,
  `state_id` int(5) NOT NULL,
  `city_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `state_id`, `city_name`) VALUES
(1, 1, 'Port Blair'),
(2, 2, 'Adilabad'),
(3, 2, 'Adoni'),
(4, 2, 'Alwal'),
(5, 2, 'Anakapalle'),
(6, 2, 'Anantapur'),
(7, 2, 'Bapatla'),
(8, 2, 'Belampalli'),
(9, 2, 'Bhimavaram'),
(10, 2, 'Bhongir'),
(11, 2, 'Bobbili'),
(12, 2, 'Bodhan'),
(13, 2, 'Chilakalurupet'),
(14, 2, 'Chinna Chawk'),
(15, 2, 'Chirala'),
(16, 2, 'Chittur'),
(17, 2, 'Cuddapah'),
(18, 2, 'Dharmavaram'),
(19, 2, 'Dhone'),
(20, 2, 'Eluru'),
(21, 2, 'Gaddiannaram'),
(22, 2, 'Gadwal'),
(23, 2, 'Gajuwaka'),
(24, 2, 'Gudivada'),
(25, 2, 'Gudur'),
(26, 2, 'Guntakal'),
(27, 2, 'Guntur'),
(28, 2, 'Hindupur'),
(29, 2, 'Hyderabad'),
(30, 2, 'Jagtial'),
(31, 2, 'Kadiri'),
(32, 2, 'Kagaznagar'),
(33, 2, 'Kakinada'),
(34, 2, 'Kallur'),
(35, 2, 'Kamareddi'),
(36, 2, 'Kapra'),
(37, 2, 'Karimnagar'),
(38, 2, 'Karnul'),
(39, 2, 'Kavali'),
(40, 2, 'Khammam'),
(41, 2, 'Kodar'),
(42, 2, 'Kondukur'),
(43, 2, 'Koratla'),
(44, 2, 'Kottagudem'),
(45, 2, 'Kukatpalle'),
(46, 2, 'Lalbahadur Nagar'),
(47, 2, 'Machilipatnam'),
(48, 2, 'Mahbubnagar'),
(49, 2, 'Malkajgiri'),
(50, 2, 'Mancheral'),
(51, 2, 'Mandamarri'),
(52, 2, 'Mangalagiri'),
(53, 2, 'Markapur'),
(54, 2, 'Miryalaguda'),
(55, 2, 'Nalgonda'),
(56, 2, 'Nandyal'),
(57, 2, 'Narasapur'),
(58, 2, 'Narasaraopet'),
(59, 2, 'Nellur'),
(60, 2, 'Nirmal'),
(61, 2, 'Nizamabad'),
(62, 2, 'Nuzvid'),
(63, 2, 'Ongole'),
(64, 2, 'Palakollu'),
(65, 2, 'Palasa'),
(66, 2, 'Palwancha'),
(67, 2, 'Patancheru'),
(68, 2, 'Piduguralla'),
(69, 2, 'Ponnur'),
(70, 2, 'Proddatur'),
(71, 2, 'Qutubullapur'),
(72, 2, 'Rajamahendri'),
(73, 2, 'Rajampet'),
(74, 2, 'Rajendranagar'),
(75, 2, 'Ramachandrapuram'),
(76, 2, 'Ramagundam'),
(77, 2, 'Rayachoti'),
(78, 2, 'Rayadrug'),
(79, 2, 'Samalkot'),
(80, 2, 'Sangareddi'),
(81, 2, 'Sattenapalle'),
(82, 2, 'Serilungampalle'),
(83, 2, 'Siddipet'),
(84, 2, 'Sikandarabad'),
(85, 2, 'Sirsilla'),
(86, 2, 'Srikakulam'),
(87, 2, 'Srikalahasti'),
(88, 2, 'Suriapet'),
(89, 2, 'Tadepalle'),
(90, 2, 'Tadepallegudem'),
(91, 2, 'Tadpatri'),
(92, 2, 'Tandur'),
(93, 2, 'Tanuku'),
(94, 2, 'Tenali'),
(95, 2, 'Tirupati'),
(96, 2, 'Tuni'),
(97, 2, 'Uppal Kalan'),
(98, 2, 'Vijayawada'),
(99, 2, 'Vinukonda'),
(100, 2, 'Visakhapatnam'),
(101, 2, 'Vizianagaram'),
(102, 2, 'Vuyyuru'),
(103, 2, 'Wanparti'),
(104, 2, 'Warangal'),
(105, 2, 'Yemmiganur'),
(106, 3, 'Itanagar'),
(107, 4, 'Barpeta'),
(108, 4, 'Bongaigaon'),
(109, 4, 'Dhuburi'),
(110, 4, 'Dibrugarh'),
(111, 4, 'Diphu'),
(112, 4, 'Guwahati'),
(113, 4, 'Jorhat'),
(114, 4, 'Karimganj'),
(115, 4, 'Lakhimpur'),
(116, 4, 'Lanka'),
(117, 4, 'Nagaon'),
(118, 4, 'Sibsagar'),
(119, 4, 'Silchar'),
(120, 4, 'Tezpur'),
(121, 4, 'Tinsukia'),
(122, 31, 'Alipur Duar'),
(123, 31, 'Arambagh'),
(124, 31, 'Asansol'),
(125, 31, 'Ashoknagar Kalyangarh'),
(126, 31, 'Baharampur'),
(127, 31, 'Baidyabati'),
(128, 31, 'Baj Baj'),
(129, 31, 'Bally'),
(130, 31, 'Bally Cantonment'),
(131, 31, 'Balurghat'),
(132, 31, 'Bangaon'),
(133, 31, 'Bankra'),
(134, 31, 'Bankura'),
(135, 31, 'Bansbaria'),
(136, 31, 'Baranagar'),
(137, 31, 'Barddhaman'),
(138, 31, 'Basirhat'),
(139, 31, 'Bhadreswar'),
(140, 31, 'Bhatpara'),
(141, 31, 'Bidhannagar'),
(142, 31, 'Binnaguri'),
(143, 31, 'Bishnupur'),
(144, 31, 'Bolpur'),
(145, 31, 'Calcutta'),
(146, 31, 'Chakdaha'),
(147, 31, 'Champdani'),
(148, 31, 'Chandannagar'),
(149, 31, 'Contai'),
(150, 31, 'Dabgram'),
(151, 31, 'Darjiling'),
(152, 31, 'Dhulian'),
(153, 31, 'Dinhata'),
(154, 31, 'Dum Dum'),
(155, 31, 'Durgapur'),
(156, 31, 'Gangarampur'),
(157, 31, 'Garulia'),
(158, 31, 'Gayespur'),
(159, 31, 'Ghatal'),
(160, 31, 'Gopalpur'),
(161, 31, 'Habra'),
(162, 31, 'Halisahar'),
(163, 31, 'Haora'),
(164, 31, 'HugliChunchura'),
(165, 31, 'Ingraj Bazar'),
(166, 31, 'Islampur'),
(167, 31, 'Jalpaiguri'),
(168, 31, 'Jamuria'),
(169, 31, 'Jangipur'),
(170, 31, 'Jhargram'),
(171, 31, 'Kaliyaganj'),
(172, 31, 'Kalna'),
(173, 31, 'Kalyani'),
(174, 31, 'Kamarhati'),
(175, 31, 'Kanchrapara'),
(176, 31, 'Kandi'),
(177, 31, 'Karsiyang'),
(178, 31, 'Katwa'),
(179, 31, 'Kharagpur'),
(180, 31, 'Kharagpur Railway Settlement'),
(181, 31, 'Khardaha'),
(182, 31, 'Kharia'),
(183, 31, 'Koch Bihar'),
(184, 31, 'Konnagar'),
(185, 31, 'Krishnanagar'),
(186, 31, 'Kulti'),
(187, 31, 'Madhyamgram'),
(188, 31, 'Maheshtala'),
(189, 31, 'Memari'),
(190, 31, 'Midnapur'),
(191, 31, 'Naihati'),
(192, 31, 'Navadwip'),
(193, 31, 'Ni Barakpur'),
(194, 31, 'North Barakpur'),
(195, 31, 'North Dum Dum'),
(196, 31, 'Old Maldah'),
(197, 31, 'Panihati'),
(198, 31, 'Phulia'),
(199, 31, 'Pujali'),
(200, 31, 'Puruliya'),
(201, 31, 'Raiganj'),
(202, 31, 'Rajpur'),
(203, 31, 'Rampur Hat'),
(204, 31, 'Ranaghat'),
(205, 31, 'Raniganj'),
(206, 31, 'Rishra'),
(207, 31, 'Shantipur'),
(208, 31, 'Shiliguri'),
(209, 31, 'Shrirampur'),
(210, 31, 'Siuri'),
(211, 31, 'South Dum Dum'),
(212, 31, 'Titagarh'),
(213, 31, 'Ulubaria'),
(214, 31, 'UttarparaKotrung'),
(215, 5, 'Araria'),
(216, 5, 'Arrah'),
(217, 5, 'Aurangabad'),
(218, 5, 'Bagaha'),
(219, 5, 'Begusarai'),
(220, 5, 'Bettiah'),
(221, 5, 'Bhabua'),
(222, 5, 'Bhagalpur'),
(223, 5, 'Bihar'),
(224, 5, 'Buxar'),
(225, 5, 'Chhapra'),
(226, 5, 'Darbhanga'),
(227, 5, 'Dehri'),
(228, 5, 'DighaMainpura'),
(229, 5, 'Dinapur'),
(230, 5, 'Dumraon'),
(231, 5, 'Gaya'),
(232, 5, 'Gopalganj'),
(233, 5, 'Goura'),
(234, 5, 'Hajipur'),
(235, 5, 'Jahanabad'),
(236, 5, 'Jamalpur'),
(237, 5, 'Jamui'),
(238, 5, 'Katihar'),
(239, 5, 'Khagaria'),
(240, 5, 'Khagaul'),
(241, 5, 'Kishanganj'),
(242, 5, 'Lakhisarai'),
(243, 5, 'Madhipura'),
(244, 5, 'Madhubani'),
(245, 5, 'Masaurhi'),
(246, 5, 'Mokama'),
(247, 5, 'Motihari'),
(248, 5, 'Munger'),
(249, 5, 'Muzaffarpur'),
(250, 5, 'Nawada'),
(251, 5, 'Patna'),
(252, 5, 'Phulwari'),
(253, 5, 'Purnia'),
(254, 5, 'Raxaul'),
(255, 5, 'Saharsa'),
(256, 5, 'Samastipur'),
(257, 5, 'Sasaram'),
(258, 5, 'Sitamarhi'),
(259, 5, 'Siwan'),
(260, 5, 'Supaul'),
(261, 6, 'Chandigarh'),
(262, 7, 'Ambikapur'),
(263, 7, 'Bhilai'),
(264, 7, 'Bilaspur'),
(265, 7, 'Charoda'),
(266, 7, 'Chirmiri'),
(267, 7, 'Dhamtari'),
(268, 7, 'Durg'),
(269, 7, 'Jagdalpur'),
(270, 7, 'Korba'),
(271, 7, 'Raigarh'),
(272, 7, 'Raipur'),
(273, 7, 'Rajnandgaon'),
(274, 8, 'Bhalswa Jahangirpur'),
(275, 8, 'Burari'),
(276, 8, 'Chilla Saroda Bangar'),
(277, 8, 'Dallo Pura'),
(278, 8, 'Delhi'),
(279, 8, 'Deoli'),
(280, 8, 'Dilli Cantonment'),
(281, 8, 'Gharoli'),
(282, 8, 'Gokalpur'),
(283, 8, 'Hastsal'),
(284, 8, 'Jaffrabad'),
(285, 8, 'Karawal Nagar'),
(286, 8, 'Khajuri Khas'),
(287, 8, 'Kirari Suleman Nagar'),
(288, 8, 'Mandoli'),
(289, 8, 'Mithe Pur'),
(290, 8, 'Molarband'),
(291, 8, 'Mundka'),
(292, 8, 'Mustafabad'),
(293, 8, 'Nangloi Jat'),
(294, 8, 'Ni Dilli'),
(295, 8, 'Pul Pehlad'),
(296, 8, 'Puth Kalan'),
(297, 8, 'Roshan Pura'),
(298, 8, 'Sadat Pur Gujran'),
(299, 8, 'Sultanpur Majra'),
(300, 8, 'Tajpul'),
(301, 8, 'Tigri'),
(302, 8, 'Ziauddin Pur'),
(303, 9, 'Madgaon'),
(304, 9, 'Mormugao'),
(305, 9, 'Panaji'),
(306, 10, 'Ahmadabad'),
(307, 10, 'Amreli'),
(308, 10, 'Anand'),
(309, 10, 'Anjar'),
(310, 10, 'Bardoli'),
(311, 10, 'Bharuch'),
(312, 10, 'Bhavnagar'),
(313, 10, 'Bhuj'),
(314, 10, 'Borsad'),
(315, 10, 'Botad'),
(316, 10, 'Chandkheda'),
(317, 10, 'Chandlodiya'),
(318, 10, 'Dabhoi'),
(319, 10, 'Dahod'),
(320, 10, 'Dholka'),
(321, 10, 'Dhoraji'),
(322, 10, 'Dhrangadhra'),
(323, 10, 'Disa'),
(324, 10, 'Gandhidham'),
(325, 10, 'Gandhinagar'),
(326, 10, 'Ghatlodiya'),
(327, 10, 'Godhra'),
(328, 10, 'Gondal'),
(329, 10, 'Himatnagar'),
(330, 10, 'Jamnagar'),
(331, 10, 'Jamnagar'),
(332, 10, 'Jetpur'),
(333, 10, 'Junagadh'),
(334, 10, 'Kalol'),
(335, 10, 'Keshod'),
(336, 10, 'Khambhat'),
(337, 10, 'Kundla'),
(338, 10, 'Mahuva'),
(339, 10, 'Mangrol'),
(340, 10, 'Modasa'),
(341, 10, 'Morvi'),
(342, 10, 'Nadiad'),
(343, 10, 'Navagam Ghed'),
(344, 10, 'Navsari'),
(345, 10, 'Palitana'),
(346, 10, 'Patan'),
(347, 10, 'Porbandar'),
(348, 10, 'Puna'),
(349, 10, 'Rajkot'),
(350, 10, 'Ramod'),
(351, 10, 'Ranip'),
(352, 10, 'Siddhapur'),
(353, 10, 'Sihor'),
(354, 10, 'Surat'),
(355, 10, 'Surendranagar'),
(356, 10, 'Thaltej'),
(357, 10, 'Una'),
(358, 10, 'Unjha'),
(359, 10, 'Upleta'),
(360, 10, 'Vadodara'),
(361, 10, 'Valsad'),
(362, 10, 'Vapi'),
(363, 10, 'Vastral'),
(364, 10, 'Vejalpur'),
(365, 10, 'Veraval'),
(366, 10, 'Vijalpor'),
(367, 10, 'Visnagar'),
(368, 10, 'Wadhwan'),
(369, 11, 'Ambala'),
(370, 11, 'Ambala Cantonment'),
(371, 11, 'Ambala Sadar'),
(372, 11, 'Bahadurgarh'),
(373, 11, 'Bhiwani'),
(374, 11, 'Charkhi Dadri'),
(375, 11, 'Dabwali'),
(376, 11, 'Faridabad'),
(377, 11, 'Gohana'),
(378, 11, 'Hisar'),
(379, 11, 'Jagadhri'),
(380, 11, 'Jind'),
(381, 11, 'Kaithal'),
(382, 11, 'Karnal'),
(383, 11, 'Narnaul'),
(384, 11, 'Narwana'),
(385, 11, 'Palwal'),
(386, 11, 'Panchkula'),
(387, 11, 'Panipat'),
(388, 11, 'Rewari'),
(389, 11, 'Rohtak'),
(390, 11, 'Sirsa'),
(391, 11, 'Sonipat'),
(392, 11, 'Thanesar'),
(393, 11, 'Tohana'),
(394, 11, 'Yamunanagar'),
(395, 12, 'Shimla'),
(396, 13, 'Anantnag'),
(397, 13, 'Baramula'),
(398, 13, 'Bari Brahmana'),
(399, 13, 'Jammu'),
(400, 13, 'Kathua'),
(401, 13, 'Sopur'),
(402, 13, 'Srinagar'),
(403, 13, 'Udhampur'),
(404, 14, 'Adityapur'),
(405, 14, 'Bagbahra'),
(406, 14, 'Bhuli'),
(407, 14, 'Bokaro'),
(408, 14, 'Chaibasa'),
(409, 14, 'Chas'),
(410, 14, 'Daltenganj'),
(411, 14, 'Devghar'),
(412, 14, 'Dhanbad'),
(413, 14, 'Hazaribag'),
(414, 14, 'Jamshedpur'),
(415, 14, 'Jharia'),
(416, 14, 'Jhumri Tilaiya'),
(417, 14, 'Jorapokhar'),
(418, 14, 'Katras'),
(419, 14, 'Lohardaga'),
(420, 14, 'Mango'),
(421, 14, 'Phusro'),
(422, 14, 'Ramgarh'),
(423, 14, 'Ranchi'),
(424, 14, 'Sahibganj'),
(425, 14, 'Saunda'),
(426, 14, 'Sindari'),
(427, 15, 'Bagalkot'),
(428, 15, 'Bangalore'),
(429, 15, 'Basavakalyan'),
(430, 15, 'Belgaum'),
(431, 15, 'Bellary'),
(432, 15, 'Bhadravati'),
(433, 15, 'Bidar'),
(434, 15, 'Bijapur'),
(435, 15, 'Bommanahalli'),
(436, 15, 'Byatarayanapura'),
(437, 15, 'Challakere'),
(438, 15, 'Chamrajnagar'),
(439, 15, 'Channapatna'),
(440, 15, 'Chik Ballapur'),
(441, 15, 'Chikmagalur'),
(442, 15, 'Chintamani'),
(443, 15, 'Chitradurga'),
(444, 15, 'Dasarahalli'),
(445, 15, 'Davanagere'),
(446, 15, 'Dod Ballapur'),
(447, 15, 'Gadag'),
(448, 15, 'Gangawati'),
(449, 15, 'Gokak'),
(450, 15, 'Gulbarga'),
(451, 15, 'Harihar'),
(452, 15, 'Hassan'),
(453, 15, 'Haveri'),
(454, 15, 'Hiriyur'),
(455, 15, 'Hosakote'),
(456, 15, 'Hospet'),
(457, 15, 'Hubli'),
(458, 15, 'Ilkal'),
(459, 15, 'Jamkhandi'),
(460, 15, 'Kanakapura'),
(461, 15, 'Karwar'),
(462, 15, 'Kolar'),
(463, 15, 'Kollegal'),
(464, 15, 'Koppal'),
(465, 15, 'Krishnarajapura'),
(466, 15, 'Mahadevapura'),
(467, 15, 'Maisuru'),
(468, 15, 'Mandya'),
(469, 15, 'Mangaluru'),
(470, 15, 'Nipani'),
(471, 15, 'Pattanagere'),
(472, 15, 'Puttur'),
(473, 15, 'Rabkavi'),
(474, 15, 'Raichur'),
(475, 15, 'Ramanagaram'),
(476, 15, 'Ranibennur'),
(477, 15, 'Robertsonpet'),
(478, 15, 'Sagar'),
(479, 15, 'Shahabad'),
(480, 15, 'Shahpur'),
(481, 15, 'Shimoga'),
(482, 15, 'Shorapur'),
(483, 15, 'Sidlaghatta'),
(484, 15, 'Sira'),
(485, 15, 'Sirsi'),
(486, 15, 'Tiptur'),
(487, 15, 'Tumkur'),
(488, 15, 'Udupi'),
(489, 15, 'Ullal'),
(490, 15, 'Yadgir'),
(491, 15, 'Yelahanka'),
(492, 16, 'Alappuzha'),
(493, 16, 'Beypur'),
(494, 16, 'Cheruvannur'),
(495, 16, 'Edakkara'),
(496, 16, 'Edathala'),
(497, 16, 'Kalamassery'),
(498, 16, 'Kannan Devan Hills'),
(499, 16, 'Kannangad'),
(500, 16, 'Kannur'),
(501, 16, 'Kayankulam'),
(502, 16, 'Kochi'),
(503, 16, 'Kollam'),
(504, 16, 'Kottayam'),
(505, 16, 'Koyilandi'),
(506, 16, 'Kozhikkod'),
(507, 16, 'Kunnamkulam'),
(508, 16, 'Malappuram'),
(509, 16, 'Manjeri'),
(510, 16, 'Nedumangad'),
(511, 16, 'Neyyattinkara'),
(512, 16, 'Palakkad'),
(513, 16, 'Pallichal'),
(514, 16, 'Payyannur'),
(515, 16, 'Ponnani'),
(516, 16, 'Talipparamba'),
(517, 16, 'Thalassery'),
(518, 16, 'Thiruvananthapuram'),
(519, 16, 'Thrippunithura'),
(520, 16, 'Thrissur'),
(521, 16, 'Tirur'),
(522, 16, 'Tiruvalla'),
(523, 16, 'Vadakara'),
(524, 17, 'Ashoknagar'),
(525, 17, 'Balaghat'),
(526, 17, 'Basoda'),
(527, 17, 'Betul'),
(528, 17, 'Bhind'),
(529, 17, 'Bhopal'),
(530, 17, 'BinaEtawa'),
(531, 17, 'Burhanpur'),
(532, 17, 'Chhatarpur'),
(533, 17, 'Chhindwara'),
(534, 17, 'Dabra'),
(535, 17, 'Damoh'),
(536, 17, 'Datia'),
(537, 17, 'Dewas'),
(538, 17, 'Dhar'),
(539, 17, 'Gohad'),
(540, 17, 'Guna'),
(541, 17, 'Gwalior'),
(542, 17, 'Harda'),
(543, 17, 'Hoshangabad'),
(544, 17, 'Indore'),
(545, 17, 'Itarsi'),
(546, 17, 'Jabalpur'),
(547, 17, 'Jabalpur Cantonment'),
(548, 17, 'Jaora'),
(549, 17, 'Khandwa'),
(550, 17, 'Khargone'),
(551, 17, 'Mandidip'),
(552, 17, 'Mandsaur'),
(553, 17, 'Mau'),
(554, 17, 'Morena'),
(555, 17, 'Murwara'),
(556, 17, 'Nagda'),
(557, 17, 'Nimach'),
(558, 17, 'Pithampur'),
(559, 17, 'Raghogarh'),
(560, 17, 'Ratlam'),
(561, 17, 'Rewa'),
(562, 17, 'Sagar'),
(563, 17, 'Sarni'),
(564, 17, 'Satna'),
(565, 17, 'Sehore'),
(566, 17, 'Sendhwa'),
(567, 17, 'Seoni'),
(568, 17, 'Shahdol'),
(569, 17, 'Shajapur'),
(570, 17, 'Sheopur'),
(571, 17, 'Shivapuri'),
(572, 17, 'Sidhi'),
(573, 17, 'Singrauli'),
(574, 17, 'Tikamgarh'),
(575, 17, 'Ujjain'),
(576, 17, 'Vidisha'),
(577, 18, 'Achalpur'),
(578, 18, 'Ahmadnagar'),
(579, 18, 'Akola'),
(580, 18, 'Akot'),
(581, 18, 'Amalner'),
(582, 18, 'Ambajogai'),
(583, 18, 'Amravati'),
(584, 18, 'Anjangaon'),
(585, 18, 'Aurangabad'),
(586, 18, 'Badlapur'),
(587, 18, 'Ballarpur'),
(588, 18, 'Baramati'),
(589, 18, 'Barsi'),
(590, 18, 'Basmat'),
(591, 18, 'Bhadravati'),
(592, 18, 'Bhandara'),
(593, 18, 'Bhiwandi'),
(594, 18, 'Bhusawal'),
(595, 18, 'Bid'),
(596, 18, 'Mumbai'),
(597, 18, 'Buldana'),
(598, 18, 'Chalisgaon'),
(599, 18, 'Chandrapur'),
(600, 18, 'Chikhli'),
(601, 18, 'Chiplun'),
(602, 18, 'Chopda'),
(603, 18, 'Dahanu'),
(604, 18, 'Deolali'),
(605, 18, 'Dhule'),
(606, 18, 'Digdoh'),
(607, 18, 'Diglur'),
(608, 18, 'Gadchiroli'),
(609, 18, 'Gondiya'),
(610, 18, 'Hinganghat'),
(611, 18, 'Hingoli'),
(612, 18, 'Ichalkaranji'),
(613, 18, 'Jalgaon'),
(614, 18, 'Jalna'),
(615, 18, 'Kalyan'),
(616, 18, 'Kamthi'),
(617, 18, 'Karanja'),
(618, 18, 'Khadki'),
(619, 18, 'Khamgaon'),
(620, 18, 'Khopoli'),
(621, 18, 'Kolhapur'),
(622, 18, 'Kopargaon'),
(623, 18, 'Latur'),
(624, 18, 'Lonavale'),
(625, 18, 'Malegaon'),
(626, 18, 'Malkapur'),
(627, 18, 'Manmad'),
(628, 18, 'Mira Bhayandar'),
(629, 18, 'Nagpur'),
(630, 18, 'Nalasopara'),
(631, 18, 'Nanded'),
(632, 18, 'Nandurbar'),
(633, 18, 'Nashik'),
(634, 18, 'Navghar'),
(635, 18, 'Navi Mumbai'),
(636, 18, 'Navi Mumbai'),
(637, 18, 'Osmanabad'),
(638, 18, 'Palghar'),
(639, 18, 'Pandharpur'),
(640, 18, 'Parbhani'),
(641, 18, 'Phaltan'),
(642, 18, 'Pimpri'),
(643, 18, 'Pune'),
(644, 18, 'Pune Cantonment'),
(645, 18, 'Pusad'),
(646, 18, 'Ratnagiri'),
(647, 18, 'SangliMiraj'),
(648, 18, 'Satara'),
(649, 18, 'Shahada'),
(650, 18, 'Shegaon'),
(651, 18, 'Shirpur'),
(652, 18, 'Sholapur'),
(653, 18, 'Shrirampur'),
(654, 18, 'Sillod'),
(655, 18, 'Thana'),
(656, 18, 'Udgir'),
(657, 18, 'Ulhasnagar'),
(658, 18, 'Uran Islampur'),
(659, 18, 'Vasai'),
(660, 18, 'Virar'),
(661, 18, 'Wadi'),
(662, 18, 'Wani'),
(663, 18, 'Wardha'),
(664, 18, 'Warud'),
(665, 18, 'Washim'),
(666, 18, 'Yavatmal'),
(667, 19, 'Imphal'),
(668, 20, 'Shillong'),
(669, 20, 'Tura'),
(670, 21, 'Aizawl'),
(671, 21, 'Lunglei'),
(672, 22, 'Dimapur'),
(673, 22, 'Kohima'),
(674, 22, 'Wokha'),
(675, 23, 'Balangir'),
(676, 23, 'Baleshwar'),
(677, 23, 'Barbil'),
(678, 23, 'Bargarh'),
(679, 23, 'Baripada'),
(680, 23, 'Bhadrak'),
(681, 23, 'Bhawanipatna'),
(682, 23, 'Bhubaneswar'),
(683, 23, 'Brahmapur'),
(684, 23, 'Brajrajnagar'),
(685, 23, 'Dhenkanal'),
(686, 23, 'Jaypur'),
(687, 23, 'Jharsuguda'),
(688, 23, 'Kataka'),
(689, 23, 'Kendujhar'),
(690, 23, 'Paradwip'),
(691, 23, 'Puri'),
(692, 23, 'Raurkela'),
(693, 23, 'Raurkela Industrial Township'),
(694, 23, 'Rayagada'),
(695, 23, 'Sambalpur'),
(696, 23, 'Sunabeda'),
(697, 24, 'Karaikal'),
(698, 24, 'Ozhukarai'),
(699, 24, 'Pondicherry'),
(700, 25, 'Abohar'),
(701, 25, 'Amritsar'),
(702, 25, 'Barnala'),
(703, 25, 'Batala'),
(704, 25, 'Bathinda'),
(705, 25, 'Dhuri'),
(706, 25, 'Faridkot'),
(707, 25, 'Fazilka'),
(708, 25, 'Firozpur'),
(709, 25, 'Firozpur Cantonment'),
(710, 25, 'Gobindgarh'),
(711, 25, 'Gurdaspur'),
(712, 25, 'Hoshiarpur'),
(713, 25, 'Jagraon'),
(714, 25, 'Jalandhar'),
(715, 25, 'Kapurthala'),
(716, 25, 'Khanna'),
(717, 25, 'Kot Kapura'),
(718, 25, 'Ludhiana'),
(719, 25, 'Malaut'),
(720, 25, 'Maler Kotla'),
(721, 25, 'Mansa'),
(722, 25, 'Moga'),
(723, 25, 'Mohali'),
(724, 25, 'Pathankot'),
(725, 25, 'Patiala'),
(726, 25, 'Phagwara'),
(727, 25, 'Rajpura'),
(728, 25, 'Rupnagar'),
(729, 25, 'Samana'),
(730, 25, 'Sangrur'),
(731, 25, 'Sirhind'),
(732, 25, 'Sunam'),
(733, 25, 'Tarn Taran'),
(734, 26, 'Ajmer'),
(735, 26, 'Alwar'),
(736, 26, 'Balotra'),
(737, 26, 'Banswara'),
(738, 26, 'Baran'),
(739, 26, 'Bari'),
(740, 26, 'Barmer'),
(741, 26, 'Beawar'),
(742, 26, 'Bharatpur'),
(743, 26, 'Bhilwara'),
(744, 26, 'Bhiwadi'),
(745, 26, 'Bikaner'),
(746, 26, 'Bundi'),
(747, 26, 'Chittaurgarh'),
(748, 26, 'Chomun'),
(749, 26, 'Churu'),
(750, 26, 'Daosa'),
(751, 26, 'Dhaulpur'),
(752, 26, 'Didwana'),
(753, 26, 'Fatehpur'),
(754, 26, 'Ganganagar'),
(755, 26, 'Gangapur'),
(756, 26, 'Hanumangarh'),
(757, 26, 'Hindaun'),
(758, 26, 'Jaipur'),
(759, 26, 'Jaisalmer'),
(760, 26, 'Jalor'),
(761, 26, 'Jhalawar'),
(762, 26, 'Jhunjhunun'),
(763, 26, 'Jodhpur'),
(764, 26, 'Karauli'),
(765, 26, 'Kishangarh'),
(766, 26, 'Kota'),
(767, 26, 'Kuchaman'),
(768, 26, 'Ladnun'),
(769, 26, 'Makrana'),
(770, 26, 'Nagaur'),
(771, 26, 'Nawalgarh'),
(772, 26, 'Nimbahera'),
(773, 26, 'Nokha'),
(774, 26, 'Pali'),
(775, 26, 'Rajsamand'),
(776, 26, 'Ratangarh'),
(777, 26, 'Sardarshahr'),
(778, 26, 'Sawai Madhopur'),
(779, 26, 'Sikar'),
(780, 26, 'Sujangarh'),
(781, 26, 'Suratgarh'),
(782, 26, 'Tonk'),
(783, 26, 'Udaipur'),
(784, 27, 'Alandur'),
(785, 27, 'Ambattur'),
(786, 27, 'Ambur'),
(787, 27, 'Arakonam'),
(788, 27, 'Arani'),
(789, 27, 'Aruppukkottai'),
(790, 27, 'Attur'),
(791, 27, 'Avadi'),
(792, 27, 'Avaniapuram'),
(793, 27, 'Bodinayakkanur'),
(794, 27, 'Chengalpattu'),
(795, 27, 'Dharapuram'),
(796, 27, 'Dharmapuri'),
(797, 27, 'Dindigul'),
(798, 27, 'Erode'),
(799, 27, 'Gopichettipalaiyam'),
(800, 27, 'Gudalur'),
(801, 27, 'Gudiyattam'),
(802, 27, 'Hosur'),
(803, 27, 'Idappadi'),
(804, 27, 'Kadayanallur'),
(805, 27, 'Kambam'),
(806, 27, 'Kanchipuram'),
(807, 27, 'Karur'),
(808, 27, 'Kavundampalaiyam'),
(809, 27, 'Kovilpatti'),
(810, 27, 'Koyampattur'),
(811, 27, 'Krishnagiri'),
(812, 27, 'Kumarapalaiyam'),
(813, 27, 'Kumbakonam'),
(814, 27, 'Kuniyamuthur'),
(815, 27, 'Kurichi'),
(816, 27, 'Madhavaram'),
(817, 27, 'Madras'),
(818, 27, 'Madurai'),
(819, 27, 'Maduravoyal'),
(820, 27, 'Mannargudi'),
(821, 27, 'Mayiladuthurai'),
(822, 27, 'Mettupalayam'),
(823, 27, 'Mettur'),
(824, 27, 'Nagapattinam'),
(825, 27, 'Nagercoil'),
(826, 27, 'Namakkal'),
(827, 27, 'Nerkunram'),
(828, 27, 'Neyveli'),
(829, 27, 'Pallavaram'),
(830, 27, 'Pammal'),
(831, 27, 'Pannuratti'),
(832, 27, 'Paramakkudi'),
(833, 27, 'Pattukkottai'),
(834, 27, 'Pollachi'),
(835, 27, 'Pudukkottai'),
(836, 27, 'Puliyankudi'),
(837, 27, 'Punamalli'),
(838, 27, 'Rajapalaiyam'),
(839, 27, 'Ramanathapuram'),
(840, 27, 'Salem'),
(841, 27, 'Sankarankoil'),
(842, 27, 'Sivakasi'),
(843, 27, 'Srivilliputtur'),
(844, 27, 'Tambaram'),
(845, 27, 'Tenkasi'),
(846, 27, 'Thanjavur'),
(847, 27, 'Theni Allinagaram'),
(848, 27, 'Thiruthangal'),
(849, 27, 'Thiruvarur'),
(850, 27, 'Thuthukkudi'),
(851, 27, 'Tindivanam'),
(852, 27, 'Tiruchchirappalli'),
(853, 27, 'Tiruchengode'),
(854, 27, 'Tirunelveli'),
(855, 27, 'Tirupathur'),
(856, 27, 'Tiruppur'),
(857, 27, 'Tiruvannamalai'),
(858, 27, 'Tiruvottiyur'),
(859, 27, 'Udagamandalam'),
(860, 27, 'Udumalaipettai'),
(861, 27, 'Valparai'),
(862, 27, 'Vaniyambadi'),
(863, 27, 'Velampalaiyam'),
(864, 27, 'Velluru'),
(865, 27, 'Viluppuram'),
(866, 27, 'Virappanchatram'),
(867, 27, 'Virudhachalam'),
(868, 27, 'Virudunagar'),
(869, 28, 'Agartala'),
(870, 28, 'Agartala MCl'),
(871, 28, 'Badharghat'),
(872, 29, 'Agra'),
(873, 29, 'Aligarh'),
(874, 29, 'Allahabad'),
(875, 29, 'Amroha'),
(876, 29, 'Aonla'),
(877, 29, 'Auraiya'),
(878, 29, 'Ayodhya'),
(879, 29, 'Azamgarh'),
(880, 29, 'Baheri'),
(881, 29, 'Bahraich'),
(882, 29, 'Ballia'),
(883, 29, 'Balrampur'),
(884, 29, 'Banda'),
(885, 29, 'Baraut'),
(886, 29, 'Bareli'),
(887, 29, 'Basti'),
(888, 29, 'Behta Hajipur'),
(889, 29, 'Bela'),
(890, 29, 'Bhadohi'),
(891, 29, 'Bijnor'),
(892, 29, 'Bisalpur'),
(893, 29, 'Biswan'),
(894, 29, 'Budaun'),
(895, 29, 'Bulandshahr'),
(896, 29, 'Chandausi'),
(897, 29, 'Chandpur'),
(898, 29, 'Chhibramau'),
(899, 29, 'Chitrakut Dham'),
(900, 29, 'Dadri'),
(901, 29, 'Deoband'),
(902, 29, 'Deoria'),
(903, 29, 'Etah'),
(904, 29, 'Etawah'),
(905, 29, 'Faizabad'),
(906, 29, 'Faridpur'),
(907, 29, 'Farrukhabad'),
(908, 29, 'Fatehpur'),
(909, 29, 'Firozabad'),
(910, 29, 'Gajraula'),
(911, 29, 'Ganga Ghat'),
(912, 29, 'Gangoh'),
(913, 29, 'Ghaziabad'),
(914, 29, 'Ghazipur'),
(915, 29, 'Gola Gokarannath'),
(916, 29, 'Gonda'),
(917, 29, 'Gorakhpur'),
(918, 29, 'Hapur'),
(919, 29, 'Hardoi'),
(920, 29, 'Hasanpur'),
(921, 29, 'Hathras'),
(922, 29, 'Jahangirabad'),
(923, 29, 'Jalaun'),
(924, 29, 'Jaunpur'),
(925, 29, 'Jhansi'),
(926, 29, 'Kadi'),
(927, 29, 'Kairana'),
(928, 29, 'Kannauj'),
(929, 29, 'Kanpur'),
(930, 29, 'Kanpur Cantonment'),
(931, 29, 'Kasganj'),
(932, 29, 'Khatauli'),
(933, 29, 'Khora'),
(934, 29, 'Khurja'),
(935, 29, 'Kiratpur'),
(936, 29, 'Kosi Kalan'),
(937, 29, 'Laharpur'),
(938, 29, 'Lakhimpur'),
(939, 29, 'Lakhnau'),
(940, 29, 'Lakhnau Cantonment'),
(941, 29, 'Lalitpur'),
(942, 29, 'Loni'),
(943, 29, 'Mahoba'),
(944, 29, 'Mainpuri'),
(945, 29, 'Mathura'),
(946, 29, 'Mau'),
(947, 29, 'Mauranipur'),
(948, 29, 'Mawana'),
(949, 29, 'Mirat'),
(950, 29, 'Mirat Cantonment'),
(951, 29, 'Mirzapur'),
(952, 29, 'Modinagar'),
(953, 29, 'Moradabad'),
(954, 29, 'Mubarakpur'),
(955, 29, 'Mughal Sarai'),
(956, 29, 'Muradnagar'),
(957, 29, 'Muzaffarnagar'),
(958, 29, 'Nagina'),
(959, 29, 'Najibabad'),
(960, 29, 'Nawabganj'),
(961, 29, 'Noida'),
(962, 29, 'Obra'),
(963, 29, 'Orai'),
(964, 29, 'Pilibhit'),
(965, 29, 'Pilkhuwa'),
(966, 29, 'Rae Bareli'),
(967, 29, 'Ramgarh Nagla Kothi'),
(968, 29, 'Rampur'),
(969, 29, 'Rath'),
(970, 29, 'Renukut'),
(971, 29, 'Saharanpur'),
(972, 29, 'Sahaswan'),
(973, 29, 'Sambhal'),
(974, 29, 'Sandila'),
(975, 29, 'Shahabad'),
(976, 29, 'Shahjahanpur'),
(977, 29, 'Shamli'),
(978, 29, 'Sherkot'),
(979, 29, 'Shikohabad'),
(980, 29, 'Sikandarabad'),
(981, 29, 'Sitapur'),
(982, 29, 'Sukhmalpur Nizamabad'),
(983, 29, 'Sultanpur'),
(984, 29, 'Tanda'),
(985, 29, 'Tilhar'),
(986, 29, 'Tundla'),
(987, 29, 'Ujhani'),
(988, 29, 'Unnao'),
(989, 29, 'Varanasi'),
(990, 29, 'Vrindavan'),
(991, 30, 'Dehra Dun'),
(992, 30, 'Dehra Dun Cantonment'),
(993, 30, 'Gola Range'),
(994, 30, 'Haldwani'),
(995, 30, 'Haridwar'),
(996, 30, 'Kashipur'),
(997, 30, 'Pithoragarh'),
(998, 30, 'Rishikesh'),
(999, 30, 'Rudrapur'),
(1000, 30, 'Rurki');

-- --------------------------------------------------------

--
-- Table structure for table `distributions`
--

CREATE TABLE `distributions` (
  `distribution_id` varchar(15) NOT NULL,
  `ngo_id` varchar(15) NOT NULL,
  `category_id` varchar(15) NOT NULL,
  `counts` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `donate_id` varchar(15) NOT NULL,
  `user_id` varchar(15) DEFAULT NULL,
  `donar_name` varchar(50) NOT NULL,
  `donar_email` varchar(255) NOT NULL,
  `city_id` int(5) NOT NULL,
  `address` text NOT NULL,
  `category_id` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `discription` text NOT NULL,
  `pickup` char(1) NOT NULL,
  `receive_date` date DEFAULT NULL,
  `items` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` varchar(15) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_description` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `address` text NOT NULL,
  `city_id` int(5) NOT NULL,
  `duration` varchar(10) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_name`, `event_description`, `date`, `time`, `address`, `city_id`, `duration`, `image`) VALUES
('ET57fafde00f3cb', 'Help Elders', 'We are organizing an event which will helpful to elders, we distribute some basic required things to the elders. Join the event and give them as per your strength.', '2021-03-10', '10:30:00', 'Vastrapur station road, Vejalpur', 306, '4hr', ''),
('ET57fb039adedd1', 'Save Children', 'We are organizing an event which will helpful to children, we distribute some basic required things to the children like toys, books, food-packets. Join the event and give them as per your strength.', '2021-04-05', '10:00:00', 'Om Shanti School', 341, '6hr', './event_uploads/ET57fb039adedd1.jpg'),
('ET609907e4cb8fe', 'demo', 'demo', '2021-05-10', '15:45:00', 'demo', 395, '2 hours', './event_uploads/ET609907e4cb8fe.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `media_gallery`
--

CREATE TABLE `media_gallery` (
  `media_id` varchar(15) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `view` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `media_gallery`
--

INSERT INTO `media_gallery` (`media_id`, `caption`, `image`, `description`, `view`) VALUES
('MG57fb2d6c1c200', 'NGO quote ', './gallery_uploads/MG57fb2d6c1c200.jpg', 'Some Quotes for NGO', NULL),
('MG57fb2d94e9cce', 'Food Distribution', './gallery_uploads/MG57fb2d94e9cce.jpg', 'NGO works for distributing foods with people', NULL),
('MG57fb2dad3a178', 'Children', './gallery_uploads/MG57fb2dad3a178.jpg', '', NULL),
('MG57fb2ddd8cdd0', 'Children Education Support', './gallery_uploads/MG57fb2ddd8cdd0.jpg', 'We supports children for there educations', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `isRead` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `name`, `email`, `message`, `isRead`) VALUES
('MG60990839d74bc', 'Arishti', 'arishti.salaria2018@vitstudent.ac.in', 'demo', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` varchar(15) NOT NULL,
  `heading` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `heading`, `description`, `date`, `time`) VALUES
('NS57faf72960274', 'Hospitals are now joining with us.', 'For health case we have a great team of doctors from different hospitals. They are supporting who are not able to pay for medicines. They will provides the free checkups with organizing some camp. now donated medicines or other health care donations will directly given to the hospitals for distributed with poor people.', '2021-04-12', '15:13:00'),
('NS57faf8cc1b41d', 'New join of Children Foundation.', 'more and more foundations are now joining with us \"Hope\" is a new foundation which is now going to connect with us.', '2021-03-09', '14:15:00'),
('NS57faf8f945331', 'Saved Elders.', 'some elder homes where large number of elders who have insufficient facilities as per the requirement, we just full fill them with donor\'s support.', '2021-04-02', '07:18:00'),
('NS57faf937d0c72', 'Childrens are now happy', 'some organizations where number of children living there, they have insufficient children requirement, we just send them toys, clothes and food peckets', '2021-04-05', '12:17:00'),
('NS57faf96480425', 'Women foundations are joining with us.', '\"NaiSoch\" and \"Savera\" which are women organizations is join us and we start distributing donations to them.', '2021-04-07', '12:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `ngo_data`
--

CREATE TABLE `ngo_data` (
  `ngo_id` varchar(15) NOT NULL,
  `nago_name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `city_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ngo_data`
--

INSERT INTO `ngo_data` (`ngo_id`, `nago_name`, `address`, `city_id`) VALUES
('NGO1', 'Aakash Foundation', '241, Pallavpuram Phase 2', 949),
('NGO2', 'Save Children NGO', '#911\r\nRohta Road\r\n', 306),
('NS60976e8d8e044', 'Vidhya  Sansthan', 'Near old railway station', 714);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(5) NOT NULL,
  `state_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'Andaman and Nicobar Islands'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh'),
(7, 'Chhattisgarh'),
(8, 'Delhi'),
(9, 'Goa'),
(10, 'Gujarat'),
(11, 'Haryana'),
(12, 'Himachal Pradesh'),
(13, 'Jammu and Kashmir'),
(14, 'Jharkhand'),
(15, 'Karnataka'),
(16, 'Kerala'),
(17, 'Madhya Pradesh'),
(18, 'Maharashtra'),
(19, 'Manipur'),
(20, 'Meghalaya'),
(21, 'Mizoram'),
(22, 'Nagaland'),
(23, 'Orissa'),
(24, 'Pondicherry'),
(25, 'Punjab'),
(26, 'Rajasthan'),
(27, 'Tamil Nadu'),
(28, 'Tripura'),
(29, 'Uttar Pradesh'),
(30, 'Uttaranchal'),
(31, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `user_id` varchar(15) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `middle_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city_Id` int(5) DEFAULT NULL,
  `mobile` bigint(10) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `security_que` varchar(500) DEFAULT NULL,
  `answer` varchar(500) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`user_id`, `first_name`, `middle_name`, `last_name`, `gender`, `date_of_birth`, `address`, `city_Id`, `mobile`, `email`, `password`, `security_que`, `answer`, `profile_pic`) VALUES
('UR6098e418a6c7e', 'Arishti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'arishti.salaria2018@vitstudent.ac.in', 'e3addd2b2cb32ec7c555ecdf8a259f46', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_Id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `distributions`
--
ALTER TABLE `distributions`
  ADD PRIMARY KEY (`distribution_id`),
  ADD KEY `ngo_id` (`ngo_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`donate_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `city` (`city_id`);

--
-- Indexes for table `media_gallery`
--
ALTER TABLE `media_gallery`
  ADD PRIMARY KEY (`media_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `ngo_data`
--
ALTER TABLE `ngo_data`
  ADD PRIMARY KEY (`ngo_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `City` (`city_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `distributions`
--
ALTER TABLE `distributions`
  ADD CONSTRAINT `distributions_ibfk_2` FOREIGN KEY (`ngo_id`) REFERENCES `ngo_data` (`ngo_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `distributions_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donation`
--
ALTER TABLE `donation`
  ADD CONSTRAINT `donation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_data` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donation_ibfk_3` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donation_ibfk_4` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ngo_data`
--
ALTER TABLE `ngo_data`
  ADD CONSTRAINT `ngo_data_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_data`
--
ALTER TABLE `user_data`
  ADD CONSTRAINT `user_data_ibfk_1` FOREIGN KEY (`city_Id`) REFERENCES `city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
