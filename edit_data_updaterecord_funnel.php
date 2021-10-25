<?php 
include 'config.php';

if (isset($_POST['edit_id'])) {

   
   
   $ids = $_POST['edit_id'];

   $sql = "SELECT * from funnel where id = '$ids' ";
   $result = mysqli_query($con,$sql);
   while ($row = mysqli_fetch_array($result)) {


    $company=$row["company"];
        $customer=$row["customer"];
        $mobile=$row["mobile"];
        $industry=$row["industry"];
        $address=$row["address"];
        $city=$row["city"];
        $state=$row["state"];
        $email=$row["email"];
        $product=$row["product"];
        $qty=$row["qty"];
        $remarks=$row["remarks"];
        $status=$row["status"];
        $salesperson=$row["salesperson"];
 }
}


?>

<input type="hidden" name="reporter" value="<?php echo $_SESSION['email']?>">
<input type="hidden" name="idnumber" value="<?php echo $ids; ?>">
<h3 style="text-align: center;">Please Enter Customer Details.</h3>

<div class="form-group">
   <input type="text" required="true" value="<?php echo $company?>" class="form-control company"  name="company" id="company" placeholder="Company Name">
</div>
<div class="form-group">
   <input type="text" required="true" value="<?php echo $customer?>" class="form-control" name="customer" id="customer" placeholder="Customer Name">
</div>
<div class="form-group row">
   <div class="col-xs-6">
      <input required="ture" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" type="number" maxlength="10" class="form-control" value="<?php echo $mobile?>" name="mobile" id="mobile" placeholder="Mobile Number">
   </div>
   <div class="col-xs-6">
      <input type="text" class="form-control" value="<?php echo $industry?>" name="industry" id="industry" placeholder="industry">
   </div>
</div>
<div class="form-group row">
   <div class="col-xs-6">
      <input type="text" class="form-control" value="<?php echo $address?>" name="address" id="address" placeholder="Address">
   </div>
   <div class="col-xs-3">
      <input type="text" class="form-control" value="<?php echo $city?>" name="city" id="city" placeholder="City">
   </div>
   <div class="col-xs-3">
      <input type="text" class="form-control" value="<?php echo $state?>" name="state" id="state" placeholder="State">
   </div>
</div>

<div class="form-group row">
   <div class="col-xs-6">
    <input type="email" class="form-control" value="<?php echo $email?>" name="email" id="email" placeholder="Email">
 </div>
 <div class="col-xs-4">
    <input type="text" class="form-control" value="<?php echo $product?>" name="product" id="product" placeholder="Product Name">
 </div>
 <div class="col-xs-2">
    <input type="text" class="form-control" value="<?php echo $qty?>" name="qty" id="qty" placeholder="Qty">
 </div>
</div>

<div class="form-group row">
   <div class="col-xs-6">
    <input type="text" required="true" class="form-control" value="<?php echo $remarks?>" name="remarks" id="remarks" placeholder="Remarks">
 </div>
 <div class="col-xs-3">
    <input type="text" readonly value="Open" class="form-control" value="<?php echo $status?>" name="status" id="status" placeholder="Salesperson">
 </div>
 <div class="col-xs-3">
    <input type="text" class="form-control" name="salesperson" value="<?php echo $salesperson?>" id="salesperson" placeholder="Salesperson">
 </div>
</div>
