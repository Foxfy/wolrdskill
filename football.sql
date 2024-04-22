-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2024 at 06:14 PM
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
-- Database: `football`
--

-- --------------------------------------------------------

--
-- Table structure for table `allowed_province`
--

CREATE TABLE `allowed_province` (
  `id` int(10) UNSIGNED NOT NULL,
  `compitition_id` int(10) UNSIGNED NOT NULL,
  `province_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `allowed_province`
--

INSERT INTO `allowed_province` (`id`, `compitition_id`, `province_id`) VALUES
(6, 1, 1),
(7, 1, 9),
(8, 1, 8),
(9, 2, 7),
(10, 1, 28),
(11, 2, 6),
(12, 2, 28),
(13, 6, 1),
(14, 6, 2),
(15, 6, 3),
(16, 9, 1),
(17, 9, 2),
(18, 9, 3),
(19, 11, 1),
(20, 11, 2),
(21, 11, 3),
(50, 16, 4),
(51, 16, 5),
(52, 16, 6),
(53, 16, 7),
(54, 16, 8),
(55, 16, 9),
(56, 16, 10),
(57, 16, 11),
(58, 16, 12),
(59, 16, 13),
(60, 16, 14),
(61, 16, 15),
(62, 16, 16),
(63, 16, 17),
(64, 16, 18),
(65, 16, 19),
(66, 16, 20),
(67, 16, 21),
(68, 16, 22),
(69, 16, 23),
(70, 16, 24),
(71, 16, 25),
(72, 16, 26),
(73, 16, 27),
(74, 19, 3),
(75, 19, 4),
(76, 19, 5),
(77, 19, 6),
(78, 19, 7),
(79, 19, 8),
(80, 19, 9),
(89, 24, 1),
(90, 24, 2),
(91, 24, 3),
(92, 24, 4),
(93, 24, 5),
(94, 24, 6),
(95, 24, 7),
(96, 24, 8),
(97, 24, 9),
(98, 24, 10),
(99, 24, 11),
(100, 24, 12),
(101, 24, 13),
(102, 24, 14),
(103, 24, 15),
(104, 24, 16),
(105, 24, 17),
(106, 24, 18),
(107, 24, 19),
(108, 24, 20),
(109, 24, 21),
(110, 29, 2),
(111, 29, 3),
(112, 29, 4),
(113, 29, 5),
(114, 29, 6),
(115, 29, 7),
(116, 29, 8),
(117, 29, 9),
(118, 29, 10),
(119, 29, 11),
(120, 29, 12),
(121, 29, 13),
(122, 29, 14),
(123, 29, 15),
(124, 29, 16),
(125, 29, 17),
(126, 29, 18),
(127, 29, 19),
(128, 29, 20),
(129, 29, 21),
(130, 29, 22),
(131, 29, 23),
(132, 29, 24),
(133, 29, 25),
(134, 29, 26),
(135, 29, 27),
(136, 29, 28),
(137, 29, 29),
(138, 29, 30),
(139, 29, 31),
(140, 29, 32),
(141, 29, 33),
(142, 29, 34),
(143, 29, 35),
(144, 29, 36),
(145, 29, 37),
(146, 29, 38),
(147, 29, 39),
(148, 29, 40),
(149, 29, 41),
(150, 29, 42),
(151, 29, 43),
(152, 29, 44),
(153, 29, 45),
(154, 29, 46),
(155, 29, 47),
(156, 29, 48),
(157, 29, 49),
(158, 29, 50),
(159, 29, 51),
(160, 29, 52),
(161, 29, 53),
(162, 29, 54),
(163, 29, 55),
(164, 29, 56),
(165, 29, 57);

-- --------------------------------------------------------

--
-- Table structure for table `compitition`
--

CREATE TABLE `compitition` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `max_teams` int(11) NOT NULL,
  `banner` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `compitition`
--

INSERT INTO `compitition` (`id`, `name`, `slug`, `max_teams`, `banner`) VALUES
(1, 'Bangkok Cup', 'BCF', 6, ''),
(2, 'Khon Kaen Cup', 'KKC', 4, ''),
(3, 'n', 's', 10, ''),
(4, 'burilum cup', 'bfc', 16, ''),
(6, 'burilum cup', 'BFC2024', 16, ''),
(9, 'burilum cup', 'BFC2025', 2147483647, ''),
(11, 'burilum cup', 'BFC2026', 10, ''),
(16, 'burilum cup', 'BFC2029', 16, 'Bsonicl.gif'),
(19, 'burilum cup', 'BFC2030', 16, 'sunny.jpg'),
(22, 'Foxfy', 'FFY', 6, 'RobloxScreenShot20240229_135102674.png'),
(24, 'Foxfy2', 'FFY2', 6, 'RobloxScreenShot20240229_135102674.png'),
(27, 'Foxfy1', 'FFY22', 12, 'RobloxScreenShot20240229_135107825.png'),
(28, 'Foxfy12', 'FFY23', 12, 'RobloxScreenShot20240229_135053205.png'),
(29, 'Foxfy34', 'FFY25', 19, 'RobloxScreenShot20240211_215904109.png');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `name`) VALUES
(1, 'กรุงเทพมหานคร'),
(2, 'กระบี่'),
(3, 'กาญจนบุรี'),
(4, 'กาฬสินธุ์'),
(5, 'กำแพงเพชร'),
(6, 'ขอนแก่น'),
(7, 'จันทบุรี'),
(8, 'ฉะเชิงเทรา'),
(9, 'ชลบุรี'),
(10, 'ชัยนาท'),
(11, 'ชัยภูมิ'),
(12, 'ชุมพร'),
(13, 'เชียงราย'),
(14, 'เชียงใหม่'),
(15, 'ตรัง'),
(16, 'ตราด'),
(17, 'ตาก'),
(18, 'นครนายก'),
(19, 'นครปฐม'),
(20, 'นครพนม'),
(21, 'นครราชสีมา'),
(22, 'นครศรีธรรมราช'),
(23, 'นครสวรรค์'),
(24, 'นนทบุรี'),
(25, 'นราธิวาส'),
(26, 'น่าน'),
(27, 'บึงกาฬ'),
(28, 'บุรีรัมย์'),
(29, 'ปทุมธานี'),
(30, 'ประจวบคีรีขันธ์'),
(31, 'ปราจีนบุรี'),
(32, 'ปัตตานี'),
(33, 'พระนครศรีอยุธยา'),
(34, 'พะเยา'),
(35, 'พังงา'),
(36, 'พัทลุง'),
(37, 'พิจิตร'),
(38, 'พิษณุโลก'),
(39, 'เพชรบุรี'),
(40, 'เพชรบูรณ์'),
(41, 'แพร่'),
(42, 'ภูเก็ต'),
(43, 'มหาสารคาม'),
(44, 'มุกดาหาร'),
(45, 'แม่ฮ่องสอน'),
(46, 'ยโสธร'),
(47, 'ยะลา'),
(48, 'ร้อยเอ็ด'),
(49, 'ระนอง'),
(50, 'ระยอง'),
(51, 'ราชบุรี'),
(52, 'ลพบุรี'),
(53, 'ลำปาง'),
(54, 'ลำพูน'),
(55, 'เลย'),
(56, 'ศรีสะเกษ'),
(57, 'สกลนคร'),
(58, 'สงขลา'),
(59, 'สตูล'),
(60, 'สมุทรปราการ'),
(61, 'สมุทรสงคราม'),
(62, 'สมุทรสาคร'),
(63, 'สระแก้ว'),
(64, 'สระบุรี'),
(65, 'สิงห์บุรี'),
(66, 'สุโขทัย'),
(67, 'สุพรรณบุรี'),
(68, 'สุราษฎร์ธานี'),
(69, 'สุรินทร์'),
(70, 'หนองคาย'),
(71, 'หนองบัวลำภู'),
(72, 'อ่างทอง'),
(73, 'อำนาจเจริญ'),
(74, 'อุดรธานี'),
(75, 'อุตรดิตถ์'),
(76, 'อุทัยธานี'),
(77, 'อุบลราชธานี');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allowed_province`
--
ALTER TABLE `allowed_province`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compitition_id` (`compitition_id`),
  ADD KEY `province_id` (`province_id`);

--
-- Indexes for table `compitition`
--
ALTER TABLE `compitition`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allowed_province`
--
ALTER TABLE `allowed_province`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `compitition`
--
ALTER TABLE `compitition`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `allowed_province`
--
ALTER TABLE `allowed_province`
  ADD CONSTRAINT `allowed_province_ibfk_1` FOREIGN KEY (`compitition_id`) REFERENCES `compitition` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `allowed_province_ibfk_2` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
