<?php include 'config.php'; ?>
<?php  
$ueraccessquery = "SELECT * from crm_useraccess where email= '".$_SESSION['email']."' ";
$result_ueraccessquery = mysqli_query($con, $ueraccessquery);
while($row_ueraccessquery = mysqli_fetch_assoc($result_ueraccessquery))
	$ueraccess_arr[] = $row_ueraccessquery;

$ueraccess_str = $ueraccess_arr[0]['outstandings_access'];
$x_ueraccess_str = explode(",",$ueraccess_str);
for ($sri=0; $sri < count($x_ueraccess_str)-1; $sri++) { 
	
	$salesregrp_arrs .= $x_ueraccess_str[$sri]. ",";
}
$salesregrp_arrs = rtrim($salesregrp_arrs, ",");
$str_arr = explode (",", $salesregrp_arrs);
$costcentre_count = count($str_arr);
$i= 0;

 $start_date = '2019-04-01';
 $end_date = date('Y-m-d');
?>
<?php while ($i < $costcentre_count){ ?>

	<button type="button" class="accordion">
		<span style="width: 300px;display: inline-block;color: darkblue;font-weight: bold;"><span><i class="fas fa-user-tie"></i></span> <?php echo $str_arr[$i] ?></span></button>

		<div class="panel">
			<div class="perorma">
				<div class="row">
					<div class="col-lg-12">
						<div class="table-responsive">
							<table  class="table table-bordered">
								<thead>
									<tr>
										<th>Date</th>
										<th>Party</th>
										<th>Amount</th>
										<th>overdue Days</th>

									</tr>
								</thead>
								<tbody>
									<?php 
									unset($arr_getitem_query);
									$arr_getitem_query = array();
                                     $str_arr[$i];
                                     $start_date;
                                     $end_date;
									$getitem_query = "SELECT * FROM (
									(SELECT a.costcentre,a.itemname,b.overdueday,b.party,b.bill_date,b.pendingamount FROM `tallyoutstanding_jaipur` b  LEFT JOIN crm_salesreport a  ON a.party = b.party and a.vdate = b.bill_date WHERE bill_date BETWEEN '$start_date' and '$end_date' AND a.costcentre = '".$str_arr[$i]."' group by party,bill_date  ) 
									union all 
									(SELECT a.costcentre,a.itemname,b.overdueday,b.party,b.bill_date,b.pendingamount FROM `tallyoutstanding_indore` b  LEFT JOIN crm_salesreport_indore a  ON a.party = b.party and a.vdate = b.bill_date WHERE bill_date BETWEEN '$start_date' and '$end_date' AND a.costcentre = '".$str_arr[$i]."'  group by party,bill_date ) 
									union all
									(SELECT a.costcentre,a.itemname,b.overdueday,b.party,b.bill_date,b.pendingamount FROM `tallyoutstanding_lucknow` b  LEFT JOIN crm_salesreport_lucknow a  ON a.party = b.party and a.vdate = b.bill_date WHERE bill_date BETWEEN '$start_date' and '$end_date' AND a.costcentre = '".$str_arr[$i]."' group by party,bill_date  ) 
									)
									derivedtable   ORDER BY party";

									$result_getitem_query = mysqli_query($con, $getitem_query);

									while($row_getitem_query= mysqli_fetch_assoc($result_getitem_query)){

										$arr_getitem_query[] = $row_getitem_query;
									}
									 $count_getitem_query = count($arr_getitem_query);

									$item_i = 0;
									while ($item_i<$count_getitem_query) { ?>
										<tr>
											<td><?php echo $arr_getitem_query[$item_i]['bill_date'];?></td>
											<td><?php echo $arr_getitem_query[$item_i]['party'];?></td>
											<td><?php echo $arr_getitem_query[$item_i]['pendingamount'];?></td>
											<td><?php echo $arr_getitem_query[$item_i]['overdueday'];?></td>
										</tr>
										<?php $item_i++; }
										?>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<?php $i++; } ?>






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
							panel.style.maxHeight =  panel.scrollHeight + "px";
						} 
					});
				}			
			</script>


