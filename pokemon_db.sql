-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 31, 2021 at 06:50 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pokemon_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `base_xp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`id`, `name`, `height`, `weight`, `base_xp`) VALUES
(1, 'bulbasaur', 7, 69, 64),
(2, 'ivysaur', 10, 130, 142),
(3, 'venusaur', 20, 1000, 236),
(4, 'charmander', 6, 85, 62),
(5, 'charmeleon', 11, 190, 142),
(6, 'charizard', 17, 905, 240),
(7, 'squirtle', 5, 90, 63),
(8, 'wartortle', 10, 225, 142),
(9, 'blastoise', 16, 855, 239),
(10, 'caterpie', 3, 29, 39),
(11, 'metapod', 7, 99, 72),
(12, 'butterfree', 11, 320, 178),
(13, 'weedle', 3, 32, 39),
(14, 'kakuna', 6, 100, 72),
(15, 'beedrill', 10, 295, 178),
(16, 'pidgey', 3, 18, 50),
(17, 'pidgeotto', 11, 300, 122),
(18, 'pidgeot', 15, 395, 216),
(19, 'rattata', 3, 35, 51),
(20, 'raticate', 7, 185, 145),
(21, 'spearow', 3, 20, 52),
(22, 'fearow', 12, 380, 155),
(23, 'ekans', 20, 69, 58),
(24, 'arbok', 35, 650, 153),
(25, 'pikachu', 4, 60, 112),
(26, 'raichu', 8, 300, 218),
(27, 'sandshrew', 6, 120, 60),
(28, 'sandslash', 10, 295, 158),
(29, 'nidoran-f', 4, 70, 55),
(30, 'nidorina', 8, 200, 128),
(31, 'nidoqueen', 13, 600, 227),
(32, 'nidoran-m', 5, 90, 55),
(33, 'nidorino', 9, 195, 128),
(34, 'nidoking', 14, 620, 227),
(35, 'clefairy', 6, 75, 113),
(36, 'clefable', 13, 400, 217),
(37, 'vulpix', 6, 99, 60),
(38, 'ninetales', 11, 199, 177),
(39, 'jigglypuff', 5, 55, 95),
(40, 'wigglytuff', 10, 120, 196),
(41, 'zubat', 8, 75, 49),
(42, 'golbat', 16, 550, 159),
(43, 'oddish', 5, 54, 64),
(44, 'gloom', 8, 86, 138),
(45, 'vileplume', 12, 186, 221),
(46, 'paras', 3, 54, 57),
(47, 'parasect', 10, 295, 142),
(48, 'venonat', 10, 300, 61),
(49, 'venomoth', 15, 125, 158),
(50, 'diglett', 2, 8, 53),
(51, 'dugtrio', 7, 333, 142),
(52, 'meowth', 4, 42, 58),
(53, 'persian', 10, 320, 154),
(54, 'psyduck', 8, 196, 64),
(55, 'golduck', 17, 766, 175),
(56, 'mankey', 5, 280, 61),
(57, 'primeape', 10, 320, 159),
(58, 'growlithe', 7, 190, 70),
(59, 'arcanine', 19, 1550, 194),
(60, 'poliwag', 6, 124, 60),
(61, 'poliwhirl', 10, 200, 135),
(62, 'poliwrath', 13, 540, 230),
(63, 'abra', 9, 195, 62),
(64, 'kadabra', 13, 565, 140),
(65, 'alakazam', 15, 480, 225),
(66, 'machop', 8, 195, 61),
(67, 'machoke', 15, 705, 142),
(68, 'machamp', 16, 1300, 227),
(69, 'bellsprout', 7, 40, 60),
(70, 'weepinbell', 10, 64, 137),
(71, 'victreebel', 17, 155, 221),
(72, 'tentacool', 9, 455, 67),
(73, 'tentacruel', 16, 550, 180),
(74, 'geodude', 4, 200, 60),
(75, 'graveler', 10, 1050, 137),
(76, 'golem', 14, 3000, 223),
(77, 'ponyta', 10, 300, 82),
(78, 'rapidash', 17, 950, 175),
(79, 'slowpoke', 12, 360, 63),
(80, 'slowbro', 16, 785, 172),
(81, 'magnemite', 3, 60, 65),
(82, 'magneton', 10, 600, 163),
(83, 'farfetchd', 8, 150, 123),
(84, 'doduo', 14, 392, 62),
(85, 'dodrio', 18, 852, 161),
(86, 'seel', 11, 900, 65),
(87, 'dewgong', 17, 1200, 166),
(88, 'grimer', 9, 300, 65),
(89, 'muk', 12, 300, 175),
(90, 'shellder', 3, 40, 61),
(91, 'cloyster', 15, 1325, 184),
(92, 'gastly', 13, 1, 62),
(93, 'haunter', 16, 1, 142),
(94, 'gengar', 15, 405, 225),
(95, 'onix', 88, 2100, 77),
(96, 'drowzee', 10, 324, 66),
(97, 'hypno', 16, 756, 169),
(98, 'krabby', 4, 65, 65),
(99, 'kingler', 13, 600, 166),
(100, 'voltorb', 5, 104, 66),
(101, 'electrode', 12, 666, 168),
(102, 'exeggcute', 4, 25, 65),
(103, 'exeggutor', 20, 1200, 182),
(104, 'cubone', 4, 65, 64),
(105, 'marowak', 10, 450, 149),
(106, 'hitmonlee', 15, 498, 159),
(107, 'hitmonchan', 14, 502, 159),
(108, 'lickitung', 12, 655, 77),
(109, 'koffing', 6, 10, 68),
(110, 'weezing', 12, 95, 172),
(111, 'rhyhorn', 10, 1150, 69),
(112, 'rhydon', 19, 1200, 170),
(113, 'chansey', 11, 346, 395),
(114, 'tangela', 10, 350, 87),
(115, 'kangaskhan', 22, 800, 172),
(116, 'horsea', 4, 80, 59),
(117, 'seadra', 12, 250, 154),
(118, 'goldeen', 6, 150, 64),
(119, 'seaking', 13, 390, 158),
(120, 'staryu', 8, 345, 68),
(121, 'starmie', 11, 800, 182),
(122, 'mr-mime', 13, 545, 161),
(123, 'scyther', 15, 560, 100),
(124, 'jynx', 14, 406, 159),
(125, 'electabuzz', 11, 300, 172),
(126, 'magmar', 13, 445, 173),
(127, 'pinsir', 15, 550, 175),
(128, 'tauros', 14, 884, 172),
(129, 'magikarp', 9, 100, 40),
(130, 'gyarados', 65, 2350, 189),
(131, 'lapras', 25, 2200, 187),
(132, 'ditto', 3, 40, 101),
(133, 'eevee', 3, 65, 65),
(134, 'vaporeon', 10, 290, 184),
(135, 'jolteon', 8, 245, 184),
(136, 'flareon', 9, 250, 184),
(137, 'porygon', 8, 365, 79),
(138, 'omanyte', 4, 75, 71),
(139, 'omastar', 10, 350, 173),
(140, 'kabuto', 5, 115, 71),
(141, 'kabutops', 13, 405, 173),
(142, 'aerodactyl', 18, 590, 180),
(143, 'snorlax', 21, 4600, 189),
(144, 'articuno', 17, 554, 261),
(145, 'zapdos', 16, 526, 261),
(146, 'moltres', 20, 600, 261),
(147, 'dratini', 18, 33, 60),
(148, 'dragonair', 40, 165, 147),
(149, 'dragonite', 22, 2100, 270),
(150, 'mewtwo', 20, 1220, 306),
(151, 'mew', 4, 40, 270);

-- --------------------------------------------------------

--
-- Table structure for table `pokemon_types`
--

CREATE TABLE `pokemon_types` (
  `pok_id` int(11) NOT NULL,
  `type_1_id` int(11) NOT NULL,
  `type_2_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pokemon_types`
--

INSERT INTO `pokemon_types` (`pok_id`, `type_1_id`, `type_2_id`) VALUES
(1, 5, 8),
(2, 6, 8),
(3, 6, 8),
(4, 2, NULL),
(5, 2, NULL),
(6, 2, 10),
(7, 3, NULL),
(8, 3, NULL),
(9, 3, NULL),
(10, 12, NULL),
(11, 12, NULL),
(12, 12, 10),
(13, 12, 8),
(14, 12, 8),
(15, 12, 8),
(16, 1, 10),
(17, 1, 10),
(18, 1, 10),
(19, 1, NULL),
(20, 1, NULL),
(21, 1, 10),
(22, 1, 10),
(23, 8, NULL),
(24, 8, NULL),
(25, 4, NULL),
(26, 4, NULL),
(27, 9, NULL),
(28, 9, NULL),
(29, 8, NULL),
(30, 8, NULL),
(31, 8, 9),
(32, 8, NULL),
(33, 8, NULL),
(34, 8, 9),
(35, 1, NULL),
(36, 1, NULL),
(37, 2, NULL),
(38, 2, NULL),
(39, 1, NULL),
(40, 1, NULL),
(41, 8, 10),
(42, 8, 10),
(43, 5, 8),
(44, 5, 8),
(45, 5, 8),
(46, 12, 5),
(47, 12, 5),
(48, 12, 8),
(49, 12, 8),
(50, 9, NULL),
(51, 9, NULL),
(52, 1, NULL),
(53, 1, NULL),
(54, 3, NULL),
(55, 3, NULL),
(56, 7, NULL),
(57, 7, NULL),
(58, 2, NULL),
(59, 2, NULL),
(60, 3, NULL),
(61, 3, NULL),
(62, 3, 7),
(63, 11, NULL),
(64, 11, NULL),
(65, 11, NULL),
(66, 7, NULL),
(67, 7, NULL),
(68, 7, NULL),
(69, 5, 8),
(70, 5, 8),
(71, 5, 8),
(72, 3, 8),
(73, 3, 8),
(74, 13, 9),
(75, 13, 9),
(76, 13, 9),
(77, 2, NULL),
(78, 2, NULL),
(79, 3, 11),
(80, 3, 11),
(81, 4, NULL),
(82, 4, NULL),
(83, 1, 10),
(84, 1, 10),
(85, 1, 10),
(86, 3, NULL),
(87, 3, 6),
(88, 8, NULL),
(89, 8, NULL),
(90, 3, NULL),
(91, 3, 6),
(92, 14, 8),
(93, 14, 8),
(94, 14, 8),
(95, 13, 9),
(96, 11, NULL),
(97, 11, NULL),
(98, 3, NULL),
(99, 3, NULL),
(100, 4, NULL),
(101, 4, NULL),
(102, 5, 11),
(103, 5, 11),
(104, 9, NULL),
(105, 9, NULL),
(106, 7, NULL),
(107, 7, NULL),
(108, 1, NULL),
(109, 8, NULL),
(110, 8, NULL),
(111, 9, 13),
(112, 9, 13),
(113, 1, NULL),
(114, 5, NULL),
(115, 1, NULL),
(116, 3, NULL),
(117, 3, NULL),
(118, 3, NULL),
(119, 3, NULL),
(120, 3, NULL),
(121, 3, 11),
(122, 11, NULL),
(123, 12, 10),
(124, 6, 11),
(125, 4, NULL),
(126, 2, NULL),
(127, 12, NULL),
(128, 1, NULL),
(129, 3, NULL),
(130, 3, 10),
(131, 3, 6),
(132, 1, NULL),
(133, 1, NULL),
(134, 3, NULL),
(135, 4, NULL),
(136, 2, NULL),
(137, 1, NULL),
(138, 13, 3),
(139, 13, 3),
(140, 13, 3),
(141, 13, 3),
(142, 13, 10),
(143, 1, NULL),
(144, 6, 10),
(145, 4, 10),
(146, 2, 10),
(147, 15, NULL),
(148, 15, NULL),
(149, 15, 10),
(150, 11, NULL),
(151, 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`type_id`, `type_name`) VALUES
(1, 'Normal'),
(2, 'Fire'),
(3, 'Water'),
(4, 'Electric'),
(5, 'Grass'),
(6, 'Ice'),
(7, 'Fightning'),
(8, 'Poison'),
(9, 'Ground'),
(10, 'Flying'),
(11, 'Psychic'),
(12, 'Bug'),
(13, 'Rock'),
(14, 'Ghost'),
(15, 'Dragon');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pokemon_types`
--
ALTER TABLE `pokemon_types`
  ADD PRIMARY KEY (`pok_id`),
  ADD KEY `type_1_id` (`type_1_id`),
  ADD KEY `type_2_id` (`type_2_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pokemon_types`
--
ALTER TABLE `pokemon_types`
  ADD CONSTRAINT `pokemon_types_ibfk_1` FOREIGN KEY (`pok_id`) REFERENCES `pokemon` (`id`),
  ADD CONSTRAINT `pokemon_types_ibfk_2` FOREIGN KEY (`type_1_id`) REFERENCES `types` (`type_id`),
  ADD CONSTRAINT `pokemon_types_ibfk_3` FOREIGN KEY (`type_2_id`) REFERENCES `types` (`type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
