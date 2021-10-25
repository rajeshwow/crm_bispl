<?php
$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://localhost:9000',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_POSTFIELDS =>'<ENVELOPE>
  <HEADER><VERSION>1</VERSION><TALLYREQUEST>Export</TALLYREQUEST><TYPE>Data</TYPE><ID>Stock Summary</ID></HEADER>
  <BODY>
  <DESC>
  <STATICVARIABLES>
  <SVCURRENTCOMPANY>Binary Infosolutions Pvt Ltd - (from 1-Apr-2019)</SVCURRENTCOMPANY>
  <ISITEMWISE>YES</ISITEMWISE>
  <REPORTNAME>Stock Summary</REPORTNAME>
  <SVEXPORTFORMAT>$$SysName:XML</SVEXPORTFORMAT>
  </STATICVARIABLES>
  </DESC>
  </BODY>
  </ENVELOPE>',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: text/plain'
  ),
));

$response = curl_exec($curl);
$xml = simplexml_load_string($response);
$json = json_encode($xml);
$array = json_decode($json,TRUE);

if(curl_errno($curl)) {
  print curl_error($curl);  
} 
else {
  echo ('<pre>');
  print_r($array);
  echo ('</pre>');
}

curl_close($curl);
echo $response;
$count = count($xml->DSPACCNAME);
// echo $count;

?>
<?php 
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
$searchhh = "Could not set 'SVCurrentCompany' to";
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
  echo "Tally is offline<br>";
}
else if ($array[0] =='Unknown Request, cannot be processed') {
  echo "Export format is not XML.";
}
else if (strpos($array['BODY']['DATA']['LINEERROR'], $searchhh) !== false) {
  echo "Company is off.";
}
else{
  $i=0;
  $j=1;
  $delete = "DELETE FROM tallydatainv_jaipur";
  date_default_timezone_set('Asia/Kolkata');
  mysqli_query($con, $delete);
  while ($i<$count){
    
    $perticular=$array["DSPACCNAME"][$i]["DSPDISPNAME"];
    $qty=$array["DSPSTKINFO"][$i]["DSPSTKCL"]["DSPCLQTY"];
    $rate=$array["DSPSTKINFO"][$i]["DSPSTKCL"]["DSPCLRATE"];
    $amount=$array["DSPSTKINFO"][$i]["DSPSTKCL"]["DSPCLAMTA"];
    $dt2=date("Y-m-d H:i:s");

    $sql = "INSERT INTO tallydatainv_jaipur(perticular,qty,rate,amount,location,created_on)
    VALUES ('$perticular', '$qty','$rate','$amount','Jaipur','$dt2')";

    if (mysqli_query($con, $sql)) {
    // echo "inserted.<br>";
    } else {
      echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }
    $i++;  }
  }



  mysqli_close($con);

  ?>