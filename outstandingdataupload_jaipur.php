<?php
error_reporting(0);
$xml_str = "<ENVELOPE>
<HEADER>
<TALLYREQUEST>Export Data</TALLYREQUEST>
</HEADER>
<BODY>
<EXPORTDATA>
<REQUESTDESC>
<STATICVARIABLES>
<SVCURRENTCOMPANY>Binary Infosolutions Pvt Ltd</SVCURRENTCOMPANY>
<GROUPNAME>Sundry Debtors</GROUPNAME>
<SHOWBYBILL>YES</SHOWBYBILL>
<ISBILLPARTYWISE>YES</ISBILLPARTYWISE>
<EXPLODEFLAG>Yes</EXPLODEFLAG>
</STATICVARIABLES>
<REPORTNAME>Group Outstandings</REPORTNAME>
</REQUESTDESC>
</EXPORTDATA>
</BODY>
</ENVELOPE>";

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
    echo ('<pre>');
    print_r($array);
    echo ('</pre>');

    
  curl_close($ch);
}
$count = count($array["BILLFIXED"]);
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
//Check connection
if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}
else{
  echo "database connected<br>";
}



if ($array=='' || $array==null) {
  echo "Tally is offline";
}
else{
  $i=0;
$j=1;
$delete = "DELETE FROM tallyoutstanding_jaipur";
mysqli_query($con, $delete);
while ($i<$count){
  $BILLPARTY=$array["BILLFIXED"][$i]["BILLPARTY"] ;
  $BILL_DATE=$array["BILLFIXED"][$i]["BILLDATE"] ;
  $BILLCL=$array["BILLCL"][$i];
  $BILLDUE=$array["BILLDUE"][$i];
  $BILLOVERDUE=$array["BILLOVERDUE"][$i];

     
  $sql = "INSERT INTO tallyoutstanding_jaipur(party,bill_date,pendingamount,dueon,overdueday)
  VALUES ('$BILLPARTY','$BILL_DATE', '$BILLCL','$BILLDUE','$BILLOVERDUE')";

  if (mysqli_query($con, $sql)) {
    // echo "inserted.<br>";
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($con);
  }
  $i++;$j++;   
}
}




  mysqli_close($con);

  ?>
<!-- 
  <script>
setTimeout(function () { window.location.reload(); }, 5*60*1000);
// just show current time stamp to see time of last refresh.
document.write(new Date());
</script> -->