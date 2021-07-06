

/*

SELECT TRANSFORM WHERE

SELECT [attributes]
FROM [relations]
WHERE [tuples]
[other arguments]

-- working with one table

*/

-- select all attributes
SELECT * -- asterik represents all attributes for all relations
FROM `pokemon` -- `relation` references relations by their name
WHERE 1; -- if WHERE is 1, then it defaults to TRUE, which returns all tuples ; you can also just leave it blank


-- extract `name` attribute only
SELECT `name`
FROM `pokemon`
WHERE 1; -- semicolon represents the end of a query in some dbms / MySQL does not require them


-- extract `id` attribute only
SELECT `id`
FROM `pokemon`
LIMIT 10; -- it's great practice to use the limit statement when handling large data


-- extract `weight` attribute only
SELECT `weight`
FROM `pokemon`;


-- extract `id`, `name`, and `weight` attributes, in that order
SELECT `id`, `name`, `weight`
FROM `pokemon`;


-- extracting pokemon names and weights that are 100
SELECT `name`, `weight`
FROM `pokemon`
WHERE `weight` = 100;


-- extracting pokemon names and weights that are less than 100
SELECT `name`, `weight`
FROM `pokemon`
WHERE `weight` < 100;


-- extracting pokemon names and weights that are less than 100 or greater than 200
SELECT `name`, `weight`
FROM `pokemon`
WHERE `weight` < 100 OR `weight` > 200; -- using the OR operator


-- extracting pokemon names and weights, and ordering them by weight
SELECT `name`, `weight`
FROM `pokemon`
ORDER BY `weight` DESC; -- start with the ORDER BY operator, and then specify if ascending or descending


-- extracting pokemon names that start with the character 'c'
SELECT `name`, `weight`
FROM `pokemon`
WHERE `name` LIKE 'c%'; -- use the LIKE operator to compare tuples in the relation to the string described


-- we can go an extra step and say, extract names that have a 'c' anyhwere in their name
SELECT `name`, `weight`
FROM `pokemon`
WHERE `name` LIKE '%c%'; -- the '%' wildcard is used as abstract placeholder for characters
-- learn more about LIKE and % at https://www.w3schools.com/SQL/sql_like.asp


/*

SELECT TRANSFORM WHERE

SELECT [attributes]
FROM [relations]
WHERE [tuples]
[other arguments]

-- working with two tables

*/

-- joining two relations creates a cross product, generating a massive relation that needs to be sorted out
-- the resulting relation from the cross product grows exponentially with each joined relation

SELECT `pokemon`.`id`, `types`.`id` -- the name of the relation needs to be specified if the attributes have the same name, to avoid ambiguity
FROM `pokemon`, `types`
WHERE 1;


-- we can sort out the relevant data with the WHERE clause
SELECT `pokemon`.`id`, `types`.`id`
FROM `pokemon`, `types`
WHERE `pokemon`.`id` = `types`.`id`; -- we need to filter out the relevant tuples from the giant cross product relation


-- using the techniques above, we can now join two tables to get the relevant data we care about
-- extract all pokemon with their first types
SELECT `name`,`type1_name`
FROM `pokemon`, `types`
WHERE `pokemon`.`id` = `types`.`id`;


-- extract all pokemon that don't have a second type
SELECT `name`, `type2_name`
FROM `pokemon`, `types`
WHERE `pokemon`.`id` = `types`.`id` AND `type2_name` IS NULL; -- using the IS operator and NULL value


-- extract all pokemon name and both of their respective types
SELECT `name`,`type1_name`, `type2_name`
FROM `pokemon`, `types`
WHERE `pokemon`.`id` = `types`.`id`;
