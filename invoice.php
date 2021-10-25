<!DOCTYPE html>
<html>
<head>
	<title>Bootstrap Example</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<style>
	.table {
		width: 100%;
		max-width: 100%;
		margin-bottom: 0px;
	}
</style>
</head>
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

<body>
	<div class="invoice">
		<h1>Tax Invoice</h1>
		<div class="container">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th colspan="3" style="text-align: center;">Tax Invoice</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="3" style="width: 50%;">
							Binary Infosolutions Pvt Ltd (Lucknow)
							A-435 Lekhraj Indira Nagar Lucknow-226016
							GSTIN/UIN: 09AAECB5959N1ZY
							State Name : Uttar Pradesh, Code : 09
							CIN: U72200RJ2011PTC035609
							E-Mail : accounts@bispl.net.in
						</td>
						<td style="width: 25%">Doe</td>
						<td style="width: 25%">john@example.com</td>
					</tr>
					<tr>

						<td style="width: 25%">Doe</td>
						<td style="width: 25%">john@example.com</td>
					</tr>
					<tr>
						<td style="width: 25%">Doe</td>
						<td style="width: 25%">john@example.com</td>
					</tr>
					<tr>
						<td rowspan="3" style="width: 50%;">
							Buyer
							ACP IT Solution (P) Ltd.
							13/386 (1A) Civil Lines, Opp Green Park, Gate No 1A,
							Kanpur ? 208001
							9005093281
							GSTIN/UIN : 09AAQCA8845E1Z7
							State Name : Uttar Pradesh, Code : 09
						</td>
						<td style="width: 25%">Doe</td>
						<td style="width: 25%">john@example.com</td>
					</tr>
					<tr>

						<td style="width: 25%">Doe</td>
						<td style="width: 25%">john@example.com</td>
					</tr>
					<tr>
						<td style="width: 25%">Doe</td>
						<td style="width: 25%">john@example.com</td>
					</tr>


				</tbody>
			</table>
			<table class="table table-bordered">
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
					<tr>
						<td>1 </td>
						<td>XDS9500 CEILLING MOUNT AP</td>
						<td>46546215</td>
						<td>1</td>
						<td>5000</td>
						<td>No</td>
						<td>-</td>
						<td>-</td>
						<td>50000</td>
					</tr>
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
					<tr>
						<td></td>
						<td>CGST</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>2100</td>
					</tr>
					<tr>
						<td></td>
						<td>sGST</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>2100</td>
					</tr>
					<tr>
						<td></td>
						<td><b>Total</b></td>
						<td></td>
						<td><b>6</b></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td><b>2500</b></td>
					</tr>
					<tr>
						<td colspan="9">
							<p>Amount chargable in words 
							</p>
							<b><?php echo $get_amount= AmountInWords(54800);?></b>
						</td>
					</tr>

				</tbody>
			</table>
			<table class="table table-bordered">
				<tbody>
					<tr>
						<td rowspan="2">HSN/SAC</td>
						<td rowspan="2"><b>Taxable Value</b></td>
						<td colspan="2">Cureent Tax</td>
						<td colspan="2">state Tax</td>
						<td rowspan="2">Total tax amount</td>
					</tr>
					<tr>

						<td>Rate</td>
						<td>Amount</td>
						<td>Rate</td>
						<td>Amount</td>
					</tr>

					<tr>
						<td>85177090</td>
						<td>24,000.00</td>
						<td>9%</td>
						<td>2,160.00</td>
						<td>9% </td>
						<td>2,160.00</td>
						<td>4,320.00</td>
					</tr>

					<tr>
						<td>Total</td>
						<td>24,000.00</td>
						<td></td>
						<td>2,160.00</td>
						<td> </td>
						<td>2,160.00</td>
						<td>4,320.00</td>
					</tr>

					<tr>
						<td colspan="9">
							Tax Amount (in words) :<b><?php echo $get_amount= AmountInWords(54800);?></b>
						</td>
					</tr>


				</tbody>
			</table>
			<table class="table table-bordered">
				<tbody>
					<tr>
						<td>
							Company’s PAN : AAECB5959N
							<br>
							Declaration
							We declare that this invoice shows the actual price of the<br>
							goods described and that all particulars are true and<br>
							correct.
						</td>
						<td>
							Pre Authenticated by : for Binary Infosolutions Pvt Ltd (Lucknow)

							<br>
							<br>
							Authorised Signatory: Issuing Signatory
							<br>
							Name : Name : 
							<br>
							Designation : Designation : 
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>