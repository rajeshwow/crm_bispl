<?php 
include 'config.php';

if (isset($_POST['edit_id'])) {

   $data = explode("---", $_POST['edit_id']);
   $company= $data[0];
   $customer = $data[1];
   $ids = $data[2];



   $sql = "SELECT * from funnel where company = '$company' and customer = '$customer' and id='$ids'  ";
   $result = mysqli_query($con,$sql);
   while ($row = mysqli_fetch_array($result)) {
      $company = $row['company'];
      $customer = $row['customer'];

   }
}


?>
<div class="form-group row">
   
   <input type="hidden" name="ids" value="<?php echo $ids?>">
   <div class="col-xs-6">
      <label>Company</label>
      <input readonly="true"  type="text" class="form-control "  name="company" id="company" value="<?php echo $company ?>" >
   </div>
   <div class="col-xs-6">
      <label>Customer Name</label>
      <input readonly="true"  type="text" class="form-control "  name="customer" id="customer" value="<?php echo $customer ?>" >
   </div>
</div>
<div class="form-group row">
   <div class="col-xs-6">
      <label>Remarks</label>
      <input   type="text" class="form-control"  name="newremarks" id="newremarks"  >
   </div>
   <div class="col-xs-6">
      <label>Update Status</label>
      <select   class="form-control" id="currentstatus"  name="currentstatus" required>
         <option disabled selected value=""> Status</option>
         <option value="Open">Open</option>
         <option value="Closed">Closed</option>
      </select>
   </div>
</div>

