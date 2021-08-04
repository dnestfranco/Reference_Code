<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Pokemon Database</title>
        <link rel="stylesheet" href="styles.css">
    </head>

    <body>
        <div id="body-title">
            <h1><a href="index.html">Pokemon Database Central</a></h1>
        </div>

        <div id="body-left-col">
            <h2>Menu</h2>
            <div id="body-dir">
                <ul>
                    <a href="">Pokemon</a>
                    <br>
                    <a href="types.php">Types</a>
                    <br>
                </ul>
            </div>
        </div>

        <div id="body-central-col">
            <h2>Pokemon</h2>
            <br>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Type 1</th>
                    <th>Type 2</th>
                </tr>
                <?php
                $servername = "localhost";
                $username = "root";
                $password = "root";

                // creating database connection
                $conn = new mysqli($servername, $username, $password);

                // checking connection
                if ($conn -> connect_error) {
                    die("Connection failed: " . $conn -> connect_error);
                }

                // echo "Connected successfully";

                // selecting data from database - getting cols 'id' and 'name'
                //$sql = "SELECT id, name FROM .pokemon";
                $sql = "SELECT id, `p`.`name` as `Name`, `t1`.`type_name` as `Type_1`, `t2`.`type_name` as `Type_2`
                FROM 
                    `pokemon_four`.`pokemon` as `p` left join `pokemon_four`.`pokemon_types` as `pt` 
                    on `p`.`id`=`pt`.`pokemon_id`
                    left join `pokemon_four`.`types` as `t1` on `pt`.`type1_id` = `t1`.`type_id`
                    left join `pokemon_four`.`types` as `t2` on `pt`.`type2_id` = `t2`.`type_id`
                ORDER BY id ASC";

                $result = $conn -> query($sql);

                if ($result -> num_rows > 0) {
                    // output data of each row
                    while ($row = $result -> fetch_assoc()) {
                        echo "<tr><td>" .$row["id"] ."</td><td>".$row["Name"]."</td><td>".$row["Type_1"] ."</td><td>".$row["Type_2"] ."</td></tr>";
                    }
                }
                else {
                    echo "0 results";
                }

                $conn -> close();
                ?>
            </table>
        </div>
    </body>
</html>