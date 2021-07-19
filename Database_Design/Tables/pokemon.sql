-- create a type table to store our different pokémon types
-- we also add the foreign key constraint to the pokemon table, for data integrity
CREATE TABLE `types` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type1_name` VARCHAR(20) NOT NULL,
  `type2_name` VARCHAR(20),
  PRIMARY KEY(`id`),
  CONSTRAINT fk_pokemon_types
  FOREIGN KEY (`id`) REFERENCES `pokemon`(`id`)
);

-- relating the pokemon with their respective types
INSERT INTO `types` (`id`, `type1_name`, `type2_name`) VALUES 
    (1, 'Grass', 'Poison'),(2, 'Grass', 'Poison'), (3, 'Grass', 'Poison'), (4, 'Fire', NULL),(5, 'Fire', NULL),(6, 'Fire', 'Flying'),
    (7,'Water', NULL), (8, 'Water', NULL), (9, 'Water', NULL), (10, 'Bug', NULL), (11, 'Bug', NULL),
    (12, 'Bug', 'Flying'), (13, 'Bug', 'Poison'), (14, 'Bug', 'Poison'), (15, 'Bug', 'Poison'), (16, 'Normal', 'Flying'), (17, 'Normal', 'Flying'),
    (18, 'Normal', 'Flying'), (19, 'Normal', NULL), (20, 'Normal', NULL), (21, 'Normal', 'Flying'), (22, 'Normal', 'Flying'),
    (23, 'Poison', NULL), (24, 'Poison', NULL), (25, 'Electric', NULL), (26, 'Electric', NULL), (27, 'Ground', NULL),
    (28, 'Ground', NULL), (29, 'Poison', NULL), (30, 'Poison', NULL), (31, 'Poison', 'Ground'), (32, 'Poison', NULL),
    (33, 'Poison', NULL), (34, 'Poison', 'Ground'), (35, 'Normal', NULL), (36, 'Normal', NULL), (37, 'Fire', NULL),
    (38, 'Fire', NULL), (39, 'Normal', NULL), (40, 'Normal', NULL), (41, 'Poison', 'Flying'), (42, 'Poison', 'Flying'),
    (43, 'Grass', 'Poison'), (44, 'Grass', 'Poison'), (45, 'Grass', 'Poison'), (46, 'Bug', 'Grass'), (47, 'Bug', 'Grass'), (48, 'Bug', 'Poison'),
    (49, 'Bug', 'Poison'), (50, 'Ground', NULL), (51, 'Ground', NULL), (52, 'Normal', NULL), (53, 'Normal', NULL),
    (54, 'Water', NULL), (55, 'Water', NULL), (56, 'Fightning', NULL), (57, 'Fightning', NULL), (58, 'Fire', NULL),
    (59, 'Fire', NULL), (60, 'Water', NULL), (61, 'Water', NULL), (62, 'Water', 'Fightning'), (63, 'Psychic', NULL),
    (64, 'Psychic', NULL), (65, 'Psychic', NULL), (66, 'Fightning', NULL), (67, 'Fightning', NULL), (68, 'Fightning', NULL),
    (69, 'Grass', 'Poison'), (70, 'Grass', 'Poison'), (71, 'Grass', 'Poison'), (72, 'Water', 'Poison'), (73, 'Water', 'Poison'), (74, 'Rock', 'Ground'),
    (75, 'Rock', 'Ground'), (76, 'Rock', 'Ground'), (77, 'Fire', NULL), (78, 'Fire', NULL), (79, 'Water', 'Psychic'),
    (80, 'Water', 'Psychic'), (81, 'Electric', NULL), (82, 'Electric', NULL), (83, 'Normal', 'Flying'), (84, 'Normal', 'Flying'),
    (85, 'Normal', 'Flying'), (86, 'Water', NULL), (87, 'Water', 'Ice'), (88, 'Poison', NULL), (89, 'Poison', NULL),
    (90, 'Water', NULL),(91, 'Water', 'Ice'), (92, 'Ghost', 'Poison'), (93, 'Ghost', 'Poison'), (94, 'Ghost', 'Poison'),
    (95, 'Rock', 'Ground'), (96, 'Psychic', NULL), (97, 'Psychic', NULL), (98, 'Water', NULL), (99, 'Water', NULL),
    (100, 'Electric', NULL), (101, 'Electric', NULL), (102, 'Grass', 'Psychic'), (103, 'Grass', 'Psychic'), (104, 'Ground', NULL),
    (105, 'Ground', NULL), (106, 'Fightning', NULL), (107, 'Fightning', NULL), (108, 'Normal', NULL), (109, 'Poison', NULL),
    (110, 'Poison', NULL), (111, 'Ground', 'Rock'), (112, 'Ground', 'Rock'), (113, 'Normal', NULL), (114, 'Grass', NULL),
    (115, 'Normal', NULL), (116, 'Water', NULL), (117, 'Water', NULL), (118, 'Water', NULL), (119, 'Water', NULL),
    (120, 'Water', NULL), (121, 'Water', 'Psychic'), (122, 'Psychic', NULL), (123, 'Bug', 'Flying'), (124, 'Ice', 'Psychic'),
    (125, 'Electric', NULL), (126, 'Fire', NULL), (127, 'Bug', NULL), (128, 'Normal', NULL), (129, 'Water', NULL),
    (130, 'Water', 'Flying'), (131, 'Water', 'Ice'), (132, 'Normal', NULL), (133, 'Normal', NULL), (134, 'Water', NULL),
    (135, 'Electric', NULL), (136, 'Fire', NULL), (137, 'Normal', NULL), (138, 'Rock', 'Water'), (139, 'Rock', 'Water'),
    (140, 'Rock', 'Water'), (141, 'Rock', 'Water'), (142, 'Rock', 'Flying'), (143, 'Normal', NULL), (144, 'Ice', 'Flying'),
    (145, 'Electric', 'Flying'), (146, 'Fire', 'Flying'), (147, 'Dragon', NULL), (148, 'Dragon', NULL), (149, 'Dragon', 'Flying'),
    (150, 'Psychic', NULL), (151, 'Psychic', NULL);
