<?php
$xml_str = "
<ENVELOPE>
<HEADER><VERSION>1</VERSION><TALLYREQUEST>Export</TALLYREQUEST><TYPE>Data</TYPE><ID>Trial Balance</ID></HEADER>
<BODY>
<DESC>
<STATICVARIABLES>
<SVCURRENTCOMPANY>Binary Infosolutions Pvt Ltd (Lucknow)</SVCURRENTCOMPANY>
<EXPLODEFLAG>YES</EXPLODEFLAG>
<ISITEMWISE>YES</ISITEMWISE>
<REPORTNAME>Stock Summary</REPORTNAME>
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

if(curl_errno($ch)) {
  print curl_error($ch);  
} else {
    // echo ('<pre>');
    // echo(htmlentities($data));
    // echo ('</pre>');
    
       // echo $xml->DSPACCNAME->DSPDISPNAME;
  

  curl_close($ch);
}
$count = count($xml->DSPACCNAME)/2;
// echo $count;

?>

<!DOCTYPE html>
<html>
<head>
  <title></title>
  <head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style type="text/css">
    table{
      border:1px solid black ;
    }
  </style>
</head>
</head>
<body>


<div class="container">   
<h1 style="text-align: center;">Trail Balance</h1>        
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Perticular</th>
        <th>Dr.</th>
        <th>Cr.</th>
      </tr>
    </thead>
    <tbody>
      <?php 
        $i=0;
        while ($i<$count) {?>
       <tr>
        <td><?php echo $xml->DSPACCNAME[$i]->DSPDISPNAME ?></td>
        <td><?php echo $xml->DSPACCINFO[$i]->DSPCLDRAMT->DSPCLDRAMTA ?></td>
        <td><?php echo $xml->DSPACCINFO[$i]->DSPCLCRAMT->DSPCLCRAMTA ?></td>
      </tr>
    <?php $i++; } ?>
    </tbody>
  </table>
</div>
</body>
</html>