<?php 
   include 'config.php';
   
   if (isset($_POST['edit_id'])) {
   
      $data = explode("---", $_POST['edit_id']);
   
      $tablename = $data[0];
      $serial = $data[1];
      $sql = "SELECT * from $data[0] where serialno = '$data[1]' ";
      $result = mysqli_query($con,$sql);
      while ($row = mysqli_fetch_array($result)) {
         
         $serialno = $row['serialno'];
         echo "<script>console.log('Debug Objects: " . $serialno . "' );</script>";
         echo "<script>console.log('Debug Objects: " . $tablename . "' );</script>";
         // echo '<script type="text/javascript">alert("'.$accessvar[0]['expiry_date_edit'].'");</script>';
         
   
      }
   }
   
   
   ?>
<h3 style="text-align: center;">Do you really want to delete this Record ?</h3>
<input  type="hidden" class="form-control "  name="edit_id" id="edit_id" value="<?php echo $serial ?>" >
<input  type="hidden" class="form-control "  name="tablename" id="tablename" value="<?php echo $tablename ?>" >
<h5 style="text-align: center;">Serial no: <?php echo $serialno; ?></h5>
