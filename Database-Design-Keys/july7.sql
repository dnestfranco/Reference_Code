
-- HARD
-- How many pokemon have ground as their second type?

SELECT `name` 
FROM `pokemon`, `types` 
WHERE `pokemon`.`id` = `types`.`id` AND `type2_name` = 'Ground';