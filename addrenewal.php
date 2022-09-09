<?php include 'config.php'; ?>
<?php include 'crm_userauth.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>


<style type="text/css">
   .formbox {
      width: 800px;
      display: block;
      text-align: left;
      background-color: white;
      box-shadow: 0px 0px 14px -8px rgba(115, 109, 115, 0.67);
      padding: 1% 5%;
      margin: auto;
   }

   .btns {
      width: 100%;
   }

   /*.formboxouter{
   background-color: red;
   width: 100%;
   height: 100%;
   padding: 5%;
   }*/
</style>
<script type="text/javascript">
   function getdate() {

      var date = document.getElementById('startdate');
      var adddays = document.getElementById('planyear').value;
      var newday = parseInt(adddays);


      var date = new Date(date.value);


      date.setDate(date.getDate() + newday);

      var dd = date.getDate();
      var mm = date.getMonth() + 1;
      var y = date.getFullYear();

      var someFormattedDate = dd + '/' + mm + '/' + y;
      document.getElementById('expirydate').value = someFormattedDate;

      var actdateee = y + '/' + mm + '/' + dd;
      document.getElementById('acctexpirydate').value = actdateee;
   }
</script>
<div class="formboxouter">
   <div class="container-fluid">

      <div class="row">
         <div class="col-lg-12">
            <div class="formbox">
               <form  method="POST" id="createRenewal">
                  <h3 style="text-align: center;">Please Enter Renewal Details.</h3>
                  <div class="form-group row">
                     <div class="col-xs-6">
                        <input type="text" class="form-control " name="company" id="company" placeholder="Company Name">
                     </div>
                     <div class="col-xs-6">
                        <input type="text" class="form-control " name="product_name" id="product_name" placeholder="Product Name">
                     </div>
                  </div>
                  <div class="form-group row">

                     <div class="col-xs-6">

                        <select class="form-control" id="tablename" name="tablename" required>
                           <option disabled="" value="" selected="">Product type</option>
                           <option value="crm_eps">EPS</option>
                           <option value="crm_fortinet">Fortinet</option>
                        </select>
                     </div>
                     <div class="col-xs-6">
                        <div class="input-group">
                           <input type="text" required="ture" class="form-control " name="serialno" id="serialno" placeholder="Serial No ">
                           <div id="serial_response" class="input-group-addon"></div>
                        </div>
                     </div>
                  </div>

                  <div class="form-group row">
                     <div class="col-xs-4">
                        <label class="text-info">Select Plan</label>
                        <select onchange="getdate()" class="form-control" id="planyear" name="planyear" required>
                           <option disabled selected value="">Choose Plan Type</option>

                           <option value="365">1 Year</option>
                           <option value="1095">3 Year</option>
                        </select>
                     </div>
                     <div class="col-xs-4">
                        <label class="text-info">Plan Start Date</label>
                        <input type="date" onchange="getdate()" class="form-control" name="startdate" id="startdate" required="ture">
                     </div>
                     <div class="col-xs-4">
                        <label class="text-info">Expiring On:</label>
                        <input type="text" readonly="readonly" class="form-control" name="expirydate" id="expirydate" value="">
                        <input type="hidden" class="form-control" name="acctexpirydate" id="acctexpirydate" value="">
                     </div>
                  </div>
                  <div class="form-group row">

                     <div class="col-xs-6">
                        <input type="number" class="form-control " name="users" id="users" placeholder="Users count ">
                     </div>
                     <div class="col-xs-6">
                        <input required="ture" type="text" class="form-control" name="dealer" id="dealer" placeholder="Enter Dealer name">
                     </div>
                  </div>

                  <div class="form-group row">
                     <div class="col-xs-6">
                        <input type="text" class="form-control " name="designation" id="designation" placeholder="Designation">

                     </div>
                     <div class="col-xs-6">
                        <input type="text" class="form-control" name="contact_person" id="contact_person" placeholder="Contact Person Name">
                     </div>
                  </div>


                  <div class="form-group row">
                     <div class="col-xs-6">
                        <input required="ture" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" type="number" maxlength="10" class="form-control" name="mobile" id="mobile" placeholder="Mobile Number">
                     </div>
                     <div class="col-xs-6">
                        <input type="number" class="form-control" name="landline" id="landline" placeholder="Land line">
                     </div>
                  </div>
                  <div class="form-group row">
                     <div class="col-xs-3">
                        <input type="text" class="form-control" name="city" id="city" placeholder="City">
                     </div>
                     <div class="col-xs-3">
                        <input type="text" class="form-control" name="state" id="state" placeholder="State">
                     </div>
                     <div class="col-xs-6">
                        <input type="email" class="form-control" name="email" id="email" placeholder="email">
                     </div>
                  </div>
                  <div class="form-group row">
                     <div class="col-xs-6">
                        <input required="ture" type="number" class="form-control" name="in" id="in" placeholder="In Price">
                     </div>
                     <div class="col-xs-6">
                        <input required="ture" type="number" class="form-control" name="out" id="out" placeholder="Out Price">
                     </div>

                  </div>
                  <div class="form-group row">
                     <div class="col-xs-6">
                        <input type="text" class="form-control" name="address1" id="address1" placeholder="Address Line 1">
                     </div>
                     <div class="col-xs-6">
                        <input type="text" class="form-control" name="address2" id="address2" placeholder="Address Line 2">
                     </div>
                  </div>



                  <!-- <div class="form-group">
                     <input type="text" readonly="readonly" class="form-control" name="status" id="status" value="QUOTED">
                  </div> -->
                  <div class="form-group">
                     <input type="text" class="form-control" name="remarks" id="remarks" placeholder="Remarks">
                  </div>
                  <div class="form-group row">
                     <div class="col-xs-6">
                        <button type="button" name="back" onclick="location.href='./renewal.php';" class="btn btns ">Back</button>
                     </div>
                     <div class="col-xs-6">
                        <button formaction="./crm_update_createuser.php" type="submit" name="submit" class="btn btns ">Submit</button>
                     </div>
                  </div>


               </form>
            </div>
         </div>
      </div>
   </div>
