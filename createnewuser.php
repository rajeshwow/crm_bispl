<?php include 'config.php'; ?>
<?php include 'crm_userauth.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>
<style>
   .checkboxtitle{
   display: block;
   text-align: center;
   width: 50px;
   }
   .checkboxitself{
   text-align: -webkit-center;
   width: 50px;
   }
   .resp_ul>li{
   list-style-type: none;
   text-align: center;
   }
   .resp_ul{
   border:1px solid lightgray;
   border-radius: 2px;
   box-shadow: 0px 0px 15px 0px rgb(100 111 138 / 58%);
   padding-inline-start: 0px;
   border-radius: 5px;
   }
   .resp_ul>li:first-child{
   background-color: darkblue;
   color: white;
   min-height: 40px;
   }
   .respheadings{
   padding:0% 2%;
   }
   .right-border{
   border-right: 1px solid lightgray;
   }
   .highlight{
   border-right: 2px solid red;
   }
</style>
<?php  
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
   ?>
<?php 
   $ueraccessquery = "SELECT * from crm_useraccess where email= '" . $_SESSION['email'] . "' ";
   $result2 = mysqli_query($con, $ueraccessquery);
   while ($row3 = mysqli_fetch_assoc($result2)) 
      $user_access[] = $row3;
   
   $sql = "SELECT email, password,usertype FROM crm_login where email = '".$_SESSION['email']."' ";
   $result = mysqli_query($con, $sql) or die("Error: " . mysqli_error($con));
   while($rw= mysqli_fetch_assoc($result))
      $row[] = $rw;
   
   $dealer_city_query = "SELECT DISTINCT city from crm_dealer ";
   $dealer_city_result = mysqli_query($con, $dealer_city_query);
   while ($row_dealer_city_result = mysqli_fetch_assoc($dealer_city_result)) 
      $dealer_cities[] = $row_dealer_city_result;
   
   $funnel_emails_query = "SELECT DISTINCT salesperson from funnel ";
   $funnel_emails_result = mysqli_query($con, $funnel_emails_query);
   while ($row_funnel_emails_result = mysqli_fetch_assoc($funnel_emails_result)) 
      $funnel_emails[] = $row_funnel_emails_result;
   ?>

   
