<?php
$servername = "localhost";
$username = "root";
$password = "";
$db = "my_db";

// Create connection
$conn = new mysqli($servername, $username, $password,$db);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$email = $_GET["email"];


$sql = "SELECT * FROM entries WHERE email = '" . $email . "' OR title ='" . $email . "'";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
	echo '<table style="width:50%;border-collapse: collapse;"><tr style="border: 1px solid black;"><th>id</th><th>email</th><th>title</th><th>comment</th><th>date</rh></tr>';
	while($row = $result->fetch_assoc()) {
		echo '<tr style="border: 1px solid black;"><td style="border: 1px solid black; text-align: center;">' . $row["id"] . '</td><td style="border: 1px solid black;text-align: center;"> ' . $row["email"] . '</td><td style="border: 1px solid black; text-align: center;">' . $row["title"] . '</td><td style="border: 1px solid black; text-align: center;">' . $row["comment"] . '</td><td style = "text-align: center;"">' . $row["date"] . "</td></tr>";
	}
	echo "</table>";
}

?>