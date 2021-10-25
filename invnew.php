<?php

// $servername = "148.66.138.116";
// $dbname = "i7232841_ma1";
// $username = "lha78u13omzr";
// $password = "BinaryCpanel#1";


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bispl";
// error_reporting(E_ALL & ~E_NOTICE);

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
$ch = curl_init();

curl_setopt_array($ch, array(
  CURLOPT_URL => 'http://localhost:9000',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_POSTFIELDS =>'<ENVELOPE>
  <HEADER>
  <TALLYREQUEST>Export Data</TALLYREQUEST>
  </HEADER>
  <BODY>
  <EXPORTDATA>
  <REQUESTDESC>
  <STATICVARIABLES>
  <SVCURRENTCOMPANY>Binary Infosolutions Pvt Ltd (Lucknow)</SVCURRENTCOMPANY>
  <SVEXPORTFORMAT>$$SysName:XML</SVEXPORTFORMAT>
  <ISGROUPWISE>YES</ISGROUPWISE>
  </STATICVARIABLES>
  <REPORTNAME>Stock Summary</REPORTNAME>
  </REQUESTDESC>
  </EXPORTDATA>
  </BODY>
  </ENVELOPE>',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: text/plain'
  ),
));

$data = curl_exec($ch);
// print_r($data);
$xml = simplexml_load_string($data);
$json = json_encode($xml);
$array = json_decode($json,TRUE);

if(curl_errno($ch)) {
  print curl_error($ch);  
} else {
    echo ('<pre>');
    print_r($array['DSPACCNAME']);
    echo ('</pre>');
}

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

  $delete = "DELETE FROM tallydatainv_lucknow";
  mysqli_query($con, $delete);

  $i = 0;
  while ($i<count($array['DSPACCNAME'])) {
    $grp = $array['DSPACCNAME'][$i]['DSPDISPNAME'];
    echo $grp."<br>";
    $ch_items = curl_init();
    curl_setopt_array($ch_items, array(
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
      <SVCURRENTCOMPANY>Binary Infosolutions Pvt Ltd (Lucknow)</SVCURRENTCOMPANY>
      <isitemwise>Yes</isitemwise>
      <STOCKGROUPNAME>"'.$grp.'"</STOCKGROUPNAME>
      <SVEXPORTFORMAT>$$SysName:XML</SVEXPORTFORMAT>
      </STATICVARIABLES>
      </DESC>
      </BODY>
      </ENVELOPE>',
      CURLOPT_HTTPHEADER => array(
        'Content-Type: text/plain'
      ),
    ));

    
    $data_items = curl_exec($ch_items);
    // echo $data_items;
    // echo $data_items;
    $data_items = str_replace('&#4;', '', $data_items);
    $data_items = str_replace('&quot;', '', $data_items);
    $data_items = iconv('UTF-8', 'UTF-8//IGNORE', $data_items);
    $xml_items = simplexml_load_string($data_items);

    $json_items = json_encode($xml_items);

    $array_items = json_decode($json_items,TRUE);
    // print_r($array_items);

    if(curl_errno($ch_items)) {
      print curl_error($ch_items);  
    } else {
    echo ('<pre>');
    print_r($array_items);
    echo ('</pre>');
    }

    $j=0;
    
    date_default_timezone_set('Asia/Kolkata');
    
    while ($j<count($array_items["DSPACCNAME"])){

      $perticular=($array_items["DSPACCNAME"][$j]["DSPDISPNAME"]);
      echo $perticular;
      $qty=$array_items["DSPSTKINFO"][$j]["DSPSTKCL"]["DSPCLQTY"];
      $rate=$array_items["DSPSTKINFO"][$j]["DSPSTKCL"]["DSPCLRATE"] != 'Array' ?$array_items["DSPSTKINFO"][$j]["DSPSTKCL"]["DSPCLRATE"]:'-';
      $amount=abs($array_items["DSPSTKINFO"][$j]["DSPSTKCL"]["DSPCLAMTA"]);
      $dt2=date("Y-m-d H:i:s");
      $num_qty = explode('.00', $qty);

      $sql = "Insert INTO tallydatainv_lucknow(type,perticular,qty,rate,amount,location,created_on)
      VALUES ('$grp','$perticular', '".abs($num_qty[0])."','$rate','$amount','Lucknow','$dt2') ON DUPLICATE KEY UPDATE type='$grp'";
      // if (mysqli_query($con, $sql)) {
      //   echo "inserted.<br>";
      // } else {
      //   echo "Error: " . $sql . "<br>" . mysqli_error($con);
      // }
      $j++;   
    }
    $i++;


  }

}
?>
