<?php include 'config.php';

echo "<script>console.log('Debug Objects: " . $serialno . "' );</script>";?>
<?php 
        $serialno = $_POST["edit_id"];
        $tablename = $_POST["tablename"];

    $sql = "DELETE FROM $tablename where serialno =  '".$serialno."'";

    
$result = mysqli_query($con,$sql);

?>