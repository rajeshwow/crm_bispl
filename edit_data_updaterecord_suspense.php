<?php 
include 'config.php';

if (isset($_POST['edit_id'])) {

   $data = explode("---", $_POST['edit_id']);
   
   $ids = $data[2];

   $ueraccessquery = "SELECT * from crm_useraccess where email= '".$_SESSION['email']."' ";
   $result2 = mysqli_query($con, $ueraccessquery);
   while($row3 = mysqli_fetch_assoc($result2))
      $accessvar[] = $row3;
      // echo "<script>console.log('Debug Objects: " . $accessvar[0]['inselledit'] . "' );</script>";

   $sql = "SELECT * from suspense where id = '$ids' ";
   $result = mysqli_query($con,$sql);
   while ($row = mysqli_fetch_array($result)) {


        $party=$row["party"];
        $chequeno=$row["chequeno"];
        $bank=$row["bank"];
        $bill_date=$row["bill_date"];

        $status=$row["status"];
        $amount=$row["amount"];
        $billno=$row["billno"];
        $remarks=$row["remarks"];
       
      echo "<script>console.log('Debug Objects: " . $serialno . "' );</script>";
         // echo '<script type="text/javascript">alert("'.$accessvar[0]['expiry_date_edit'].'");</script>';


   }
}


?>

<input type="hidden" name="reporter" value="<?php echo $_SESSION['email']?>">
<input type="hidden" name="idnumber" value="<?php echo $ids; ?>">
<h3 style="text-align: center;">Please Enter Payment Details. </h3>
<div class="form-group">
   <input type="text" required="true" class="form-control company" value="<?php echo $party?>"  name="party" id="party" placeholder="Party Name">
</div>
<div class="form-group row">
   <div class="col-xs-6">
      <input type="text" required="true" class="form-control" value="<?php echo $chequeno?>" name="chequeno" id="chequeno" placeholder="Cheque No.">
   </div>
   <div class="col-xs-6">
      <input type="text" class="form-control" value="<?php echo $bank?>" name="bank" id="bank" placeholder="Bank Name">
   </div>
</div>
<div class="form-group row">
   <div class="col-xs-6">
      <label>Billing Date</label>
      <input required="ture"  type="date" value="<?php echo $bill_date?>"  class="form-control" name="bill_date" id="bill_date" placeholder="Billing Date">
   </div>
   <div class="col-xs-6">
      <label>Status</label>
      <input readonly="true" type="text" class="form-control" value="<?php echo $status?>" name="status"  id="status" placeholder="Status">
   </div>
</div>
<div class="form-group row">
   <div class="col-xs-6">
    <input type="number" required="true" class="form-control" value="<?php echo $amount?>" name="amount" id="amount" placeholder="Amount">
 </div>
 <div class="col-xs-6">
    <input type="text" class="form-control" value="<?php echo $billno?>" name="billno" id="billno" placeholder="Bill No.">
 </div>
</div>

<div class="form-group">
   <input type="text" class="form-control" name="remarks" value="<?php echo $remarks?>" id="remarks" placeholder="Enter Remarks">
</div>



