<?php 
include 'config.php';

if (isset($_POST['edit_id'])) {

   $data = explode("---", $_POST['edit_id']);
   $chequeno= $data[0];
   $billno = $data[1];
   $ids = $data[2];



   $sql = "SELECT * from suspense where chequeno = '$data[0]' and billno = '$data[1]' and id = '$ids' ";
   $result = mysqli_query($con,$sql);
   while ($row = mysqli_fetch_array($result)) {
      $cheque = $row['chequeno'];
      $bill = $row['billno'];

   }
}


?>
<h3 style="text-align: center;">Please Recheck before update.</h3>


<div class="form-group row">
<input type="hidden" name="idnumber" value="<?php echo $ids; ?>">
   <div class="col-xs-6">
      <label>Cheque No.</label>
      <input readonly="true"  type="text" class="form-control "  name="chequenumber" id="chequenumber" value="<?php echo $cheque ?>" >
   </div>
   <div class="col-xs-6">
      <label>Bill No.</label>
      <input readonly="true"  type="text" class="form-control "  name="billnumber" id="billnumber" value="<?php echo $bill ?>" >
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
         <option value="Failed">Failed</option>
         <option value="Completed">Completed</option>
      </select>
   </div>
</div>