<div class="container-fluid">
   <div class="right-part">
      <div class="rightpartitle"> 
         <span class="acttitle">Create New User</span>
      </div>
      <br>
      <?php if ($row[0]['usertype']=='Admin' || $user_access[0]['createuserpage']== 'Yes') { ?>
      <form method="POST" autocomplete="off" id="createuser_frm">
         <div class="row">
            <div class="col-lg-4">
               <div class="form-group">
                  <label>Email address</label>
                  <div class="input-group">
                     <input autocomplete="off" type="email" required="true" name="email" id="email" class="form-control" placeholder="example@ybl.com" aria-describedby="emailHelp">
                     <div id="uname_response" class="input-group-addon"></div>
                  </div>
               </div>
            </div>
            <div class="col-lg-4">
               <div class="form-group">
                  <label>Password</label>
                  <input type="password" required="true" name="password" id="password" class="form-control" placeholder="***********"> 
               </div>
            </div>
            <div class="col-lg-4">
               <div class="form-group">
                  <label for="sel1">Select user type:</label>
                  <select class="form-control" id="usertype" name="usertype">
                     <option value="">Choose One</option>
                     <option value="Admin">Admin</option>
                     <option value="Support">Support</option>
                  </select>
               </div>
            </div>
         </div>
         <hr>
         <style>
            .colaccess_wrapper{
            display: flex;
            flex-direction: row;
            justify-content: center;
            flex-wrap: wrap;
            }
            .colitems{
            flex: 0 0 50%;
            margin: 1% 0;
            }
            .acc_btn{
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            }
            .acc_panel{
            flex: 0 0 32%;
            margin: 5px;
            }
         </style>
         <div class="row" >
            <div class="col-lg-12">
               <div class="acc_btn">
                  <div class="acc_panel">
                     <button type="button" class="accordion">Dealer Access - City wise</button>
                     <div class="panel">
                        <div class="colaccess_wrapper">
                           <ul class="resp_ul">
                              <li>Select Cities</li>
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
                  </div>
                  <!-- <div class="acc_panel">
                     <button type="button" class="accordion">Funnel Access - Salesperson wise</button>
                     <div class="panel">
                        <div class="colaccess_wrapper">
                           <ul class="resp_ul">
                              <li>Select Salesperosn</li>
                              <li>
                                 <ul class="list-inline">
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
                              </li>
                           </ul>
                        </div>
                     </div>
                     </div> -->
                  <div class="acc_panel">
                     <button type="button" class="accordion">Renewal Columns</button>
                     <div class="panel">
                        <div class="colaccess_wrapper">
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>IN</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li>
                                          <span class="checkboxtitle">View</span><input type="checkbox" id="inview" class="checkboxitself" name="inview" value="Yes">
                                       </li>
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="inedit" class="checkboxitself" name="inedit" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>OUT</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li>
                                          <span class="checkboxtitle">View</span><input type="checkbox" id="outview" class="checkboxitself" name="outview" value="Yes">
                                       </li>
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="outedit" class="checkboxitself" name="outedit" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Product Name</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li>
                                          <span class="checkboxtitle">View</span><input type="checkbox" id="product_name_view" class="checkboxitself" name="product_name_view" value="Yes">
                                       </li>
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="product_name_edit" class="checkboxitself" name="product_name_edit" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Users</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li>
                                          <span class="checkboxtitle">View</span><input type="checkbox" id="users_view" class="checkboxitself" name="users_view" value="Yes">
                                       </li>
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="users_edit" class="checkboxitself" name="users_edit" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Remarks</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li>
                                          <span class="checkboxtitle">View</span><input type="checkbox" id="remarks_view" class="checkboxitself" name="remarks_view" value="Yes">
                                       </li>
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="remarks_edit" class="checkboxitself" name="remarks_edit" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Expiry Date</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li>
                                          <span class="checkboxtitle">View</span><input type="checkbox" id="expiry_date_view" class="checkboxitself" name="expiry_date_view" value="Yes">
                                       </li>
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="expiry_date_edit" class="checkboxitself" name="expiry_date_edit" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Company</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li>
                                          <span class="checkboxtitle">View</span><input type="checkbox" id="company_view" class="checkboxitself" name="company_view" value="Yes">
                                       </li>
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="company_edit" class="checkboxitself" name="company_edit" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Contact Person</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li>
                                          <span class="checkboxtitle">View</span><input type="checkbox" id="contact_person_view" class="checkboxitself" name="contact_person_view" value="Yes">
                                       </li>
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="contact_person_edit" class="checkboxitself" name="contact_person_edit" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Mobile</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li>
                                          <span class="checkboxtitle">View</span><input type="checkbox" id="mobile_view" class="checkboxitself" name="mobile_view" value="Yes">
                                       </li>
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="mobile_edit" class="checkboxitself" name="mobile_edit" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Email</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li>
                                          <span class="checkboxtitle">View</span><input type="checkbox" id="email_view" class="checkboxitself" name="email_view" value="Yes">
                                       </li>
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="email_edit" class="checkboxitself" name="email_edit" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Dealer</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li>
                                          <span class="checkboxtitle">View</span><input type="checkbox" id="dealer_view" class="checkboxitself" name="dealer_view" value="Yes">
                                       </li>
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="dealer_edit" class="checkboxitself" name="dealer_edit" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Quoted Price</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li>
                                          <span class="checkboxtitle">View</span><input type="checkbox" id="quotedprice_view" class="checkboxitself" name="quotedprice_view" value="Yes">
                                       </li>
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="quotedprice_edit" class="checkboxitself" name="quotedprice_edit" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="acc_panel">
                     <button type="button" class="accordion">Renewal Table Access</button>
                     <div class="panel">
                        <div class="colaccess_wrapper">
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Fortinet</li>
                                 <li>
                                    <ul class="list-inline">
                                       <!-- <li>
                                          <span class="checkboxtitle">View</span><input type="checkbox" id="renewview" class="checkboxitself" name="renewview" value="Yes">
                                          </li> -->
                                       <li><span class="checkboxtitle">View</span><input type="checkbox" id="tablefortinet" class="checkboxitself" name="tablefortinet" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>EPS</li>
                                 <li>
                                    <ul class="list-inline">
                                       <!-- <li>
                                          <span class="checkboxtitle">View</span><input type="checkbox" id="renewview" class="checkboxitself" name="renewview" value="Yes">
                                          </li> -->
                                       <li><span class="checkboxtitle">View</span><input type="checkbox" id="tableeps" class="checkboxitself" name="tableeps" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="acc_panel">
                     <button type="button" class="accordion">Status Update Buttons</button>
                     <div class="panel">
                        <div class="colaccess_wrapper">
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Renew</li>
                                 <li>
                                    <ul class="list-inline">
                                       <!-- <li>
                                          <span class="checkboxtitle">View</span><input type="checkbox" id="renewview" class="checkboxitself" name="renewview" value="Yes">
                                          </li> -->
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="renewedit" class="checkboxitself" name="renewedit" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Upgrade</li>
                                 <li>
                                    <ul class="list-inline">
                                       <!-- <li>
                                          <span class="checkboxtitle">View</span><input type="checkbox" id="upgradeview" class="checkboxitself" name="upgradeview" value="Yes">
                                          </li> -->
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="upgradeedit" class="checkboxitself" name="upgradeedit" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Lost and Renew</li>
                                 <li>
                                    <ul class="list-inline">
                                       <!-- <li>
                                          <span class="checkboxtitle">View</span><input type="checkbox" id="lostandrenewview" class="checkboxitself" name="lostandrenewview" value="Yes">
                                          </li> -->
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="lostandrenewedit" class="checkboxitself" name="lostandrenewedit" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Lost and Upgrade</li>
                                 <li>
                                    <ul class="list-inline">
                                       <!-- <li>
                                          <span class="checkboxtitle">View</span><input type="checkbox" id="lostandupgradeview" class="checkboxitself" name="lostandupgradeview" value="Yes">
                                          </li> -->
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="lostandupgradeedit" class="checkboxitself" name="lostandupgradeedit" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Dont want to Renew</li>
                                 <li>
                                    <ul class="list-inline">
                                       <!-- <li>
                                          <span class="checkboxtitle">View</span><input type="checkbox" id="dontwanttorenewview" class="checkboxitself" name="dontwanttorenewview" value="Yes">
                                          </li> -->
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="dontwanttorenewedit" class="checkboxitself" name="dontwanttorenewedit" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="acc_panel">
                     <button type="button" class="accordion">Side Nav Links</button>
                     <div class="panel">
                        <div class="colaccess_wrapper">
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Renewal</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="renewalpage" class="checkboxitself" name="renewalpage" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Dealers</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="dealerpage" class="checkboxitself" name="dealerpage" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Support</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="supportpage" class="checkboxitself" name="supportpage" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Create User</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="createuserpage" class="checkboxitself" name="createuserpage" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Upload</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="uploadpage" class="checkboxitself" name="uploadpage" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Stock Summary</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="stocksummary" class="checkboxitself" name="stocksummary" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Outstandings</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="outstandings" class="checkboxitself" name="outstandings" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Sales Report</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="salesreport" class="checkboxitself" name="salesreport" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Sales Register</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="salesregister" class="checkboxitself" name="salesregister" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Suspense Management</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="suspense" class="checkboxitself" name="suspense" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Funnel</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="funnel" class="checkboxitself" name="funnel" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="acc_panel">
                     <button type="button" class="accordion">Suspense</button>
                     <div class="panel">
                        <div class="colaccess_wrapper">
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Actions <br>Edit / Delete</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="suspense_actions" class="checkboxitself" name="suspense_actions" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Status Update</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="suspense_status" class="checkboxitself" name="suspense_status" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="acc_panel">
                     <button type="button" class="accordion">Funnel</button>
                     <div class="panel">
                        <div class="colaccess_wrapper">
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Actions <br>Edit / Delete</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="funnel_actions" class="checkboxitself" name="funnel_actions" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Status Update <br><span style="color: darkblue;">Edit / Delete</span> </li>
                                 <li>
                                    <ul class="list-inline">
                                       <li><span class="checkboxtitle">Edit</span><input type="checkbox" id="funnel_status" class="checkboxitself" name="funnel_status" value="Yes"></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <hr>
                           <div class="colitems right-border">
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
                     </div>
                  </div>
                  <div class="acc_panel" style="flex: 1 0 32%;">
                     <button type="button" class="accordion">Accounts</button>
                     <div class="panel" >
                        <div class="alert alert-info">
                           <strong>Notice!</strong> Select the cost centers who's report this user can see. 
                        </div>
                        <div class="colaccess_wrapper">
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Sales Report</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li>
                                          <div class="form-group">
                                             <select class="form-control" id="salesreport_access" name="salesreport_access[]" multiple="multiple">
                                                <?php for ($i=0; $i < count($all_costcentre); $i++) {  ?>
                                                <option value="<?php echo $all_costcentre[$i]['costcentre'];?>"><?php echo $all_costcentre[$i]['costcentre'];?></option>
                                                <?php  } ?>
                                             </select>
                                          </div>
                                       </li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Sales Register</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li>
                                          <div class="form-group">
                                             <select class="form-control" id="salesregister_access" name="salesregister_access[]" multiple="multiple">
                                                <?php for ($i=0; $i < count($all_costcentre); $i++) {  ?>
                                                <option value="<?php echo $all_costcentre[$i]['costcentre'];?>"><?php echo $all_costcentre[$i]['costcentre'];?></option>
                                                <?php  } ?>
                                             </select>
                                          </div>
                                       </li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                           <div class="colitems right-border">
                              <ul class="resp_ul">
                                 <li>Outstandings</li>
                                 <li>
                                    <ul class="list-inline">
                                       <li>
                                          <div class="form-group">
                                             <select class="form-control" id="outstandings_access" name="outstandings_access[]" multiple="multiple">
                                                <?php for ($i=0; $i < count($all_costcentre); $i++) {  ?>
                                                <option value="<?php echo $all_costcentre[$i]['costcentre'];?>"><?php echo $all_costcentre[$i]['costcentre'];?></option>
                                                <?php  } ?>
                                             </select>
                                          </div>
                                       </li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-lg-12">
               <label class="checkbox-inline">
               <input type="checkbox" id="checkAll"/>Select all access
               </label>
            </div>
         </div>
         <hr>
         <div class="form-group" style="text-align: center;">
            <button type="submit" name="submit" formaction="./crm_update_createuser.php" class="btn btns">Submit</button>
         </div>
      </form>
      <?php } else{ ?>
      <div class="alert alert-danger">
         <strong>Unauthorised Access !</strong> Uh hoo..You don't have access to view this page. Contact to Admin.
      </div>
      <?php } ?>
   </div>
