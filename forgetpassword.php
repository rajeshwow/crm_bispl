<?php include 'config.php'?>
<?php
    $resetemail = $_GET["email"];
?>
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
                  <form method="POST" id="resetpassword" action="./forgetpasswordsubmit.php"  onsubmit="return checkpassword();">
                     <input autocomplete="false" name="hidden" type="text" style="display:none;">
                     <div class="form-group">
                        <label>Email address</label>
                        <input  readonly value="<?php echo $resetemail?>" required="true" name="email" id="email" class="form-control"  aria-describedby="emailHelp"> <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> 
                     </div>
                     <div class="form-group" >
                        <label>Password</label>
                        <div class="input-group" id="show_hide_password">
                           <input type="password" required="true" name="password" id="password" class="form-control" placeholder="***********"> 
                           <div class="input-group-addon">
                             <a href=""><i class="glyphicon glyphicon-eye-close" aria-hidden="true"></i></a>
                           </div>
                        </div>
                     </div>
                     <div class="form-group">
                        <label>Confirm Password</label>
                        <div class="input-group" id="show_hide_cnfpassword">
                        <input type="password" required="true" name="cnfpassword" id="cnfpassword" class="form-control" placeholder="***********"> 
                        <div class="input-group-addon">
                          <a href=""><i class="glyphicon glyphicon-eye-close" aria-hidden="true"></i></a>
                        </div>
                     </div>
                     </div>
                     <h5 id="status"></h5>
                     <div class="form-group" style="text-align: center;">
                        <button type="submit" name="submit"  class="btn btns">Submit</button>
                     </div>
                     <!-- <p>New User ?. <button type="button" class="btn btn-primary" id="signup">Sign up</button></p> -->
                  </form>
                  <a href="#">Forget Password ?</a>
               </div>
            </div>
            <script type="text/javascript">
                
                function checkpassword() {
                    
                        
                    var password = document.getElementById("password").value;
                    var confirmPassword = document.getElementById("cnfpassword").value;
                    if (password==confirmPassword) {
                        
                        return true;
                    }
                    else{
                        
                        return false;
                    }
                };
               $(document).ready(function() {
                $("#show_hide_password a").on('click', function(event) {
                    event.preventDefault();
                    if($('#show_hide_password input').attr("type") == "text"){
                        $('#show_hide_password input').attr('type', 'password');
                        $('#show_hide_password i').removeClass( "glyphicon glyphicon-eye-open" );
                        $('#show_hide_password i').addClass( "glyphicon glyphicon-eye-close" );
                        
                    }else if($('#show_hide_password input').attr("type") == "password"){
                        $('#show_hide_password input').attr('type', 'text');
                        $('#show_hide_password i').removeClass( "glyphicon glyphicon-eye-close" );
                        $('#show_hide_password i').addClass( "glyphicon glyphicon-eye-open" );
                    }
                });

                $("#show_hide_cnfpassword a").on('click', function(event) {
                    event.preventDefault();
                    if($('#show_hide_cnfpassword input').attr("type") == "text"){
                        $('#show_hide_cnfpassword input').attr('type', 'password');
                        $('#show_hide_cnfpassword i').removeClass( "glyphicon glyphicon-eye-open" );
                        $('#show_hide_cnfpassword i').addClass( "glyphicon glyphicon-eye-close" );
                        
                    }else if($('#show_hide_cnfpassword input').attr("type") == "password"){
                        $('#show_hide_cnfpassword input').attr('type', 'text');
                        $('#show_hide_cnfpassword i').removeClass( "glyphicon glyphicon-eye-close" );
                        $('#show_hide_cnfpassword i').addClass( "glyphicon glyphicon-eye-open" );
                    }
                });
            });
            	function checkPasswordMatch() {
                    var password = $("#password").val();
                    var confirmPassword = $("#cnfpassword").val();
                    if (password != confirmPassword){
                     $("#status").html("Password does not match!");
                     $("#status").css("color","red");
                     $("#cnfpassword").css("border","1px solid red");

                    }  
                    else{
                     $("#status").html("Password matched.");
                     $("#status").css("color","green");
                     $("#cnfpassword").css("border","1px solid #66afe9");
                    }
                        
                }
                $(document).ready(function () {
                   $("#cnfpassword").keyup(checkPasswordMatch);
                });
            </script>         
         </div>
      </div>
   </div>
</div>
<br>
<br>
<?php include 'footer.php'?>