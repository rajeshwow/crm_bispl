<?php 
   include 'config.php';
   
   
   
   		$serialno = $_POST['edit_id'];
   		$plantype = $_POST['plantype'];
   		$table = $_POST['tablename'];
      $expirydate = $_POST['actualexpirydate'];
      $remarks = $_POST['remarks'];
      
      // $date=date_create($expirydate);
      // date_add($date,date_interval_create_from_date_string("$plantype days"));
      // $newdate = date_format($date,"Y-m-d");
       
   	
   	$sql = "UPDATE $table set plantype = '".$plantype."',expiry_date = '".$expirydate."',remarks ='".$remarks."',status = 'Lost and Renew',lostrenew_at = now()  where serialno =  '".$serialno."'";
   	$result = mysqli_query($con,$sql);
   	
   
   
   
   ?>