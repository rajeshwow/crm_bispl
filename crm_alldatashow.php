<?php include 'crm_userauth.php'; ?>
<?php 
$sql = "SELECT * FROM `crm_eps`";
$result = mysqli_query($con, $sql);
   while($row2 = mysqli_fetch_assoc($result))
      $product_data[] = $row2;
  	echo json_encode($product_data);
    exit;
 ?>
 