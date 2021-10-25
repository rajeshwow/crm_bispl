<?php include 'crm_userauth.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>
<!-- <?php include 'getpresent.php'; ?> -->

<style>
.inventory_title{
	text-transform: uppercase;
	font-weight: bold;
}
.stock_wrapper{
	display: flex;
	flex-direction: row;
}
.stock_items{
	background: #fff;
	border-radius: 15px;
	margin-bottom: 15px;
	width: 33%;
	padding: 5px;
}
.single_crm {
	background: #fff;
	border-radius: 15px;
	text-align: center;
	margin-bottom: 15px;
	padding: 5px;
	box-shadow: 0 4px 11px #e9f1ff;
}
.crm_head {
	background: #FF7EA5;
	padding: 8px 20px;
	text-align: center;
	border-radius: 13px;
}
.crm_body {
	padding: 15px 23px;
}
.crm_bg_1 {
	background: #20DEFF !important;
}
.crm_bg_2 {
	background: #C388F6 !important;
}
th{
	background: none;
	position: relative;
}
table {
	/* position: relative; */
	border: none;
}
tr:nth-child(even) {
	background-color: white; 
}
</style>
<style>
.progress{
	border-radius: 3.2rem;
}
.completedd{
	background: forestgreen;
}
.openss{
	background: orange;
}
.failedd{
	background: darkred;
}
</style>
<?php  

$currentdate =  "SELECT * FROM crm_eps where CAST(renewed_at AS DATE) = curdate( ) union SELECT * FROM crm_fortinet where CAST(renewed_at AS DATE)= curdate( )";
$todayss = mysqli_query($con, $currentdate);
while($rtodayss = mysqli_fetch_assoc($todayss))
	$ttodays[] = $rtodayss;
$count_currentdate = count($ttodays);


    // echo "<script>alert('$count_currentdate');</script>"; 

$weekdate =  "SELECT * FROM crm_eps where `renewed_at` BETWEEN DATE_SUB( now( ) ,INTERVAL 7 DAY ) AND now( )
union 
SELECT * FROM crm_fortinet where `renewed_at` BETWEEN DATE_SUB( now( ) ,INTERVAL 7 DAY ) AND now( )";
$weeks = mysqli_query($con, $weekdate);
while($rweeks = mysqli_fetch_assoc($weeks))
	$tweeks[] = $rweeks;

$count_weekdate = count($tweeks);

$monthdate =  "SELECT * FROM crm_eps where `renewed_at` BETWEEN DATE_SUB( now( ) ,INTERVAL 30 DAY ) AND now( )
union 
SELECT * FROM crm_fortinet where `renewed_at` BETWEEN DATE_SUB( now( ) ,INTERVAL 30 DAY ) AND now( )";
$months = mysqli_query($con, $monthdate);
while($rmonths = mysqli_fetch_assoc($months))
	$tmonths[] = $rmonths;

$count_monthdate = count($tmonths);

$yeardate =  "SELECT * FROM crm_eps where `modify_on` BETWEEN DATE_SUB( now( ) ,INTERVAL 365 DAY ) AND now( )
union 
SELECT * FROM crm_fortinet where `modify_on` BETWEEN DATE_SUB( now( ) ,INTERVAL 365 DAY ) AND now( )";
$years = mysqli_query($con, $yeardate);
while($ryears = mysqli_fetch_assoc($years))
	$tyears[] = $ryears;
$count_yeardate = count($tyears);

$getdealer =  "SELECT * FROM crm_dealer order by createdon desc limit 0,4";
$result_dealer = mysqli_query($con, $getdealer);
while($rdealer = mysqli_fetch_assoc($result_dealer))
	$arr_dealer[] = $rdealer;

$getuser =  "SELECT * FROM crm_login order by createdon desc limit 0,4";
$result_user = mysqli_query($con, $getuser);
while($ruser = mysqli_fetch_assoc($result_user))
	$arr_user[] = $ruser;


$get_jaipur =  "SELECT * FROM tallydatainv_jaipur";
$result_jaipur = mysqli_query($con, $get_jaipur);
while($r_jaipur = mysqli_fetch_assoc($result_jaipur))
	$arr_jaipur[] = $r_jaipur;

