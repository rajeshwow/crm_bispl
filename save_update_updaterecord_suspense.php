<?php 
include 'config.php';


$ids=$_POST["idnumber"];
$party=$_POST["party"];
$chequeno=$_POST["chequeno"];
$bank=$_POST["bank"];
$bill_date=$_POST["bill_date"];
$status=$_POST["status"];
$amount=$_POST["amount"];
$billno=$_POST["billno"];
$remarks=$_POST["remarks"];

$sql = "UPDATE suspense set party = '".$party."',
chequeno = '".$chequeno."',
bank = '".$bank."',
bill_date = '".$bill_date."',
status = '".$status."',
amount = '".$amount."',
billno = '".$billno."',
remarks = '".$remarks."' 
where id = '".$ids."' ";


$result = mysqli_query($con,$sql);



?>