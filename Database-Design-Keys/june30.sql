
---
-- EASY --
---


-- Extract all pokémon data, first 10 rows
SELECT * FROM `pokemon_db`.`pokemon`
LIMIT 10;

-- Extract all pokemon names only, limit 20
SELECT `pok_name` FROM `pokemon_db`.`pokemon`
LIMIT 20;


--- 
-- MEDIUM ---
---


-- Extract all pokemon names that weigh more than 500 grams, and sort by descending order
SELECT `pok_name`
FROM `pokemon_db`.`pokemon`
WHERE `pok_weight` > 500
ORDER BY `pok_weight` DESC;

-- Extract top 10 heaviest pokemon names that weig more than 500 decigrams and are shorter than 10 decimeters, and sort by descending order
SELECT `pok_name`
FROM `pokemon_db`.`pokemon`
WHERE `pok_weight` > 500 AND `pok_height` < 15
ORDER BY `pok_weight` DESC;


---
-- HARD --
---


-- Extract all pokemon names and types that are water type only
SELECT `pok_name`, `type1_name`, `type2_name`
FROM `pokemon_db`.`pokemon`, `pokemon_db`.`types`
WHERE `pokemon`.`pok_id` = `types`.`pok_id` AND `type1_name` = 'Water' AND `type2_name` IS NULL;

-- Extract all pokemon names and types that are only a single type, and order by heaviest to lightest
SELECT `pok_name`, `type1_name`, `type2_name`
FROM `pokemon_db`.`pokemon`, `pokemon_db`.`types`
WHERE `pokemon`.`pok_id` = `types`.`pok_id` AND (`type1_name` IS NOT NULL AND `type2_name` IS NULL)
ORDER BY `pok_weight` DESC;