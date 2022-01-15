
<?php include 'config.php'; ?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
<script type="text/javascript" src="https://html2canvas.hertzen.com/dist/html2canvas.js"></script>
<!-- <script type="text/javascript" src="./html2canvas.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js" integrity="sha512-s/XK4vYVXTGeUSv4bRPOuxSDmDlTedEpMEcAQk0t/FMd9V6ft8iXdwSBxV0eD60c6w/tjotSlKu9J2AAW1ckTA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js" integrity="sha512-jzL0FvPiDtXef2o2XZJWgaEpVAihqquZT/tT89qCVaxVuHwJ/1DFcJ+8TBMXplSJXE8gLbVAUv+Lj20qHpGx+A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> -->
<?php
// Create a function for converting the amount in words
function AmountInWords(float $amount)
{
	$amount_after_decimal = round($amount - ($num = floor($amount)), 2) * 100;
	// Check if there is any number after decimal
	$amt_hundred = null;
	$count_length = strlen($num);
	$x = 0;
	$string = array();
	$change_words = array(0 => '', 1 => 'One', 2 => 'Two',
	3 => 'Three', 4 => 'Four', 5 => 'Five', 6 => 'Six',
	7 => 'Seven', 8 => 'Eight', 9 => 'Nine',
	10 => 'Ten', 11 => 'Eleven', 12 => 'Twelve',
	13 => 'Thirteen', 14 => 'Fourteen', 15 => 'Fifteen',
	16 => 'Sixteen', 17 => 'Seventeen', 18 => 'Eighteen',
	19 => 'Nineteen', 20 => 'Twenty', 30 => 'Thirty',
	40 => 'Forty', 50 => 'Fifty', 60 => 'Sixty',
	70 => 'Seventy', 80 => 'Eighty', 90 => 'Ninety');
	$here_digits = array('', 'Hundred','Thousand','Lakh', 'Crore');
	while( $x < $count_length ) {
		$get_divider = ($x == 2) ? 10 : 100;
		$amount = floor($num % $get_divider);
		$num = floor($num / $get_divider);
		$x += $get_divider == 10 ? 1 : 2;
		if ($amount) {
			$add_plural = (($counter = count($string)) && $amount > 9) ? 's' : null;
			$amt_hundred = ($counter == 1 && $string[0]) ? ' and ' : null;
			$string [] = ($amount < 21) ? $change_words[$amount].' '. $here_digits[$counter]. $add_plural.' 
			'.$amt_hundred:$change_words[floor($amount / 10) * 10].' '.$change_words[$amount % 10]. ' 
			'.$here_digits[$counter].$add_plural.' '.$amt_hundred;
		}
		else $string[] = null;
	}
	$implode_to_Rupees = implode('', array_reverse($string));
	$get_paise = ($amount_after_decimal > 0) ? "And " . ($change_words[$amount_after_decimal / 10] . " 
	" . $change_words[$amount_after_decimal % 10]) . ' Paise' : '';
	return ($implode_to_Rupees ? $implode_to_Rupees . 'Rupees ' : '') . $get_paise;
}
?>
<div id="pdfss" style="height: 1px;overflow: hidden;"></div>
<?php  
$ueraccessquery = "SELECT * from crm_useraccess where email= '".$_SESSION['email']."' ";
$result_ueraccessquery = mysqli_query($con, $ueraccessquery);
while($row_ueraccessquery = mysqli_fetch_assoc($result_ueraccessquery))
$ueraccess_arr[] = $row_ueraccessquery;

$ueraccess_str = $ueraccess_arr[0]['salesregister_access'];
$x_ueraccess_str = explode(",",$ueraccess_str);
for ($sri=0; $sri < count($x_ueraccess_str)-1; $sri++) { 
	
	$salesregrp_arrs .= "'".$x_ueraccess_str[$sri]."'". ",";
}
$salesregrp_arrs = rtrim($salesregrp_arrs, ",");
?>


<style>
.actionbtns{
	display: flex;
	flex-direction: row;
	/* align-items: center; */
	padding: 1% 0;
	justify-content: flex-end;
}
</style>
<style>
.dates{
	display: inline-block;
	min-width: 7%;
	
	padding-left: 5px;
}
.party{
	display: inline-block;
	min-width: 55%;
	
	padding-left: 5px;
}
.vchtype{
	display: inline-block;
	min-width: 10%;
	
	padding-left: 5px;
}
.dbt{
	display: inline-block;
	min-width: 10%;
	
	padding-left: 5px;
}
.cdt{
	display: inline-block;
	min-width: 10%;
	
	padding-left: 5px;
}
.headerss{
	color: white;
	padding: 10px 0;
	background-color: darkblue;
}
.hdr{
	
}
.hdrtitle{
	font-size: 18px;
	color: darkred;
	float: left;
	padding: 5%;
}
.logosss{
	float: right;
	padding: 5%;
}
</style>
<?php
$year = $_POST['yr'];
$month = $_POST['mnt'];

if ($year == null && $month == null) {
	$start_date =  date('Y-m-d', strtotime('first day of this month'));
	$end_date = date('Y-m-d', strtotime('last day of this month'));
	
}
else{
	$start_date = $year.'-'.$month.'-01';
	$day_month=cal_days_in_month(CAL_GREGORIAN,$month,$year);
	$end_date = $year.'-'.$month.'-'.$day_month;
}

$getparty_query = "select * from ((select * FROM crm_salesreport WHERE vdate BETWEEN '$start_date'  and '$end_date' and costcentre IN ($salesregrp_arrs) GROUP BY party,vdate)
UNION ALL
(select * FROM crm_salesreport_lucknow WHERE vdate BETWEEN '$start_date'  and '$end_date' and costcentre IN ($salesregrp_arrs) GROUP BY party,vdate)
UNION ALL
(select * FROM crm_salesreport_indore WHERE vdate BETWEEN '$start_date'  and '$end_date' and costcentre IN ($salesregrp_arrs) GROUP BY party,vdate)) derivedtable order by vdate";

