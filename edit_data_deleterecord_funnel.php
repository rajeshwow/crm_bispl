<?php 
   include 'config.php';
   
   if (isset($_POST['edit_id'])) {
   
      $data = explode("-", $_POST['edit_id']);
      $ids = $data[2];
      $customer = $data[1];
      $company = $data[0];
   }
   
   
   ?>
<h3 style="text-align: center;">Do you really want to delete this Record ?</h3>
<input  type="hidden" class="form-control "  name="edit_id" id="edit_id" value="<?php echo $ids ?>" >
<h5 style="text-align: center;">Company: <?php echo $company; ?></h5>
<h5 style="text-align: center;">Custommer: <?php echo $customer; ?></h5>
