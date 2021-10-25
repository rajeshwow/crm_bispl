<?php 
   include 'config.php';
   
   
   
   		$serialno = $_POST['edit_id'];
   		$plantype = $_POST['plantype'];
   		$table = $_POST['tablename'];
      $expirydate = $_POST['expirydate'];
      $inprice = $_POST['inprice'];
      $outprice = $_POST['outprice'];
      $date=date_create($expirydate);
      // date_add($date,date_interval_create_from_date_string("$plantype days"));
      $newdate = date_format($date,"Y-m-d");
       
   	
   	$sql = "UPDATE $table set plantype = '".$plantype."',expiry_date = '".$newdate."',modify_on =now(),in_sell ='".$inprice."',out_sell ='".$outprice."',status = 'Renewed',renewed_at = now(),updated_by ='".$_SESSION['email']."'   where serialno =  '".$serialno."'";
   	$result = mysqli_query($con,$sql);
   	
   
   
   
   ?>