<?php
session_start();
?>
<?php include 'config.php'?>


<?php


$error = "Sorry, your credentials are not valid, Please try again.";


if(isset($_POST['submit'])) {
$email = $_POST["email"];
$password = $_POST["password"];
}
$sql = "SELECT email, password FROM login where email = '$email' ";
$result = mysqli_query($conn,$sql) or die("Error: " . mysqli_error($conn));
$row = mysqli_fetch_array($result);
if(($row["email"]==$email) && ($row["password"]==$password)){
	
	ob_start();
   echo "<script> window.location.href = './adminlogin.php'; </script>";
   $_SESSION['email'] = $email;
}
else
{
	ob_start();
	echo "<script> window.location.href = './login.php'; </script>";
	$_SESSION["error"] = $error;
}
//

?>
