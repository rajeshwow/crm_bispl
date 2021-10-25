<?php 
   include 'config.php';
   
   if (isset($_POST['edit_id'])) {
   
      
      
   }
   
   
   ?>
<h3 style="text-align: center;">Do you really want to delete this User ?</h3>
<input  type="hidden" class="form-control "  name="edit_id" id="edit_id" value="<?php echo $_POST['edit_id'] ?>">
<h5 style="text-align: center;">Email: <?php echo $_POST['edit_id']; ?></h5>
