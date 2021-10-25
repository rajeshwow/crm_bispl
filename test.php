<?php 
include 'config.php';

$query ="select * from crm_salesreport";
$result = mysqli_query($con,$query);
while($racc_title = mysqli_fetch_assoc($result))
$arr_acc_title[] = $racc_title;

// echo "<pre>";
// echo print_r($arr_acc_title);
// echo "</pre>";
$i = 0;
while ($i<count($arr_acc_title)) {
	
$qty = explode('.',$arr_acc_title[$i]['qty']);
$id = $arr_acc_title[$i]['id'];

echo "id ".$id."- Qty". $qty[0]."<br>";

// $updatequery = "UPDATE crm_salesreport set qty = '$qty[0]' where id = '$id'";
// $resultu = mysqli_query($con,$updatequery);


$i++;
}


?>