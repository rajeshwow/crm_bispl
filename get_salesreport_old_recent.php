<?php include 'crm_userauth.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>
<style>
.accordion {
	background-color: #eee;
	color: #444;
	cursor: pointer;
	padding: 18px;
	width: 100%;
	border: none;
	text-align: left;
	outline: none;
	font-size: 15px;
	transition: 0.4s;
}
.active, .accordion:hover {
	background-color: mintcream;
}
.accordion:after {
	content: '\002B';
	color: #777;
	font-weight: bold;
	float: right;
	margin-left: 5px;
}
.active:after {
	content: "\2212";
}
.panel {
	padding: 0 18px;
	background-color: white;
	max-height: 0;
	overflow: hidden;
	transition: max-height 0.2s ease-out;
}
.ranges{
	text-align: right;
}
#advbutton{
	border: 1px solid lightgray;
	padding: 5px 20px;
	/* background-color: lightgray; */
	display: inline-block;
	cursor: pointer;
	box-shadow: 0px 25px 34px 0px rgba(128,121,128,0.58);
	border-radius: 5px;
}
</style>
<div class="container-fluid">
	<div class="right-part" >
		<div class="rightpartitle">
			<span class="acttitle">Item wise sales Report</span>
		</div>
		<br>
		<div class="row">
			<div class="col-lg-11">
				<div class="ranges">
					<form class="form-inline" action="" id="filterform">
						<div class="form-group" id="yearly" >
							<select class="form-control" id="seleted_year" >
								<option value="2021" selected="true" >2021</option>
								<option value="2020">2020</option>
								<option value="2019">2019</option>
								<option value="2018">2018</option>
								<option value="2017">2017</option>
							</select>
						</div>
						<div class="form-group" id="quarterly" >
							<select class="form-control " id="quarters" >
								<option  disabled="disabled">Select Quarter</option>
								<option value="Q1">Quarter 1</option>
								<option value="Q2">Quarter 2</option>
								<option value="Q3">Quarter 3</option>
								<option value="Q4">Quarter 4</option>
							</select>
						</div>
						<div class="form-group" id="monthly" >
							<select class="form-control " id="months" >
								<option  disabled="disabled">Select Month</option>
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
						</div>
						<button type="submit" id="submits" class="btn btn-info">Filter</button>
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
			<div class="col-lg-1" style="text-align: right;">
				<span id="advbutton"><i class="fas fa-filter"></i></span>
			</div>
		</div><br>
		<div class="row">
			<div class="col-lg-12">
				<div id="sales">

				</div>

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
		$("#quarterly,#monthly,#select_type,#yearly").hide();
		$("#advbutton").click(function(){
			$("#select_type").fadeToggle();
			$("#quarterly").hide();
			$("#monthly").hide();
			$("#yearly").hide();
		});
		$("#select_type").on('change', function() {
			var selected_type = $("#selected_type").val();
			$("#yearly").show();
			if (selected_type == 'quarterly') {
				$("#quarterly").show();
				$("#monthly").hide();
			}
			else{
				$("#monthly").show();
				$("#quarterly").hide();
			}
		});
		$("#filterform").on('submit', function() {
			var monthorquarter = $(this).val();
			var years = $("#seleted_year").val();
			$.ajax({
					type: "POST",
					url: "get_salesreport.php",
					data: {
						yr: years,
						mnt: monthorquarter
					},
					success: function (data) {
                  // alert(data);
                  $("#sales").html(data); 
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
	$(document).ready(function() { 
		

		$("#start_date, #end_date").on('change', function() {
			var start_date = $("#start_date").val();
			var end_date =   $("#end_date").val();
			$.ajax({
				type: "POST",
				url: "get_salesreport.php",
				data: {
					start_date: start_date,
					end_date:  end_date
				},
				success: function (data) {
                  // alert(data);
                  $("#sales").html(data); 
              }
          });
		});
	});
	$(document).ready(function() { 
		var start_date = $("#start_date").val();
		var end_date =   $("#end_date").val();
		$.ajax({
			type: "POST",
			url: "get_salesreport.php",
			data: {
				start_date: start_date,
				end_date:  end_date
			},
			success: function (data) {
				// alert(data);
				$("#sales").html(data); 
			}
		});
	});
</script>

<?php include 'footer.php'; ?>