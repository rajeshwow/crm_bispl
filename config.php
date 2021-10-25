<?php session_start(); ?>
<?php 
date_default_timezone_set("Asia/Kolkata"); 
// error_reporting(E_ERROR | E_WARNING | E_PARSE);
error_reporting(0);
?>
<?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bispl";

// Create connection
$con = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}


?>


