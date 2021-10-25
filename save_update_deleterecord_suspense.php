<?php 
include 'config.php';
// echo "<script>console.log('Debug Objects: " . $serialno . "' );</script>";

$ids = $_POST["edit_id"];

      $sql = "DELETE FROM suspense where id =  '".$ids."'";


      $result = mysqli_query($con,$sql);

?>