$get_lucknow =  "SELECT * FROM tallydatainv_lucknow";
$result_lucknow = mysqli_query($con, $get_lucknow);
while($r_lucknow = mysqli_fetch_assoc($result_lucknow))
	$arr_lucknow[] = $r_lucknow;

$get_indore =  "SELECT * FROM tallydatainv_indore";
$result_indore = mysqli_query($con, $get_indore);
while($r_indore = mysqli_fetch_assoc($result_indore))
	$arr_indore[] = $r_indore;


$suspense_open =  "SELECT * FROM suspense where status = 'Open'";
$result_suspense_open = mysqli_query($con, $suspense_open);
while($r_suspense_open = mysqli_fetch_assoc($result_suspense_open))
	$arr_suspense_open[] = $r_suspense_open;

$suspense_completed =  "SELECT * FROM suspense where status = 'Completed'";
$result_suspense_completed = mysqli_query($con, $suspense_completed);
while($r_suspense_completed = mysqli_fetch_assoc($result_suspense_completed))
	$arr_suspense_completed[] = $r_suspense_completed;

$suspense_failed =  "SELECT * FROM suspense where status = 'Failed'";
$result_suspense_failed = mysqli_query($con, $suspense_failed);
while($r_suspense_failed = mysqli_fetch_assoc($result_suspense_failed))
	$arr_suspense_failed[] = $r_suspense_failed;

$suspense_total = count($arr_suspense_failed)+ count($arr_suspense_completed)+count($arr_suspense_open);


$funnel_failed =  "SELECT * FROM funnel where status = 'closed'";
$result_funnel_failed = mysqli_query($con, $funnel_failed);
while($r_funnel_failed = mysqli_fetch_assoc($result_funnel_failed))
	$arr_funnel_failed[] = $r_funnel_failed;



$funnel_open =  "SELECT * FROM funnel where status = 'open'";
$result_funnel_open = mysqli_query($con, $funnel_open);
while($r_funnel_open = mysqli_fetch_assoc($result_funnel_open))
	$arr_funnel_open[] = $r_funnel_open;

$funnel_total = count($arr_funnel_open)+ count($arr_funnel_failed);


$getperform =  "SELECT updated_by, SUM(counts) as count FROM (
(select `updated_by`,COUNT(updated_by) as counts FROM crm_fortinet where `renewed_at` != '' GROUP BY updated_by) union ALL 
(select `updated_by`,COUNT(updated_by) as counts FROM crm_eps where `renewed_at` != '' GROUP BY updated_by) )derivedTable GROUP BY updated_by ORDER by count DESC";
$result_perform = mysqli_query($con, $getperform);
while($rperform = mysqli_fetch_assoc($result_perform))
	$arr_perform[] = $rperform;

$getperform_funnel =  "select `reporter_close`,COUNT(reporter_close) as counts FROM funnel where `reporter_close` != '' GROUP BY reporter_close ORDER by counts DESC";
$result_perform_funnel = mysqli_query($con, $getperform_funnel);
while($rperform_funnel = mysqli_fetch_assoc($result_perform_funnel))
	$arr_perform_funnel[] = $rperform_funnel;

?>




