<?php

$user="root";
$pass = "";
$db = "vaccination";

$username ="'".$_POST["username"]."'";
$password = "'".$_POST["password"]."'";

$phone_number="'".$_POST["phone_number"]."'";
$email="'".$_POST["email"]."'";


// Create connection
$conn = new mysqli('localhost',$user,$pass,$db);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "INSERT into users
                VALUES (null,$username,$email, $phone_number, $password);";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>