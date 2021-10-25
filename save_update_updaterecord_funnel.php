<?php 
include 'config.php';


$ids=$_POST["idnumber"];

$company=$_POST["company"];
$customer=$_POST["customer"];
$mobile=$_POST["mobile"];
$industry=$_POST["industry"];
$address=$_POST["address"];
$city=$_POST["city"];
$state=$_POST["state"];
$email=$_POST["email"];
$product=$_POST["product"];
$qty=$_POST["qty"];
$remarks=$_POST["remarks"];
$status=$_POST["status"];
$salesperson=$_POST["salesperson"];

$reporter = $_SESSION['email'];

$sql = "UPDATE funnel set company = '".$company."',
customer = '".$customer."',
mobile = '".$mobile."',
industry = '".$industry."',
address = '".$address."',
city = '".$city."',
state = '".$state."',
email = '".$email."',
product = '".$product."',
qty = '".$qty."',
remarks = '".$remarks."',
status = '".$status."',
salesperson = '".$salesperson."'

where id = '".$ids."' ";


$result = mysqli_query($con,$sql);



?>