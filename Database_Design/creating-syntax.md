## Creating a Database and Populating it with Relations
This is a short and sweet cheatsheet to get you started on creating databases and tables, and insert all your data into them. For a more thorough review, check out the [MySQL Cheatsheet](https://websitesetup.org/wp-content/uploads/2020/08/SQL-Cheat-Sheet-websitesetup.pdf).

Note that the syntax used here will be more _formal_, so we will use backquotes when referencing the name of a table or attribute, and proper capitizaliation and indentation to make the code more presentable and easy to read.

For examples, we will be referencing the pokemon database we are using in this class.
### Creating a Database

You can create a database using the `CREATE DATABASE` command. For example, let's say we want to create a database for all our pokemon tables:

```
CREATE DATABASE `pokemon_three`;
```

This is a very short and sweet command. Note that if you try and create another database with the same name, you will get an error. So running this command twice consecutively will result in an error.

### Creating a Table

Now that we have a database, we want to populate it with our first table. Let's say this will be a table that captures the basic information of all pokemon, and will include the columns:
- ID
- Name
- Height
- Weight
- Base Stats Total

Then we do:

```
CREATE TABLE `pokemon` (
    `id` INT(11) NOT NULL,
    `name` VARCHAR(79) NOT NULL,
    `height` FLOAT(11) DEFAULT NULL
    `weight` FLOAT(11) DEFAULT NULL, 
    `bstats_tot` INT(11) DEFAULT NULL,
)
```

Note that if we already know the domain and referential constraints we want to add to our table, then it's best to add them in the beginning, like this:

```
CREATE TABLE `pokemon` (
    `id` INT(11) NOT NULL,
    `name` VARCHAR(79) NOT NULL,
    `height` FLOAT(11) DEFAULT NULL
    `weight` FLOAT(11) DEFAULT NULL, 
    `bstats_tot` INT(11) DEFAULT NULL,
    PRIMARY KEY (`id`)
)
```

Otherwise, you will need to add them afterwards using the `ALTER TABLE` command, as follows:

```
ALTER TABLE `pokemon`
    ADD PRIMARY KEY(`id`)
```

Once again, if you already created something and it exists, running these commands again will result in errors.


### Altering a Table

#### Deleting / Dropping

When dealing with simple data, you can always delete a table and start from scratch. For exaple, if we wanted to delete the pokemon table we can run:

```
DROP TABLE `pokemon`;
```

Be very careful whenever you wish to remove something, as it will be gone forever (unless you have a backup, of course).

The same can be applied to an entire database, referencing the name of the database instead:

```
DROP DATABASE `pokemon`;
```

A very dangerous command, and should only be ran when you are certain of it.


#### Updating a Table

Let's say we made a typo and want to rename one of our columns, then we use a combination of the `ALTER`, `DROP`, and `ADD` commands. Let's drop the 'weight' column (WARNING all data will be deleted), add a 'nature' column, and rename the column 'bstats_tot' to just simply 'bstats':

```
ALTER TABLE `pokemon`
    DROP `weight` -- column along with all it's row data is deleted forever!
    ADD `nature` VARCHAR(100) NOT NULL -- note that the constraints must also be defined
    RENAME COLUMN `bstats_tot` TO `bstats`
```

### INSERT DATA

Now that we have a good idea of creating, deleting, and altering database and tables, let's go ahead and actually start inserting data into our tables.

Let's say we want to insert the first 10 pokemon that exists into our pokemon table. We use a combination of the `INSERT INTO` and `VALUES` commands, as follows:

```
INSERT INTO `pokemon` (`id`, `name`, `height`, bstats`, `nature`) VALUES
    (1, 'bulbasaur', 0.7, 318, 'Sassy'),
    (2, 'ivysaur', 0.1, 405, 'Bold'),
    (3, 'venusaur', 2, 525, 'Calm'),
    (4, 'charmander', 0.6, 309, 'Timid'),
    (5, 'charmeleon', 1.1, 405, 'Lonely'),
    (6, 'charizard', 1.7, 534, 'Jolly'),
    (7, 'squirtle', 0.5, 314, 'Hasty'),
    (8, 'wartortle', 1, 405, 'Docile'),
    (9, 'blastoise', 1.6, 530, 'Careful'),
    (10, 'caterpie', 0.3, 195, 'Naive');
```

Note that the tuple right after the table name `pokemon` is used to specify the columns and order of columns by which the data will be inserted. It is optional, and if omitted, the data will simply be inserted in the order that is was created in.