<div class="container-fluid">
	<div class="right-part" style="background-color: #F6F7FB;">
		<div class="row">
			<div class="col-lg-6">

				<div class="box_wrapper">
					
					<div class="title_items">
						<div class="h4" style="text-align: center;">Renewal</div>
					</div>

					<div class="stat_wrapper">
						<div class="stat_items box1">
							<div class="statcountt"><?php echo $count_currentdate; ?></div>
							<div class="stattimee">Today</div>
						</div>
						<div class="stat_items box2">
							<div class="statcountt"><?php echo $count_weekdate; ?></div>
							<div class="stattimee">This Week</div>
						</div>
						<div class="stat_items box3">
							<div class="statcountt"><?php echo $count_monthdate; ?></div>
							<div class="stattimee">This Month</div>
						</div>
						<div class="stat_items box4">
							<div class="statcountt"><?php echo $total_records; ?></div>
							<!-- <div class="statcountt"><span id="showttlrecord"></span></div> -->
							<div class="stattimee">Records</div>
						</div>
					</div>
				</div>
				<br>
				<style>
				.title_wrapper{
					display: flex;
					flex-direction: row;
					justify-content: space-between;
				}
			</style>
			<div class="box_wrapper">
				<div class="title_wrapper">
					<div class="title_items">
						<div class="h4" style="text-align: center;">Renewal Stats</div>
					</div>
					<div class="title_items">
						<form class="form-inline" action="">
							<div class="form-group">
								<label for="usr"><small>Start Date</small>:</label><br>
								<input type="date" value="<?php echo date("Y-m-d", strtotime('-30 days'));?>"  class="form-control input-sm" name="start_date" id="start_date">
							</div>
							<div class="form-group">
								<label for="usr"><small>End Date</small>:</label><br>
								<input type="date" value="<?php echo date("Y-m-d");?>" class="form-control input-sm" name="end_date" id="end_date">
							</div>
						</form>
					</div>
				</div>
				<br>

				<div id="circle_div">

				</div>
			</div>

		</div>
		<div class="col-lg-6">
			<div class="box_wrapper">
				<div class="title_wrapper">
					<div class="title_items">
						<div class="h4" style="text-align: center;">Renewal</div>
					</div>
					<div class="title_items">
						<form class="form-inline" action="">
							<div class="form-group">
								<select class="form-control input-sm" id="updategraph">
									<option selected  value="7">Past 7 days</option>
									<option value="30">Past 30 days</option>
									<option value="90">Past 3 months</option>

								</select>
							</div>
						</form>
					</div>
				</div>

				<div id="graphs"></div>
				<br>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>S.no</th>
							<th>Email</th>
							<th>Renewals</th>
						</tr>
					</thead>
					<tbody>
						<?php 
						$i = 0;
						while($i< count($arr_perform)){ ?>

							<tr>
								<td><?php echo $i+1 ?></td>
								<td><?php echo $arr_perform[$i]['updated_by'] ?></td>
								<td><?php echo $arr_perform[$i]['count']  ?></td>
							</tr>

							<?php $i++; }
							?>
						</tbody>

					</table>
				</div>


			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-lg-6">
				<div class="box_wrapper">
					<div class="title_items">
						<div class="h4" style="text-align: center;">Users</div>
					</div>
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Email</th>
								<th>Usertype</th>
								<th>Created On</th>
							</tr>
						</thead>
						<tbody>
							<?php 
							$i = 0;
							while($i< count($arr_user)){ ?>

								<tr>
									<td><?php echo $arr_user[$i]['email'] ?></td>
									<td><?php echo $arr_user[$i]['usertype'] ?></td>
									<td><?php echo date_format(date_create($arr_user[$i]['createdon']),"d-m-Y")  ?></td>
								</tr>

								<?php $i++; }
								?>
							</tbody>

						</table>
						<a style="text-align: center;display: block;" href="./createuser.php">More</a>
					</div>

				</div>
				<div class="col-lg-6">
					<div class="box_wrapper">
						<div class="title_items">
							<div class="h4" style="text-align: center;">Stock Summary</div>
						</div>
						<div class="stock_wrapper">
							<div class="stock_items">
								<div class="single_crm">
									<div class="crm_head d-flex align-items-center justify-content-between">
										<div class="thumb">
											<i class="fas  fa-boxes" style="color:white"></i>
										</div>
									</div>
									<div class="crm_body">
										<h4><?php echo count($arr_jaipur); ?></h4>
										<p>Jaipur</p>
									</div>
								</div>
							</div>
							<div class="stock_items">
								<div class="single_crm">
									<div class="crm_head crm_bg_1 d-flex align-items-center justify-content-between">
										<div class="thumb">
											<i class="fas  fa-boxes" style="color:white"></i>
										</div>
									</div>
									<div class="crm_body">
										<h4><?php echo count($arr_indore); ?></h4>
										<p>Indore</p>
									</div>
								</div>
							</div>
							<div class="stock_items">
								<div class="single_crm">
									<div class="crm_head crm_bg_2 d-flex align-items-center justify-content-between">
										<div class="thumb">
											<i class="fas  fa-boxes" style="color:white"></i>
										</div>
									</div>
									<div class="crm_body">
										<h4><?php echo count($arr_lucknow); ?></h4>
										<p>Lucknow</p>
									</div>
								</div>
							</div>
						<!-- <div class="stock_items" style="border: 1px solid lightgray;color: gray;">
							<div class="inventory_title" >
								Indore
							</div>
							<div class="inventory_count">
								<?php echo count($arr_indore); ?>
							</div>
						</div>
						<div class="stock_items" style="border: 1px solid lightgray;color: gray;">
							<div class="inventory_title" >
								Lucknow
							</div>
							<div class="inventory_count">
								<?php echo count($arr_lucknow); ?>
							</div>
						</div> -->
					</div>


				</div>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-lg-6">
				<div class="box_wrapper">
					<div class="title_items">
						<div class="h4" style="text-align: center;">Suspense Management</div>
					</div>
					<br>
					<div class="stat_wrapper" style="flex-direction: column;">

						<label for="">Total Records: <?php echo $suspense_total; ?></label>
						<br>
						<!-- <div class="progress">
							<div class="progress-bar Completedd" role="progressbar" style="width:<?php echo round(count($arr_suspense_open)/$suspense_total *100,2)  ?>%;background:forestgreen ;">
								Completed
							</div>
							<div class="progress-bar openss" role="progressbar" style="width:<?php echo round(count($arr_suspense_open)/$suspense_total *100,2)  ?>%;background: orange;">
								Open
							</div>
							<div class="progress-bar failedd" role="progressbar" style="width:<?php echo round(count($arr_suspense_failed)/$suspense_total *100,2)  ?>%;background:darkred ;">
								Failed
							</div>
						</div> -->





						<p for="">Completed <?php echo round(count($arr_suspense_completed)/$suspense_total *100,2) . '%'; ?></p>
						<div class="progress" style="height: 10px;">
							<div class="progress-bar completedd" role="progressbar" 
							aria-valuemin="0" aria-valuemax="100" style="width:<?php echo round(count($arr_suspense_completed)/$suspense_total *100,2) ?>%">
						</div>
					</div>
					<p for="">Open <?php echo round(count($arr_suspense_open)/$suspense_total *100,2) . '%'; ?></p>
					<div class="progress" style="height: 10px;">
						<div class="progress-bar openss" role="progressbar" 
						aria-valuemin="0" aria-valuemax="100" style="width:<?php echo round(count($arr_suspense_open)/$suspense_total *100,2) ?>%">
					</div>
				</div>

				<p for="">Failed <?php echo round(count($arr_suspense_failed)/$suspense_total *100,2) . '%'; ?></p>
				<div class="progress" style="height: 10px;">
					<div class="progress-bar failedd" role="progressbar" 
					aria-valuemin="0" aria-valuemax="100" style="width:<?php echo round(count($arr_suspense_failed)/$suspense_total *100,2) ?>%">
				</div>
			</div>
			
					<!-- <div class="stat_items" style="border: 1px solid lightgray;color: white;background: orange;">
						<div class="inventory_title" >
							Open
						</div>
						<div class="inventory_count">
							<?php echo count($arr_suspense_open); ?>
						</div>
						<?php echo round(count($arr_suspense_open)/$suspense_total *100,2) . " %"; ?>
					</div>
					<div class="stat_items" style="border: 1px solid lightgray;color: white;background:forestgreen ;">
						<div class="inventory_title" >
							Completed
						</div>
						<div class="inventory_count">
							<?php echo count($arr_suspense_completed); ?>
						</div>
					</div>
					<div class="stat_items" style="border: 1px solid lightgray;color: white;background:darkred ;">
						<div class="inventory_title" >
							Failed
						</div>
						<div class="inventory_count">
							<?php echo count($arr_suspense_failed); ?>
						</div>
					</div> -->
				</div>
			</div>
		</div>
		<div class="col-lg-6">
			<div class="box_wrapper">

				<div class="title_items">
					<div class="h4" style="text-align: center;">Funnel</div>
				</div>

				<div class="stat_wrapper">
					<div class="stat_items box2">
						<div class="statcountt"><?php echo $funnel_total; ?></div>
						<div class="stattimee">Total</div>
					</div>
					<div class="stat_items box1">
						<div class="statcountt"><?php echo count($arr_funnel_open); ?></div>
						<p><?php echo round(count($arr_funnel_open)/$funnel_total*100,2) . "%"; ?></p>
						<div class="stattimee">Open</div>
					</div>
					<div class="stat_items box3">
						<div class="statcountt"><?php echo count($arr_funnel_failed); ?></div>
						<p><?php echo round(count($arr_funnel_failed)/$funnel_total*100,2) . "%"; ?></p>
						<div class="stattimee">Closed</div>
					</div>
				</div>
				<br>

				<table class="table table-hover">
					<thead>
						<tr>
							<th>S.no</th>
							<th>Email</th>
							<th>closed</th>
						</tr>
					</thead>
					<tbody>
						<?php 
						$i = 0;
						while($i< count($arr_perform_funnel)){ ?>

							<tr>
								<td><?php echo $i+1 ?></td>
								<td><?php echo $arr_perform_funnel[$i]['reporter_close'] ?></td>
								<td><?php echo $arr_perform_funnel[$i]['counts']  ?></td>
							</tr>

							<?php $i++; }
							?>
						</tbody>

					</table>
				</div>
				

				<br>


				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-lg-6">
					<div class="box_wrapper">
					<div class="title_items">
						<div class="h4" style="text-align: center;">Dealers</div>
					</div>
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Company</th>
								<th>Mobile</th>
								<th>Created On</th>
							</tr>
						</thead>
						<tbody>
							<?php 
							$i = 0;
							while($i< count($arr_dealer)){ ?>

								<tr>
									<td><?php echo $arr_dealer[$i]['company'] ?></td>
									<td><?php echo $arr_dealer[$i]['mobile'] ?></td>
									<td><?php echo date_format(date_create($arr_dealer[$i]['createdon']),"d-m-Y")  ?></td>
								</tr>

								<?php $i++; }
								?>
							</tbody>

						</table>
						<a style="text-align: center;display: block;" href="./dealers.php">More</a>
					</div>
				</div>
			</div>













		</div>
	</div>






	<script src="./progresscircle.js"></script>
	<script>
		$(function(){

			$('.circlechart').circlechart();

		});
	</script>

	<script>
            // alert(document.getElementById('start_date').value);
            // alert(document.getElementById('end_date').value);
            $("#start_date, #end_date").on('change', function() {
            	var start_date = $("#start_date").val();
            	var end_date =   $("#end_date").val();
            	$.ajax({
            		type: "POST",
            		url: "getpresent.php",
            		data: {
            			start_date: start_date,
            			end_date:  end_date
            		},
            		success: function (data) {
                  // alert(data);
                  $("#circle_div").html(data); 
              }
          });
            });
            $(document).ready(function() { 
            	var start_date = $("#start_date").val();
            	var end_date =   $("#end_date").val();
            	$.ajax({
            		type: "POST",
            		url: "getpresent.php",
            		data: {
            			start_date: start_date,
            			end_date:  end_date
            		},
            		success: function (data) {
                  // alert(data);
                  $("#circle_div").html(data); 
              }
          });
            });



            $(document).ready(function() { 
            	var daysss = $("#updategraph").val();
               // alert(daysss);
               $.ajax({
               	type: "POST",
               	url: "getgraph.php",
               	data:{
               		days: daysss
               	},
               	success: function (data) {
                  // alert(data);
                  $("#graphs").html(data); 
              }
          });
           });
            $("#updategraph").on('change', function() {
            	var days = $(this).val();
             // alert(days);
             var end_date =   $("#end_date").val();
             $.ajax({
             	type: "POST",
             	url: "getgraph.php",
             	data: {
             		days: days
             	},
             	success: function (data) {
                  // alert(data);
                  $("#graphs").html(data); 
              }
          });
         });
     </script>

     <?php include 'footer.php'; ?>
