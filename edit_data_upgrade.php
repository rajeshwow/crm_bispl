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
      $expirydate = $row['expiry_date'];
      $tablename = $row['type'];
      $productname = $row['product_name'];

      // echo '<script>console.log("'.$serialno.'"); </script>';
      // echo '<script>console.log("'.$table.'"); </script>';
   
   	}
   }
   
   
   ?>
 
<h3 style="text-align: center;">Please Enter New Serial no. to upgrade</h3>
<div class="form-group">
   <input  type="hidden" class="form-control "  name="edit_id" id="edit_id" value="<?php echo $serial ?>" >
</div>



<div class="form-group">
   <input  type="hidden" class="form-control "  name="tablename" id="tablename" value="<?php echo $tablename ?>" >
</div>


<div class="form-group">
   <label class="text-info">Old Serial No.</label>
   <input disabled="true" type="text" class="form-control "  name="oldserialno" id="oldserialno" value="<?php echo $serialno ?>" placeholder="serialno">
</div>
<!-- <div class="form-group">
   <label class="text-info">New Serial No.</label>
   <input  type="text" class="form-control "  name="newserial" id="newserial"  placeholder="New Serial No.">
</div> -->

<div class="input-group">
  
   <input class="form-control" type="text" name="newserial" id="newserial" aria-describedby="basic-addon2" placeholder="Enter new Serial No" />
    <div id="uname_response" class="input-group-addon"></div>
   </div>
<!-- <div class="form-group row">
                     <div class="col-xs-6">
                        <label>Select Plan</label>
                        <select onchange="changedate()" class="form-control" id="planyear"  name="plantype">
                           <option disabled="" selected="">Choose Plan Type</option>
                           <option value="0">Don't want to Renew</option>
                           <option value="365">1 Year</option>
                           <option value="1095">3 Year</option>
                        </select>
                     </div>
                     <div class="col-xs-6">
                        <label>Expiring On:</label>
                     </div>
                  </div> -->
<div class="form-group row">
  <div class="col-xs-4">
    <label>Product Name</label>
    <input type="text"  class="form-control" name="productname" id="productname" value="<?php echo $productname ?>" >
  </div>
  <div class="col-xs-4">
    <label>Actual expiry:</label>
    <input type="date" readonly=""  class="form-control" name="expirydateon" id="expirydateon" value="<?php echo $expirydate ?>" >
  </div>
  <div class="col-xs-4">
    <label>Change Expiry Date:</label>
    <input type="date" required=""  class="form-control" name="expirydate" id="expirydate" value="" placeholder="Enter Expiry">
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
    <script>
function changedate() {
   var myDate = new Date('<?php echo $expirydate ?>');
   var dayss = document.getElementById("planyear").value;
   // alert(myDate);
   var currentdate = new Date();
   // alert(currentdate);

   // alert(date_diff_indays(myDate, currentdate));
   var datedifference = date_diff_indays(myDate, currentdate)
   if (datedifference<0) {
      // alert("date is upcoming");
      var newdate = new Date(myDate.getTime() + dayss*24*60*60*1000);
   }
   else{
      // alert("date is previous");
      var newdate = new Date(currentdate.getTime() + dayss*24*60*60*1000);
   }
   
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
    <script>
$(document).ready(function(){

   
    $('input#newserial').bind("change keyup input",function() { 

      var username = $(this).val().trim();

      if(username != ''){

         $.ajax({
            url: 'ajaxfile.php',
            type: 'post',
            data: {username: username},
            success: function(response){

                $('#uname_response').html(response);

             }
         });
      }else{
         $("#uname_response").html("");
      }

    });

 });