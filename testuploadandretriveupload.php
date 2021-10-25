<!-- testuploadandretrive -->
<?php include 'config.php' ?>
<?php


if (isset($_POST['submit'])) {

// Filter the excel data 
	function filterData(&$str){ 
		$str = preg_replace("/\t/", "\\t", $str); 
		$str = preg_replace("/\r?\n/", "\\n", $str); 
		if(strstr($str, '"')) $str = '"' . str_replace('"', '""', $str) . '"'; 
	} 

// Excel file name for download 
	$fileName = "members_export_data-" . date('Ymd') . ".xlsx"; 

// Column names 
	$fields = array('SR.N.', 'Serial no', 'Status'); 

// Display column names as first row 
	$excelData = implode("\t", array_values($fields)) . "\n"; 

// Get records from the database 
	$query = $db->query("SELECT serialno from crm_eps"); 
	if($query->num_rows > 0){ 
    // Output each row of the data 
		$i=0; 
		while($row = $query->fetch_assoc()){ $i++; 
			$rowData = array($i, $row['serialno'],); 
			array_walk($rowData, 'filterData'); 
			$excelData .= implode("\t", array_values($rowData)) . "\n"; 
		} 
	}else{ 
		$excelData .= 'No records found...'. "\n"; 

	} 

// Headers for download 
	header("Content-Disposition: attachment; filename=\"$fileName\""); 
	header("Content-Type: application/vnd.ms-excel"); 

// Render excel data 
	echo $excelData; 

	exit;

	
}
?>