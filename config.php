<?php 
session_start(); 
date_default_timezone_set("Asia/Kolkata"); 
error_reporting(0);

if ($_SERVER['SERVER_NAME'] == 'www.bispl.net.in' || $_SERVER['SERVER_NAME'] == 'bispl.net.in' ) {
  $servername = "localhost";
  $username = "lha78u13omzr";
  $password = "BinaryCpanel#1";
  $dbname = "i7232841_ma1";
}
else{
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "bispl"; 
}

$con = mysqli_connect($servername, $username, $password, $dbname);

if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}
?>