</div>
<link href='jquery-ui.min.css' type='text/css' rel='stylesheet'>
<script src="jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="jquery-ui.min.js" type="text/javascript"></script>
<script type="text/javascript">
   $(document).ready(function() {
      $("#createRenewal").submit(function(e) {
         var username = $("#serial_response").text().trim();
         if ((username === "Taken.") || (username === '') || (username === null) || (username === undefined)) {
            $("#serialno").focus();
            $("#serialno").attr('placeholder', 'This Serial no already Taken !');
            $("#serialno").attr('style', 'border:1px solid red !important');
            $("#serialno").addClass("animate__animated animate__shakeX animate__repeat-1 ");
            e.preventDefault();
         } else {
            $("#createRenewal").submit();
         }
      });
   });

   $(document).ready(function() {

      $(document).on('change', '#tablename', function() {
         $("#serialno").val("");
      })
      $(document).on('keyup', '#serialno', function() {

         var serialno = $(this).val().trim();
         var tablename = $("#tablename").val().trim();


         if (serialno != '') {
            $.ajax({
               url: 'checkserialno.php',
               type: 'post',
               data: {
                  serialno: serialno,
                  tablename: tablename
               },
               success: function(response) {

                  $('#serial_response').html(response);
                  //   alert(response)
               }
            });
         } else {
            $("#serial_response").html("");
         }
      });
   });

   $(document).ready(function() {

      $(document).on('keyup', '#company', function() {

         var id = this.id;
         // var splitid = id.split('_');
         // var index = splitid[1];

         // Initialize jQuery UI autocomplete
         $('#' + id).autocomplete({
            source: function(request, response) {
               $.ajax({
                  url: "getDetails.php",
                  type: 'post',
                  dataType: "json",
                  data: {
                     search: request.term,
                     request: 1
                  },
                  success: function(data) {
                     console.log((data));
                     response(data);
                  }
               });
            },
            select: function(event, ui) {
               $(this).val(ui.item.label); // display the selected text
               var userid = ui.item.value; // selected value
               console.log($(this).val(ui.item.label));
               // AJAX
               $.ajax({
                  url: 'getDetails.php',
                  type: 'post',
                  data: {
                     userid: userid,
                     request: 2
                  },
                  dataType: 'json',
                  success: function(response) {

                     var len = response.length;
                     console.log(response);
                     if (len > 0) {
                        var id = response[0]['id'];


                        var company = response[0]['company'];
                        var contact_person = response[0]['contact_person'];
                        var mobile = response[0]['mobile'];
                        var telephone = response[0]['telephone'];
                        var address1 = response[0]['address1'];
                        var address2 = response[0]['address2'];
                        var address3 = response[0]['address3'];
                        var city = response[0]['city'];
                        var state = response[0]['state'];
                        var email = response[0]['email'];
                        var homeaddress1 = response[0]['homeaddress1'];
                        var homeaddress2 = response[0]['homeaddress2'];
                        var gst = response[0]['gst'];
                        var id1 = response[0]['id1'];
                        var id2 = response[0]['id2'];

                        // Set value to textboxes
                        document.getElementById('company').value = company;
                        document.getElementById('contact_person').value = contact_person;
                        document.getElementById('mobile').value = mobile;
                        document.getElementById('landline').value = telephone;

                        document.getElementById('address1').value = address1;
                        document.getElementById('address2').value = address2;
                        document.getElementById('address3').value = address3;
                        document.getElementById('city').value = city;

                        document.getElementById('state').value = state;
                        document.getElementById('email').value = email;
                        document.getElementById('Permanantadd1').value = homeaddress1;
                        document.getElementById('Permanantadd2').value = homeaddress2;
                        document.getElementById('gst').value = gst;
                        document.getElementById('id1').value = id1;
                        document.getElementById('id2').value = id2;

                     }

                  }
               });

               return false;
            }
         });
      });

   });
</script>
<?php include 'footer.php'; ?>