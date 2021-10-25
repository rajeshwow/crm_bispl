<?php 
include 'config.php';
    // include 'header.php';

if (isset($_POST['edit_id'])) {


   $getcostcentre = " SELECT DISTINCT costcentre FROM(
   SELECT DISTINCT costcentre FROM `crm_salesreport` 
   UNION ALL
   SELECT DISTINCT costcentre FROM `crm_salesreport_indore` 
   UNION ALL
   SELECT DISTINCT costcentre FROM `crm_salesreport_lucknow` 
)derivedtable ORDER BY costcentre";
$result_getcostcentre = mysqli_query($con, $getcostcentre);
while($row_result_getcostcentre = mysqli_fetch_assoc($result_getcostcentre))
  $all_costcentre[] = $row_result_getcostcentre;
// print_r($all_costcentre);

$dealer_city_query = "SELECT DISTINCT city from crm_dealer ";
$dealer_city_result = mysqli_query($con, $dealer_city_query);
while ($row_dealer_city_result = mysqli_fetch_assoc($dealer_city_result)) 
   $dealer_cities[] = $row_dealer_city_result;

$funnel_emails_query = "SELECT DISTINCT salesperson from funnel ";
$funnel_emails_result = mysqli_query($con, $funnel_emails_query);
while ($row_funnel_emails_result = mysqli_fetch_assoc($funnel_emails_result)) 
   $funnel_emails[] = $row_funnel_emails_result;

$passwordquery = "SELECT * from crm_login where email = '".$_POST['edit_id']."' ";
$passwordresult = mysqli_query($con,$passwordquery);
while ($row = mysqli_fetch_array($passwordresult)) {
   $password = $row['password'];
   $userloginemail = $row['email'];
   $usertype = $row['usertype'];


}

$sql = "SELECT * from crm_useraccess where email = '".$_POST['edit_id']."' ";
$result = mysqli_query($con,$sql);
while ($row = mysqli_fetch_array($result)) {
   $email = $row['email'];
   $tableeps = $row['crm_eps'];
   $tablefortinet = $row['crm_fortinet'];

   $insellview = $row['insellview'];
   $inselledit = $row['inselledit'];
   $outsellview = $row['outsellview'];
   $outselledit = $row['outselledit'];

   $renewalpage = $row["renewalpage"];
   $dealerpage = $row["dealerpage"];
   $supportpage = $row["supportpage"];
   $createuserpage = $row["createuserpage"];
   $uploadpage = $row["uploadpage"];

         //columns

   $product_name_view = $row["product_name_view"];                                                         
   $product_name_edit = $row["product_name_edit"];                                                         
   $users_view = $row["users_view"];                                                         
   $users_edit = $row["users_edit"];                                                         
   $remarks_view = $row["remarks_view"];                                                         
   $remarks_edit = $row["remarks_edit"];                                                         
   $expiry_date_view = $row["expiry_date_view"];
   $expiry_date_edit = $row["expiry_date_edit"];
   $company_view = $row["company_view"];
   $company_edit = $row["company_edit"];
   $contact_person_view = $row["contact_person_view"];
   $contact_person_edit = $row["contact_person_edit"];
   $mobile_view = $row["mobile_view"];
   $mobile_edit = $row["mobile_edit"];
   $email_view = $row["email_view"];
   $email_edit = $row["email_edit"];
   $dealer_view = $row["dealer_view"];
   $dealer_edit = $row["dealer_edit"];
   $quotedprice_view = $row["quotedprice_view"];
   $quotedprice_edit = $row["quotedprice_edit"];

//btns 
   $renew = $row['renewedit'];
   $upgrade = $row['upgradeedit'];
   $lostandrenew = $row['lostandrenewedit'];
   $lostandupgrade = $row['lostandupgradeedit'];
   $dontwanttorenew = $row['dontwanttorenewedit'];
//side nave links 
   $renewalpage = $row["renewalpage"];
   $dealerpage = $row["dealerpage"];
   $supportpage = $row["supportpage"];
   $createuserpage = $row["createuserpage"];
   $uploadpage = $row["uploadpage"];
   $stocksummary = $row["stocksummary"];
   $outstandings = $row["outstandings"];
   $salesreport = $row["salesreport"];
   $salesregister = $row["salesregister"];
   $suspense = $row["suspense"];
   $funnel = $row["funnel"];

   $suspense_actions = $row["suspense_actions"];
   $suspense_status = $row["suspense_status"];
   $funnel_actions = $row["funnel_actions"];
   $funnel_status = $row["funnel_status"];

   $salesreport_acc = json_encode($row['salesreport_access']);
   $salesregister_acc = json_encode($row['salesregister_access']);
   $outstandings_acc = json_encode($row['outstandings_access']);
   $dealer_city = json_encode($row['dealer_city']);
   $funnel_email = json_encode($row['funnel_email']);




}
}


