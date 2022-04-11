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
			<span class="acttitle">sales Report</span>
		</div>
		<br>
		<div class="row">
			<div class="col-lg-11">
				<div class="ranges">
					<form class="form-inline" action="">
						<div class="form-group" id="yearly" >
							<select class="form-control" id="seleted_year" >
							    <option value="2022-2023" selected="selected">2022-23</option>
								<option value="2021-2022">2021-22</option>
								<option value="2020-2021">2020-21</option>
								<option value="2019-2020">2019-20</option>
							</select>
						</div>
						<!-- <div class="form-group" id="quarterly" >
							<select class="form-control datecheck" id="quarters" >
								<option selected="selected" disabled="true">Select Quarter</option>
								<option value="Q1">Quarter 1</option>
								<option value="Q2">Quarter 2</option>
								<option value="Q3">Quarter 3</option>
								<option value="Q4">Quarter 4</option>
							</select>
						</div>
						<div class="form-group" id="monthly" >
							<select class="form-control datecheck" id="months" >
								<option selected="selected" disabled="true">Select Month</option>
								<option value="01">Jan</option>
								<option value="02">Feb</option>
								<option value="03">Mar</option>
								<option value="04">Apr</option>
								<option value="05">May</option>
								<option value="06">Jun</option>
								<option value="07">Jul</option>
								<option value="08">Aug</option>
								<option value="09">Sep</option>
								<option value="10">Oct</option>
								<option value="11">Nov</option>
								<option value="12">Dec</option>
							</select>
						</div>
						<div class="form-group" id="select_type">
							<select class="form-control selectwidth" id="selected_type">
								<option disabled="true" selected="true">Select Type</option>
								<option value="quarterly">Quaterly</option>
								<option value="monthly">Monthly</option>
							</select>
						</div> -->
						<!-- <div class="form-group" style="text-align: left;">
							<label for="usr"><small>Start Date</small>:</label><br>
							<input type="date" value="<?php echo date("Y-m-d", strtotime('-30 days'));?>"  class="form-control input-sm" name="start_date" id="start_date">
						</div>
						<div class="form-group" style="text-align: left;">
							<label for="usr"><small>End Date</small>:</label><br>
							<input type="date" value="<?php echo date("Y-m-d");?>" class="form-control input-sm" name="end_date" id="end_date">
						</div> -->
					</form>
				</div>
			</div>
			<div class="col-lg-1" style="text-align: center;">
				<span id="advbutton"><i class="fas fa-filter"></i></span>
			</div>
		</div>
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
				if ($row[0]['usertype']=='Admin' || $user_access[0]['salesreport']== 'Yes') { ?>
					<div id="sales">
						<div id="loadingss">

							<h4>Loading...</h4>
						</div>
					</div>
				<?php	} else{ ?>

					<div class="alert alert-danger">
						<strong>Unauthorised Access !</strong> Uh hoo..You don't have access to view this page. Contact to Admin.
					</div>
				<?php } ?>
			</div>
		</div>
	</div>
</div>

<script>
	var acc = document.getElementsByClassName("accordion");
	var i;

	for (i = 0; i < acc.length; i++) {
		acc[i].addEventListener("click", function() {
			this.classList.toggle("active");
			var panel = this.nextElementSibling;
			if (panel.style.maxHeight) {
				panel.style.maxHeight = null;
			} else {
				panel.style.maxHeight = panel.scrollHeight + "px";
			} 
		});
	}

	$(document).ready(function(){
		// $("#quarterly,#monthly,#select_type,#yearly").hide();
		$("#advbutton").click(function(){
			$("#select_type").fadeToggle();
			$("#quarterly").hide();
			$("#monthly").hide();
			$("#yearly").fadeToggle();
		});
		// $("#select_type").on('change', function() {
		// 	var selected_type = $("#selected_type").val();
		// 	$("#yearly").show();
		// 	if (selected_type == 'quarterly') {
		// 		$("#quarterly").show();
		// 		$("#monthly").hide();
		// 	}
		// 	else{
		// 		$("#monthly").show();
		// 		$("#quarterly").hide();
		// 	}
		// });
		// $("#seleted_year").on('change', function() {
			
		// 	$('#months,#quarters').prop('selectedIndex', 0);
		// 	$('#months,#quarters').toggleClass('animate__animated animate__shakeX animate__repeat-1');
		// });
		$("#seleted_year").on('change', function() {
			// var monthorquarter = $(this).val();
			var years = $(this).val();
			$.ajax({
				type: "POST",
				url: "get_salesreport.php",
				beforeSend: function(){
					$("#loadingss").show();
				},
				data: {
					yr: years,
				},
				success: function (data) {
					$("#sales").html(data); 
				},
				complete:function(data){
					$("#loadingss").hide();
				}
			});
			// if (monthorquarter == 'Q1'|| monthorquarter == 'Q2' || monthorquarter == 'Q3' || monthorquarter == 'Q4') {
			// 	alert("Quarter "+monthorquarter);

			// }
			// else{
			// 	alert("month "+monthorquarter);
			// }
			
			// if (selected_type == 'quarterly') {
			// 	$("#quarterly").show();
			// 	$("#monthly").hide();
			// }
			// else{
			// 	$("#monthly").show();
			// 	$("#quarterly").hide();
			// }
		});
	});
	// $(document).ready(function() { 
		

	// 	$("#start_date, #end_date").on('change', function() {
	// 		var start_date = $("#start_date").val();
	// 		var end_date =   $("#end_date").val();
	// 		$.ajax({
	// 			type: "POST",
	// 			url: "get_salesreport.php",
	// 			data: {
	// 				start_date: start_date,
	// 				end_date:  end_date
	// 			},
	// 			success: function (data) {
 //                  $("#sales").html(data); 
 //              }
 //          });
	// 	});
	// });
	$(document).ready(function() { 
		var years = $("#seleted_year").val();
		$.ajax({
			type: "POST",
			url: "get_salesreport.php",
			beforeSend: function(){
				$("#loadingss").show();
			},
			data: {
				yr: years,
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