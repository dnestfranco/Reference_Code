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
                    <a href="pokemon.php">Pokemon</a>
                    <br>
                    <a href="">Types</a>
                    <br>
                </ul>
            </div>
        </div>

        <div id="body-central-col">
            <h2>Types</h2>
            <br>
            <table>
                <tr>
                    <th>Type Names</th>
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
                $sql = "SELECT `types`.`type_name`
                FROM `pokemon_four`.`types`
                WHERE 1";

                $result = $conn -> query($sql);

                if ($result -> num_rows > 0) {
                    // output data of each row
                    while ($row = $result -> fetch_assoc()) {
                        echo "<tr><td>" .$row["type_name"] ."</td></tr>";
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