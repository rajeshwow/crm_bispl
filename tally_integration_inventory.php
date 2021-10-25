<?php
error_reporting(0);
$xml_str = "<ENVELOPE>

<HEADER>

<VERSION>1</VERSION>

<TALLYREQUEST>EXPORT</TALLYREQUEST>

<TYPE>OBJECT</TYPE> <SUBTYPE>Ledger</SUBTYPE> <ID TYPE='Name'>ALFA INFONET </ID>

</HEADER>
<BODY>
<DESC>

<STATICVARIABLES><SVEXPORTFORMAT>$$SysName:XML</SVEXPORTFORMAT></STATICVARIABLES>

<FETCHLIST>

<FETCH>Name</FETCH>

<FETCH>TNetBalance</FETCH>

<FETCH>LedgerPhone</FETCH>

</FETCHLIST>

<TDL>

<TDLMESSAGE>

<OBJECT NAME='Ledger' ISINITIALIZE='Yes'>



</OBJECT>

</TDLMESSAGE>

</TDL>

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
// print_r($xml);
if(curl_errno($ch)) {
  print curl_error($ch);  
} else {
    echo ('<pre>');
    print_r($array);
    echo ('</pre>');

    
  curl_close($ch);
}
$count = count($xml->DSPACCNAME);
// echo $count;

?>