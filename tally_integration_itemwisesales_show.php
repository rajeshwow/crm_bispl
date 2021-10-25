<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bispl";

// $servername = "148.66.138.116";
// $dbname = "i7232841_ma1";
// $username = "lha78u13omzr";
// $password = "BinaryCpanel#1";

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
     <EXPLODEFLAG>Yes</EXPLODEFLAG>
     <DBBillExplodeFlag>Yes</DBBillExplodeFlag>
     <DBCostExplodeFlag>Yes</DBCostExplodeFlag>
     <DBInvExplodeFlag>Yes</DBInvExplodeFlag>
     <DBBankExplodeFlag>Yes</DBBankExplodeFlag>

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
     echo ('<pre>');
     print_r($array);
     echo ('</pre>');
   }
   $count = count($array["BODY"]["IMPORTDATA"]["REQUESTDATA"]["TALLYMESSAGE"]);
   echo $count;
   
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
         <h1 style="text-align: center;">Item Wise sales out report</h1>
         <table class="table table-striped">
            <thead>
               <tr>
                  <th>S.no </th>
                  <th>Cost Center</th>
                  <th>Party</th>
                  <th>Item Name</th>
                  <th>Rate </th>
                  <th>Quantity</th>
                  <th>Amount</th>
                  <th>Date</th>
                  <th>Company name</th>

               </tr>
            </thead>
            <tbody>
               <?php 
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
                  
                  
                        ?>
               <tr>
                  <td><?php echo $i+1 ?></td>
                  <td><?php echo $array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['COSTCENTRENAME'] ?></td>
                  <td><?php echo $array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['PARTYNAME'] ?></td>
                  <td><?php echo $array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['INVENTORYENTRIES.LIST'][$j]['STOCKITEMNAME']?></td>
                  <td><?php echo $array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['INVENTORYENTRIES.LIST'][$j]['RATE']?></td>
                  <td><?php echo $array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['INVENTORYENTRIES.LIST'][$j]['ACTUALQTY']?></td>
                  <td><?php echo $array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['INVENTORYENTRIES.LIST'][$j]['AMOUNT']?></td>
                  <td><?php echo $array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['BASICDATETIMEOFINVOICE'] ?></td>
                  <td><?php echo $array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['EWAYBILLDETAILS.LIST']['CONSIGNORNAME']?></td>
               </tr>
               <?php 
                  }
                  
                  else { ?>
               <tr>
                  <td><?php echo $i+1 ?></td>
                  <td><?php echo $array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['COSTCENTRENAME'] ?></td>
                  <td><?php echo $array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['PARTYNAME'] ?></td>
                  <td><?php echo $array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['INVENTORYENTRIES.LIST']['STOCKITEMNAME']?></td>
                  <td><?php echo $array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['INVENTORYENTRIES.LIST']['RATE']?></td>
                  <td><?php echo $array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['INVENTORYENTRIES.LIST']['ACTUALQTY']?></td>
                  <td><?php echo $array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['INVENTORYENTRIES.LIST']['AMOUNT']?></td>
                  <td><?php echo $array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['BASICDATETIMEOFINVOICE'] ?></td>
                  <td><?php echo $array['BODY']['IMPORTDATA']['REQUESTDATA']['TALLYMESSAGE'][$i]['VOUCHER']['EWAYBILLDETAILS.LIST']['CONSIGNORNAME']?></td>
               </tr>
               <?php }
                  $j++;} 
                  $i++; 
                } ?>
            </tbody>
         </table>
      </div>
   </body>
</html>