<?php
include "config.php";

$serialno = ($_POST['serialno']);
$tablename = ($_POST['tablename']);
   

   $query = "select * from $tablename where serialno='".$serialno."' ";
   $result = mysqli_query($con,$query);

   // echo "<script>alert(mysqli_num_rows($result))</script>";
   
   
   if(mysqli_num_rows($result)>0){
      $response = "<span style='color: red;'>Takens.</span>";
   }
   else{
      $response = "<span style='color: green;'>Availables.</span>";
   }

   echo $response;
  
?>