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
<?php 
    
    $url = $filepath.'/api/addsupport.php'; 
    $post = [
    'date' => $_POST["date"],
    'serialno' => $_POST["serialno"],
    'customer' => $_POST["customer"],
    'contactPerson'   => $_POST["contactPerson"],
    'designation'   => $_POST["designation"],
    'mobile'   => $_POST["mobile"],
    'address'   => $_POST["address"],
    'email'   => $_POST["email"],
    'dealer'   => $_POST["dealer"],
    'supportType'   => $_POST["supportType"],
    'callDetails'   => $_POST["callDetails"],
    'ref'   => $_POST["ref"],
    'remarks'   => $_POST["remarks"],
    'fgt'   => $_POST["fgt"],
    'av' => $_POST["av"],
    'users'   => $_POST["users"],
    'expiry'   => $_POST["expiry"],
    'createdBy' => $_POST["createdBy"],
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
    header("Location:./support.php");
}
else{
    $_SESSION['status'] = "Record not Added";
    $_SESSION['status_code'] ="error";
    echo "ERROR: Could not able to execute . " . mysqli_error($con);
    header("Location:./support.php");
}
// close the connection, release resources used
curl_close($ch);

    

?>