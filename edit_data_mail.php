<?php 
   include 'config.php';
   
   if (isset($_POST['edit_id'])) {
   
      $data = explode("-", $_POST['edit_id']);
   
      $serial = $data[1];
      
      $ueraccessquery = "SELECT * from crm_useraccess where email= '".$_SESSION['email']."' ";
      $result2 = mysqli_query($con, $ueraccessquery);
      while($row3 = mysqli_fetch_assoc($result2))
      $accessvar[] = $row3;
      // echo "<script>console.log('Debug Objects: " . $accessvar[0]['inselledit'] . "' );</script>";
      $sql = "SELECT * from $data[0] where serialno = '$data[1]' ";
      $result = mysqli_query($con,$sql);
      while ($row = mysqli_fetch_array($result)) {
         
   
         $product_name = $row['product_name'];
         $serialno = $row['serialno'];
         $users = $row['users'];   
         $expirydate = $row['expiry_date'];
         $company = $row['company'];
         $designation = $row['designation'];
         $person_name = $row['person_name'];
         $mobile = $row['mobile'];
         $landline = $row['landline'];
         $email = $row['email'];
         $address1 = $row['address1'];
         $address2 = $row['address2'];
         $city = $row['city'];
         $state = $row['state'];
         $in_sell = $row['in_sell'];
         $out_sell = $row['out_sell'];
         $dealer = $row['dealer'];
         $status = $row['status'];
         $remarks = $row['remarks'];
         $tablename = $row['type'];
         echo "<script>console.log('Debug Objects: " . $serialno . "' );</script>";
   
      }
   }
?>
<style type="text/css">
   .mailpart{

   }
</style>
<!-- <h3 style="text-align: center;">Please Enter Renewal Details.</h3> -->
<form action="mailsendrenewal.php" method="POST">
<div class="mailpart">
   <div class="form-group">
      <label>To:</label>
   <input  type="text" class="form-control "  name="toemail" id="toemail" value="<?php echo $email ?>" >
</div>
<div class="form-group row">
   <div class="col-xs-6">
     <label>CC:</label>
   <input  type="text"  class="form-control "  name="ccemail" id="ccemail" value="info@bispl.net.in" >
   </div>
   <div class="col-xs-6">
       <label>Subject</label>
   <input  type="text" class="form-control "  name="subemail" id="subemail" value="" >
   </div>
   
</div>
<div class="form-group">
  <label for="comment">Message:</label>
  <textarea class="form-control" rows="5" placeholder="Hello <?php echo $person_name ?>" name="message" id="message"></textarea>
</div>
<button type="submit" name="submit" class="btn btns" id="sentbtn">Send </button>
</div>

<hr>
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
   <label>Serial No.</label>
   <input disabled="true" type="text" class="form-control "  name="serialno" id="serialno" value="<?php echo $serialno ?>" placeholder="serialno">
</div>
<div class="form-group row">
   <div class="col-xs-6">
      <label>Product Name</label>
      <input  type="text" class="form-control "  name="product_name" id="product_name" value="<?php echo $product_name ?>" placeholder="Company Name">
   </div>
   <div class="col-xs-3">
      <label>Users</label>
      <input  type="text" class="form-control "  name="users" id="users" value="<?php echo $users ?>" placeholder="Company Name">
   </div>
   <div class="col-xs-3">
      <label>Expiry Date</label>
      <input  type="text" disabled="true" class="form-control "  name="expiry_date" id="expiry_date" value="<?php echo $expirydate ?>" placeholder="Company Name">
   </div>
</div>
<div class="form-group row">
   <div class="col-xs-3">
      <label>Company</label>
      <input  type="text" class="form-control "  name="company" id="company" value="<?php echo $company ?>" placeholder="Company Name">
   </div>
   <div class="col-xs-3">
      <label>Designation</label>
      <input  type="text" class="form-control "  name="designation" id="designation" value="<?php echo $designation ?>" placeholder="Company Name">
   </div>
   <div class="col-xs-6">
      <label>Contact Person</label>
      <input  type="text" class="form-control" name="person_name" id="person_name" value="<?php echo $person_name ?>" placeholder="Contact Person Name">
   </div>
</div>
<div class="form-group row">
   <div class="col-xs-3">
      <label>Mobile</label>
      <input  type="number" class="form-control" name="mobile" id="mobile" value="<?php echo $mobile ?>"   placeholder="Mobile Number">
   </div>
   <div class="col-xs-3">
      <label>Landline</label>
      <input  type="number" class="form-control" name="landline" id="landline" value="<?php echo $landline ?>"   placeholder="Mobile Number">
   </div>
   <div class="col-xs-6">
      <label>Email</label>
      <input  type="text" class="form-control" name="email" id="email" value="<?php echo $email ?>" >
   </div>
</div>
<div class="form-group row">
   <div class="col-xs-6">
      <label>Address Line 1</label>
      <input  type="text" class="form-control" name="address1" id="address1" value="<?php echo $address1 ?>" >
   </div>
   <div class="col-xs-6">
      <label>Address Line 2</label>
      <input  type="text" class="form-control" name="address2" id="address2" value="<?php echo $address2 ?>" >
   </div>
</div>
<div class="form-group row">
   <div class="col-xs-4">
      <label>Dealer</label>
      <input  type="text" class="form-control" name="dealer" id="dealer" value="<?php echo $dealer ?>" >
   </div>
   <div class="col-xs-4">
      <label>City</label>
      <input  type="text" class="form-control" name="city" id="city" value="<?php echo $city ?>" >
   </div>
   <div class="col-xs-4">
      <label>State</label>
      <input  type="text" class="form-control" name="state" id="state" value="<?php echo $state ?>" >
   </div>
</div>
<div class="form-group row">
   <div class="col-xs-3">
      <label>In Price</label>
      <input  type="text" class="form-control" <?php if($accessvar[0]['inselledit'] != 'Yes'){echo "disabled"; } ?> name="in_sell" id="in_sell" value="<?php echo $in_sell ?>" >
   </div>
   <div class="col-xs-3">
      <label>Out Price</label>
      <input  type="text" class="form-control" <?php if($accessvar[0]['outselledit'] != 'Yes'){echo "disabled"; } ?> name="out_sell" id="out_sell" value="<?php echo $out_sell ?>" >
   </div>
   <div class="col-xs-6">
      <label>Remarks</label>
      <input  type="text" class="form-control" name="remarks" id="remarks" value="<?php echo $remarks ?>" >
   </div>
</div>
</form>