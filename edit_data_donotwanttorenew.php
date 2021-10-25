<?php 
   include 'config.php';
   
   if (isset($_POST['edit_id'])) {

      $data = explode("-", $_POST['edit_id']);

      $serial = $data[1];


      
      $sql = "SELECT * from $data[0] where serialno = '$data[1]' ";
      $result = mysqli_query($con,$sql);
      while ($row = mysqli_fetch_array($result)) {
         $serialno = $row['serialno'];
         $company = $row['company'];
         $person_name = $row['person_name'];
         $mobile = $row['mobile'];
         $email = $row['email'];
         $tablename = $row['type'];
         $expirydate = $row['expiry_date'];
   
      }
   }
   
   
   ?>
<div class="form-group">
   <input  type="hidden" class="form-control "  name="edit_id" id="edit_id" value="<?php echo $serial ?>" >
</div>
<div class="form-group">
   <input  type="hidden" class="form-control "  name="tablename" id="tablename" value="<?php echo $tablename ?>" >
</div>
<div class="form-group">
   <input  type="hidden" class="form-control "  name="actualexpirydate" id="actualexpirydate" value="<?php echo $expirydate ?>" >
</div>
<div class="form-group">
   <input disabled="true" type="text" class="form-control "  name="serialno" id="serialno" value="<?php echo $serialno ?>" placeholder="serialno">
</div>
<div class="form-group">
   <input  type="text" required="true" class="form-control "  name="remarks" id="remarks" value="" placeholder="Enter Remarks">
</div>

<div class="form-group">
   <input disabled="true" type="text" class="form-control "  name="company" id="company" value="<?php echo $company ?>" placeholder="Company Name">
</div>
<div class="form-group">
   <input disabled="true" type="text" class="form-control" name="person_name" id="person_name" value="<?php echo $person_name ?>" placeholder="Contact Person Name">
</div>
<div class="form-group ">
   <input disabled="true" type="number" class="form-control" name="mobile" id="mobile" value="<?php echo $mobile ?>"   placeholder="Mobile Number">
</div>
<div class="form-group ">
   <input disabled="true" type="email" class="form-control" name="email" id="email" value="<?php echo $email ?>" placeholder="email">
</div>