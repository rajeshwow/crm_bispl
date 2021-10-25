<?php include 'config.php'; ?>
<?php include 'crm_userauth.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>

<style type="text/css">
.formbox{
   width: 800px;
   display: block;
   text-align: left;
   background-color: white;
   box-shadow: 0px 0px 14px -8px rgba(115, 109, 115, 0.67);
   padding: 5%;
   margin: auto;
}
.btns{
   width: 100%;
}
li{
  list-style-type: none;
}
   /*.formboxouter{
   background-color: red;
   width: 100%;
   height: 100%;
   padding: 5%;
   }*/
</style>
<div class="formboxouter">
   <div class="container-fluid">
      <div class="row">
         <div class="col-lg-12">
            <div class="formbox">
               <form action="./submitdealer.php" method="POST">
               	<h3 style="text-align: center;">Please Enter Dealers Details.</h3>
                  <div class="form-group">
                     <input type="text" class="form-control company"  name="company" id="company" placeholder="Company Name">
                  </div>
                  <div class="form-group">
                     <input type="text" class="form-control" name="contact_person" id="contact_person" placeholder="Contact Person Name">
                  </div>
                  <div class="form-group row">
                     <div class="col-xs-6">
                        <input required="ture" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" type="number" maxlength="10" class="form-control" name="mobile" id="mobile" placeholder="Mobile Number">
                     </div>
                     <div class="col-xs-6">
                        <input type="number" class="form-control" name="landline" id="landline" placeholder="Land line">
                     </div>
                  </div>
                  <div class="form-group">
                     <input type="text" class="form-control" name="address1" id="address1" placeholder="Address Line 1">
                  </div>
                  <div class="form-group">
                     <input type="text" class="form-control" name="address2" id="address2" placeholder="Address Line 2">
                  </div>
                  <div class="form-group">
                     <input type="text" class="form-control" name="address3" id="address3" placeholder="Address Line 3">
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
                  <div class="form-group">
                  </div>
                  <div class="form-group">
                     <input type="text" class="form-control" name="Permanantadd1" id="Permanantadd1" placeholder="Permanant Address 1">
                  </div>
                  <div class="form-group">
                     <input type="text" class="form-control" name="Permanantadd2" id="Permanantadd2" placeholder="Permanant Address 2">
                  </div>
                  <div class="form-group row">
                     <div class="col-xs-4">
                        <input type="text"  class="form-control" name="id1" id="id1" placeholder="Id Proof Number 1">
                     </div>
                     <div class="col-xs-4">
                        <input type="text"  class="form-control" name="id2" id="id2" placeholder="Id Proof Number 2">
                     </div>
                     <div class="col-xs-4">
                        <input type="text"  class="form-control" name="gst" id="gst" placeholder="GST Number">
                     </div>
                  </div>
                  <button type="submit" name="submit" class="btn btns">Submit</button>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>

<link href='jquery-ui.min.css' type='text/css' rel='stylesheet' >
<script src="jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="jquery-ui.min.js" type="text/javascript"></script>
<script type="text/javascript">
   $(document).ready(function(){

     $(document).on('keydown', '#company', function() {

       var id = this.id;
  // var splitid = id.split('_');
  // var index = splitid[1];

  // Initialize jQuery UI autocomplete
  $( '#'+id ).autocomplete({
   source: function( request, response ) {
     $.ajax({ 
       url: "getDetails.php",
       type: 'post',
       dataType: "json",
       data: {
         search: request.term,request:1
      },
      success: function( data ) {
         console.log(( data ));
         response( data );
      }
   });
  },
  select: function (event, ui) {
    $(this).val(ui.item.label); // display the selected text
    var userid = ui.item.value; // selected value
    console.log($(this).val(ui.item.label));
    // AJAX
    $.ajax({
       url: 'getDetails.php',
       type: 'post',
       data: {userid:userid,request:2},
       dataType: 'json',
       success:function(response){

         var len = response.length;
         console.log(response);
         if(len > 0){
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