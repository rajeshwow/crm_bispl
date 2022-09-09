<?php 
   include 'config.php';
   
   if (isset($_POST['edit_id'])) {
   
      $data = explode("---", $_POST['edit_id']);
   
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
         $in_sell = $row['in_sell'];
         $out_sell = $row['out_sell'];
   
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
<!-- <div class="form-group">
   <input  type="text" class="form-control "  name="plantype" id="plantype"  placeholder="plantype">
   </div> -->
<script>
   function changedate() {
      var myDate = new Date('<?php echo $expirydate ?>');
      var dayss = document.getElementById("planyear").value;
      var newdate = new Date(myDate.getTime() + dayss*24*60*60*1000);
      
      var formatdate = convert(newdate);
      // alert(formatdate);
      document.getElementById("expirydate").value = formatdate;
      document.getElementById("actualexpirydate").value = formatdate;
   
   }
   var date_diff_indays = function(date1, date2) {
   dt1 = new Date(date1);
   dt2 = new Date(date2);
   return Math.floor((Date.UTC(dt2.getFullYear(), dt2.getMonth(), dt2.getDate()) - Date.UTC(dt1.getFullYear(), dt1.getMonth(), dt1.getDate()) ) /(1000 * 60 * 60 * 24));
   }
   function convert(str) {
     var date = new Date(str),
       mnth = ("0" + (date.getMonth() + 1)).slice(-2),
       day = ("0" + date.getDate()).slice(-2);
     return [date.getFullYear(), mnth, day].join("-");
   }
</script>
<div class="form-group row">
   <div class="col-xs-6">
      <label>Select Plan</label>
      <select onchange="changedate()" class="form-control" id="planyear"  name="plantype">
         <option disabled="" selected="">Choose Plan Type</option>
         <option value="365">1 Year</option>
         <option value="1095">3 Year</option>
      </select>
   </div>
   <div class="col-xs-6">
      <label>Expiring On:</label>
      <input type="text"  class="form-control" name="expirydate" id="expirydate" value="<?php echo $expirydate ?>" >
   </div>
</div>
<div class="form-group row">
   <div class="col-xs-6">
      <label>In Price</label>
         <input  type="number" class="form-control "  name="inprice" id="inprice" value="<?php echo $in_sell ?>" placeholder="In Price">
      
   </div>
   <div class="col-xs-6">
      <label>Out Price</label>
         <input  type="number" class="form-control "  name="outprice" id="outprice" value="<?php echo $out_sell ?>" placeholder="Out Price">
      
   </div>
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