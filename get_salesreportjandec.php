<?php include 'config.php'; ?>

<?php
$currents_year = $_POST['yr'];
$start_date = $currents_year . '-01-01';
$end_date = $currents_year . '-12-31';
// $year =$_POST['yr']; //date_format(date_create($_POST['start_date']),"d-m-Y");
// $month =$_POST['mnt'];   //date_format(date_create($_POST['end_date']),"d-m-Y");
// if ($year != null && $month == null) {
// 	$start_date = "Null";
// 	$end_date = "Null";
// 	$lastmonth = date('m', strtotime('-1 month'));
// 	$d=cal_days_in_month(CAL_GREGORIAN,$lastmonth,$year);
// 	$start_date = $year.'-'.$lastmonth.'-01';
// 	$end_date = $year.'-'.$lastmonth.'-'.$d;
// }
// else if ($month == 'Q1'||$month == 'Q2'||$month == 'Q3'||$month == 'Q4') {
// 	$quartercount = explode('Q',$month);
// 	$quartercount[1];
// 	$smonth = sprintf("%02d", 3*$quartercount[1]-2);
// 	$endmonth = sprintf("%02d", 3*$quartercount[1]);
// 	$start_date = $year.'-'.$smonth.'-01';
// 	$d=cal_days_in_month(CAL_GREGORIAN,$endmonth,$year);
// 	$end_date = $year.'-'.$endmonth.'-'.$d;
// }
// else{
// 	$d=cal_days_in_month(CAL_GREGORIAN,$month,$year);
// 	$start_date = $year.'-'.$month.'-01';
// 	$end_date = $year.'-'.$month.'-'.$d;
// }
$acc_title = "select DISTINCT costcentre,round(SUM(amount) ,2) as Amount FROM(
(select DISTINCT costcentre,round(SUM(amount) ,2) as amount FROM crm_salesreport WHERE vdate BETWEEN '$start_date'  and '$end_date'  GROUP BY costcentre)
UNION
(select DISTINCT costcentre,round(SUM(amount) ,2) as amount FROM crm_salesreport_indore WHERE vdate BETWEEN '$start_date'  and '$end_date'  GROUP BY costcentre)
UNION
(select DISTINCT costcentre,round(SUM(amount) ,2) as amount FROM crm_salesreport_lucknow WHERE vdate BETWEEN '$start_date'  and '$end_date'  GROUP BY costcentre)
)  derivedtable GROUP BY costcentre ORDER BY Amount desc";
$result_acc_title = mysqli_query($con, $acc_title);
while ($racc_title = mysqli_fetch_assoc($result_acc_title)) $arr_acc_title[] = $racc_title;
$costcentre_count = count($arr_acc_title);
$i = 0;
?>
<?php if ($costcentre_count > 0)
{ ?>

	<?php while ($i < $costcentre_count)
	{

		$totalsell = preg_replace("/(\d+?)(?=(\d\d)+(\d)(?!\d))(\.\d+)?/i", "$1,", $arr_acc_title[$i]["Amount"]);
		if ($arr_acc_title[$i]["costcentre"] == 'Array')
		{
			$arr_acc_title[$i]["costcentre"] = 'Unknown';
		}
		?>
		<button type="button" class="accordion">
			<span style="width: 300px;display: inline-block;"><span><i class="fas fa-user-tie"></i></span> <?php echo $arr_acc_title[$i]["costcentre"] ?></span>
			<span><i class="fas fa-rupee-sign"></i> <?php echo $totalsell ?></span>
			
		</button>
		<div class="panel">
			<br>
			<?php
			unset($arr_acc_panel);
			$arr_acc_panel = array();
			$total_quarter = ceil(date('m', strtotime('this month')) / 3);
			$itr = 0;
			while ($itr < $total_quarter)
			{
				unset($arr_quarter_sum);
				$arr_quarter_sum = array();
				$total_monthss = 3 * ($itr + 1);
				$smonth = sprintf("%02d", ($total_monthss - 2));
				$endmonth = sprintf("%02d", $total_monthss);
				$start_date_a = $currents_year . '-' . $smonth . '-01';
				$d = cal_days_in_month(CAL_GREGORIAN, $endmonth, $currents_year);
				$end_date_a = $currents_year . '-' . $endmonth . '-' . $d;

				$quarter_sum = "select DISTINCT costcentre,round(SUM(amount) ,2) as Amount FROM(
				(select DISTINCT costcentre,round(SUM(amount) ,2) as amount FROM crm_salesreport WHERE vdate BETWEEN '$start_date_a'  and '$end_date_a' and costcentre = '" . $arr_acc_title[$i]['costcentre'] . "'  GROUP BY costcentre)
				UNION
				(select DISTINCT costcentre,round(SUM(amount) ,2) as amount FROM crm_salesreport_indore WHERE vdate BETWEEN '$start_date_a'  and '$end_date_a' and costcentre = '" . $arr_acc_title[$i]['costcentre'] . "'  GROUP BY costcentre)
				UNION
				(select DISTINCT costcentre,round(SUM(amount) ,2) as amount FROM crm_salesreport_lucknow WHERE vdate BETWEEN '$start_date_a'  and '$end_date_a' and costcentre = '" . $arr_acc_title[$i]['costcentre'] . "'  GROUP BY costcentre)
			)  derivedtable GROUP BY costcentre ORDER BY Amount desc ";

			$result_quarter_sum = mysqli_query($con, $quarter_sum);

			while ($rquarter_sum = mysqli_fetch_assoc($result_quarter_sum))
			{

				$arr_quarter_sum[] = $rquarter_sum;
			}
			$arr_quarter_sum[0]['Amount'] = preg_replace("/(\d+?)(?=(\d\d)+(\d)(?!\d))(\.\d+)?/i", "$1,", $arr_quarter_sum[0]['Amount']);

			?>
			<style>
			.accordionsecond{
				width: 25%;
				padding: 8px 15px;
				background: linear-gradient(138.77deg,#0a1157 21.17%,#0a1157 21.18%,#1d51a8 94.74%);
				color: white;
				border-radius: 3px;
			}
		</style>

		<button style="" type="button" class="accordion accordionsecond">Quarter <?php echo $itr + 1; ?>  -   <i class="fas fa-rupee-sign"></i> <?php echo $arr_quarter_sum[0]['Amount'] ?></button>
		<div class="panel panelsecond" >
			<br>
			<?php

			unset($arr_racc_panel_getcategory);
			$arr_racc_panel_getcategory = array();

			unset($arr_first_month);
			$arr_first_month = array();

			unset($arr_second_month);
			$arr_second_month = array();

			unset($arr_third_month);
			$arr_third_month = array();

			$get_category = "SELECT  category FROM (
			(SELECT DISTINCT b.category FROM crm_salesreport a, inventory_master b 
			WHERE a.itemname = b.itemname and a.vdate BETWEEN '$start_date_a' and '$end_date_a' AND a.costcentre = '" . $arr_acc_title[$i]["costcentre"] . "' GROUP BY b.category )
			UNION
			(SELECT DISTINCT d.category FROM crm_salesreport_lucknow c, inventory_master_lucknow d WHERE c.itemname = d.itemname and c.vdate BETWEEN '$start_date_a' and '$end_date_a' AND c.costcentre = '" . $arr_acc_title[$i]["costcentre"] . "' GROUP BY d.category )
			UNION
			(SELECT DISTINCT f.category FROM crm_salesreport_indore e, inventory_master_indore f WHERE e.itemname = f.itemname and e.vdate BETWEEN '$start_date_a' and '$end_date_a' AND e.costcentre = '" . $arr_acc_title[$i]["costcentre"] . "' GROUP BY f.category )
		) derivedtable ORDER BY category";

		$result_get_category = mysqli_query($con, $get_category);

		while ($racc_panel_getcategory = mysqli_fetch_assoc($result_get_category))
		{

			$arr_racc_panel_getcategory[] = $racc_panel_getcategory;
		}

            // -----------------------------------------------------------
		$first_month_of_quarter = sprintf("%02d", ($total_monthss - 2));
		$start_date_first_month = $currents_year . '-' . $first_month_of_quarter . '-01';
		$day_first_month = cal_days_in_month(CAL_GREGORIAN, $first_month_of_quarter, $currents_year);
		$end_date_first_month = $currents_year . '-' . $first_month_of_quarter . '-' . $day_first_month;

		$first_month_query = "select costcentre,type, SUM(qty) as qty,SUM(amount) as Amount FROM( (SELECT a.costcentre,b.category as type,(SUM(a.qty)) as qty, round(SUM(a.amount),2) as Amount
		FROM crm_salesreport a, inventory_master b
		WHERE a.itemname = b.itemname and vdate BETWEEN '$start_date_first_month'  and '$end_date_first_month' and a.costcentre = '" . $arr_acc_title[$i]["costcentre"] . "' GROUP by b.category)  
		UNION all
		(SELECT a.costcentre,b.category as type,(SUM(a.qty)) as qty, round(SUM(a.amount),2) as Amount
		FROM crm_salesreport_indore a, inventory_master_indore b
		WHERE a.itemname = b.itemname and vdate BETWEEN '$start_date_first_month'  and '$end_date_first_month' and a.costcentre = '" . $arr_acc_title[$i]["costcentre"] . "' GROUP by b.category)  
		UNION all
		(SELECT a.costcentre,b.category as type,(SUM(a.qty)) as qty, round(SUM(a.amount),2) as Amount
		FROM crm_salesreport_lucknow a, inventory_master_lucknow b
		WHERE a.itemname = b.itemname and vdate BETWEEN '$start_date_first_month'  and '$end_date_first_month' and a.costcentre = '" . $arr_acc_title[$i]["costcentre"] . "' GROUP by b.category)  
	) derivedtable GROUP BY type";

	$result_first_month = mysqli_query($con, $first_month_query);

	while ($row_first_month = mysqli_fetch_assoc($result_first_month))
	{

		$arr_first_month[] = $row_first_month;
	}
	$count_firstmonth = count($arr_first_month);
            // -----------------------------------------------------------
	$second_month_of_quarter = sprintf("%02d", ($total_monthss - 1));
	$start_date_second_month = $currents_year . '-' . $second_month_of_quarter . '-01';
	$day_second_month = cal_days_in_month(CAL_GREGORIAN, $second_month_of_quarter, $currents_year);
	$end_date_second_month = $currents_year . '-' . $second_month_of_quarter . '-' . $day_second_month;

	$second_month_query = "select costcentre,type, SUM(qty) as qty,SUM(amount) as Amount FROM( (SELECT a.costcentre,b.category as type,(SUM(a.qty)) as qty, round(SUM(a.amount),2) as Amount
	FROM crm_salesreport a, inventory_master b
	WHERE a.itemname = b.itemname and vdate BETWEEN '$start_date_second_month'  and '$end_date_second_month' and a.costcentre = '" . $arr_acc_title[$i]["costcentre"] . "' GROUP by b.category)  
	UNION all
	(SELECT a.costcentre,b.category as type,(SUM(a.qty)) as qty, round(SUM(a.amount),2) as Amount
	FROM crm_salesreport_indore a, inventory_master_indore b
	WHERE a.itemname = b.itemname and vdate BETWEEN '$start_date_second_month'  and '$end_date_second_month' and a.costcentre = '" . $arr_acc_title[$i]["costcentre"] . "' GROUP by b.category)  
	UNION all
	(SELECT a.costcentre,b.category as type,(SUM(a.qty)) as qty, round(SUM(a.amount),2) as Amount
	FROM crm_salesreport_lucknow a, inventory_master_lucknow b
	WHERE a.itemname = b.itemname and vdate BETWEEN '$start_date_second_month'  and '$end_date_second_month' and a.costcentre = '" . $arr_acc_title[$i]["costcentre"] . "' GROUP by b.category)  
) derivedtable GROUP BY type";

