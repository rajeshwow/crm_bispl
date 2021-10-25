<?php 
   include 'config.php';
   
$changedemail = $_POST["email"];
$newpassword = $_POST["password"];


      
      
       
   	$userloginupdate = "UPDATE  crm_login set  password = '".$newpassword."'  where email =  '".$changedemail."'";
   	
      if (mysqli_query($con,$userloginupdate) ) {  
           header('Location:./crm_userlogin.php');
      }else{  
           alert("Not Updated"); 
      }

   ?>