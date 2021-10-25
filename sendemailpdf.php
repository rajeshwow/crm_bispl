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
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Download pdf</title>
	<!-- jQuery library -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
	<script type="text/javascript" src="https://html2canvas.hertzen.com/dist/html2canvas.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<style>
	.table {
		margin-bottom: 0px;
	}
</style>

</head>

<body>
	<button onclick="CreatePDFfromHTML()"  id="sendmail">generate PDF</button>
	<div class="html-content" id="pdfdiv">
		<div class="invoice">
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
								Binary Infosolutions Pvt Ltd (Lucknow)<br>
								A-435 Lekhraj Indira Nagar Lucknow-226016<br>
								GSTIN/UIN: 09AAECB5959N1ZY<br>
								State Name : Uttar Pradesh, Code : 09<br>
								CIN: U72200RJ2011PTC035609<br>
								E-Mail : accounts@bispl.net.in<br>
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
								Buyer<br>
								ACP IT Solution (P) Ltd.<br>
								13/386 (1A) Civil Lines, Opp Green Park, Gate No 1A,<br>
								Kanpur ? 208001<br>
								9005093281<br>
								GSTIN/UIN : 09AAQCA8845E1Z7<br>
								State Name : Uttar Pradesh, Code : 09<br>
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
				<table class="table table-bordered" style="min-height: 200px;">
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
	</div>
	<div id="editor"></div>
	
	<script>
		function CreatePDFfromHTML() {
			var HTML_Width = $(".html-content").width();
			var HTML_Height = $(".html-content").height();
			var top_left_margin = 15;
			var PDF_Width = HTML_Width + (top_left_margin * 2);
			var PDF_Height = (PDF_Width * 1.5) + (top_left_margin * 2);
			var canvas_image_width = HTML_Width;
			var canvas_image_height = HTML_Height;

			var totalPDFPages = Math.ceil(HTML_Height / PDF_Height) - 1;

			html2canvas($(".html-content")[0]).then(function (canvas) {
				var imgData = canvas.toDataURL("image/jpeg", 1.0);
				var pdf = new jsPDF('p', 'pt', [PDF_Width, PDF_Height]);
				pdf.addImage(imgData, 'JPG', top_left_margin, top_left_margin, canvas_image_width, canvas_image_height);
				for (var i = 1; i <= totalPDFPages; i++) { 
					pdf.addPage(PDF_Width, PDF_Height);
					pdf.addImage(imgData, 'JPG', top_left_margin, -(PDF_Height*i)+(top_left_margin*4),canvas_image_width,canvas_image_height);
				}
				//pdf.save("Your_PDF_Name.pdf");
				//var pdfs =pdf.output('blob');
				//alert(pdfs)
				$(".html-content").hide();


				var xxx = btoa(pdf.output()); 
				$.ajax({
					method: "POST",
					url: "mailpdf.php",
					data: {data: xxx,email: 'rajesh@gmail.com'},
				}).done(function(data){
					console.log(data);
				});
			});
		}
	</script>
</body>
</html>