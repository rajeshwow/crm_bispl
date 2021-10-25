<?php include 'config.php'?>
<?php include 'header.php'?>
<?php include 'navbar.php'?>

<style type="text/css">
  
</style>
<div class="logform">
   <div class="container">
      <div class="row">
         <div class="col-lg-12" style="text-align: -webkit-center; ">
            <div class="loginformm" id="loginformm">
               <div class="formcontrol">
                  <h1 style="text-align: center;"> Login</h1>
                  <?php 
                        if ($_SESSION["sentmail"] == "sent") { ?>
                        <div class="alert alert-success" role="alert">
                           <p>An email has been sent to the entered email id. Please check and reset your password.</p>
                        </div>
                     
                      <?php  } ?>
                  <form method="POST" autocomplete="off">
                     <input autocomplete="false" name="hidden" type="text" style="display:none;">
                     <div class="form-group">
                        <label>Email address</label>
                        <input autocomplete="off" type="email" required="true" name="email" id="email" class="form-control" placeholder="example@ybl.com" aria-describedby="emailHelp"> <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> 
                     </div>
                     <div class="form-group">
                        <label>Password</label>
                        <input type="password" required="true" name="password" id="password" class="form-control" placeholder="***********"> 
                     </div>
                     <p>Forgot Password ?<a href="recovery.php">Click Here</a></p>
                     <h5 style="color: red"><?php
                        if(isset($_SESSION["error"])){
                            $error = $_SESSION["error"];
                            echo "<span>$error</span>";
                        }
                        ?> </h5>
                     <div class="form-group" style="text-align: center;">
                        <button type="submit" name="submit" formaction="./crm_loginvalidate.php" class="btn btns">Submit</button>
                     </div>
                     <!-- <p>New User ?. <button type="button" class="btn btn-primary" id="signup">Sign up</button></p> -->
                  </form>
                  <!-- <a href="./forgetpassword.php">Forget Password ?</a> -->
               </div>
            </div>
            <script type="text/javascript">
            	$(document).ready(function () {
				  $("#signup").click(function () {
				    $("#signupform").fadeIn("slow");
				    $("#loginformm").fadeOut("slow");
				  });
				});
            </script>
			<!-- <div class="signupform" id="signupform" style="display: none;">
               <div class="formcontrol">
                  <h1 style="text-align: center;"> Sign up</h1>
                  <form method="POST" autocomplete="off">
                     <input autocomplete="false" name="hidden" type="text" style="display:none;">
                     <div class="form-group">
                        <label>Email address</label>
                        <input autocomplete="off" type="email" required="true" name="email" id="email" class="form-control" placeholder="example@ybl.com" aria-describedby="emailHelp"> <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> 
                     </div>
                     <div class="form-group">
                        <label>Password</label>
                        <input type="password" required="true" name="password" id="password" class="form-control" placeholder="***********"> 
                     </div>
                     <h5 style="color: red"><?php
                        if(isset($_SESSION["error"])){
                            $error = $_SESSION["error"];
                            echo "<span>$error</span>";
                        }
                        ?> </h5>
                     <div class="form-group" style="text-align: center;">
                        <button type="submit" name="submit" formaction="./signupformdetails.php" class="primary-btn-app">Submit</button>
                     </div>
                  </form>
               </div>
            </div>  -->           
         </div>
      </div>
   </div>
</div>
<br>
<br>
<?php include 'footer.php'?>