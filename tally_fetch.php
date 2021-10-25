<!DOCTYPE html>
<html>
<head>
	<title></title>
	<script type="text/javascript">
		var xmlhttp = new XMLHttpRequest();
xmlhttp.onreadystatechange = function() {
  if (this.readyState == 4 && this.status == 200) {
    var myObj = JSON.parse(this.responseText);
    document.getElementById("demo").innerHTML = myObj.name;
  }
};
xmlhttp.open("GET", "tally_integration<?php
$xml_str = ""
. "<ENVELOPE>"
. "<HEADER><VERSION>1</VERSION><TALLYREQUEST>Export</TALLYREQUEST><TYPE>Data</TYPE><ID>Trial Balance</ID></HEADER>"
. "<BODY>"
. "<DESC>"
. "<STATICVARIABLES>"
. "<SVCURRENTCOMPANY>Binary Infosolutions Pvt Ltd (Lucknow)</SVCURRENTCOMPANY>"
. "<EXPLODEFLAG>YES</EXPLODEFLAG>"
. "<ISITEMWISE>YES</ISITEMWISE>"
. "<REPORTNAME>Stock Summary</REPORTNAME>"
. "</STATICVARIABLES>"
. "</DESC>"
. "</BODY>"
. "</ENVELOPE>";
$url = "http://localhost:9000";
$headers = array("Content-type: text/xml", "Content-length:" . strlen($xml_str), "Connection: close");

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_TIMEOUT, 100);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, $xml_str);
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
$data = curl_exec($ch);
$json = json_encode($data);
$array = json_decode($json,TRUE);

if(curl_errno($ch)) {
  print curl_error($ch);  
} else {
   print ($data->DSPDISPNAME);
  curl_close($ch);
}

?>
<!-- <table>
  <thead>
    <tr>
      <th>Name</th>
    </tr>
  </thead>
  <tbody>

<?php foreach ($data->ENVELOPE as $ENVELOPE_elements) :?>
    <tr>
      <td><?php echo $licenseElement->DSPACCNAME; ?></td>
    </tr>
<?php endforeach; ?>
  </tbody>
</table> -->


.php", true);
xmlhttp.send();
	</script>
</head>
<body>
	<div class="demo"></div>
</body>
</html>