<?php 
   include 'config.php';
   
   
   $ids=$_POST["idnumber"];
   		$chequenumber = $_POST['chequenumber'];
   		$billnumber = $_POST['billnumber'];
   		$currentstatus = $_POST['currentstatus'];
         $remarks = $_POST['newremarks'];
       
   	
   $sql = "UPDATE suspense set status ='".$currentstatus."',approved_date = CURRENT_TIMESTAMP,remarks ='".$remarks."',approved_by ='".$_SESSION['email']."'    where chequeno =  '".$chequenumber."' and billno =  '".$billnumber."' and  id = '".$ids."' ";
   	$result = mysqli_query($con,$sql);
   	
   
   
   
   ?>