$result_getparty_query = mysqli_query($con, $getparty_query);

while($row_getparty_query = mysqli_fetch_assoc($result_getparty_query)){
	
	$arr_getparty_query[] = $row_getparty_query;
}
$count_getparty_query = count($arr_getparty_query);


?>

<div class="headerss">
<span class="dates">Date</span>
<span class="party">Party</span>
<span class="vchtype">Vch Type</span>
<span class="dbt">Amount Dr</span>
<span class="cdt">Amount Cr</span>
</div>
<?php 
$i_button = 0;
while ($i_button<$count_getparty_query) {
	unset($arr_getitem_query); 
	$arr_getitem_query = array();
	
	?>
	<button type="button" class="accordion">
	<span class="dates"><?php echo date_format(date_create($arr_getparty_query[$i_button]['vdate']),"d-m-Y");?></span>
	<span class="party"><?php echo $arr_getparty_query[$i_button]['party']?></span>
	<span class="vchtype">Sales</span>
	<span class="dbt"><?php echo $arr_getparty_query[$i_button]['amount']?></span>
	<span class="cdt">-</span>
	</button>
	
	<div class="panel">
	<div class="perorma">
	<div class="actionbtns">
	<button class="btns downloadpdfbtn" onclick="CreatePDFfromHTML(<?php echo $i_button+1?>);" style="padding: 7px 10px;font-size: 12px;margin: 0 5px;" value=""> 
	<span style="display: inline-block;width: 25px;text-align: left;"><i class="fas fa-download"></i></span>Download Bill 
	</button>
	<!-- <button class="btns" style="padding: 7px 10px;font-size: 12px;margin: 0 5px;"  id="emailbill"> 
	<span style="display: inline-block;width: 25px;text-align: left;"><i class="fas fa-download"></i></span>Email Bill 
	</button> -->
	</div>
	
	<div class="row">
	<div class="col-lg-4">
	sales
	</div>
	<div class="col-lg-4">
	<p>Cost centre/clasess: <?php echo $arr_getparty_query[$i_button]['costcentre']; ?></p>
	</div>
	<div class="col-lg-4" style="text-align: right;">
	<p>Date: <?php echo $arr_getparty_query[$i_button]['vdate']; ?></p>
	</div>
	</div>
	<div class="row">
	<div class="col-lg-12">
	
	<div id="html-content<?php echo $i_button+1?>" style='display: none;'>
	<!-- <div class="hdr">
	<div class="hdrtitle">
	Invoice
	</div>
	<div class="logosss">
	<img src="./img/bispl_logo.png" alt="">
	</div>
	</div> -->
	<table class="table table-bordered">
	<thead>
	<tr>
	<th colspan="3" style="text-align: center;">Tax Invoice</th>
	</tr>
	</thead>
	<tbody>
	<?php 
	unset($arr_getitem_query_bill); 
	$arr_getitem_query_bill = array();
	$getitem_query_bill = "(select * FROM crm_salesreport  WHERE party = '".$arr_getparty_query[$i_button]['party']."' and vdate = '".$arr_getparty_query[$i_button]['vdate']."')
	UNION ALL
	(select * FROM crm_salesreport_lucknow  WHERE party = '".$arr_getparty_query[$i_button]['party']."' and vdate = '".$arr_getparty_query[$i_button]['vdate']."')
	UNION ALL
	(select * FROM crm_salesreport_indore  WHERE party = '".$arr_getparty_query[$i_button]['party']."' and vdate = '".$arr_getparty_query[$i_button]['vdate']."')";
	
	$result_getitem_query_bill = mysqli_query($con, $getitem_query_bill);
	
	while($row_getitem_query_bill= mysqli_fetch_assoc($result_getitem_query_bill)){
		
		$arr_getitem_query_bill[] = $row_getitem_query_bill;
	}
	$count_getitem_query_bill = count($arr_getitem_query_bill);
	
	$item_i_bill = 0;
	// while ($item_i_bill<$count_getitem_query_bill) { 
		?>
		
		
		<tr>
		<td rowspan="3" style="width: 50%;">
		<p><b>Binary Infosolutions Pvt Ltd</b></p>
		<p>43.JAI AMBAY COLONY</p>
		<p>OPPOSITE PILLAR NO.72 ,AJMER ROAD ,JAIPUR -302006</p>
		<p>0141-2229998,9636811116</p>
		<p>GSTIN/UIN: 08AAECB5959N1Z0</p>
		<p>State Name : Rajasthan, Code : 08</p>
		<p>E-Mail : accounts@bispl.net.in</p>
		</td>
		<td style="width: 25%">Invoice number: <?php echo $arr_getitem_query_bill[$item_i_bill]['VOUCHERNUMBER']?> </td>
		<td style="width: 25%">Dated:<?php echo $arr_getitem_query_bill[$item_i_bill]['vdate']?> </td>
		</tr>
		<tr>
		<td style="width: 25%">Delivery Note: </td>
		<td style="width: 25%">Mode of payment</td>
		</tr>
		<tr>
		<td style="width: 25%">Supplie's Ref.</td>
		<td style="width: 25%">Other Reference</td>
		</tr>
		<tr>
		<td rowspan="3" style="width: 50%;">
		Consignee<br>
		<p><?php echo $arr_getitem_query_bill[$item_i_bill]['BASICBUYERADDRESS1']?></p>
		<p><?php echo $arr_getitem_query_bill[$item_i_bill]['BASICBUYERADDRESS2']?></p>
		<p><?php echo $arr_getitem_query_bill[$item_i_bill]['BASICBUYERADDRESS3']?></p>
		<p><?php echo $arr_getitem_query_bill[$item_i_bill]['BASICBUYERADDRESS4']?></p>
		<p>GSTIN/UIN : <?php echo $arr_getitem_query_bill[$item_i_bill]['PARTYGSTIN']?></p>
		<p>State Name : <?php echo $arr_getitem_query_bill[$item_i_bill]['STATENAME']?></p>
		</td>
		
		<td style="width: 25%">Buyer's Order number: </td>
		<td style="width: 25%">Dated: </td>
		</tr>
		<tr>
		<td style="width: 25%">Despatch Document No.</td>
		<td style="width: 25%">Delivery Note Date:</td>
		</tr>
		<tr>
		<td style="width: 25%">Despatched through</td>
		<td style="width: 25%">Destination</td>
		</tr>
		<tr>
		<td rowspan="3" style="width: 50%;">
		Buyer<br>
		<p><?php echo $arr_getitem_query_bill[$item_i_bill]['PARTY_ADDRESS1']?></p>
		<p><?php echo $arr_getitem_query_bill[$item_i_bill]['PARTY_ADDRESS2']?></p>
		<p><?php echo $arr_getitem_query_bill[$item_i_bill]['PARTY_ADDRESS3']?></p>
		<p><?php echo $arr_getitem_query_bill[$item_i_bill]['PARTY_ADDRESS4']?></p>
		<p>GSTIN/UIN : <?php echo $arr_getitem_query_bill[$item_i_bill]['PARTYGSTIN']?></p>
		<p>State Name : <?php echo $arr_getitem_query_bill[$item_i_bill]['STATENAME']?></p>
		</td>
		<td colspan="2" rowspan="3" style="width: 50%">Terms Of Delivery</td>
		</tr>
		
		
		</tbody>
		</table>
		<table class="table table-bordered" >
		<tbody>
		<tr>
		<td>S.no </td>
		<td>Description of Goods</td>
		<td>HSN/SAC</td>
		<td>Quantity</td>
		<td>Rate</td>
		<td>per</td>
		<td>Disc. %</td>
		<td>Discount</td>
		<td>Amount</td>
		</tr>
		<?php 
		$itm_cnt = 0;
		$qty_count = 0;
		$amt_counts = 0;
		while ($itm_cnt< $count_getitem_query_bill) { 
			unset($arr_gethsn_query_bill); 
			$arr_gethsn_query_bill = array();
			$gethsn_query_bill = "(select * FROM inventory_master  WHERE   itemname = '".$arr_getitem_query_bill[$itm_cnt]['itemname']."')
			UNION ALL
			(select * FROM inventory_master_indore  WHERE   itemname = '".$arr_getitem_query_bill[$itm_cnt]['itemname']."')
			UNION ALL
			(select * FROM inventory_master_lucknow  WHERE   itemname = '".$arr_getitem_query_bill[$itm_cnt]['itemname']."')";
			
			$result_gethsn_query_bill = mysqli_query($con, $gethsn_query_bill);
			
			while($row_gethsn_query_bill= mysqli_fetch_assoc($result_gethsn_query_bill)){
				
				$arr_gethsn_query_bill[] = $row_gethsn_query_bill;
			}
			$count_gethsn_query_bill = count($arr_gethsn_query_bill);
			?>
			<tr>
			
			
			<td><?php echo $itm_cnt+1;?></td>
			<td><?php echo $arr_getitem_query_bill[$itm_cnt]['itemname']?> <p><small><?php echo $arr_getitem_query_bill[$itm_cnt]['BATCHNAME']?></small></p></td>
			<?php if(!$arr_gethsn_query_bill[0]['hsncode']){ ?>
				<td><?php echo "-"?></td>
				<?} else { ?>
					<td><?php echo $arr_gethsn_query_bill[0]['hsncode']?></td>
					<? } ?>
					<td><?php echo $arr_getitem_query_bill[$itm_cnt]['qty']?></td>
					<td><?php echo $arr_getitem_query_bill[$itm_cnt]['rate']?></td>
					<td>No</td>
					<td>-</td>
					<td>-</td>
					<td><?php echo $arr_getitem_query_bill[$itm_cnt]['amount']?></td>
					</tr>
					<?php 
					$qty_count+=$arr_getitem_query_bill[$itm_cnt]['qty'];
					$amt_counts+=$arr_getitem_query_bill[$itm_cnt]['amount'];
					$itm_cnt++;	}
					?>
					
					<tr>
					<td style="visibility: hidden;">9</td>
					<td style="visibility: hidden;">9</td>
					<td style="visibility: hidden;">9</td>
					<td style="visibility: hidden;">9</td>
					<td style="visibility: hidden;">9</td>
					<td style="visibility: hidden;">9</td>
					<td style="visibility: hidden;">9</td>
					<td style="visibility: hidden;">9</td>
					<td style="visibility: hidden;">9</td>
					</tr>
					<?php 
					$gstdata1 = 0;
					$gstdata2 = 0;
					$gstdata3 = 0;
					$gstdata4 = 0;
					
					$gstdata1 = explode('---', $arr_getitem_query_bill[0]['TAX1']);
					$gstdata2 = explode('---', $arr_getitem_query_bill[0]['TAX2']);
					$gstdata3 = explode('---', $arr_getitem_query_bill[0]['TAX3']);
					$gstdata4 = explode('---', $arr_getitem_query_bill[0]['TAX4']);
					?>
					<?php if ($gstdata1[1]) { ?>
						<tr>
						<td></td>
						<td><?php echo $gstdata1[0];?></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td><?php echo $gstdata1[1];?></td>
						</tr>
						<?php } if ($gstdata2[1]) { ?>
							<tr>
							<td></td>
							<td><?php echo $gstdata2[0];?></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><?php echo $gstdata2[1];?></td>
							</tr>
							<?php } if ($gstdata3[1]) { ?>
								<tr>
								<td></td>
								<td><?php echo $gstdata3[0];?></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td><?php echo $gstdata3[1];?></td>
								</tr>
								<?php } if ($gstdata4[1]) { ?>
									<tr>
									<td></td>
									<td><?php echo $gstdata4[0];?></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td><?php echo $gstdata4[1];?></td>
									</tr>
									<?php } ?>
									<tr>
									<td></td>
									<td>Total</td>
									<td></td>
									<td><?php echo $qty_count;?></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td><?php echo $amt_counts+$gstdata1[1]+$gstdata2[1]+$gstdata3[1]+$gstdata4[1];?></td>
									</tr>
									
									
									<tr>
									<td colspan="9">
									<p>Amount chargable in words 
									</p>
									<b><?php echo $get_amount= AmountInWords($amt_counts+$gstdata1[1]+$gstdata2[1]+$gstdata3[1]+$gstdata4[1]);?></b>
									</td>
									</tr>
									
									</tbody>
									</table>
									
									
									<table class="table table-bordered">
									<tbody>
									<?php if ($gstdata1[0] == 'IGST' || $gstdata2[0] == 'IGST' || $gstdata3[0] == 'IGST' || $gstdata4[0] == 'IGST'  ) {
										$igst = ($gstdata1[1]*100)/$amt_counts;
										?>
										<tr>
										<td rowspan="2">HSN/SAC</td>
										<td rowspan="2"><b>Taxable Value</b></td>
										<td colspan="2">Integrated Tax</td>
										<td rowspan="2">Total tax amount</td>
										</tr>
										<tr>
										<td>Rate</td>
										<td>Amount</td>
										
										</tr>
										<?php 
										$itm_gsts = 0;
										$igst_total = 0;
										$taxable_value = 0;
										while ($itm_gsts < $count_getitem_query_bill) {
											
											unset($arr_gethsn_query_bill); 
											$arr_gethsn_query_bill = array();
											$gethsn_query_bill = "(select * FROM inventory_master  WHERE   itemname = '".$arr_getitem_query_bill[$itm_gsts]['itemname']."')
											UNION ALL
											(select * FROM inventory_master_indore  WHERE   itemname = '".$arr_getitem_query_bill[$itm_gsts]['itemname']."')
											UNION ALL
											(select * FROM inventory_master_lucknow  WHERE   itemname = '".$arr_getitem_query_bill[$itm_gsts]['itemname']."')";
											
											$result_gethsn_query_bill = mysqli_query($con, $gethsn_query_bill);
											
											while($row_gethsn_query_bill= mysqli_fetch_assoc($result_gethsn_query_bill)){
												
												$arr_gethsn_query_bill[] = $row_gethsn_query_bill;
											}
											$count_gethsn_query_bill = count($arr_gethsn_query_bill);
											?>
											
											<tr>
											<!-- Yaha pe change krna h hsn  -->
											<?php if(!$arr_gethsn_query_bill[0]['hsncode']){ ?>
												<td><?php echo $arr_getitem_query_bill[$itm_gsts]['itemname']?></td>
												<?} else { ?>
													<td><?php echo $arr_gethsn_query_bill[0]['hsncode']?></td>
													<? } ?>
													<td><?php echo round($arr_getitem_query_bill[$itm_gsts]['amount'],2) ?></td>
													<td><?php echo round($igst) ?>%</td>
													<td><?php echo round(($arr_getitem_query_bill[$itm_gsts]['amount']*$igst)/100,2) ?> </td>
													<td><?php echo round(($arr_getitem_query_bill[$itm_gsts]['amount']*$igst)/100,2) ?> </td>
													</tr>
													<?php 
													$taxable_value+=$arr_getitem_query_bill[$itm_gsts]['amount'];
													$igst_total += ($arr_getitem_query_bill[$itm_gsts]['amount']*$igst)/100;
													$itm_gsts++; } ?>
													<tr>
													<td>Total</td>
													<td><?php echo $taxable_value; ?></td>
													<td></td>
													<td><?php echo $igst_total; ?></td>
													<td><?php echo $igst_total; ?></td>
													</tr>
													<? } else {
														$cgst_amount = 0;
														$sgst_amount = 0;
														if ($gstdata1[0] == 'CGST') {
															$cgst = ($gstdata1[1]*100)/$amt_counts;
															
														}
														else if ($gstdata2[0] == 'CGST') {
															$cgst = ($gstdata2[1]*100)/$amt_counts;
															
														}
														else if ($gstdata3[0] == 'CGST') {
															$cgst = ($gstdata3[1]*100)/$amt_counts;
															
														}
														else{
															$cgst = ($gstdata4[1]*100)/$amt_counts;
															
														}
														
														if ($gstdata1[0] == 'SGST') {
															$sgst = ($gstdata1[1]*100)/$amt_counts;
															
														}
														else if ($gstdata2[0] == 'SGST') {
															$sgst = ($gstdata2[1]*100)/$amt_counts;
															
														}
														else if ($gstdata3[0] == 'SGST') {
															$sgst = ($gstdata3[1]*100)/$amt_counts;
															
														}
														else{
															$sgst = ($gstdata4[1]*100)/$amt_counts;
															
														}
														
														?>
														
														<tr>
														<td rowspan="2">HSN/SAC</td>
														<td rowspan="2"><b>Taxable Value</b></td>
														<td colspan="2">Central Tax</td>
														<td colspan="2">State Tax</td>
														<td rowspan="2">Total tax amount</td>
														</tr>
														<tr>
														<td>Rate</td>
														<td>Amount</td>
														<td>Rate</td>
														<td>Amount</td>
														
														</tr>
														<?php 
														$itm_gsts = 0;
														$cgst_total = 0;
														$sgst_total = 0;
														$taxable_value = 0;
														while ($itm_gsts < $count_getitem_query_bill) { 
															
															
															unset($arr_gethsn_query_bill); 
															$arr_gethsn_query_bill = array();
															$gethsn_query_bill = "(select * FROM inventory_master  WHERE   itemname = '".$arr_getitem_query_bill[$itm_gsts]['itemname']."')
															UNION ALL
															(select * FROM inventory_master_indore  WHERE   itemname = '".$arr_getitem_query_bill[$itm_gsts]['itemname']."')
															UNION ALL
															(select * FROM inventory_master_lucknow  WHERE   itemname = '".$arr_getitem_query_bill[$itm_gsts]['itemname']."')";
															
															$result_gethsn_query_bill = mysqli_query($con, $gethsn_query_bill);
															
															while($row_gethsn_query_bill= mysqli_fetch_assoc($result_gethsn_query_bill)){
																
																$arr_gethsn_query_bill[] = $row_gethsn_query_bill;
															}
															$count_gethsn_query_bill = count($arr_gethsn_query_bill);
															
															
															$cgst_amount = ($arr_getitem_query_bill[$itm_gsts]['amount']*$cgst)/100;
															$sgst_amount = ($arr_getitem_query_bill[$itm_gsts]['amount']*$sgst)/100;
															?>
															<tr>
															<?php if(!$arr_gethsn_query_bill[0]['hsncode']){ ?>
																<td><?php echo $arr_getitem_query_bill[$itm_gsts]['itemname']?></td>
																<?} else { ?>
																	<td><?php echo $arr_gethsn_query_bill[0]['hsncode']?></td>
																	<? } ?>
																	<td><?php echo $arr_getitem_query_bill[$itm_gsts]['amount'];?></td>
																	<td><?php echo round($cgst); ?> %</td>
																	<td><?php echo round($cgst_amount,2) ?></td>
																	<td><?php echo round($sgst); ?>% </td>
																	<td><?php echo round($sgst_amount,2); ?></td>
																	<td><?php echo round(($cgst_amount+$sgst_amount),2);?></td>
																	</tr>
																	<?php 
																	$taxable_value += $arr_getitem_query_bill[$itm_gsts]['amount'];
																	$sgst_total += $sgst_amount;
																	$cgst_total += $cgst_amount;
																	$itm_gsts++;} ?>
																	<tr>
																	<td>Total</td>
																	<td><?php echo $taxable_value; ?></td>
																	<td></td>
																	<td><?php echo $cgst_total; ?></td>
																	<td></td>
																	<td><?php echo $sgst_total; ?></td>
																	<td><?php echo $cgst_total+$sgst_total;?></td>
																	</tr>
																	
																	<? }?>
																	
																	<?php if ($gstdata1[0] == 'IGST' || $gstdata2[0] == 'IGST' || $gstdata3[0] == 'IGST' || $gstdata4[0] == 'IGST'  ) { ?>
																		<tr>
																		<td colspan="9">
																		Tax Amount (in words) :<b><?php echo $get_amount= AmountInWords($igst_total);?></b>
																		</td>
																		</tr>
																		<?php } else {?>
																			<tr>
																			<td colspan="9">
																			Tax Amount (in words) :<b><?php echo $get_amount= AmountInWords($cgst_total+$sgst_total);?></b>
																			</td>
																			</tr>
																			<?php }?>
																			
																			
																			</tbody>
																			</table>
																			<table class="table table-bordered">
																			<tbody>
																			<tr>
																			<td>
																			Company’s PAN : AAECB5959N
																			<br>
																			Declaration
																			1.Payment through A/C payee cheque or demand draft only.<br>
																			2. Interest @ 24% applicable on delayed paymnet beyond
																			due date.<br> 3. Rs 500 shall be charged on dishonoured<br>
																			</td>
																			<td>
																			Pre Authenticated by : for Binary Infosolutions Pvt Ltd
																			
																			<br>
																			<br>
																			Authorised Signatory: Issuing Signatory
																			<br>
																			Name : 
																			<br>
																			Designation :  
																			</td>
																			</tr>
																			</tbody>
																			</table>
																			</div>
																			
																			</div>
																			</div>
																			<div class="row">
																			<div class="col-lg-12">
																			<div class="table-responsive">
																			<table  class="table table-bordered">
																			<thead>
																			<tr>
																			<th>Name of item</th>
																			<th>Quantity</th>
																			<th>Rate</th>
																			<th>Amount</th>
																			
																			</tr>
																			</thead>
																			<tbody>
																			<?php 
																			$getitem_query = "(select * FROM crm_salesreport  WHERE party = '".$arr_getparty_query[$i_button]['party']."' and vdate = '".$arr_getparty_query[$i_button]['vdate']."')
																			UNION ALL
																			(select * FROM crm_salesreport_lucknow  WHERE party = '".$arr_getparty_query[$i_button]['party']."' and vdate = '".$arr_getparty_query[$i_button]['vdate']."')
																			UNION ALL
																			(select * FROM crm_salesreport_indore  WHERE party = '".$arr_getparty_query[$i_button]['party']."' and vdate = '".$arr_getparty_query[$i_button]['vdate']."')";
																			
																			$result_getitem_query = mysqli_query($con, $getitem_query);
																			
																			while($row_getitem_query= mysqli_fetch_assoc($result_getitem_query)){
																				
																				$arr_getitem_query[] = $row_getitem_query;
																			}
																			$count_getitem_query = count($arr_getitem_query);
																			
																			$item_i = 0;
																			while ($item_i<$count_getitem_query) { ?>
																				<tr>
																				<td><?php echo $arr_getitem_query[$item_i]['itemname'];?></td>
																				<td><?php echo $arr_getitem_query[$item_i]['qty'];?></td>
																				<td><?php echo $arr_getitem_query[$item_i]['rate'];?></td>
																				<td><?php echo $arr_getitem_query[$item_i]['amount'];?></td>
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
																				<?php $i_button++; } ?>
																				
																				<script>
																				
																				function CreatePDFfromHTML(tablenumber) {
																					let tablename = "html-content"+tablenumber;
																					
																					//alert(tablename);
																					
																					var sTable = document.getElementById(tablename).innerHTML;
																					//alert(sTable);
																					
																					var style = "<style>";
																					style = style + "table {width: 100%;font: 17px Calibri;}";
																					style = style + "table, th, td {border: solid 1px #DDD; border-collapse: collapse;";
																						style = style + "padding: 2px 3px;text-align: left;}";
																						style = style + " td {font-size: 16px}";
																						style = style + " th {font-size: 20px}";
																						style = style + "</style>";
																						
																						// CREATE A WINDOW OBJECT.
																						var win = window.open('', '', 'height=700,width=700');
																						
																						win.document.write('<html><head>');
																						//win.document.write('<title>Profile</title>');   // <title> FOR PDF HEADER.
																						win.document.write(style);          // ADD STYLE INSIDE THE HEAD TAG.
																						win.document.write('</head>');
																						win.document.write('<body>');
																						win.document.write(sTable);         // THE TABLE CONTENTS INSIDE THE BODY TAG.
																						win.document.write('</body></html>');
																						
																						win.document.close(); 	// CLOSE THE CURRENT WINDOW.
																						
																						win.print();    // PRINT THE CONTENTS.
																					}
																					
																					
																					
																					
																					
																					</script>
																					
																					
																					
																					
																					
																					
																					
																					
																					
																					
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