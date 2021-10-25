<?php 
   include 'config.php';
   
   
   
   		$serialno = $_POST['edit_id'];
   		$newserialno = $_POST['newserial'];
         $table = $_POST['tablename'];
         $expirydate = $_POST['expirydate'];
         $productname = $_POST['productname'];
         $inprice = $_POST['inprice'];
      $outprice = $_POST['outprice'];
   
   	
   	$sql = "UPDATE $table set serialno = '".$newserialno."',expiry_date = '".$expirydate."', status = 'Upgraded',product_name ='".$productname."',in_sell ='".$inprice."',out_sell ='".$outprice."',upgrade_at = now()   where serialno =  '".$serialno."'";
   	$result = mysqli_query($con,$sql);

   	$insertdump = "INSERT into crm_serialno_dump (old_serial,new_serial) values ('$serialno','$newserialno' ) ";
   	$result = mysqli_query($con,$insertdump);
   	
   
   
   
   ?>