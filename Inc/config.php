<?php 
session_start(); 
date_default_timezone_set("Asia/Kolkata"); 
error_reporting(0);

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bispl";

$con = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}


?>


