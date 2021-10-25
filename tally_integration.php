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
<TALLYREQUEST>Export Data</TALLYREQUEST>
</HEADER>
<BODY>
<EXPORTDATA>
<REQUESTDESC>
<STATICVARIABLES>
<GROUPNAME>Sundry Debtors</GROUPNAME>
</STATICVARIABLES>
  <REPORTNAME>Voucher Register</REPORTNAME>
</REQUESTDESC>
</EXPORTDATA>
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
  echo ('<pre>');
  print_r($array);
  echo ('</pre>');


}
curl_close($ch);



?>