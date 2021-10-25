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
</style>
<div class="container-fluid">
	<div class="right-part" >
		<div class="rightpartitle">
			<span class="acttitle">Item wise sales Report</span>
		</div>
		<br>
		<div class="row">
			<div class="col-lg-12">
				<div class="ranges">
					<form class="form-inline" action="">
						<div class="form-group" style="text-align: left;">
							<label for="usr"><small>Start Date</small>:</label><br>
							<input type="date" value="<?php echo date("Y-m-d", strtotime('-30 days'));?>"  class="form-control input-sm" name="start_date" id="start_date">
						</div>
						<div class="form-group" style="text-align: left;">
							<label for="usr"><small>End Date</small>:</label><br>
							<input type="date" value="<?php echo date("Y-m-d");?>" class="form-control input-sm" name="end_date" id="end_date">
						</div>
					</form>
				</div>
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