<?php
$xml_str = ""
    . "<ENVELOPE>"
     . "<HEADER><TALLYREQUEST>Import Data</TALLYREQUEST></HEADER>"
     . "<BODY>"
      . "<IMPORTDATA>"
       . "<REQUESTDESC><REPORTNAME>Vouchers</REPORTNAME><STATICVARIABLES><SVCURRENTCOMPANY>Rajesh Company</SVCURRENTCOMPANY></STATICVARIABLES></REQUESTDESC>"
       . "<REQUESTDATA>"
        . "<TALLYMESSAGE xmlns:UDF=\"TallyUDF\">"
         . "<VOUCHER REMOTEID=\"00000001\" VCHTYPE=\"Receipt\" ACTION=\"Create\" OBJVIEW=\"Accounting Voucher View\">"    
          . "<DATE>20210101</DATE>"
          . "<VOUCHERTYPENAME>Receipt</VOUCHERTYPENAME>"
          . "<VOUCHERNUMBER>1</VOUCHERNUMBER>"
          . "<PARTYLEDGERNAME>Rjledger</PARTYLEDGERNAME>"
          . "<PERSISTEDVIEW>Accounting Voucher View</PERSISTEDVIEW>"
          . "<ALLLEDGERENTRIES.LIST>"
           . "<LEDGERNAME>Rjledger</LEDGERNAME>"
           . "<ISDEEMEDPOSITIVE>No</ISDEEMEDPOSITIVE>"
           . "<AMOUNT>50000.00</AMOUNT>"
          . "</ALLLEDGERENTRIES.LIST>"
          . "<ALLLEDGERENTRIES.LIST>"    
           . "<LEDGERNAME>Cash</LEDGERNAME>"
           . "<ISDEEMEDPOSITIVE>Yes</ISDEEMEDPOSITIVE>"
           . "<AMOUNT>-50000.00</AMOUNT>"        
          . "</ALLLEDGERENTRIES.LIST>"  
         . "</VOUCHER>"
        . "</TALLYMESSAGE>"
       . "</REQUESTDATA>"
      . "</IMPORTDATA>"
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
 
 if(curl_errno($ch)) {
  print curl_error($ch);  
 } else {
  print "<pre>" . htmlentities($data) . "</pre>";
  curl_close($ch);
 }
?>