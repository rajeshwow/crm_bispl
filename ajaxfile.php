<?php
include "config.php";

if(isset($_POST['username'])){
   $username = $_POST['username'];

   $query = "select count(*) as cntUser from crm_eps where serialno='".$username."'";
   $query1 = "select count(*) as cntUser from crm_fortinet where serialno='".$username."'";

   $result = mysqli_query($con,$query);
   $result1 = mysqli_query($con,$query1);
   $response = "<span style='color: green;'>Does not exist.</span>";
   if(mysqli_num_rows($result) || mysqli_num_rows($result1)){
      $row = mysqli_fetch_array($result);
      $row1 = mysqli_fetch_array($result1);

      $count = $row['cntUser'];
      $count1 = $row1['cntUser'];

      $mega = $count1 + $count;
    
      if($mega > 0){
          $response = "<span style='color: red;'>Already Exist</span>";
      }
   
   }

   echo $response;
   die;
}