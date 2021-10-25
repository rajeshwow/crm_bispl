<?php 
   include 'config.php';
   
   $serialno = $_POST['edit_id'];
   $table = $_POST['tablename'];
   $remarks = $_POST['remarks'];
   $quotedprice = $_POST['quotedprice'];

   
       
   	
   	$sql = "UPDATE $table set remarks = '".$remarks."',quotedprice = '".$quotedprice."' where serialno =  '".$serialno."'";
   	$result = mysqli_query($con,$sql);
   	
   
   
   
   ?>