?>
<style>
.multiselect-container .multiselect-filter > .fa-search {
   z-index: 1;
   padding-left: 0.75rem;
   display: none;
}
.multiselect-container .multiselect-filter > input.multiselect-search {
   /* border: none; */
   border-bottom: 1px solid lightgrey;
   padding-left: 2rem;
   margin-bottom: 5px;
   width: 100%;
   margin-left: 0; 
   border-bottom-right-radius: 0;
   border-bottom-left-radius: 0;
}
.multiselect-container .multiselect-option.dropdown-item, .multiselect-container .multiselect-group.dropdown-item, .multiselect-container .multiselect-all.dropdown-item, .multiselect-container .multiselect-option.dropdown-toggle, .multiselect-container .multiselect-group.dropdown-toggle, .multiselect-container .multiselect-all.dropdown-toggle {
   cursor: pointer;
   background: none;
   border: none;
   display: block;
}
.multiselect-container {
  position: absolute;
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 250px;
}
label {
   display: inline-block;
   max-width: 100%;
   margin-bottom: 5px;
   font-weight: 700;
   padding-left: 10px;
}
.multiselect-container .multiselect-option.active:not(.multiselect-active-item-fallback), .multiselect-container .multiselect-group.active:not(.multiselect-active-item-fallback), .multiselect-container .multiselect-all.active:not(.multiselect-active-item-fallback), .multiselect-container .multiselect-option:not(.multiselect-active-item-fallback):active, .multiselect-container .multiselect-group:not(.multiselect-active-item-fallback):active, .multiselect-container .multiselect-all:not(.multiselect-active-item-fallback):active {
   background-color: white; 
   color: black;
}
</style>
<div class="row">
   <h2 style="text-align: center;">Create User</h2>
   <div class="col-lg-4">
      <input type="hidden"  name="emailactual" value="<?php echo $userloginemail;?>">
      <div class="form-group">
         <label>Email address</label>
         <input autocomplete="off" type="email" value="<?php echo $email ?>" required="true" name="email" id="email" class="form-control" placeholder="example@ybl.com" aria-describedby="emailHelp">
      </div>
   </div>
   <div class="col-lg-4">
      <div class="form-group">
         <label>Password</label>
         <input type="text" value="<?php echo $password ?>"  required="true" name="password" id="password" class="form-control" placeholder="***********"> 
      </div>
   </div>
   <div class="col-lg-4">
      <div class="form-group">
         <label for="sel1">Select user type:</label>
         <select class="form-control" id="usertype" name="usertype">
            <option value="">Choose One</option>
            <option <?php if($usertype=="Admin") echo 'selected="selected"'; ?> value="Admin">Admin</option>
            <option <?php if($usertype=="Support") echo 'selected="selected"'; ?> value="Support">Support</option>
         </select>
      </div>
   </div>
</div>

<hr>
<div class="row">
   <div class="col-lg-12">
      <label class="checkbox-inline">
         <input type="checkbox" id="checkAll"/>Select All
      </label>
   </div>
