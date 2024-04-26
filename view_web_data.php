<!DOCTYPE html>
<html>
<head>
    <title>Displaying Employer Information</title>
</head>
<body>
    <h1>Employer Information</h1>

    <?php
    $server_name="localhost";
	$username="root";
	$password="";
	$database_name="project";


    $conn = new mysqli($server_name, $username, $password, $database_name);

    
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM employers";
    $result = $conn->query($sql);

    if ($result) {
   
        if ($result->num_rows > 0) {
            // Output data of each row
            while ($row = $result->fetch_assoc()) {
                echo "Email: " . $row["email"] . " - Industry: " . $row["industry"] . " - Location: " . $row["location"] . "<br>";

            }
        } else {
            echo "0 results";
        }
    } else {
        echo "Error fetching data: " . $conn->error;
    }

    $conn->close(); 
    ?>

</body>
</html>

