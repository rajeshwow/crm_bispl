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


		$acc_panel = "SELECT * FROM `crm_salesreport` WHERE costcentre = '".$arr_acc_title[$i]["costcentre"]."' and vdate BETWEEN '$start_date'  and '$end_date'  order by qty desc";
		$result_acc_panel = mysqli_query($con, $acc_panel);

		while($racc_panel = mysqli_fetch_assoc($result_acc_panel)){

			$arr_acc_panel[] = $racc_panel;
		}
		$panel_count = count ($arr_acc_panel);
		echo "Items ".$panel_count;

		?>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>S.no</th>
					<th>Party </th>
					<th>Item</th>
					<th>Rate</th>
					<th>Quantity</th>
					<th>Amount</th>
				</tr>
			</thead>
			<tbody>
				<?php 
				$j=0;
				while($j< ($panel_count)){


				 ?>

					<tr>
						<td><?php echo $j+1 ?></td>
						<td><?php echo $arr_acc_panel[$j]['party'] ?></td>
						<td><?php echo $arr_acc_panel[$j]['itemname']  ?></td>
						<td><?php echo $arr_acc_panel[$j]['rate']  ?></td>
						<td><?php echo $arr_acc_panel[$j]['qty']  ?></td>
						<td><?php echo $arr_acc_panel[$j]['amount']  ?></td>

					</tr>

					<?php $j++; }

					?>
				</tbody>

			</table>
		</div>
		<?php $i++;}
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