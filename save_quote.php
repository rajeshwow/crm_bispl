<?php 
   include 'config.php';
   $serialno = $_POST['edit_id'];
   $table = $_POST['tablename'];
   $remarks = $_POST['remarks'];
   $quotedprice = $_POST['quotedprice'];
   echo '<script>console.log("'.$serialno.'"); </script>'; 
   echo '<script>console.log("'.$table.'"); </script>'; 
   echo '<script>console.log("'.$quotedprice.'"); </script>'; 
   $sql = "UPDATE $table set quotedprice = '".$quotedprice."' , remarks = '".$remarks."',status = 'Quoted', quoted_at= now() where serialno =  '".$serialno."'";
   $result = mysqli_query($con,$sql);
?>