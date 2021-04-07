# Local Attractions Near Me


_Note: This is meant to be an example of a project that meets expecations_

This database will showcase some of the outdoor attractions near me in Seaside, CA. These are my personal picks for attraction spots.

Here is how I will be organizing my table:
| Column | Description |
|--- | --- |
| id | Will uniquely idenitfy each attraction in my table |
| name | This will specify the name of the location |
| lat | The latitude data for the location, up to 14 decimal places |
| lon | The longitude data for the location, up to 14 decimal places
| rating | My personal rating for the location, out of 5 |


### Creating The Database

This is usually the easiest part. We got a simple one-liner:
```
CREATE DATABASE attractions;
```

### Creating The Table

Here we will create the table we described initially, with the appropriate data type constraints. Even though I don't need a primary key in this instance, it's generally a good practice to always include one in your table, in case future tables do need to be linked.

```
CREATE TABLE `outdoors` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `lat` FLOAT(18, 14),
    `lon` FLOAT(18, 14),
    `rating` INT,
    PRIMARY KEY (`id`) 
);
```

### Populating Table

Now that our table has been created within our `attractions` database, we will now be adding data to it. Once again, this data is relative to where I live, but it's still a great example of what we can have.

```
INSERT INTO `attractions`.`outdoors`
(`name`, `lat`, `lon`, `rating`) VALUES
    ('Ford Ord National Monument', 36.63737038400571, -121.79692629014683, 5),
    ('Monterey State Beach', 36.60997975639459, -121.86011840522858, 4),
    ('Laguna Grande Park`', 36.60244838821196, -121.85419428770199, 3),
    ('Pacchetti Dog Park', 36.599251872167585, -121.83880874344112, 3),
    ('Del Monte Beach', 36.60591157243876, -121.86885833890202, 5),
    ('Neil Park', 36.60814823018806, -121.82598972202118, 3),
    ('Stuart Park', 36.61415836365607, -121.8267472153426, 3),
    ('Trinity Park', 36.604659871135595, -121.84955653881754, 2),
    ('Sand City Beach', 36.61896519772184, -121.8507651373745, 2),
    ('Eolian Dunes Preserve', 36.62048005739184, -121.84745340184956, NULL);
```

### Query
Now that we have our table with data, we can now use SQL expressions to query data from our database. 

For this case, I am curious to know: __What are my favorite places to visit in my hometown?__
To be clear, favorite here implies a rating of 4 or greater. Let's get that information using SQL.

```
SELECT `name`, `rating`
FROM `attractions`.`outdoors`
WHERE `rating` >= 4; 
```

If we do that, we should recieve the following table as a result:

| name | rating |
|--- | --- |
| Ford Ord National Monument | 5 |
| Monterey State Beach | 4 |
| Del Monte State Beach | 5 |


### Wrap Up

This project meet all the requirements, which are:
- At least one relation
- At least three columns
- At least ten rows
- At least one question that is answered through a SQL query

Once finished, please export your database as a SQL file and upload it to the Google Classroom Project Assignment. There should be a private comment section there as well, and that's where you will submit your question and SQL expression that answers your question.