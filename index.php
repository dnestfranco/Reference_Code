<!DOCTYPE html>
<html>
    <head>
        <title>My Movies Table</title>
        <style>
            table{
                border-collapse: collapse;
                width: 50%;
                color: #585c7e;
                font-family: monospace;
                font-size: 20px;
                text-align: left;
            }

            th {
                background-color: #588c7e;
                color: white;
            }

            tr:nth-child(even) {background-color #f2f2f2}

            h1, p {
                font-family: monospace;
            }
        </style>
    </head>
    <body>
        <h1>My Favorite Movies</h1>
        <p>Welcome to my page, where I will showcase my favorite films of all time below!</p>
        </br>
        <table>
            <tr>
                <th>Id</th>
                <th>Title</th>
                <th>Length</th>
                <th>Rating</th>
                <th>Genre</th>
                <th>Year</th>
            </tr>
            <?php
            $conn = mysqli_connect("localhost", "root", "root", "television");
            if ($conn-> connect_error) {
                die("Connection failed". $conn-> connect_error);
            }

            $sql = "SELECT id, title, length, rating, genre, year FROM movies";
            $result = $conn-> query($sql);

            if ($result-> num_rows > 0){
                while ($row = $result-> fetch_assoc()) {
                    echo "<tr><td>". $row["id"] ."</td><td>". $row["title"] ."</td><td>". $row["length"] ."</td><td>". $row["rating"] ."</td><td>". $row["genre"] ."</td><td>". $row["year"] ."</td></tr>";
                }
                echo "</table>";
            }
            else{
                echo "0 results";
            }

            $conn-> close();
            ?>
        </table>
    </body>
</html>