</div>
<script type="text/javascript">
   $("#checkAll").change(function () {
     $("form input:checkbox").prop('checked', $(this).prop("checked"));
   });
</script>
<script>
   $("#email").keyup(function(event){
     var username = $(this).val().trim();
     if(username != ''){
   
        $.ajax({
         url: 'check_createuser.php',
         type: 'post',
         data: {username: username},
         success: function(response){
   
           $('#uname_response').html(response);
   
   
        }
     });
     }
     else{
        $("#uname_response").html("");
     }
   
   });
   
   
   $(document).ready(function (){
      $("#createuser_frm").submit(function(e){
        var username = $("#uname_response").text().trim();
        if ((username === "Taken.") || (username === '') || (username === null) || (username === undefined))
        {
         $("#email").focus();
         $("#email").attr('placeholder', 'This email already Taken !');
         $("#email").attr('style', 'border:1px solid red !important');
         $("#email").addClass("animate__animated animate__shakeX animate__repeat-1 ");
         e.preventDefault();
      }
      else {
         $("#createuser_frm").submit();
      }
   });
   });
   
   
   
   
   // ---------------------------------Delete Records   $("div.header").css("margin");
   
   $(document).ready(function(){
   
    $('.outsidetable').on('scroll', function() {
       var p = $( "th:eq( 2 )" ).position();
       console.log(p.left);
       if (p.left > 90) {
         $( "th:eq(2),th:eq(1)" ).css("background-color", "#567AED");
         $(".lasst").addClass("shadow");
       }
       else{
         $( "th:eq(2),th:eq(1)" ).css("background-color", "#0a1157");
         $(".lasst").removeClass("shadow");
       }
    });
   });
   
   
</script>
<script>
   var acc = document.getElementsByClassName("accordion");
   var i;
   
   for (i = 0; i < acc.length; i++) {
     acc[i].addEventListener("click", function() {
       this.classList.toggle("active");
       var panel = this.nextElementSibling;
       if (panel.style.maxHeight) {
         panel.style.maxHeight = null;
      } else {
         panel.style.maxHeight = "1500px";
      } 
   });
   }
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
      $('#dealer_city').multiselect();
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
   numberDisplayed: 3,
   
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
   numberDisplayed: 3,
   
   // the separator for the list of selected items for mouse-over
   delimiterText: ', ',
   });
   
   
   
   
   
   
   
   
</script>
<?php include 'footer.php'; ?>