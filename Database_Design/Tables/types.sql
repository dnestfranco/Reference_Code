-- create a type table to store our different table types
CREATE TABLE `types` (
  `type_id` INT NOT NULL AUTO_INCREMENT,
  `type_name` VARCHAR(20) NOT NULL,
  PRIMARY KEY(`type_id`)
);

-- and then we add the types into it; note: only gen 1 types
INSERT INTO `types` (`type_name`) VALUES
  ('Normal'), ('Fire'), ('Water'), ('Electric'), ('Grass'), ('Ice'), ('Fightning'),
  ('Poison'), ('Ground'), ('Flying'), ('Psychic'), ('Bug'), ('Rock'), ('Ghost'), ('Dragon');

-- need to create a table to add a types relation
-- we need to add a foreign key constraint; why? this ensures data integrity across the relations
CREATE TABLE `pokemon_types` (
  `pokemon_id` INT NOT NULL,
  `type1_id` INT NOT NULL,
  `type2_id` INT,
  PRIMARY KEY(`pokemon_id`),
  FOREIGN KEY (`pokemon_id`) REFERENCES `pokemon`(`id`),
  FOREIGN KEY (`type1_id`) REFERENCES `types`(`type_id`),
  FOREIGN KEY (`type2_id`) REFERENCES `types`(`type_id`)
);

-- now, we can add type data
INSERT INTO `pokemon_types` (`pokemon_id`, `type1_id`, `type2_id`) VALUES 
  (1, 5, 8),(2, 6, 8), (3,6, 8), (4, 2, NULL),(5, 2, NULL),(6, 2, 10),
  (7,3, NULL), (8, 3, NULL), (9, 3, NULL), (10, 12, NULL), (11, 12, NULL),
  (12, 12, 10), (13, 12, 8), (14, 12, 8), (15, 12, 8), (16, 1, 10), (17, 1, 10),
  (18, 1, 10), (19, 1, NULL), (20, 1, NULL), (21, 1, 10), (22, 1, 10),
  (23, 8, NULL), (24, 8, NULL), (25, 4, NULL), (26, 4, NULL), (27, 9, NULL),
  (28, 9, NULL), (29, 8, NULL), (30, 8, NULL), (31, 8, 9), (32, 8, NULL),
  (33, 8, NULL), (34, 8, 9), (35, 1, NULL), (36, 1, NULL), (37, 2, NULL),
  (38, 2, NULL), (39, 1, NULL), (40, 1, NULL), (41, 8, 10), (42, 8, 10),
  (43, 5, 8), (44, 5, 8), (45, 5, 8), (46, 12, 5), (47, 12, 5), (48, 12, 8),
  (49, 12, 8), (50, 9, NULL), (51, 9, NULL), (52, 1, NULL), (53, 1, NULL),
  (54, 3, NULL), (55, 3, NULL), (56, 7, NULL), (57, 7, NULL), (58, 2, NULL),
  (59, 2, NULL), (60, 3, NULL), (61, 3, NULL), (62, 3, 7), (63, 11, NULL),
  (64, 11, NULL), (65, 11, NULL), (66, 7, NULL), (67, 7, NULL), (68, 7, NULL),
  (69, 5, 8), (70, 5, 8), (71, 5, 8), (72, 3, 8), (73, 3, 8), (74, 13, 9),
  (75, 13, 9), (76, 13, 9), (77, 2, NULL), (78, 2, NULL), (79, 3, 11),
  (80, 3, 11), (81, 4, NULL), (82, 4, NULL), (83, 1, 10), (84, 1, 10),
  (85, 1, 10), (86, 3, NULL), (87, 3, 6), (88, 8, NULL), (89, 8, NULL),
  (90, 3, NULL),(91, 3, 6), (92, 14, 8), (93, 14, 8), (94, 14, 8),
  (95, 13, 9), (96, 11, NULL), (97, 11, NULL), (98, 3, NULL), (99, 3, NULL),
  (100, 4, NULL), (101, 4, NULL), (102, 5, 11), (103, 5, 11), (104, 9, NULL),
  (105, 9, NULL), (106, 7, NULL), (107, 7, NULL), (108, 1, NULL), (109, 8, NULL),
  (110, 8, NULL), (111, 9, 13), (112, 9, 13), (113, 1, NULL), (114, 5, NULL),
  (115, 1, NULL), (116, 3, NULL), (117, 3, NULL), (118, 3, NULL), (119, 3, NULL),
  (120, 3, NULL), (121, 3, 11), (122, 11, NULL), (123, 12, 10), (124, 6, 11),
  (125, 4, NULL), (126, 2, NULL), (127, 12, NULL), (128, 1, NULL), (129, 3, NULL),
  (130, 3, 10), (131, 3, 6), (132, 1, NULL), (133, 1, NULL), (134, 3, NULL),
  (135, 4, NULL), (136, 2, NULL), (137, 1, NULL), (138, 13, 3), (139, 13, 3),
  (140, 13, 3), (141, 13, 3), (142, 13, 10), (143, 1, NULL), (144, 6, 10),
  (145, 4, 10), (146, 2, 10), (147, 15, NULL), (148, 15, NULL), (149, 15, 10),
  (150, 11, NULL), (151, 11, NULL);
