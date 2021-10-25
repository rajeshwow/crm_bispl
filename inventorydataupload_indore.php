<?php
error_reporting(0);
$xml_str = ""
. "<ENVELOPE>"
. "<HEADER><VERSION>1</VERSION><TALLYREQUEST>Export</TALLYREQUEST><TYPE>Data</TYPE><ID>Stock Summary</ID></HEADER>"
. "<BODY>"
. "<DESC>"
. "<STATICVARIABLES>"
. "<SVCURRENTCOMPANY>Binary Infosolutions Pvt Ltd (Indore)</SVCURRENTCOMPANY>"
. "<SVEXPORTFORMAT>$$SysName:XML</SVEXPORTFORMAT>"
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
$xml = simplexml_load_string($data);
$json = json_encode($xml);
$array = json_decode($json,TRUE);

if(curl_errno($ch)) {
  print curl_error($ch);  
} else {
    // echo ('<pre>');
    // print_r($array);
    // echo ('</pre>');


  curl_close($ch);
}
$count = count($xml->DSPACCNAME);
// echo $count;

?>
<?php 
// $servername = "148.66.138.116";
// $dbname = "i7232841_ma1";
// $username = "lha78u13omzr";
// $password = "BinaryCpanel#1";

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bispl";


// Create connection
$con = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}
else{
  echo "database connected.<br>";
}

// $result = mysqli_query($con,"select count(1) FROM tallydatainv");
// $row = mysqli_fetch_array($result);
// $total = $row[0];

if ($array=='' || $array==null) {
  echo "Tally is offline";
}
else{
  $i=0;
$j=1;
$delete = "DELETE FROM tallydatainv_indore";
mysqli_query($con, $delete);
while ($i<$count){
  $perticular=$array["DSPACCNAME"][$i]["DSPDISPNAME"];
  $qty=$array["DSPSTKINFO"][$i+$j]["DSPSTKCL"]["DSPCLQTY"];
  $rate=$array["DSPSTKINFO"][$i+$j]["DSPSTKCL"]["DSPCLRATE"];
  $amount=$array["DSPSTKINFO"][$i+$j]["DSPSTKCL"]["DSPCLAMTA"];
  $sql = "INSERT INTO tallydatainv_indore(perticular,qty,rate,amount,location)
  VALUES ('$perticular', '$qty','$rate','$amount','Indore')";

  if (mysqli_query($con, $sql)) {
    // echo "inserted.<br>";
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($con);
  }
  $i++;$j++;   }
}



  mysqli_close($con);

  ?>
<!-- 
  <script>
setTimeout(function () { window.location.reload(); }, 5*60*1000);
// just show current time stamp to see time of last refresh.
document.write(new Date());
</script> -->