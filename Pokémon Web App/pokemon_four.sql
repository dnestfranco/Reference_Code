-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 02, 2021 at 07:15 PM
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
-- Database: `pokemon_four`
--

-- --------------------------------------------------------

--
-- Table structure for table `evolutions`
--

CREATE TABLE `evolutions` (
  `id_to` int(11) NOT NULL,
  `id_from` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `base_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `evolutions`
--

INSERT INTO `evolutions` (`id_to`, `id_from`, `level`, `base_id`) VALUES
(2, 1, 16, 1),
(3, 2, 32, 1),
(5, 4, 16, 4),
(6, 5, 36, 4),
(8, 7, 16, 7),
(9, 8, 36, 7),
(11, 10, 7, 10),
(12, 11, 10, 10),
(14, 13, 7, 13),
(15, 14, 10, 13),
(17, 16, 18, 16),
(18, 17, 36, 16),
(20, 19, 20, 19),
(22, 21, 20, 21),
(24, 23, 22, 23),
(26, 25, 0, 25),
(28, 27, 22, 27),
(30, 29, 16, 29),
(31, 30, 0, 29),
(33, 32, 16, 32),
(34, 33, 0, 32),
(36, 35, 0, 35),
(38, 37, 0, 37),
(40, 39, 0, 39),
(42, 41, 22, 41),
(44, 43, 21, 43),
(45, 44, 0, 43),
(47, 46, 24, 46),
(49, 48, 31, 48),
(51, 50, 26, 50),
(53, 52, 28, 52),
(55, 54, 33, 54),
(57, 56, 28, 56),
(59, 58, 0, 58),
(61, 60, 25, 60),
(62, 61, 0, 60),
(64, 63, 16, 63),
(65, 64, 0, 63),
(67, 66, 28, 66),
(68, 67, 0, 66),
(70, 69, 21, 69),
(71, 70, 0, 69),
(73, 72, 30, 72),
(75, 74, 25, 74),
(76, 75, 0, 74),
(78, 77, 40, 77),
(80, 79, 37, 79),
(82, 81, 30, 81),
(85, 84, 31, 84),
(87, 86, 34, 86),
(89, 88, 38, 88),
(91, 90, 0, 90),
(93, 92, 25, 92),
(94, 93, 0, 92),
(97, 96, 26, 96),
(99, 98, 28, 98),
(101, 100, 30, 100),
(103, 102, 0, 102),
(105, 104, 28, 104),
(110, 109, 35, 109),
(112, 111, 42, 111),
(117, 116, 32, 116),
(119, 118, 33, 118),
(121, 120, 0, 120),
(130, 129, 20, 129),
(134, 133, 0, 133),
(135, 133, 0, 133),
(136, 133, 0, 133),
(139, 138, 40, 138),
(141, 140, 40, 140),
(148, 147, 30, 147),
(149, 148, 55, 147);

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL,
  `name` varchar(79) NOT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `bstats_tot` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`id`, `name`, `height`, `weight`, `bstats_tot`) VALUES
(1, 'bulbasaur', 0.7, 6.9, 318),
(2, 'ivysaur', 0.1, 13, 405),
(3, 'venusaur', 2, 100, 525),
(4, 'charmander', 0.6, 8.5, 309),
(5, 'charmeleon', 1.1, 19, 405),
(6, 'charizard', 1.7, 90.5, 534),
(7, 'squirtle', 0.5, 9, 314),
(8, 'wartortle', 1, 22.5, 405),
(9, 'blastoise', 1.6, 85.5, 530),
(10, 'caterpie', 0.3, 2.9, 195),
(11, 'metapod', 0.7, 9.9, 205),
(12, 'butterfree', 1.1, 32, 395),
(13, 'weedle', 0.3, 3.2, 195),
(14, 'kakuna', 0.6, 10, 205),
(15, 'beedrill', 1, 29.5, 395),
(16, 'pidgey', 0.3, 1.8, 251),
(17, 'pidgeotto', 1.1, 30, 349),
(18, 'pidgeot', 1.5, 39.5, 479),
(19, 'rattata', 0.3, 3.5, 253),
(20, 'raticate', 0.7, 18.5, 413),
(21, 'spearow', 0.3, 2, 262),
(22, 'fearow', 1.2, 38, 442),
(23, 'ekans', 2, 6.9, 288),
(24, 'arbok', 3.5, 65, 448),
(25, 'pikachu', 0.4, 6, 320),
(26, 'raichu', 0.8, 30, 485),
(27, 'sandshrew', 0.6, 12, 300),
(28, 'sandslash', 1, 29.5, 450),
(29, 'nidoran-f', 0.4, 7, 275),
(30, 'nidorina', 0.8, 20, 365),
(31, 'nidoqueen', 1.3, 60, 505),
(32, 'nidoran-m', 0.5, 9, 273),
(33, 'nidorino', 0.9, 19.5, 365),
(34, 'nidoking', 1.4, 62, 505),
(35, 'clefairy', 0.6, 7.5, 323),
(36, 'clefable', 1.3, 40, 483),
(37, 'vulpix', 0.6, 9.9, 299),
(38, 'ninetales', 1.1, 19.9, 505),
(39, 'jigglypuff', 0.5, 5.5, 270),
(40, 'wigglytuff', 1, 12, 435),
(41, 'zubat', 0.8, 7.5, 245),
(42, 'golbat', 1.6, 55, 455),
(43, 'oddish', 0.5, 5.4, 320),
(44, 'gloom', 0.8, 8.6, 395),
(45, 'vileplume', 1.2, 18.6, 490),
(46, 'paras', 0.3, 5.4, 285),
(47, 'parasect', 1, 29.5, 405),
(48, 'venonat', 1, 30, 305),
(49, 'venomoth', 1.5, 12.5, 450),
(50, 'diglett', 0.2, 0.8, 265),
(51, 'dugtrio', 0.7, 33.3, 425),
(52, 'meowth', 0.4, 4.2, 290),
(53, 'persian', 1, 32, 440),
(54, 'psyduck', 0.8, 19.6, 320),
(55, 'golduck', 1.7, 76.6, 500),
(56, 'mankey', 0.5, 28, 305),
(57, 'primeape', 1, 32, 455),
(58, 'growlithe', 0.7, 19, 350),
(59, 'arcanine', 1.9, 155, 555),
(60, 'poliwag', 0.6, 12.4, 300),
(61, 'poliwhirl', 1, 20, 385),
(62, 'poliwrath', 1.3, 54, 510),
(63, 'abra', 0.9, 19.5, 310),
(64, 'kadabra', 1.3, 56.5, 400),
(65, 'alakazam', 1.5, 48, 500),
(66, 'machop', 0.8, 19.5, 305),
(67, 'machoke', 1.5, 70.5, 405),
(68, 'machamp', 1.6, 130, 505),
(69, 'bellsprout', 0.7, 4, 300),
(70, 'weepinbell', 1, 6.4, 390),
(71, 'victreebel', 1.7, 15.5, 490),
(72, 'tentacool', 0.9, 45.5, 335),
(73, 'tentacruel', 1.6, 55, 515),
(74, 'geodude', 0.4, 20, 300),
(75, 'graveler', 1, 105, 390),
(76, 'golem', 1.4, 300, 495),
(77, 'ponyta', 1, 30, 410),
(78, 'rapidash', 1.7, 95, 500),
(79, 'slowpoke', 1.2, 36, 315),
(80, 'slowbro', 1.6, 78.5, 490),
(81, 'magnemite', 0.3, 6, 325),
(82, 'magneton', 1, 60, 465),
(83, 'farfetchd', 0.8, 15, 377),
(84, 'doduo', 1.4, 39.2, 310),
(85, 'dodrio', 1.8, 85.2, 470),
(86, 'seel', 1.1, 90, 325),
(87, 'dewgong', 1.7, 120, 475),
(88, 'grimer', 0.9, 30, 325),
(89, 'muk', 1.2, 30, 500),
(90, 'shellder', 0.3, 4, 305),
(91, 'cloyster', 1.5, 132.5, 525),
(92, 'gastly', 1.3, 0.1, 310),
(93, 'haunter', 1.6, 0.1, 405),
(94, 'gengar', 1.5, 40.5, 500),
(95, 'onix', 8.8, 210, 385),
(96, 'drowzee', 1, 32.4, 328),
(97, 'hypno', 1.6, 75.6, 483),
(98, 'krabby', 0.4, 6.5, 325),
(99, 'kingler', 1.3, 60, 475),
(100, 'voltorb', 0.5, 10.4, 330),
(101, 'electrode', 1.2, 66.6, 490),
(102, 'exeggcute', 0.4, 2.5, 325),
(103, 'exeggutor', 2, 120, 530),
(104, 'cubone', 0.4, 6.5, 320),
(105, 'marowak', 1, 45, 425),
(106, 'hitmonlee', 1.5, 49.8, 455),
(107, 'hitmonchan', 1.4, 50.2, 455),
(108, 'lickitung', 1.2, 65.5, 385),
(109, 'koffing', 0.6, 1, 340),
(110, 'weezing', 1.2, 9.5, 490),
(111, 'rhyhorn', 1, 115, 345),
(112, 'rhydon', 1.9, 120, 485),
(113, 'chansey', 1.1, 34.6, 450),
(114, 'tangela', 1, 35, 435),
(115, 'kangaskhan', 2.2, 80, 490),
(116, 'horsea', 0.4, 8, 295),
(117, 'seadra', 1.2, 25, 440),
(118, 'goldeen', 0.6, 15, 320),
(119, 'seaking', 1.3, 39, 450),
(120, 'staryu', 0.8, 34.5, 340),
(121, 'starmie', 1.1, 80, 520),
(122, 'mr-mime', 1.3, 54.5, 460),
(123, 'scyther', 1.5, 56, 500),
(124, 'jynx', 1.4, 40.6, 455),
(125, 'electabuzz', 1.1, 30, 490),
(126, 'magmar', 1.3, 44.5, 495),
(127, 'pinsir', 1.5, 55, 500),
(128, 'tauros', 1.4, 88.4, 490),
(129, 'magikarp', 0.9, 10, 200),
(130, 'gyarados', 6.5, 235, 540),
(131, 'lapras', 2.5, 220, 535),
(132, 'ditto', 0.3, 4, 288),
(133, 'eevee', 0.3, 6.5, 325),
(134, 'vaporeon', 1, 29, 525),
(135, 'jolteon', 0.8, 24.5, 525),
(136, 'flareon', 0.9, 25, 525),
(137, 'porygon', 0.8, 36.5, 355),
(138, 'omanyte', 0.4, 7.5, 495),
(139, 'omastar', 1, 35, 495),
(140, 'kabuto', 0.5, 11.5, 355),
(141, 'kabutops', 1.3, 40.5, 495),
(142, 'aerodactyl', 1.8, 59, 515),
(143, 'snorlax', 2.1, 460, 540),
(144, 'articuno', 1.7, 55.4, 580),
(145, 'zapdos', 1.6, 52.6, 580),
(146, 'moltres', 2, 60, 580),
(147, 'dratini', 1.8, 3.3, 300),
(148, 'dragonair', 4, 16.5, 420),
(149, 'dragonite', 2.2, 210, 600),
(150, 'mewtwo', 2, 122, 680),
(151, 'mew', 0.4, 4, 600);

-- --------------------------------------------------------

--
-- Table structure for table `pokemon_types`
--

CREATE TABLE `pokemon_types` (
  `pokemon_id` int(11) NOT NULL,
  `type1_id` int(11) NOT NULL,
  `type2_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pokemon_types`
--

INSERT INTO `pokemon_types` (`pokemon_id`, `type1_id`, `type2_id`) VALUES
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
-- Indexes for table `evolutions`
--
ALTER TABLE `evolutions`
  ADD PRIMARY KEY (`id_to`),
  ADD KEY `fk_pok_evol` (`id_from`),
  ADD KEY `fk_pok_base` (`base_id`);

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pokemon_types`
--
ALTER TABLE `pokemon_types`
  ADD PRIMARY KEY (`pokemon_id`),
  ADD KEY `type1_id` (`type1_id`),
  ADD KEY `type2_id` (`type2_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `evolutions`
--
ALTER TABLE `evolutions`
  ADD CONSTRAINT `fk_pok_base` FOREIGN KEY (`base_id`) REFERENCES `pokemon` (`id`),
  ADD CONSTRAINT `fk_pok_evol` FOREIGN KEY (`id_from`) REFERENCES `pokemon` (`id`),
  ADD CONSTRAINT `fk_pok_id` FOREIGN KEY (`id_to`) REFERENCES `pokemon` (`id`);

--
-- Constraints for table `pokemon_types`
--
ALTER TABLE `pokemon_types`
  ADD CONSTRAINT `pokemon_types_ibfk_1` FOREIGN KEY (`pokemon_id`) REFERENCES `pokemon` (`id`),
  ADD CONSTRAINT `pokemon_types_ibfk_2` FOREIGN KEY (`type1_id`) REFERENCES `types` (`type_id`),
  ADD CONSTRAINT `pokemon_types_ibfk_3` FOREIGN KEY (`type2_id`) REFERENCES `types` (`type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
