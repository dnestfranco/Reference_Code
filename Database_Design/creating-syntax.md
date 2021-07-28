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

Along with the columns, we determine the domain constraints of our attributes. That is, we determine the proper data types, keys, and nullable values. So then we do:

```
CREATE TABLE `pokemon` (
    `id` INT(11) NOT NULL,
    `name` VARCHAR(79) NOT NULL,
    `height` FLOAT(11),
    `weight` FLOAT(11),
    `bstats_tot` INT(11)
);
```

Note that if we already know the keys we want to add to our table, then it's best to add them in the beginning, like this:

```
CREATE TABLE `pokemon` (
    `id` INT(11) NOT NULL,
    `name` VARCHAR(79) NOT NULL,
    `height` FLOAT(11),
    `weight` FLOAT(11),
    `bstats_tot` INT(11),
    PRIMARY KEY (`id`)
);
```

Otherwise, you will need to add them afterwards using the `ALTER TABLE` command, as follows:

```
ALTER TABLE `pokemon`
    ADD PRIMARY KEY(`id`);
```

Once again, if you already created something and it exists, running these commands again will result in errors.


### Altering a Table

#### Deleting / Dropping

Sometimes we want to make changes to our tables or start again from scratch. For example, if we wanted to delete the pokemon table we can run:

```
DROP TABLE `pokemon`;
```

Be very careful whenever you wish to remove something, as it will be gone forever (unless you have a backup, of course).

The same can be applied to an entire database, referencing the name of the database instead:

```
DROP DATABASE `pokemon`;
```

This is a very dangerous command, and should only be ran when you are certain of it. Make sure to constantly save your SQL scripts and make backups of your databases via SQL dumps.


#### Updating a Table

Sometimes we can't start from scratch and we work with what we have. Most updates on a table can be performed with a combination of the `ALTER`, `DROP`, and `ADD` commands. 

Let's drop the `weight` column (WARNING all data in this column will be deleted), add a `nature` column, and rename the column `bstats_tot` to just simply `bstats`:

```
ALTER TABLE `pokemon`
    DROP `weight` -- column along with all it's row data is deleted forever!
    ADD `nature` VARCHAR(100) NOT NULL -- note that the domain constraints must also be defined
    RENAME COLUMN `bstats_tot` TO `bstats`;
```

### Insert Data

Now that we have a good idea of creating, deleting, and altering databases and tables, let's go ahead and start inserting data into our tables.

Let's say we want to insert the first 10 pokemon and their data that exists into our pokemon table. We use a combination of the `INSERT INTO` and `VALUES` commands, as follows:

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


### Foreign Keys

We got an example of defining a primary key in a table, which was as simple as using the `PRIMARY KEY` command; foreign keys are a bit more complicated.

First we must ensure that whatever attributes we set as foreign keys are referencing a primary key. Recall that a key (primary or foreign), can be composed of a single or multiple attributes. 

First, we start by defining a constraint using the command `CONSTRAINT` and setting a name. Afterwards, we initiate the foreign key and primary key linking using the `FOREIGN KEY` and `REFERENCES` commands, where `FOREIGN KEY` stores the attribute(s) that will reference the primary key of a table, which is defined in `REFERENCES`. 

Let's say we create the evolutions table for our pokemon database, and define all our constraints there. Then we have:

```
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
```

If you decide to add these later to a table, you can do so with the following:

```
ALTER TABLE `evolutions`
  ADD CONSTRAINT fk_pok_id FOREIGN KEY (`id_to`) REFERENCES `pokemon`(`id`),
  ADD CONSTRAINT fk_pok_evol FOREIGN KEY (`id_from`) REFERENCES `pokemon`(`id`);
```

If the foreign key rules are not followed, MySQL will give you errors. Make sure you have an ERD that you can follow, as linking foreign keys and primary keys can get complex the more tables we have.
