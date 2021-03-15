-- Creating the database
CREATE DATABASE `television`;

-- creating the relation movies with all the determined attributes, in the table database
CREATE TABLE `television`.`movies` ( 
    `id` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(50) NOT NULL, 
    `length` TIME NOT NULL , 
    `rating` TINYINT NOT NULL , 
    `genre` VARCHAR(20) NOT NULL , 
    `year` YEAR NOT NULL,
    PRIMARY KEY(`id`)) ENGINE = InnoDB;

-- Adding data into our relation
INSERT INTO `movies` (`id`, `title`, `length`, `rating`, `genre`, `year`) VALUES 
    (NULL, 'Rugrats in Paris: The Movie', '01:18:00', '3', 'Animated', '2000'),
    (NULL, 'I Am Legend', '01:41:00', '4', 'Thriller', '2007');
