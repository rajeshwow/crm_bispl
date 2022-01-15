<?php include 'crm_userauth.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>
<?php 
$ueraccessquery = "SELECT * from crm_useraccess where email= '" . $_SESSION['email'] . "' ";
$result2 = mysqli_query($con, $ueraccessquery);
while ($row3 = mysqli_fetch_assoc($result2)) $user_access[] = $row3;

$sql = "SELECT email, password,usertype FROM crm_login where email = '".$_SESSION['email']."' ";
$result = mysqli_query($con, $sql) or die("Error: " . mysqli_error($con));
while($rw= mysqli_fetch_assoc($result))
	$row[] = $rw;
?>
<style>
.accordion {
	background-color: #eee;
	color: #444;
	cursor: pointer;
	padding: 6px;
	width: 100%;
	border: none;
	text-align: left;
	outline: none;
	text-transform: capitalize;
    font-size: 12px;
	transition: 0.4s;
}

.active, .accordion:hover {
	/*background-color: mintcream;*/
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
	margin-bottom: 1px;
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
.right-part{
	padding: 0 2%;
}
</style>
<div class="container-fluid">
	<div class="right-part" >
		<div class="rightpartitle">
			<span class="acttitle">sales register</span>
		</div>
		<br>
		<?php 
				if ($row[0]['usertype']=='Admin' || $user_access[0]['salesregister']== 'Yes') { ?>
		<div class="row">
			<div class="col-lg-6">
				<div class="input-group">
					<ul class="list-inline">
					<li>
						<div class="input-group">
						<span class="input-group-addon"><i class="fas fa-search"></i></span>
						<input type="text" id="myInput" class="form-control "  placeholder="Search ..." />
					</div>
					</li>
					<li>
					<span class="recordcount"> </span>
					</li>
				</ul>
				</div>
			</div>
			<div class="col-lg-5">
				<div class="ranges">
					<form class="form-inline" action="">
						<div class="form-group" id="yearly" >
							<!-- <select class="form-control" id="seleted_year" >
								<option value="2021" selected="selected">2021</option>
								<option value="2020">2020</option>
								<option value="2019">2019</option>
								<option value="2018">2018</option>
								<option value="2017">2017</option>
							</select> -->
							<?php
								$currently_selected = date('Y'); 
								$earliest_year = 2015; 
								$latest_year = date('Y'); 

								print '<select class="form-control" id="seleted_year">';
								foreach ( range( $latest_year, $earliest_year ) as $i ) {
									print '<option value="'.$i.'"'.($i === $currently_selected ? ' selected="selected"' : '').'>'.$i.'</option>';
								}
								print '</select>';
							?>
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
					</form>
				</div>
			</div>
			<div class="col-lg-1" style="text-align: right;">
				<span id="advbutton"><i class="fas fa-filter"></i></span>
			</div>
		</div><br>

		<div class="row">
			<div id="sales_register">
				<div id="loadingss">
					<h4>Loading...</h4>
				</div>
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

<script>
	$(document).ready(function(){
		$("#monthly,#yearly").hide();
		$("#advbutton").click(function(){
			$("#monthly").fadeToggle();
			$("#yearly").fadeToggle();
		});
		$("#seleted_year").on('change', function() {
			
			$('#months').prop('selectedIndex', 0);
			$('#months').toggleClass('animate__animated animate__shakeX animate__repeat-1');
		});

		
		$("#months").on('change', function() {
			var month = $(this).val();
			var years = $("#seleted_year").val();
			$.ajax({
				type: "POST",
				url: "get_salesregister.php",
				beforeSend: function(){
					$("#loadingss").show();
				},
				data: {
					yr: years,
					mnt: month
				},
				success: function (data) {
					$("#sales_register").html(data); 
				},
				complete:function(data){
					$("#loadingss").hide();
				}
			});
		});
	}); 
	$(document).ready(function(){
		$.ajax({
				type: "POST",
				url: "get_salesregister.php",
				beforeSend: function(){
					$("#loadingss").show();
				},
				data: {
					yr: null,
					mnt: null
				},
				success: function (data) {
					$("#sales_register").html(data); 
				},
				complete:function(data){
					$("#loadingss").hide();
				}
			});
	});
</script>
<script>
$(document).ready(function(){
  $("#myInput").keyup(function(){
   var bla = $('#myInput').val().toUpperCase();
   $( ".accordion" ).each(function(){
        var htxt=$(this).text().toUpperCase();
        if (htxt.indexOf(bla) > -1) {
            $(this).show();
        } else {
            $(this).hide();
        }
    });
  });
});
</script>
<?php include 'footer.php'; ?>