</div>
<hr>
   <!-- <div class="row accesspointss" >
      <h3 class="respheadings">Columns</h3>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>IN</li>
            <li>
               <ul class="list-inline">
                  <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" id="inview"  <?php echo ($insellview=='Yes' ? 'checked' : 'unchecked');?> class="checkboxitself" name="inview" value="Yes">
                  </li>
                  <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="inedit" <?php echo ($inselledit=='Yes' ? 'checked' : 'unchecked');?> class="checkboxitself" name="inedit" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>OUT</li>
            <li>
               <ul class="list-inline">
                  <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" <?php echo ($outsellview=='Yes' ? 'checked' : 'unchecked');?> id="outview" class="checkboxitself" name="outview" value="Yes">
                  </li>
                  <li><span class="checkboxtitle">Edit</span><input type="checkbox" <?php echo ($outselledit=='Yes' ? 'checked' : 'unchecked');?> id="outedit" class="checkboxitself" name="outedit" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border"></div>
      <div class="col-lg-2 right-border"></div>
      <div class="col-lg-2 right-border"></div>
      <div class="col-lg-2 right-border"></div>
   </div> -->
   <div class="row accesspointss">
      <h3 class="respheadings">Dealer Access</h3>
      <div class="col-lg-3 right-border">
         <ul class="resp_ul">
            <li>Dealer Access</li>
            <li>
               <ul class="list-inline">
                  <li>
                     <div class="form-group">
                        <select class="form-control" id="dealer_city" name="dealer_city[]" multiple="multiple">
                           <?php for ($i=0; $i < count($dealer_cities); $i++) {  ?>
                              <option value="<?php echo $dealer_cities[$i]['city'];?>"><?php echo $dealer_cities[$i]['city'];?></option>
                           <?php  } ?>
                        </select>
                     </div>
                  </li>
               </ul>
            </li>
         </ul>
      </div>
   </div>
   <hr>
   <div class="row accesspointss">
      <h3 class="respheadings">Columns</h3>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>IN</li>
            <li>
               <ul class="list-inline">
                  <li>
                     <span class="checkboxtitle">View</span><input <?php echo ($insellview=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="inview" class="checkboxitself" name="inview" value="Yes">
                  </li>
                  <li><span class="checkboxtitle">Edit</span><input <?php echo ($inselledit=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="inedit" class="checkboxitself" name="inedit" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>OUT</li>
            <li>
               <ul class="list-inline">
                  <li>
                     <span class="checkboxtitle">View</span><input <?php echo ($outsellview=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="outview" class="checkboxitself" name="outview" value="Yes">
                  </li>
                  <li><span class="checkboxtitle">Edit</span><input <?php echo ($outselledit=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="outedit" class="checkboxitself" name="outedit" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Product Name</li>
            <li>
               <ul class="list-inline">
                  <li>
                     <span class="checkboxtitle">View</span><input <?php echo ($product_name_view=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="product_name_view" class="checkboxitself" name="product_name_view" value="Yes">
                  </li>
                  <li><span class="checkboxtitle">Edit</span><input <?php echo ($product_name_edit=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="product_name_edit" class="checkboxitself" name="product_name_edit" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Users</li>
            <li>
               <ul class="list-inline">
                  <li>
                     <span class="checkboxtitle">View</span><input <?php echo ($users_view=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="users_view" class="checkboxitself" name="users_view" value="Yes">
                  </li>
                  <li><span class="checkboxtitle">Edit</span><input <?php echo ($users_edit=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="users_edit" class="checkboxitself" name="users_edit" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Remarks</li>
            <li>
               <ul class="list-inline">
                  <li>
                     <span class="checkboxtitle">View</span><input <?php echo ($remarks_view=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="remarks_view" class="checkboxitself" name="remarks_view" value="Yes">
                  </li>
                  <li><span class="checkboxtitle">Edit</span><input <?php echo ($remarks_edit=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="remarks_edit" class="checkboxitself" name="remarks_edit" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Expiry Date</li>
            <li>
               <ul class="list-inline">
                  <li>
                     <span class="checkboxtitle">View</span><input <?php echo ($expiry_date_view=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="expiry_date_view" class="checkboxitself" name="expiry_date_view" value="Yes">
                  </li>
                  <li><span class="checkboxtitle">Edit</span><input <?php echo ($expiry_date_edit=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="expiry_date_edit" class="checkboxitself" name="expiry_date_edit" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
   </div>
   <div class="row accesspointss" >

      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Company</li>
            <li>
               <ul class="list-inline">
                  <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" <?php echo ($company_view=='Yes' ? 'checked' : 'unchecked');?> id="company_view" class="checkboxitself" name="company_view" value="Yes">
                  </li>
                  <li><span class="checkboxtitle">Edit</span><input type="checkbox" <?php echo ($company_edit=='Yes' ? 'checked' : 'unchecked');?> id="company_edit" class="checkboxitself" name="company_edit" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Contact Person</li>
            <li>
               <ul class="list-inline">
                  <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" <?php echo ($contact_person_view=='Yes' ? 'checked' : 'unchecked');?> id="contact_person_view" class="checkboxitself" name="contact_person_view" value="Yes">
                  </li>
                  <li><span class="checkboxtitle">Edit</span><input type="checkbox" <?php echo ($contact_person_edit=='Yes' ? 'checked' : 'unchecked');?> id="contact_person_edit" class="checkboxitself" name="contact_person_edit" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Mobile</li>
            <li>
               <ul class="list-inline">
                  <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" <?php echo ($mobile_view=='Yes' ? 'checked' : 'unchecked');?> id="mobile_view" class="checkboxitself" name="mobile_view" value="Yes">
                  </li>
                  <li><span class="checkboxtitle">Edit</span><input type="checkbox" <?php echo ($mobile_edit=='Yes' ? 'checked' : 'unchecked');?> id="mobile_edit" class="checkboxitself" name="mobile_edit" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Email</li>
            <li>
               <ul class="list-inline">
                  <li>
                     <span class="checkboxtitle">View</span><input <?php echo ($email_view=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="email_view" class="checkboxitself" name="email_view" value="Yes">
                  </li>
                  <li><span class="checkboxtitle">Edit</span><input <?php echo ($email_edit=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="email_edit" class="checkboxitself" name="email_edit" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Dealer</li>
            <li>
               <ul class="list-inline">
                  <li>
                     <span class="checkboxtitle">View</span><input <?php echo ($dealer_view=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="dealer_view" class="checkboxitself" name="dealer_view" value="Yes">
                  </li>
                  <li><span class="checkboxtitle">Edit</span><input <?php echo ($dealer_edit=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="dealer_edit" class="checkboxitself" name="dealer_edit" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Quoted Price</li>
            <li>
               <ul class="list-inline">
                  <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" <?php echo ($quotedprice_view=='Yes' ? 'checked' : 'unchecked');?> id="quotedprice_view" class="checkboxitself" name="quotedprice_view" value="Yes">
                  </li>
                  <li><span class="checkboxtitle">Edit</span><input type="checkbox" <?php echo ($quotedprice_edit=='Yes' ? 'checked' : 'unchecked');?> id="quotedprice_edit" class="checkboxitself" name="quotedprice_edit" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
   </div>
   <br>
   <hr>
   <div class="row accesspointss" >
      <h3 class="respheadings">Table Access</h3>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Fortinet</li>
            <li>
               <ul class="list-inline">
                  <!-- <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" id="renewview" class="checkboxitself" name="renewview" value="Yes">
                  </li> -->
                  <li><span class="checkboxtitle">View</span><input <?php echo ($tablefortinet=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="tablefortinet" class="checkboxitself" name="tablefortinet" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>EPS</li>
            <li>
               <ul class="list-inline">
                  <!-- <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" id="renewview" class="checkboxitself" name="renewview" value="Yes">
                  </li> -->
                  <li><span class="checkboxtitle">View</span><input <?php echo ($tableeps=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="tableeps" class="checkboxitself" name="tableeps" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2"></div>
      <div class="col-lg-2"></div>
      <div class="col-lg-2"></div>
      <div class="col-lg-2"></div>
   </div>
   <br>
   <hr>
   <div class="row accesspointss">
      <h3 class="respheadings">Status Update Buttons</h3>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Renew</li>
            <li>
               <ul class="list-inline">
                  <!-- <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" id="renewview" class="checkboxitself" name="renewview" value="Yes">
                  </li> -->
                  <li><span class="checkboxtitle">Edit</span><input type="checkbox" <?php echo ($renew=='Yes' ? 'checked' : 'unchecked');?> id="renewedit" class="checkboxitself" name="renewedit" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Upgrade</li>
            <li>
               <ul class="list-inline">
                  <!-- <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" id="upgradeview" class="checkboxitself" name="upgradeview" value="Yes">
                  </li> -->
                  <li><span class="checkboxtitle">Edit</span><input <?php echo ($upgrade=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="upgradeedit" class="checkboxitself" name="upgradeedit" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Lost and Renew</li>
            <li>
               <ul class="list-inline">
                  <!-- <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" id="lostandrenewview" class="checkboxitself" name="lostandrenewview" value="Yes">
                  </li> -->
                  <li><span class="checkboxtitle">Edit</span><input <?php echo ($lostandrenew=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="lostandrenewedit" class="checkboxitself" name="lostandrenewedit" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Lost and Upgrade</li>
            <li>
               <ul class="list-inline">
                  <!-- <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" id="lostandupgradeview" class="checkboxitself" name="lostandupgradeview" value="Yes">
                  </li> -->
                  <li><span class="checkboxtitle">Edit</span><input <?php echo ($lostandupgrade=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="lostandupgradeedit" class="checkboxitself" name="lostandupgradeedit" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Dont want to Renew</li>
            <li>
               <ul class="list-inline">
                  <!-- <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" id="dontwanttorenewview" class="checkboxitself" name="dontwanttorenewview" value="Yes">
                  </li> -->
                  <li><span class="checkboxtitle">Edit</span><input <?php echo ($dontwanttorenew=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="dontwanttorenewedit" class="checkboxitself" name="dontwanttorenewedit" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2"></div>
   </div>
   <br>
   <hr>
   <div class="row accesspointss">
      <h3 class="respheadings">Side Nav Links</h3>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Renewal</li>
            <li>
               <ul class="list-inline">
                  <!-- <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" id="renewview" class="checkboxitself" name="renewview" value="Yes">
                  </li> -->
                  <li><span class="checkboxtitle">Edit</span><input <?php echo ($renewalpage=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" id="renewalpage" class="checkboxitself" name="renewalpage" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Dealers</li>
            <li>
               <ul class="list-inline">
                  <!-- <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" id="upgradeview" class="checkboxitself" name="upgradeview" value="Yes">
                  </li> -->
                  <li><span class="checkboxtitle">Edit</span><input type="checkbox" <?php echo ($dealerpage=='Yes' ? 'checked' : 'unchecked');?> id="dealerpage" class="checkboxitself" name="dealerpage" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Support</li>
            <li>
               <ul class="list-inline">
                  <!-- <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" id="lostandrenewview" class="checkboxitself" name="lostandrenewview" value="Yes">
                  </li> -->
                  <li><span class="checkboxtitle">Edit</span><input type="checkbox" <?php echo ($supportpage=='Yes' ? 'checked' : 'unchecked');?> id="supportpage" class="checkboxitself" name="supportpage" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Create User</li>
            <li>
               <ul class="list-inline">
                  <!-- <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" id="lostandupgradeview" class="checkboxitself" name="lostandupgradeview" value="Yes">
                  </li> -->
                  <li><span class="checkboxtitle">Edit</span><input type="checkbox" <?php echo ($createuserpage=='Yes' ? 'checked' : 'unchecked');?> id="createuserpage" class="checkboxitself" name="createuserpage" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Upload</li>
            <li>
               <ul class="list-inline">
                  <!-- <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" id="dontwanttorenewview" class="checkboxitself" name="dontwanttorenewview" value="Yes">
                  </li> -->
                  <li><span class="checkboxtitle">Edit</span><input type="checkbox" <?php echo ($uploadpage=='Yes' ? 'checked' : 'unchecked');?> id="uploadpage" class="checkboxitself" name="uploadpage" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Stock Summary</li>
            <li>
               <ul class="list-inline">
                  <!-- <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" id="dontwanttorenewview" class="checkboxitself" name="dontwanttorenewview" value="Yes">
                  </li> -->
                  <li><span class="checkboxtitle">Edit</span><input type="checkbox" <?php echo ($stocksummary=='Yes' ? 'checked' : 'unchecked');?> id="stocksummary" class="checkboxitself" name="stocksummary" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
   </div>
   <div class="row accesspointss">
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Outstandings</li>
            <li>
               <ul class="list-inline">
                  <!-- <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" id="dontwanttorenewview" class="checkboxitself" name="dontwanttorenewview" value="Yes">
                  </li> -->
                  <li><span class="checkboxtitle">Edit</span><input type="checkbox" <?php echo ($outstandings=='Yes' ? 'checked' : 'unchecked');?> id="outstandings" class="checkboxitself" name="outstandings" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Sales Report</li>
            <li>
               <ul class="list-inline">
                  <li><span class="checkboxtitle">Edit</span><input type="checkbox" <?php echo ($salesreport=='Yes' ? 'checked' : 'unchecked');?> id="salesreport" class="checkboxitself" name="salesreport" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Sales Register</li>
            <li>
               <ul class="list-inline">
                  <li><span class="checkboxtitle">Edit</span><input type="checkbox" <?php echo ($salesregister=='Yes' ? 'checked' : 'unchecked');?> id="salesregister" class="checkboxitself" name="salesregister" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Suspense Account</li>
            <li>
               <ul class="list-inline">
                  <!-- <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" id="dontwanttorenewview" class="checkboxitself" name="dontwanttorenewview" value="Yes">
                  </li> -->
                  <li><span class="checkboxtitle">Edit</span><input type="checkbox" <?php echo ($suspense=='Yes' ? 'checked' : 'unchecked');?> id="suspense" class="checkboxitself" name="suspense" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Funnel</li>
            <li>
               <ul class="list-inline">
                  <!-- <li>
                     <span class="checkboxtitle">View</span><input type="checkbox" id="dontwanttorenewview" class="checkboxitself" name="dontwanttorenewview" value="Yes">
                  </li> -->
                  <li><span class="checkboxtitle">Edit</span><input type="checkbox" <?php echo ($funnel=='Yes' ? 'checked' : 'unchecked');?> id="funnel" class="checkboxitself" name="funnel" value="Yes"></li>
               </ul>
            </li>
         </ul>
      </div>
   </div>
   <hr>
   <div class="row accesspointss">
      <h3 class="respheadings">Accounts</h3>
      <div class="col-lg-4 right-border">
         <ul class="resp_ul">
            <li>Sales Report Access</li>
            <li>
               <ul class="list-inline">
                  <li>
                     <div class="form-group">
                        <select class="form-control" id="salesreport_access" name="salesreport_access[]" multiple="multiple">
                           <?php for ($i=0; $i < count($all_costcentre); $i++) {   ?>
                              <option  value="<?php echo $all_costcentre[$i]['costcentre'];?>" ><?php echo $all_costcentre[$i]['costcentre'];?></option>
                           <?php  } ?>
                        </select>
                     </div>
                  </li>

               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-4 right-border">
         <ul class="resp_ul">
            <li>Sales Register Access</li>
            <li>
               <ul class="list-inline">
                  <li>
                     <div class="form-group">
                        <select class="form-control" id="salesregister_access" name="salesregister_access[]" multiple="multiple">
                           <?php for ($i=0; $i < count($all_costcentre); $i++) {   ?>
                              <option  value="<?php echo $all_costcentre[$i]['costcentre'];?>" ><?php echo $all_costcentre[$i]['costcentre'];?></option>
                           <?php  } ?>
                        </select>
                     </div>
                  </li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="col-lg-4 right-border">
         <ul class="resp_ul">
            <li>Outstandings access</li>
            <li>
               <ul class="list-inline">
                  <li>
                     <div class="form-group">
                        <select class="form-control" id="outstandings_access" name="outstandings_access[]" multiple="multiple">
                           <?php for ($i=0; $i < count($all_costcentre); $i++) {   ?>
                              <option  value="<?php echo $all_costcentre[$i]['costcentre'];?>" ><?php echo $all_costcentre[$i]['costcentre'];?></option>
                           <?php  } ?>
                        </select>
                     </div>
                  </li>
               </ul>
            </li>
         </ul>
      </div>
   </div>
   <div class="row accesspointss">
      <h3 class="respheadings">Suspense</h3>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Actions <br>Edit / Delete</li>
            <li>
               <ul class="list-inline">
                  <li><span class="checkboxtitle">Edit</span><input type="checkbox" value="Yes" id="suspense_actions" class="checkboxitself" name="suspense_actions" <?php echo ($suspense_actions=='Yes' ? 'checked' : 'unchecked');?>></li>
               </ul>
            </li>
         </ul>
      </div>

      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Status Update</li>
            <li>
               <ul class="list-inline">
                  <li><span class="checkboxtitle">Edit</span><input <?php echo ($suspense_status=='Yes' ? 'checked' : 'unchecked');?> type="checkbox" value="Yes" id="suspense_status" class="checkboxitself" name="suspense_status" ></li>
               </ul>
            </li>
         </ul>
      </div>
   </div>
   <hr>
   <div class="row accesspointss">
      <h3 class="respheadings">Funnel</h3>
      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Actions <br>Edit / Delete</li>
            <li>
               <ul class="list-inline">
                  <li><span class="checkboxtitle">Edit</span><input type="checkbox" value="Yes" id="funnel_actions" class="checkboxitself" name="funnel_actions" <?php echo ($funnel_actions=='Yes' ? 'checked' : 'unchecked');?>></li>
               </ul>
            </li>
         </ul>
      </div>

      <div class="col-lg-2 right-border">
         <ul class="resp_ul">
            <li>Status Update</li>
            <li>
               <ul class="list-inline">
                  <li><span class="checkboxtitle">Edit</span><input type="checkbox" value="Yes" id="funnel_status" class="checkboxitself" name="funnel_status" <?php echo ($funnel_status=='Yes' ? 'checked' : 'unchecked');?>></li>
               </ul>
            </li>
         </ul>
      </div>

      <div class="col-lg-4 right-border">
         <ul class="resp_ul">
            <li>Select Salesperson</li>
            <li>
               <div class="form-group">
                  <select class="form-control" id="funnel_email" name="funnel_email[]" multiple="multiple">
                     <?php for ($i=0; $i < count($funnel_emails); $i++) {  ?>
                        <option value="<?php echo $funnel_emails[$i]['salesperson'];?>"><?php echo $funnel_emails[$i]['salesperson'];?></option>
                     <?php  } ?>
                  </select>
               </div>
            </li>
         </ul>
      </div>
   </div>
   <br>
   <hr>



   <script type="text/javascript">
      $("#checkAll").change(function () {
       $(".accesspointss input:checkbox").prop('checked', $(this).prop("checked"));
    });
 </script>
 <script type="text/javascript">
   $(function(){
      $('#salesreport_access').multiselect();
   });
   $(function(){
      $('#salesregister_access').multiselect();
   });
   $(function(){
      $('#outstandings_access').multiselect();
   });

$(function(){
      $('#funnel_email').multiselect();
   });

   $('#funnel_email').multiselect({

   // allows HTML content
   enableHTML: false,

  // CSS class of the multiselect button
  buttonClass: 'btn-info btn',

  // width of the multiselect button
  buttonWidth: '100%',

  // container that holds both the button as well as the dropdown
  buttonContainer: '<div class="btn-group" />',

  // CSS class of the selected option
  selectedClass: 'active',

  // includes Select All Option
  includeSelectAllOption: true,

  // shows the Select All Option if options are more than ...
  includeSelectAllIfMoreThan: 0,

  // Lable of Select All
  selectAllText: ' Select all',

  // the select all option is added as additional option within the select
  // o distinguish this option from the original options the value used for the select all option can be configured using the selectAllValue option.
  selectAllValue: 'multiselect-all',

  // control the name given to the select all option
  selectAllName: true,

  // if true, the number of selected options will be shown in parantheses when all options are seleted. 
  selectAllNumber: true,

  // setting both includeSelectAllOption and enableFiltering to true, the select all option does always select only the visible option
  // with setting selectAllJustVisible to false this behavior is changed such that always all options (irrespective of whether they are visible) are selected
  selectAllJustVisible: true,

  // enables filtering
  enableFiltering: true,

  // determines if is case sensitive when filtering
  enableCaseInsensitiveFiltering: true,

  // placeholder of filter filed
  filterPlaceholder: 'Search',

  // possible options: 'text', 'value', 'both'
  filterBehavior: 'text',

  // includes clear button inside the filter filed
  includeFilterClearBtn: true,

  // message to display when no option is selected
  nonSelectedText: 'Select Salesperson',

  // message to display if more than numberDisplayed options are selected
  nSelectedText: 'selected',

  // message to display if all options are selected
  allSelectedText: 'All selected',

  // determines if too many options would be displayed
  numberDisplayed: 3,

  // the separator for the list of selected items for mouse-over
  delimiterText: ', ',
});

   $('#salesreport_access').multiselect({

   // allows HTML content
   enableHTML: false,

  // CSS class of the multiselect button
  buttonClass: 'btn-info btn',

  // width of the multiselect button
  buttonWidth: '100%',

  // container that holds both the button as well as the dropdown
  buttonContainer: '<div class="btn-group" />',

  // CSS class of the selected option
  selectedClass: 'active',

  // includes Select All Option
  includeSelectAllOption: true,

  // shows the Select All Option if options are more than ...
  includeSelectAllIfMoreThan: 0,

  // Lable of Select All
  selectAllText: ' Select all',

  // the select all option is added as additional option within the select
  // o distinguish this option from the original options the value used for the select all option can be configured using the selectAllValue option.
  selectAllValue: 'multiselect-all',

  // control the name given to the select all option
  selectAllName: true,

  // if true, the number of selected options will be shown in parantheses when all options are seleted. 
  selectAllNumber: true,

  // setting both includeSelectAllOption and enableFiltering to true, the select all option does always select only the visible option
  // with setting selectAllJustVisible to false this behavior is changed such that always all options (irrespective of whether they are visible) are selected
  selectAllJustVisible: true,

  // enables filtering
  enableFiltering: true,

  // determines if is case sensitive when filtering
  enableCaseInsensitiveFiltering: true,

  // placeholder of filter filed
  filterPlaceholder: 'Search',

  // possible options: 'text', 'value', 'both'
  filterBehavior: 'text',

  // includes clear button inside the filter filed
  includeFilterClearBtn: true,

  // message to display when no option is selected
  nonSelectedText: 'Select Costcentre',

  // message to display if more than numberDisplayed options are selected
  nSelectedText: 'selected',

  // message to display if all options are selected
  allSelectedText: 'All selected',

  // determines if too many options would be displayed
  numberDisplayed: 2,

  // the separator for the list of selected items for mouse-over
  delimiterText: ', ',
});








   $('#salesregister_access').multiselect({

   // allows HTML content
   enableHTML: false,

  // CSS class of the multiselect button
  buttonClass: 'btn-info btn',

  // width of the multiselect button
  buttonWidth: '100%',

  // container that holds both the button as well as the dropdown
  buttonContainer: '<div class="btn-group" />',

  // CSS class of the selected option
  selectedClass: 'active',

  // includes Select All Option
  includeSelectAllOption: true,

  // shows the Select All Option if options are more than ...
  includeSelectAllIfMoreThan: 0,

  // Lable of Select All
  selectAllText: ' Select all',

  // the select all option is added as additional option within the select
  // o distinguish this option from the original options the value used for the select all option can be configured using the selectAllValue option.
  selectAllValue: 'multiselect-all',

  // control the name given to the select all option
  selectAllName: true,

  // if true, the number of selected options will be shown in parantheses when all options are seleted. 
  selectAllNumber: true,

  // setting both includeSelectAllOption and enableFiltering to true, the select all option does always select only the visible option
  // with setting selectAllJustVisible to false this behavior is changed such that always all options (irrespective of whether they are visible) are selected
  selectAllJustVisible: true,

  // enables filtering
  enableFiltering: true,

  // determines if is case sensitive when filtering
  enableCaseInsensitiveFiltering: true,

  // placeholder of filter filed
  filterPlaceholder: 'Search',

  // possible options: 'text', 'value', 'both'
  filterBehavior: 'text',

  // includes clear button inside the filter filed
  includeFilterClearBtn: true,

  // message to display when no option is selected
  nonSelectedText: 'Select Costcentre',

  // message to display if more than numberDisplayed options are selected
  nSelectedText: 'selected',

  // message to display if all options are selected
  allSelectedText: 'All selected',

  // determines if too many options would be displayed
  numberDisplayed: 2,

  // the separator for the list of selected items for mouse-over
  delimiterText: ', ',
});










   $('#outstandings_access').multiselect({

   // allows HTML content
   enableHTML: false,

  // CSS class of the multiselect button
  buttonClass: 'btn-info btn',

  // width of the multiselect button
  buttonWidth: '100%',

  // container that holds both the button as well as the dropdown
  buttonContainer: '<div class="btn-group" />',

  // CSS class of the selected option
  selectedClass: 'active',

  // includes Select All Option
  includeSelectAllOption: true,

  // shows the Select All Option if options are more than ...
  includeSelectAllIfMoreThan: 0,

  // Lable of Select All
  selectAllText: ' Select all',

  // the select all option is added as additional option within the select
  // o distinguish this option from the original options the value used for the select all option can be configured using the selectAllValue option.
  selectAllValue: 'multiselect-all',

  // control the name given to the select all option
  selectAllName: true,

  // if true, the number of selected options will be shown in parantheses when all options are seleted. 
  selectAllNumber: true,

  // setting both includeSelectAllOption and enableFiltering to true, the select all option does always select only the visible option
  // with setting selectAllJustVisible to false this behavior is changed such that always all options (irrespective of whether they are visible) are selected
  selectAllJustVisible: true,

  // enables filtering
  enableFiltering: true,

  // determines if is case sensitive when filtering
  enableCaseInsensitiveFiltering: true,

  // placeholder of filter filed
  filterPlaceholder: 'Search',

  // possible options: 'text', 'value', 'both'
  filterBehavior: 'text',

  // includes clear button inside the filter filed
  includeFilterClearBtn: true,

  // message to display when no option is selected
  nonSelectedText: 'Select Costcentre',

  // message to display if more than numberDisplayed options are selected
  nSelectedText: 'selected',

  // message to display if all options are selected
  allSelectedText: 'All selected',

  // determines if too many options would be displayed
  numberDisplayed: 2,

  // the separator for the list of selected items for mouse-over
  delimiterText: ', ',
});



   console.log("hiii");
   console.log(<?php echo $salesreport_acc ?>);

// var selected_tags_arr = new Array();
// var selected_tags = <?php echo $salesreport_acc ?>;
// selected_tags_arr = selected_tags.split(",");
// console.log(selected_tags_arr);
// $('#salesreport_access option').each(function (){
//     var option_val = this.value;
//     console.log(option_val);
//     for (var i in selected_tags_arr) {
//         if(selected_tags_arr[i] == option_val){
//             $("#salesreport_access option[value='" + this.value + "']").attr("selected", 1);
//             $("#salesreport_access button").addClass('active');
//         }
//     }
// });

$(document).ready(function(){
 var data = <?php echo $salesreport_acc ?>;
 var valArr = data.split(",");
 var i = 0, size = valArr.length;
 for (i; i < size; i++) {
   $('#salesreport_access').multiselect('select', valArr[i]);
}
});
$(document).ready(function(){
 var data = <?php echo $salesregister_acc ?>;

 var valArr = data.split(",");
 var i = 0, size = valArr.length;
 for (i; i < size; i++) {
   $('#salesregister_access').multiselect('select', valArr[i]);
}
});
$(document).ready(function(){
 var data = <?php echo $outstandings_acc ?>;
 var valArr = data.split(",");
 var i = 0, size = valArr.length;
 for (i; i < size; i++) {
   $('#outstandings_access').multiselect('select', valArr[i]);
}
});

$(document).ready(function(){
 var data = <?php echo $dealer_city ?>;
 var valArr = data.split(",");
 var i = 0, size = valArr.length;
 for (i; i < size; i++) {
   $('#dealer_city').multiselect('select', valArr[i]);
}
});

$(document).ready(function(){
 var data = <?php echo $funnel_email ?>;
 var valArr = data.split(",");
 var i = 0, size = valArr.length;
 for (i; i < size; i++) {
   $('#funnel_email').multiselect('select', valArr[i]);
}
});


$(function(){
   $('#dealer_city').multiselect();
});


$('#dealer_city').multiselect({

   // allows HTML content
   enableHTML: false,

  // CSS class of the multiselect button
  buttonClass: 'btn-info btn',

  // width of the multiselect button
  buttonWidth: '100%',

  // container that holds both the button as well as the dropdown
  buttonContainer: '<div class="btn-group" />',

  // CSS class of the selected option
  selectedClass: 'active',

  // includes Select All Option
  includeSelectAllOption: true,

  // shows the Select All Option if options are more than ...
  includeSelectAllIfMoreThan: 0,

  // Lable of Select All
  selectAllText: ' Select all',

  // the select all option is added as additional option within the select
  // o distinguish this option from the original options the value used for the select all option can be configured using the selectAllValue option.
  selectAllValue: 'multiselect-all',

  // control the name given to the select all option
  selectAllName: true,

  // if true, the number of selected options will be shown in parantheses when all options are seleted. 
  selectAllNumber: true,

  // setting both includeSelectAllOption and enableFiltering to true, the select all option does always select only the visible option
  // with setting selectAllJustVisible to false this behavior is changed such that always all options (irrespective of whether they are visible) are selected
  selectAllJustVisible: true,

  // enables filtering
  enableFiltering: true,

  // determines if is case sensitive when filtering
  enableCaseInsensitiveFiltering: true,

  // placeholder of filter filed
  filterPlaceholder: 'Search',

  // possible options: 'text', 'value', 'both'
  filterBehavior: 'text',

  // includes clear button inside the filter filed
  includeFilterClearBtn: true,

  // message to display when no option is selected
  nonSelectedText: 'Select Cities',

  // message to display if more than numberDisplayed options are selected
  nSelectedText: 'selected',

  // message to display if all options are selected
  allSelectedText: 'All selected',

  // determines if too many options would be displayed
  numberDisplayed: 3,

  // the separator for the list of selected items for mouse-over
  delimiterText: ', ',
});

$('#salesreport_access').multiselect({

   // allows HTML content
   enableHTML: false,

  // CSS class of the multiselect button
  buttonClass: 'btn-info btn',

  // width of the multiselect button
  buttonWidth: '100%',

  // container that holds both the button as well as the dropdown
  buttonContainer: '<div class="btn-group" />',

  // CSS class of the selected option
  selectedClass: 'active',

  // includes Select All Option
  includeSelectAllOption: true,

  // shows the Select All Option if options are more than ...
  includeSelectAllIfMoreThan: 0,

  // Lable of Select All
  selectAllText: ' Select all',

  // the select all option is added as additional option within the select
  // o distinguish this option from the original options the value used for the select all option can be configured using the selectAllValue option.
  selectAllValue: 'multiselect-all',

  // control the name given to the select all option
  selectAllName: true,

  // if true, the number of selected options will be shown in parantheses when all options are seleted. 
  selectAllNumber: true,

  // setting both includeSelectAllOption and enableFiltering to true, the select all option does always select only the visible option
  // with setting selectAllJustVisible to false this behavior is changed such that always all options (irrespective of whether they are visible) are selected
  selectAllJustVisible: true,

  // enables filtering
  enableFiltering: true,

  // determines if is case sensitive when filtering
  enableCaseInsensitiveFiltering: true,

  // placeholder of filter filed
  filterPlaceholder: 'Search',

  // possible options: 'text', 'value', 'both'
  filterBehavior: 'text',

  // includes clear button inside the filter filed
  includeFilterClearBtn: true,

  // message to display when no option is selected
  nonSelectedText: 'Select Costcentre',

  // message to display if more than numberDisplayed options are selected
  nSelectedText: 'selected',

  // message to display if all options are selected
  allSelectedText: 'All selected',

  // determines if too many options would be displayed
  numberDisplayed: 3,

  // the separator for the list of selected items for mouse-over
  delimiterText: ', ',
});




</script>
