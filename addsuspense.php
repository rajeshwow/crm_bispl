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
                     <form action="./submitsuspense.php" method="POST">
                      <input type="hidden" name="reporter" value="<?php echo $_SESSION['email']?>">
                        <h3 style="text-align: center;">Please Enter Payment Details.</h3>
                        <div class="form-group">
                           <input type="text" required="true" class="form-control company"  name="party" id="party" placeholder="Party Name">
                        </div>
                        <div class="form-group row">
                           <div class="col-xs-6">
                              <input type="text" required="true" class="form-control" name="chequeno" id="chequeno" placeholder="Cheque No.">
                           </div>
                           <div class="col-xs-6">
                              <input type="text" class="form-control" name="bank" id="bank" placeholder="Bank Name">
                           </div>
                        </div>
                        <div class="form-group row">
                           <div class="col-xs-6">
                              <label>Billing Date</label>
                              <input required="ture"  type="date"  class="form-control" name="bill_date" id="bill_date" placeholder="Billing Date">
                           </div>
                           <div class="col-xs-6">
                              <label>Status</label>
                              <input readonly="true" type="text" class="form-control" name="status" value="Open" id="status" placeholder="Status">
                           </div>
                        </div>
                        <div class="form-group row">
                           <div class="col-xs-6">
                             <input type="number" required="true" class="form-control" name="amount" id="amount" placeholder="Amount">
                           </div>
                           <div class="col-xs-6">
                             <input type="text" class="form-control" name="billno" id="billno" placeholder="Bill No.">
                           </div>
                         </div>
                        
                        <div class="form-group">
                              <input type="text" class="form-control" name="remarks" id="remarks" placeholder="Enter Remarks">
                           </div>
                           
                           
                        
                        <button type="submit" name="submit" class="btn btns">Submit</button>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <?php include 'footer.php'; ?>