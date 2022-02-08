<?php include 'config.php'?>
<?php include 'header.php'?>
<?php include 'navbar.php'?>

<div class="logform">
   <div class="container">
      <div class="row">
         <div class="col-lg-12" style="text-align: -webkit-center; ">
            <div class="loginformm" id="loginformm">
               <div class="formcontrol">
                  <h3 style="text-align: center;"> Recover your account</h3>
                  <h5 style="text-align: center;">Please fill your email id properly.</h5>
                  
                  <form method="POST" action="./postrecovery.php"  >
                     <div class="form-group">
                        <label>Email</label>
                        <input  type="email" required="true" name="email" id="email" class="form-control" placeholder="example@ybl.com" aria-describedby="emailHelp"> <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> 
                     </div>
                     <?php 
                        if ($_SESSION["checkemails"] == "zero") { ?>
                          
                        <div class="alert alert-danger" role="alert">
                           <p>No account registered with this email. Please check email and try again.</p>
                        </div>
                     
                      <?php  } ?>
                     <h5 style="color: red"><?php
                        if(isset($_SESSION["error"])){
                            $error = $_SESSION["error"];
                            echo "<span>$error</span>";
                        }
                        ?> 
                     </h5>
                     <div class="form-group" style="text-align: center;">
                        <button type="submit" name="send_mail"  class="btn btns">Send Mail</button>
                     </div>
                     <!-- <p>New User ?. <button type="button" class="btn btn-primary" id="signup">Sign up</button></p> -->
                  </form>
                  <!-- <a href="./forgetpassword.php">Forget Password ?</a> -->
               </div>
            </div>          
         </div>
      </div>
   </div>
</div>
<br>
<br>
<?php include 'footer.php'?>