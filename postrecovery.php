<?php include 'config.php'?>
<?php
   if (isset($_POST['send_mail'])) {
      $email = $_POST["email"];
      $_SESSION["checkemails"] = "";
      $_SESSION["sentmail"] = "";
      $emailquery = "select * from crm_login where email = '$email'";
      $runquery = mysqli_query($con, $emailquery) or die("Error: " . mysqli_error($con));
      $rowcount = mysqli_num_rows($runquery);
      // echo $rowcount;

      if ($rowcount) {
         $_SESSION["checkemails"] = "one";
         $subject = "Password Reset";
         $from = "sales@bispl.net.in";
         $headers = "MIME-Version: 1.0" . "\r\n";
         $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
         $headers .= "From:".$from;
         $body = "Click here to reset your passwrod. https://www.bispl.net.in/crm/forgetpassword.php?email=$email";
         
         if (mail($email, $subject, $body,$headers)) {
            header('Location: ./crm_userlogin.php');
            $_SESSION["sentmail"] = "sent";
         }
         else{
            echo "check mail";
         }
      }
      else{
         $_SESSION["checkemails"] = "zero";
         header('Location: ./recovery.php');
      }
   }
?>