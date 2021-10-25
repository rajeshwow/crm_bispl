<?php 
   include 'config.php';
   
   
   
   		$company = $_POST['company'];
   		$customer = $_POST['customer'];
   		$currentstatus = $_POST['currentstatus'];
         $remarks = $_POST['newremarks'];
         $ids = $_POST['ids'];
       
       if ($currentstatus !='Closed') {
          $sql = "UPDATE funnel set status ='".$currentstatus."',created_at = CURRENT_TIMESTAMP,remarks ='".$remarks."',reporter_open ='".$_SESSION['email']."'    where company =  '".$company."' and customer =  '".$customer."' and id= '".$ids."' ";
       }
       else {
         $sql = "UPDATE funnel set status ='".$currentstatus."',created_at = CURRENT_TIMESTAMP,remarks ='".$remarks."',reporter_close ='".$_SESSION['email']."'    where company =  '".$company."' and customer =  '".$customer."' and id= '".$ids."' ";
       }
   	
   
   	$result = mysqli_query($con,$sql);
   	
   
   
   
   ?>