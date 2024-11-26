<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "phptut";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}


// MySQLi Procedural
// $conn = mysqli_connect($servername, $username, $password) or die("Unable to connect");
// mysqli_select_db($conn, "phptut");
