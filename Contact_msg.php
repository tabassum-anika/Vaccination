<?php

$user="root";
$pass = "";
$db = "vaccination";

//$email="email";
//$message="'".$_POST["message"]."'";

// Create connection
$conn = new mysqli('localhost',$user,$pass,$db);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "INSERT into reviews
                VALUES (null, $message,null);";

if ($conn->query($sql) === TRUE) {
    echo "feedback submitted successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>