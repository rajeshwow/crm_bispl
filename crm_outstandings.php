<?php include 'crm_userauth.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>
<style>

	.ranges{
		text-align: right;
	}
	#advbutton{
		/* border: 1px solid white; */
		padding: 5px 20px;
		/* background-color: lightgray; */
		display: inline-block;
		cursor: pointer;
		box-shadow: 0px 0px 20px 4px rgb(128 121 128 / 58%);
		color: white;
		background: linear-gradient( 
			138.77deg
			,#0a1157 21.17%,#0a1157 21.18%,#1d51a8 94.74%);
		border-radius: 5px;
	}
</style>
<div class="container-fluid">
	<div class="right-part" >
		<div class="rightpartitle">
			<span class="acttitle">Outstandings</span>
		</div>
		<!-- <br>
		<div class="row">
			<div class="col-lg-11">
				<div class="ranges">
					<form class="form-inline" action="">
						<div class="form-group" id="yearly" >
							<select class="form-control" id="seleted_year" >
								<option value="2021-2022" selected="selected">2021-22</option>
								<option value="2020-2021">2020-21</option>
								<option value="2019-2020">2019-20</option>
							</select>
						</div>
						<div class="form-group" id="select_type">
							<select class="form-control selectwidth" id="selected_type">
								<option disabled="true" selected="true">Select Type</option>
								<option value="quarterly">Quaterly</option>
								<option value="monthly">Monthly</option>
							</select>
						</div> 
					</form>
				</div>
			</div>
			<div class="col-lg-1" style="text-align: center;">
				<span id="advbutton"><i class="fas fa-filter"></i></span>
			</div>
		</div> -->
		<br>
		<?php 
		$ueraccessquery = "SELECT * from crm_useraccess where email= '" . $_SESSION['email'] . "' ";
		$result2 = mysqli_query($con, $ueraccessquery);
		while ($row3 = mysqli_fetch_assoc($result2)) 
			$user_access[] = $row3;

		$sql = "SELECT email, password,usertype FROM crm_login where email = '".$_SESSION['email']."' ";
		$result = mysqli_query($con, $sql) or die("Error: " . mysqli_error($con));
		while($rw= mysqli_fetch_assoc($result))
			$row[] = $rw;
		?>
		<div class="row">
			<div class="col-lg-12">
				<?php 
				if ($row[0]['usertype']=='Admin' || $user_access[0]['outstandings']== 'Yes') { ?>
					<div id="sales">
						<div id="loadingss">

							<h4>Loading...</h4>
						</div>
					</div>
				<?php	} else{ ?>

					<div class="alert alert-danger">
						<strong>Unauthorised Access !</strong> Uh hoo..You don't have access to view this page. Contact to Admin.
					</div>
				<?php }
				?>
			</div>
		</div>
	</div>
</div>

<script>
	
	$(document).ready(function() { 
		var years = $("#seleted_year").val();
		$.ajax({
			type: "POST",
			url: "get_outstandings.php",
			beforeSend: function(){
				$("#loadingss").show();
			},
			success: function (data) {
				$("#sales").html(data); 
			},
			complete:function(data){
				$("#loadingss").hide();
			}
		});
	});
</script>

<?php include 'footer.php'; ?>