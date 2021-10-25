<?php include 'config.php' ?>
<?php


$filename = "Renewal_data.csv";
$fp = fopen('php://output', 'w');

$query = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='bispl' AND TABLE_NAME='crm_eps'";
$result = mysqli_query($con,$query);
while ($row = mysqli_fetch_row($result)) {
	$header[] = $row[0];
}	

header('Content-type: application/csv');
header('Content-Disposition: attachment; filename='.$filename);
fputcsv($fp, $header);

$query = "SELECT * FROM `crm_eps` WHERE expiry_date <= CURDATE() or  expiry_date between CURDATE() AND DATE_ADD(curdate(), INTERVAL 90 DAY) and status = 'QUOTED'
                       union 
                       SELECT * FROM crm_fortinet where expiry_date <= CURDATE() or  expiry_date between CURDATE() AND DATE_ADD(curdate(), INTERVAL 90 DAY) and status = 'QUOTED' order by expiry_date asc";
$result = mysqli_query($con, $query);
while($row = mysqli_fetch_row($result)) {
	fputcsv($fp, $row);
}
exit;
?>
