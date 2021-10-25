<?php include 'config.php';?>

<?php 
$email = $_POST["edit_id"];

$sql = "DELETE FROM crm_useraccess where email =  '".$email."'";
$result = mysqli_query($con,$sql);

$sql2 = "DELETE FROM crm_login where email =  '".$email."'";
$result2 = mysqli_query($con,$sql2);


?>