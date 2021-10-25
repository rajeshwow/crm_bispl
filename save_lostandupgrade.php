<?php 
   include 'config.php';
   
   
   
   		$serialno = $_POST['edit_id'];
   		$newserialno = $_POST['newserial'];
         $table = $_POST['tablename'];
         $remarks = $_POST['remarks'];
         $expirydate = $_POST['actexpirydate'];
         $plantype = $_POST['plantype'];

      $date=date_create($expirydate);
      date_add($date,date_interval_create_from_date_string("$plantype days"));
      $newdate = date_format($date,"Y-m-d");
   
   	
   	$sql = "UPDATE $table set  remarks = '".$remarks."', expiry_date = '".$newdate."',status = 'Lost and Upgrade',lostupgrade_at = now()  where serialno =  '".$serialno."'";
   	$result = mysqli_query($con,$sql);

   	$insertdump = "INSERT into crm_serialno_dump (old_serial,new_serial) values ('$serialno','$newserialno' ) ";
   	$result = mysqli_query($con,$insertdump);
   	
   
   
   
   ?>