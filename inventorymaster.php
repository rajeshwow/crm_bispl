<?php include 'config.php'; ?>
<?php

// error_reporting(0);
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
 CURLOPT_POSTFIELDS =>'
 <ENVELOPE>
 <HEADER>
 <VERSION>1</VERSION>
 <TALLYREQUEST>EXPORT</TALLYREQUEST>
 <TYPE>COLLECTION</TYPE>
 <ID>Remote Ledger Coll</ID>
 </HEADER>
 <BODY>
 <DESC>
 <STATICVARIABLES>
 <SVEXPORTFORMAT>$$SysName:XML</SVEXPORTFORMAT>
 <EXPLODEFLAG>Yes</EXPLODEFLAG>
 </STATICVARIABLES>
 <TDL>
 <TDLMESSAGE>
 <COLLECTION NAME="Remote Ledger Coll" ISINITIALIZE="Yes">
 <TYPE>STOCKITEM</TYPE>
 <CATEGORY>Yes</CATEGORY>
 <NATIVEMETHOD>Name</NATIVEMETHOD>
 <NATIVEMETHOD>OpeningBalance</NATIVEMETHOD>
 <NATIVEMETHOD>PARENT</NATIVEMETHOD>
 <NATIVEMETHOD>category</NATIVEMETHOD>
 </COLLECTION>
 </TDLMESSAGE>
 </TDL>
 </DESC>
 </BODY>
 </ENVELOPE>',
 CURLOPT_HTTPHEADER => array(
   'Content-Type: text/xml'
 ),
));
$data = curl_exec($ch);
$data = str_replace('&#4;', '', $data);
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
curl_close($ch);


// echo count($array['BODY']['DATA']['COLLECTION']['STOCKITEM']);
$i= 0;

$delete = "DELETE FROM inventory_master";
mysqli_query($con,$delete);
while ($i< count($array['BODY']['DATA']['COLLECTION']['STOCKITEM'])) {

  $parent =$array['BODY']['DATA']['COLLECTION']['STOCKITEM'][$i]['PARENT'];
  $category =$array['BODY']['DATA']['COLLECTION']['STOCKITEM'][$i]['CATEGORY'];
  $itemname =$array['BODY']['DATA']['COLLECTION']['STOCKITEM'][$i]['@attributes']['NAME'];
  $openingbalance =$array['BODY']['DATA']['COLLECTION']['STOCKITEM'][$i]['OPENINGBALANCE'];

  $query = "INSERT INTO inventory_master (parent,category,itemname,openingbalance) VALUES ('$parent','$category','$itemname','$openingbalance')";
  
  if (mysqli_query($con,$query)) {
    echo "New record created successfully";
  } else {
    echo "Error: " . $sql . "-" . mysqli_error($con);
  }
  $i++;
}

?>