<?php include 'config.php' ?>
<?php

 
 $sdate = $_POST['startDate'];
 $edate = $_POST['endDate'];
 $costName = $_POST['cost_centre'];

$filename = "Sales Report.csv";
$fp = fopen('php://output', 'w');

$header = array("Cost centre", "Type", "Qty", "Amount");	

header('Content-type: application/csv');
header('Content-Disposition: attachment; filename='.$filename);
fputcsv($fp, $header);

$query2 = "select costcentre,type, SUM(qty) as qty,SUM(amount) as Amount FROM( (SELECT a.costcentre,b.category as type,(SUM(a.qty)) as qty, round(SUM(a.amount),2) as Amount
FROM crm_salesreport a, inventory_master b
WHERE a.itemname = b.itemname and vdate BETWEEN '$sdate'  and '$edate' and a.costcentre = '$costName' GROUP by b.category)  
UNION all
(SELECT a.costcentre,b.category as type,(SUM(a.qty)) as qty, round(SUM(a.amount),2) as Amount
FROM crm_salesreport_indore a, inventory_master_indore b
WHERE a.itemname = b.itemname and vdate BETWEEN '$sdate'  and '$edate' and a.costcentre = '$costName' GROUP by b.category)  
UNION all
(SELECT a.costcentre,b.category as type,(SUM(a.qty)) as qty, round(SUM(a.amount),2) as Amount
FROM crm_salesreport_lucknow a, inventory_master_lucknow b
WHERE a.itemname = b.itemname and vdate BETWEEN '$sdate'  and '$edate' and a.costcentre = '$costName' GROUP by b.category)  
) derivedtable GROUP BY type";



$result = mysqli_query($con, $query2);
while($row = mysqli_fetch_row($result)) {
	fputcsv($fp, $row);
}
exit;
?>
