<?php 
include 'config.php'; ?>
<?php include 'crm_userauth.php'; 

if (isset($_POST['submit'])) {
	
	$to= $_POST['toemail'];
	$cc= $_POST['ccemail'];
	$subject = $_POST['subemail'];
	$msg = $_POST['message'];
	$headers = "From: sales@bispl.net.in" . "\r\n" ."CC: $cc";

}

mail($to,$subject,$msg,$headers);
$sql = "INSERT INTO renewalmail (mailto,mailfrom,mailcc,mailsubject,mailmessage)
VALUES ( '$to','sales@bispl.net.in', '$cc',' $subject','$msg')";
if(!$result = $con->query($sql)){
die('There was an error running the query [' . $conn->error . ']');
}
else
{

header("location:./renewal.php");
exit();
}



?>