$result_second_month = mysqli_query($con, $second_month_query);

while ($row_second_month = mysqli_fetch_assoc($result_second_month))
{

	$arr_second_month[] = $row_second_month;
}
$count_secondmonth = count($arr_second_month);
            // -----------------------------------------------------------
$third_month_of_quarter = sprintf("%02d", ($total_monthss));
$start_date_third_month = $currents_year . '-' . $third_month_of_quarter . '-01';
$day_third_month = cal_days_in_month(CAL_GREGORIAN, $third_month_of_quarter, $currents_year);
$end_date_third_month = $currents_year . '-' . $third_month_of_quarter . '-' . $day_third_month;

$third_month_query = "select costcentre,type, SUM(qty) as qty,SUM(amount) as Amount FROM( (SELECT a.costcentre,b.category as type,(SUM(a.qty)) as qty, round(SUM(a.amount),2) as Amount
FROM crm_salesreport a, inventory_master b
WHERE a.itemname = b.itemname and vdate BETWEEN '$start_date_third_month'  and '$end_date_third_month' and a.costcentre = '" . $arr_acc_title[$i]["costcentre"] . "' GROUP by b.category)  
UNION all
(SELECT a.costcentre,b.category as type,(SUM(a.qty)) as qty, round(SUM(a.amount),2) as Amount
FROM crm_salesreport_indore a, inventory_master_indore b
WHERE a.itemname = b.itemname and vdate BETWEEN '$start_date_third_month'  and '$end_date_third_month' and a.costcentre = '" . $arr_acc_title[$i]["costcentre"] . "' GROUP by b.category)  
UNION all
(SELECT a.costcentre,b.category as type,(SUM(a.qty)) as qty, round(SUM(a.amount),2) as Amount
FROM crm_salesreport_lucknow a, inventory_master_lucknow b
WHERE a.itemname = b.itemname and vdate BETWEEN '$start_date_third_month'  and '$end_date_third_month' and a.costcentre = '" . $arr_acc_title[$i]["costcentre"] . "' GROUP by b.category)  
) derivedtable GROUP BY type";

