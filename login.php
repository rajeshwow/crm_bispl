<?php
session_start();
?>
<?php include 'header.php'?>
<?php include 'nav.php'?>



<style type="text/css">
	.loginformm{
		width: 500px;
		display: block;
		text-align: left;
		background-color: white;
		box-shadow: 0px 0px 14px -8px rgba(115, 109, 115, 0.67);
		padding: 5%;
		margin: 5% 0%;

	}
	.logform{
		
	}
	body{
		background-color: #F2F3F4 !important;
	}
</style>

<?php include 'config.php'?>
<div class="logform">
<div class="container" >
	<div class="row">
		<div class="col-lg-12" style="text-align: -webkit-center; " >
			<div class="loginformm">
			<div class="formcontrol">
			<h1 style="text-align: center;">Admin Login</h1>
			<form  method="POST" autocomplete="off" >
				<input autocomplete="false" name="hidden" type="text" style="display:none;">
			  <div class="form-group">
			    <label >Email address</label>
			    <input autocomplete="off" type="email" required="true" name="email" id="email" class="form-control" placeholder="example@ybl.com"  aria-describedby="emailHelp">
			    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
			  </div>
			  <div class="form-group">
			    <label >Password</label>
			    <input type="password" required="true" name="password" id="password" class="form-control"  placeholder="***********">
			  </div>
			  <h5 style="color: red"><?php
                    if(isset($_SESSION["error"])){
                        $error = $_SESSION["error"];
                        echo "<span>$error</span>";
                    }
                ?> </h5>
			  <div class="form-group" style="text-align: center;">
			  <button type="submit"  name="submit" formaction="./loginvalidate.php"  class="primary-btn-app">Submit</button>
			</div>
			   
			</form>
				
			
		</div>
		</div>
	</div>
	</div>
	
	
</div>
</div>
<br><br>
<?php include 'footer.php'?>