
<style>
.itm_wrapper{
	display: flex;
	flex-direction: row;
	margin: 2%;
	flex-wrap: wrap;
}
.itm_items{
	flex: 0 0 200px;
	min-height: 150px;
	border: 1px dashed gray;
	margin: 1%;
	border-radius: 5px;
	padding: 2%;
}
.nm{
	margin: 0 0 20px;
	font-weight: bold;
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
<?php include 'config.php'; ?>

<?php 
$start_date =$_POST['start_date']; //date_format(date_create($_POST['start_date']),"d-m-Y");
$end_date =$_POST['end_date'];   //date_format(date_create($_POST['end_date']),"d-m-Y");


$acc_title = "SELECT costcentre, round(SUM(amount) ,2)  as Amount FROM `crm_salesreport` WHERE  vdate BETWEEN '$start_date'  and '$end_date' GROUP BY costcentre order by amount desc";
$result_acc_title = mysqli_query($con, $acc_title);
while($racc_title = mysqli_fetch_assoc($result_acc_title))
	$arr_acc_title[] = $racc_title;
$costcentre_count = count ($arr_acc_title);
$i=0;
?>
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



		$acc_panel = "SELECT  a.costcentre,b.type,SUM((a.qty)) as qty, round(SUM(a.amount),2) as Amount
		FROM crm_salesreport a, inventory_master b
		WHERE a.itemname = b.perticular and vdate BETWEEN '$start_date'  and '$end_date' AND a.costcentre = '".$arr_acc_title[$i]["costcentre"]."' GROUP BY b.type ORDER BY type";
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
		<?php 
		$i++;}
		?>
		<style>th,td{
			text-align:center;
		}</style>

		<table  class="table table-bordered">

			<?php
			// echo $costcentre_count;
			$iii = 0;
			while ($iii<$costcentre_count) { 

				unset($arr_acc_panelll); 
		$arr_acc_panelll = array();
				$acc_panelll = "SELECT  a.costcentre,b.category,SUM((a.qty)) as qty, round(SUM(a.amount),2) as Amount
				FROM crm_salesreport a, inventory_master b
				WHERE a.itemname = b.itemname and a.vdate BETWEEN '$start_date'  and '$end_date' AND a.costcentre = '".$arr_acc_title[$iii]["costcentre"]."' GROUP BY b.category ORDER BY b.category ";
				$result_acc_panelll = mysqli_query($con, $acc_panelll);

				while($racc_panelll = mysqli_fetch_assoc($result_acc_panelll)){

					$arr_acc_panelll[] = $racc_panelll;
				}

				?>
				<thead>
					<tr>
						<?php if ($iii>0) { ?>
						<th style="display: none;" rowspan="2">particular </th>
						<?php } else {?>
							<th rowspan="2">particular </th>
						<?php }
						$x = 0;
						while($x< count($arr_acc_panelll)){ 
							if ($iii>0) { ?>
							<th style="display: none;" colspan="2"><?php echo $arr_acc_panelll[$x]['category']?></th>
							<?php } else {?>
							
							<th colspan="2"><?php echo $arr_acc_panelll[$x]['category'] ?></th>
							<?php } $x++;
						}?>

						</tr>
						
						
						<tr>
							<?php 
							$m = 0;
							while($m< count($arr_acc_panelll)){ 
								if ($iii>0) { ?>
								<th style="display: none;">Qty</th><th style="display: none;">Amount</th>
								<?php } else { ?>
									<th>Qty</th><th>Amount</th>
								<?php } $m++;}?>
							</tr>
							
						</thead>
						<tbody>

							
								<tr>
									<td><?php echo $arr_acc_title[$iii]["costcentre"]?></td>
									<?php $k=0; 
							while ($k<$costcentre_count) { ?>
									<td><?php echo $arr_acc_panelll[$k]['qty']?></td>
									<td><?php echo round($arr_acc_panelll[$k]['Amount'],2)?></td>
									<?php  $k++;
							}?>
								</tr>
								
						</tbody>

						<?php $iii++; }?>
					</table>













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