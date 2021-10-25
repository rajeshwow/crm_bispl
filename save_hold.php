<?php 
   include 'config.php';
   $serialno = $_POST['edit_id'];
   $table = $_POST['tablename'];
   $remarks = $_POST['remarks'];
   $quotedprice = $_POST['expirydate'];
   $sql = "UPDATE $table set expiry_date = '".$quotedprice."' , remarks = '".$remarks."',status = 'Hold',hold_at = now()  where serialno =  '".$serialno."'";
   $result = mysqli_query($con,$sql);
?>