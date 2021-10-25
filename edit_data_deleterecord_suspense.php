<?php 
   include 'config.php';
   
   if (isset($_POST['edit_id'])) {
   
      $data = explode("---", $_POST['edit_id']);
      $ids = $data[2];
      $billno = $data[1];
      
      // $sql = "SELECT * from suspense where id = '$ids' ";
      // $result = mysqli_query($con,$sql);
      // while ($row = mysqli_fetch_array($result)) {
         
      //    $serialno = $row['serialno'];
         
      // }
   }
   
   
   ?>
<h3 style="text-align: center;">Do you really want to delete this Record ?</h3>
<input  type="hidden" class="form-control "  name="edit_id" id="edit_id" value="<?php echo $ids ?>" >
<h5 style="text-align: center;">Bill No: <?php echo $billno; ?></h5>
