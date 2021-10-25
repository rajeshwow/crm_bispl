<?php
error_reporting(0);
$xml_str = "<ENVELOPE>
<HEADER><VERSION>1</VERSION><TALLYREQUEST>Export</TALLYREQUEST><TYPE>Data</TYPE><ID>Stock Summary</ID></HEADER>
<BODY>
<DESC>
<STATICVARIABLES>
<SVCURRENTCOMPANY>Binary Infosolutions Pvt Ltd - (from 1-Apr-2019)</SVCURRENTCOMPANY>
<isitemwise>No</isitemwise>
<EXPLODEFLAG>YES</EXPLODEFLAG>
</STATICVARIABLES>
</DESC>
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
    // echo ('<pre>');
    // print_r($array);
    // echo ('</pre>');
}
$i = 0;
while ($i<count($array['DSPACCNAME'])) {
  $grp = $array['DSPACCNAME'][$i]['DSPDISPNAME'];
  echo $grp;
  $xml_str_items = "<ENVELOPE>
  <HEADER><VERSION>1</VERSION><TALLYREQUEST>Export</TALLYREQUEST><TYPE>Data</TYPE><ID>Stock Summary</ID></HEADER>
  <BODY>
  <DESC>
  <STATICVARIABLES>
  <SVCURRENTCOMPANY>Binary Infosolutions Pvt Ltd - (from 1-Apr-2019)</SVCURRENTCOMPANY>
  <isitemwise>Yes</isitemwise>
  <STOCKGROUPNAME>'".$grp."'</STOCKGROUPNAME>
  </STATICVARIABLES>
  </DESC>
  </BODY>
  </ENVELOPE>";
  $url_items = "http://localhost:9000";
  $headers_items = array("Content-type: text/xml", "Content-length:" . strlen($xml_str_items), "Connection: close");

  $ch_items = curl_init();
  curl_setopt($ch_items, CURLOPT_URL, $url_items);
  curl_setopt($ch_items, CURLOPT_RETURNTRANSFER, 1);
  curl_setopt($ch_items, CURLOPT_TIMEOUT, 100);
  curl_setopt($ch_items, CURLOPT_POST, true);
  curl_setopt($ch_items, CURLOPT_POSTFIELDS, $xml_str_items);
  curl_setopt($ch_items, CURLOPT_HTTPHEADER, $headers_items);
  $data_items = curl_exec($ch_items);
  $xml_items = simplexml_load_string($data_items);
  $json_items = json_encode($xml_items);
  $array_items = json_decode($json_items,TRUE);

  if(curl_errno($ch_items)) {
    print curl_error($ch_items);  
  } else {
    // echo ('<pre>');
    // print_r($array_items);
    // echo ('</pre>');
  }


  $servername = "148.66.138.116";
$dbname = "i7232841_ma1";
$username = "lha78u13omzr";
$password = "BinaryCpanel#1";


  // $servername = "localhost";
  // $username = "root";
  // $password = "";
  // $dbname = "bispl";


// Create connection
  $con = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
  if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
  }
  else{
    echo "database connected.<br>";
  }
  $j=0;
  while ($j<count($array_items["DSPACCNAME"])){

    $perticular=$array_items["DSPACCNAME"][$j]["DSPDISPNAME"];
    $qty=$array_items["DSPSTKINFO"][$j]["DSPSTKCL"]["DSPCLQTY"];
    $rate=$array_items["DSPSTKINFO"][$j]["DSPSTKCL"]["DSPCLRATE"];
    $amount=$array_items["DSPSTKINFO"][$j]["DSPSTKCL"]["DSPCLAMTA"];

    $sql = "INSERT INTO tallydatainv_jaipur(type,perticular,qty,rate,amount,location)
    VALUES ('$grp','$perticular','$qty','$rate','$amount','Jaipur')";
    if (mysqli_query($con, $sql)) {
      echo "inserted.<br>";
    } else {
      echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }
    $j++;   
  }
  $i++;
}




?>
