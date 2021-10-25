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
$url = "http://192.168.91.1:9000";
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
$count = count($xml->DSPACCNAME);
// echo $count;

?>