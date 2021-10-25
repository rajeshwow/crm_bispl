<?php 
   include 'config.php';
   
   
   
   		$serialno = $_POST['edit_id'];
   		$plantype = $_POST['plantype'];
   		$table = $_POST['tablename'];
      $expirydate = $_POST['actualexpirydate'];
      $remarks = $_POST['remarks'];
      $date=date_create($expirydate);
      date_add($date,date_interval_create_from_date_string("20 year"));
      $newdate = date_format($date,"Y-m-d");
       
   	
   	$sql = "UPDATE $table set remarks ='".$remarks."',expiry_date = '".$newdate."',status = 'Dont want to renew',dwtr_at = now()  where serialno =  '".$serialno."'";
   	$result = mysqli_query($con,$sql);
   	
   
   
   
   ?>