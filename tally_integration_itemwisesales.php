<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bispl";

$servername = "148.66.138.116";
$dbname = "i7232841_ma1";
$username = "lha78u13omzr";
$password = "BinaryCpanel#1";

// Create connection
$con = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}
else{
  echo "database connected.<br>";
}

error_reporting(0);
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
 <SVFROMDATE TYPE=\'Date\'>01-01-2019</SVFROMDATE>
 <SVTODATE TYPE=\'Date\'>31-01-2019</SVTODATE>
 <VOUCHERTYPENAME>Sales</VOUCHERTYPENAME>
 <EXPLODEFLAG>No</EXPLODEFLAG>
 <!--Displays Bill-wise details-->
 <DBBILLEXPLODEFLAG>No</DBBILLEXPLODEFLAG>
 <!--Display Stock Item details-->
 <DBINVEXPLODEFLAG>Yes</DBINVEXPLODEFLAG>
 </STATICVARIABLES>
 <REPORTNAME>Voucher Register</REPORTNAME>
 </REQUESTDESC>
 </EXPORTDATA>
 </BODY>
 </ENVELOPE>',
 CURLOPT_HTTPHEADER => array(
   'Content-Type: text/plain'
 ),
));

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
$count = count($array["BODY"]["IMPORTDATA"]["REQUESTDATA"]["TALLYMESSAGE"]);
echo $count;

?>

<?php 


$delete = "DELETE FROM crm_salesreport";
mysqli_query($con, $delete);
$i=0;

while ($i<$count) {

  $key = 'STOCKITEMNAME';
  $arr = $array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['INVENTORYENTRIES.LIST'];

  if (array_key_exists($key,$arr)) {
    $invcount = 1;
  }
  else{
    $invcount = count($array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['INVENTORYENTRIES.LIST']);
  }

  $j=0;
  while($j<$invcount){

    if (!array_key_exists($key,$arr)) {


     $costcentre=$array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['COSTCENTRENAME'] ;
     $party=$array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['PARTYNAME'];
     $itemname=addslashes($array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['INVENTORYENTRIES.LIST'][$j]['STOCKITEMNAME']);
     $rate=explode('.',$array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['INVENTORYENTRIES.LIST'][$j]['RATE']);
     $qty=explode(' ',trim($array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['INVENTORYENTRIES.LIST'][$j]['ACTUALQTY']));
     $amount=$array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['INVENTORYENTRIES.LIST'][$j]['AMOUNT'];
     $date_str = explode(' ',$array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['BASICDATETIMEOFINVOICE']);
     $newdate=date_format(date_create($date_str[0]),"Y-m-d");
     $sql = "INSERT INTO crm_salesreport(costcentre,party,itemname,rate,qty,amount,vdate)
     VALUES ('$costcentre', '$party','$itemname','".$rate[0]."','".$qty[0]."','$amount','$newdate')";
     if (mysqli_query($con, $sql)) {
    echo "inserted Indexed.<br>";
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($con);
  }
   }
   else{
    $costcentre=$array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['COSTCENTRENAME'] ;
    $party=$array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['PARTYNAME'];
    $itemname=addslashes($array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['INVENTORYENTRIES.LIST']['STOCKITEMNAME']);
    $rate=explode('.',$array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['INVENTORYENTRIES.LIST']['RATE']);
     $qty=explode(' ',trim($array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['INVENTORYENTRIES.LIST']['ACTUALQTY']));
    $amount=$array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['INVENTORYENTRIES.LIST']['AMOUNT'];
    $date_str = explode(' ',$array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['BASICDATETIMEOFINVOICE']);
    $newdate=date_format(date_create($date_str[0]),"Y-m-d");
     $sql = "INSERT INTO crm_salesreport(costcentre,party,itemname,rate,qty,amount,vdate)
     VALUES ('$costcentre', '$party','$itemname','".$rate[0]."','".$qty[0]."','$amount','$newdate')";
    if (mysqli_query($con, $sql)) {
    echo "inserted non indexed.<br>";
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($con);
  }
  }

  $j++;
} 
  $i++; 
}

  ?>
