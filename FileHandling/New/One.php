<php
$servername = "localhost";
$username = "root";
$password = "";
$bdname = "table";

$conn = new connection mysqli("$servername, $username, $password, $bdname");
  if($conn = conn->error){
  die("connection not found".)
  }