$result_third_month = mysqli_query($con, $third_month_query);

while ($row_third_month = mysqli_fetch_assoc($result_third_month))
{

	$arr_third_month[] = $row_third_month;
}
$count_thirdmonth = count($arr_third_month);

$panel_count_getcategory = count($arr_racc_panel_getcategory);

$total_monthss_1 = date("F", mktime(0, 0, 0, $total_monthss - 2, 10)) . "<br>";
$total_monthss_2 = date("F", mktime(0, 0, 0, $total_monthss - 1, 10)) . "<br>";
$total_monthss_3 = date("F", mktime(0, 0, 0, $total_monthss, 10)) . "<br>";

?>
<div class="table-responsive">
	<table  class="table table-bordered">
		<thead>
			<tr>
				<th>Month</th>
				<th>Total</th>
				<?php
				$cat = 0;
				$first_i = 0;
				$second_i = 0;
				$third_i = 0;
				while ($cat < $panel_count_getcategory)
					{ ?>
						<th><?php echo $arr_racc_panel_getcategory[$cat]['category'] ?></th>
						<?php $cat++;
					}
					?>
				</tr>
			</thead>
			<tbody>
				<tr>

					<td><b><?php echo $total_monthss_1 ?></b></td>
					<?php
					$first_total = 0;
					$count_i = 0;
					while ($count_i < $panel_count_getcategory)
					{
						$first_total += $arr_first_month[$count_i]['Amount'];
						$count_i++;
					}
					$first_total = preg_replace("/(\d+?)(?=(\d\d)+(\d)(?!\d))(\.\d+)?/i", "$1,", $first_total);
					?>
					<td><?php echo $first_total; ?> </td>
					<?php
					$ind_cat1 = 0;
					$ind_type1 = 0;
					while ($first_i < $panel_count_getcategory)
					{
						if ($arr_first_month[$ind_type1]['type'] == $arr_racc_panel_getcategory[$ind_cat1]['category'])
							{ ?>

								<td><?php echo $arr_first_month[$ind_type1]['Amount'] ?></td>
								<?php $ind_cat1++;
								$ind_type1++;
							}
							else
								{ ?>
									<td>-</td>
									<?php $ind_cat1++;
								}
								$first_i++;
							}
							?>


						</tr>
						<tr>
							<td><b><?php echo $total_monthss_2 ?></b></td>
							<?php
							$second_total = 0;
							$count_i2 = 0;
							while ($count_i2 < $panel_count_getcategory)
							{
								$second_total += $arr_second_month[$count_i2]['Amount'];
								$count_i2++;
							}
							$second_total = preg_replace("/(\d+?)(?=(\d\d)+(\d)(?!\d))(\.\d+)?/i", "$1,", $second_total);
							?>
							<td><?php echo $second_total; ?> </td>
							<?php
							$ind_cat = 0;
							$ind_type = 0;
							while ($second_i < $panel_count_getcategory)
							{
								if ($arr_second_month[$ind_type]['type'] == $arr_racc_panel_getcategory[$ind_cat]['category'])
									{ ?>

										<td><?php echo $arr_second_month[$ind_type]['Amount'] ?></td>
										<?php $ind_cat++;
										$ind_type++;
									}
									else
										{ ?>
											<td>-</td>
											<?php $ind_cat++;
										}
										$second_i++;
									}
									?>

								</tr>
								<tr>

									<td><b><?php echo $total_monthss_3 ?></b></td>
									<?php
									$third_total = 0;
									$count_i3 = 0;
									while ($count_i3 < $panel_count_getcategory)
									{
										$third_total += $arr_third_month[$count_i3]['Amount'];
										$count_i3++;
									}
									$third_total = preg_replace("/(\d+?)(?=(\d\d)+(\d)(?!\d))(\.\d+)?/i", "$1,", $third_total);
									?>
									<td><?php echo $third_total; ?> </td>
									<?php $ind_cat3 = 0;
									$ind_type3 = 0;
									while ($third_i < $panel_count_getcategory)
									{
										if ($arr_third_month[$ind_type3]['type'] == $arr_racc_panel_getcategory[$ind_cat3]['category'])
											{ ?>

												<td><?php echo $arr_third_month[$ind_type3]['Amount'] ?></td>
												<?php $ind_cat3++;
												$ind_type3++;
											}
											else
												{ ?>
													<td>-</td>
													<?php $ind_cat3++;
												}
												$third_i++;
											}
											?>

										</tr>
									</tbody>
								</table>
							</div>


							<br><br>
						</div>
						<?php $itr++;
					}

					?>

					<br>
				</div>
				<?php $i++;
			}
		}
		else
		{
			echo "No records found.";
		}
		?>











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
						panel.style.maxHeight =  "1500px";
					} 
				});
			}

		</script>


		<style>
		.itm_wrapper{
			display: flex;
			flex-direction: row;
			margin: 2%;
			flex-wrap: wrap;
		}
		.itm_items{
			flex: 0 0 150px;
			min-height: 100px;
			border: 1px dashed gray;
			margin: 3px;
			border-radius: 5px;
			padding: 1%;dius: 5px;
			padding: 1%;
		}
		.nm{
			margin: 0 0 20px;
			font-weight: bold;
			font-size: 12px;
			text-align: center;
		}
		.qty{
			margin: 1%;
			text-align: center;
		}
		.amt{
			margin: 1%;
			text-align: center;
		}
	</style>
