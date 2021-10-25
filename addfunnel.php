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
                     <form action="./submitfunnel.php" method="POST">
                      <input type="hidden" name="reporter" value="<?php echo $_SESSION['email']?>">
                        <h3 style="text-align: center;">Please Enter Customer Details.</h3>

                        <div class="form-group">
                           <input type="text" required="true" class="form-control company"  name="company" id="company" placeholder="Company Name">
                        </div>
                        <div class="form-group">
                           <input type="text" required="true" class="form-control" name="customer" id="customer" placeholder="Customer Name">
                        </div>
                        <div class="form-group row">
                           <div class="col-xs-6">
                              <input required="ture" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" type="number" maxlength="10" class="form-control" name="mobile" id="mobile" placeholder="Mobile Number">
                           </div>
                           <div class="col-xs-6">
                              <input type="text" class="form-control" name="industry" id="industry" placeholder="industry">
                           </div>
                        </div>





                        <div class="form-group row">
                           <div class="col-xs-6">
                              <input type="text" class="form-control" name="address" id="address" placeholder="Address">
                           </div>
                           <div class="col-xs-3">
                              <input type="text" class="form-control" name="city" id="city" placeholder="City">
                           </div>
                           <div class="col-xs-3">
                              <input type="text" class="form-control" name="state" id="state" placeholder="State">
                           </div>
                        </div>

                        <div class="form-group row">
                           <div class="col-xs-6">
                             <input type="email" class="form-control" name="email" id="email" placeholder="Email">
                           </div>
                           <div class="col-xs-4">
                             <input type="text" class="form-control" name="product" id="product" placeholder="Product Name">
                           </div>
                           <div class="col-xs-2">
                             <input type="text" class="form-control" name="qty" id="qty" placeholder="Qty">
                           </div>
                         </div>

                        <div class="form-group row">
                           <div class="col-xs-6">
                             <input type="text" required="true" class="form-control" name="remarks" id="remarks" placeholder="Remarks">
                           </div>
                           <div class="col-xs-3">
                             <input type="text" readonly value="Open" class="form-control" name="status" id="status" placeholder="Salesperson">
                           </div>
                           <div class="col-xs-3">
                             <input type="text" class="form-control" name="salesperson" id="salesperson" placeholder="Salesperson">
                           </div>
                         </div>
                        <button type="submit" name="submit" class="btn btns">Submit</button>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <?php include 'footer.php'; ?>