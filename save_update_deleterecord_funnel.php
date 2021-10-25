<?php 
include 'config.php';
// echo "<script>console.log('Debug Objects: " . $serialno . "' );</script>";

$ids = $_POST["edit_id"];

      $sql = "DELETE FROM funnel where id =  '".$ids."'";


      $result = mysqli_query($con,$sql);

?>