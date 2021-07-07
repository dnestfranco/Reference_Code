-- EASY

-- Extract all attributes for pokemon heavier than 500 dg, but shorter than 20 dc
SELECT *
FROM `pokemon`
WHERE `weight` < 500 AND `height` > 20;


-- Extract all pokemon names and order them from A-Z
SELECT `name`
FROM `pokemon`
WHERE 1
ORDER BY `name` ASC;


-- MEDIUM

-- Extract all pokemon names that start and end with the letter 'e'
SELECT `name`
FROM `pokemon`
WHERE `name` LIKE 'e%e';

-- Extract all pokemon names that have 5 characters in their name
SELECT `name`
FROM `pokemon`
WHERE `name` LIKE '_____';



-- HARD

-- EXTRACT all pokemon names that start and end with the letter 'e', 'n', or 'a'
SELECT `name`
FROM `pokemon`
WHERE `name` LIKE 'e%e' OR `name` LIKE 'n%n' OR `name` LIKE 'a%a'

-- EXTRACT all attributes for pokemon who's first type is Poison only
SELECT *
FROM `pokemon`, `types`
WHERE `pokemon`.`id` = `types`.`id` AND `type1_name` = 'Poison' AND `type2_name` IS NULL;