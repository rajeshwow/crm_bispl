
<?php include 'config.php'; ?>

<?php 
$year =$_POST['yr']; //date_format(date_create($_POST['start_date']),"d-m-Y");
$month =$_POST['mnt'];   //date_format(date_create($_POST['end_date']),"d-m-Y");

if ($year != null && $month == null) {
	$start_date = "Null";
	$end_date = "Null";
	$lastmonth = date('m', strtotime('-1 month'));
	$d=cal_days_in_month(CAL_GREGORIAN,$lastmonth,$year);
	$start_date = $year.'-'.$lastmonth.'-01';
	$end_date = $year.'-'.$lastmonth.'-'.$d;

}

else if ($month == 'Q1'||$month == 'Q2'||$month == 'Q3'||$month == 'Q4') {
	$quartercount = explode('Q',$month);
	$quartercount[1];
	$smonth = sprintf("%02d", 3*$quartercount[1]-2);
	$endmonth = sprintf("%02d", 3*$quartercount[1]);
	$start_date = $year.'-'.$smonth.'-01';
	$d=cal_days_in_month(CAL_GREGORIAN,$endmonth,$year);
	$end_date = $year.'-'.$endmonth.'-'.$d; 
}
else{
	$d=cal_days_in_month(CAL_GREGORIAN,$month,$year);
	$start_date = $year.'-'.$month.'-01';
	$end_date = $year.'-'.$month.'-'.$d;
}

// echo "Year".$start_date;
// echo "<br>";
// echo "month".$end_date;
$acc_title = "select DISTINCT costcentre,round(SUM(amount) ,2) as Amount FROM(
(select DISTINCT costcentre,round(SUM(amount) ,2) as amount FROM crm_salesreport WHERE vdate BETWEEN '$start_date'  and '$end_date'  GROUP BY costcentre)
UNION
(select DISTINCT costcentre,round(SUM(amount) ,2) as amount FROM crm_salesreport_indore WHERE vdate BETWEEN '$start_date'  and '$end_date'  GROUP BY costcentre)
UNION
(select DISTINCT costcentre,round(SUM(amount) ,2) as amount FROM crm_salesreport_lucknow WHERE vdate BETWEEN '$start_date'  and '$end_date'  GROUP BY costcentre)
    )  derivedtable GROUP BY costcentre ORDER BY Amount desc";
$result_acc_title = mysqli_query($con, $acc_title);
while($racc_title = mysqli_fetch_assoc($result_acc_title))
	$arr_acc_title[] = $racc_title;
$costcentre_count = count ($arr_acc_title);
$i=0;
?>
<?php if ($costcentre_count>0){ ?>

<?php while ($i<$costcentre_count) { 

	$totalsell = preg_replace("/(\d+?)(?=(\d\d)+(\d)(?!\d))(\.\d+)?/i", "$1,", $arr_acc_title[$i]["Amount"]);
	if ($arr_acc_title[$i]["costcentre"] == 'Array') {
		$arr_acc_title[$i]["costcentre"] = 'Unknown';
	}
	?>
	<button type="button" class="accordion"><?php echo $arr_acc_title[$i]["costcentre"]?> - <b>Total </b><i class="fas fa-rupee-sign"></i> <?php echo $totalsell?></button>
	<div class="panel">
		<?php 
		unset($arr_acc_panel); 
		$arr_acc_panel = array();



			$acc_panel = "select costcentre,type, SUM(qty) as qty,SUM(amount) as Amount FROM( (SELECT a.costcentre,b.category as type,(SUM(a.qty)) as qty, round(SUM(a.amount),2) as Amount
FROM crm_salesreport a, inventory_master b
WHERE a.itemname = b.itemname and vdate BETWEEN '$start_date'  and '$end_date' and a.costcentre = '".$arr_acc_title[$i]["costcentre"]."' GROUP by b.category)  
 UNION all
 (SELECT a.costcentre,b.category as type,(SUM(a.qty)) as qty, round(SUM(a.amount),2) as Amount
FROM crm_salesreport_indore a, inventory_master_indore b
WHERE a.itemname = b.itemname and vdate BETWEEN '$start_date'  and '$end_date' and a.costcentre = '".$arr_acc_title[$i]["costcentre"]."' GROUP by b.category)  
 UNION all
 (SELECT a.costcentre,b.category as type,(SUM(a.qty)) as qty, round(SUM(a.amount),2) as Amount
FROM crm_salesreport_lucknow a, inventory_master_lucknow b
WHERE a.itemname = b.itemname and vdate BETWEEN '$start_date'  and '$end_date' and a.costcentre = '".$arr_acc_title[$i]["costcentre"]."' GROUP by b.category)  
 ) derivedtable GROUP BY type";
	$result_acc_panel = mysqli_query($con, $acc_panel);

	while($racc_panel = mysqli_fetch_assoc($result_acc_panel)){

		$arr_acc_panel[] = $racc_panel;
	}
	$panel_count = count ($arr_acc_panel);
	// echo "Items ".$panel_count;

	?>

	<div class="itm_wrapper">
		<?php 
		$j = 0;
		while($j< count($arr_acc_panel)){ ?>

			<div class="itm_items">
				<div class="nm"><?php echo $arr_acc_panel[$j]['type']?></div>
				<div class="qty"><?php echo $arr_acc_panel[$j]['qty']?></div>
				<div class="amt"><i class="fas fa-rupee-sign"></i> <?php echo round($arr_acc_panel[$j]['Amount'],2)?></div>
			</div>
			<?php $j++;	}
			?>


		</div>
	</div>
	<?php $i++;
}
} else {
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
					panel.style.maxHeight = panel.scrollHeight + "px";
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