<?php include 'config.php'?>
<?php 
	$filepath = "";
	if(isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on') {
	   $filepath = "https://".$_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']); 
	}  
		  
   else {
	   $filepath = "http://".$_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']);
   } 
?>
<?php include 'config.php'?>
<?php 
    
    $url = $filepath.'/api/adddealers.php'; 
    $post = [
    'company' => $_POST["company"],
    'contact_person' => $_POST["contact_person"],
    'mobile' => $_POST["mobile"],
    'landline'   => $_POST["landline"],
    'address1'   => $_POST["address1"],
    'address2'   => $_POST["address2"],
    'address3'   => $_POST["address3"],
    'city'   => $_POST["city"],
    'state'   => $_POST["state"],
    'email'   => $_POST["email"],
    'Permanantadd1'   => $_POST["Permanantadd1"],
    'Permanantadd2'   => $_POST["Permanantadd2"],
    'id1'   => $_POST["id1"],
    'id2'   => $_POST["id2"],
    'gst' => $_POST["gst"]
];

$ch = curl_init($url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, $post);

// execute!
$response = curl_exec($ch);
$response = json_decode($response,true);
//echo $response['status'];


if($response['status']==1){
    $_SESSION['status'] = "Great !";
    $_SESSION['status_code'] ="success";
    header("Location:./dealers.php");
}
else{
    $_SESSION['status'] = "Dealer not Added";
    $_SESSION['status_code'] ="error";
    echo "ERROR: Could not able to execute . " . mysqli_error($con);
    header("Location:./dealers.php");
}
// close the connection, release resources used
curl_close($ch);

    

?>