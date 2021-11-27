
<?php 
session_start();
date_default_timezone_set("Asia/Kolkata");
error_reporting(0);
$servername = "localhost";
$dbname = "i7232841_ma1";
$username = "lha78u13omzr";
$password = "BinaryCpanel#1";



$con = mysqli_connect($servername, $username, $password, $dbname);

if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}


?> 