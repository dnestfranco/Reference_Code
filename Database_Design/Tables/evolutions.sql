CREATE TABLE `evolutions` (
    `id_to` INT NOT NULL, -- evolve to pokemon id
    `id_from` INT NOT NULL, -- evolved from pokemon id
    `level` INT NOT NULL, -- evolution level
    PRIMARY KEY (`id_to`),
    CONSTRAINT fk_pok_id
    FOREIGN KEY (`id_to`) REFERENCES `pokemon`(`id`),
    CONSTRAINT fk_pok_evol
    FOREIGN KEY (`id_from`) REFERENCES `pokemon`(`id`)
);


-- lvl 0 evoluations are pokemon that evolved outside of the leveling system
INSERT INTO `evolutions` (`id_to`, `id_from`, `level`) VALUES 
    (2, 1, 16), (3, 2, 32), (5, 4, 16), (6, 5, 36), (8, 7, 16),
    (9, 8, 36), (11, 10, 7), (12, 11, 10), (14, 13, 7), (15, 14, 10),
    (17, 16, 18), (18, 17, 36), (20, 19, 20), (22, 21, 20), (24, 23, 22),
    (26, 25, 0), (28, 27, 22), (30, 29, 16), (31, 30, 0), (33, 32, 16),
    (34, 33, 0), (36, 35, 0), (38, 37, 0), (40, 39, 0), (42, 41, 22),
    (44, 43, 21), (45, 44, 0), (47, 46, 24), (49, 48, 31), (51, 50, 26),
    (53, 52, 28), (55, 54, 33), (57, 56, 28), (59, 58, 0), (61, 60, 25),
    (62, 61, 0), (64, 63, 16), (65, 64, 0), (67, 66, 28), (68, 67, 0),
    (70, 69, 21), (71, 70, 0), (73, 72, 30), (75, 74, 25), (76, 75, 0),
    (78, 77, 40), (80, 79, 37), (82, 81, 30), (85, 84, 31), (87, 86, 34),
    (89, 88, 38), (91, 90, 0), (93, 92, 25), (94, 93, 0), (97, 96, 26),
    (99, 98, 28), (101, 100, 30), (103, 102, 0), (105, 104, 28), (110, 109, 35),
    (112, 111, 42), (117, 116, 32), (119, 118, 33), (121, 120, 0), (130, 129, 20),
    (134, 133, 0), (135, 133, 0), (136, 133, 0), (139, 138, 40), (141, 140, 40),
    (148, 147, 30), (149, 148, 55);
