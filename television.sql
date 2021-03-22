-- Creating the television database
CREATE DATABASE `television`;

-- creating the table movies with all the determined attributes, inside the table database
CREATE TABLE `television`.`movies` ( 
    `id` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(50) NOT NULL, 
    `length` TIME , 
    `rating` TINYINT, 
    `genre` VARCHAR(20), 
    `year` YEAR,
    PRIMARY KEY(`id`)) ENGINE = InnoDB;

-- Adding movie data into our table
INSERT INTO `television`.`movies` (`id`, `title`, `length`, `rating`, `genre`, `year`) 
    VALUES 
        (NULL, 'Rugrats in Paris: The Movie', '01:18:00', '7', 'Animated', '2000'),
        (NULL, 'I Am Legend', '01:41:00', '8', 'Thriller', '2007'),
        (NULL, 'Heat', '02:50:00', '9', 'Thriller', '1983'),
        (NULL, 'Tombstone', '02:10:00', '10', 'Western', '1992'),
        (NULL, 'Scarface', '02:50:00', '8', 'Thriller', '1983'),
        (NULL, 'Wreck-It Ralph', '01:41:00', '8', 'Animated', '2012'),
        (NULL, 'Monster''s Inc', '01:32:00', '10', 'Animated', '2001'),
        (NULL, 'Spirited Away', '2:05:00', '10', 'Animated', '2001'),
        (NULL, 'Napolean Dynamite', '01:35:00', '5', 'Comedy', '2004'),
        (NULL, 'Jackass', '01:25:00', '7', 'Comedy', '2004'),
        (NULL, 'Back to the Future Part 2', '01:48:00', NULL, 'Sci-Fi', '1989'),
        (NULL, 'Tron: Legacy', '02:05:00', NULL, 'Sci-Fi', '2010');
