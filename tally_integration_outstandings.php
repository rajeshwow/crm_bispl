<?php
error_reporting(0);
$xml_str = "<ENVELOPE>
<HEADER>
<TALLYREQUEST>Export Data</TALLYREQUEST>
</HEADER>
<BODY>
<EXPORTDATA>
<REQUESTDESC>
<STATICVARIABLES>

<GROUPNAME>Sundry Debtors</GROUPNAME>
<EXPLODEFLAG>Yes</EXPLODEFLAG>
</STATICVARIABLES>
<REPORTNAME>Group Outstandings</REPORTNAME>
</REQUESTDESC>
</EXPORTDATA>
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
    echo ('<pre>');
    print_r($array);
    echo ('</pre>');

    
  curl_close($ch);
}
$count = count($array["BILLFIXED"]);
// echo $count;

?>

<!-- <!DOCTYPE html>
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
      /*border:1px solid black ;*/
    }
  </style>
</head>
</head>
<body>


<div class="container">   
<h1 style="text-align: center;">Outstanding Summary</h1>  
<?php echo $count;?>      
  <table class="table table-striped">
    <thead>
      <tr>
        <th>S.no</th>
        <th>Party Name</th>
        <th>Pending Amount</th>
        <th>Due On</th>
        <th>Overdue By Days</th>
      </tr>
    </thead>
    <tbody>
      <?php 
        $i=0;
        
        while ($i<$count) {?>
       <tr>
        <td><?php echo $i+1;?></td>
        <td><?php echo $array["BILLFIXED"][$i]["BILLPARTY"] ?></td>
        <td><?php echo $array["BILLCL"][$i] ?></td>
        <td><?php echo $array["BILLDUE"][$i] ?></td>
        <td><?php echo $array["BILLOVERDUE"][$i] ?></td>

        
      </tr>
    <?php $i++; } ?>
    </tbody>
  </table>
</div>
</body>
</html> -->