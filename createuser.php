<?php include 'config.php'?>
<?php include 'header.php'?>
<?php include 'navbar.php'?>
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
<style type="text/css">
   th:nth-child(2),
   td:nth-child(2)  {
   left: 0px;
   }
   th:nth-child(3),
   td:nth-child(3)  {
   left: 45px;
   }
   th:nth-child(2),th:nth-child(3){
   background-color: #0a1157;
   position: sticky;
   border: 1px solid white !important;
   z-index: 2;
   }
   td:nth-child(2),td:nth-child(3)  {
   position: sticky;
   background-color: white;
   z-index: 1;
   }
   table thead th {
   position: sticky;
   top: 0;
   color: white;
   z-index: 1;
   background: #0a1157;
   }
   .shadow {
   padding: 12px !important;
   }
</style>

<!-- <script>
   $(document).ready(function() {
      $(window).scroll(function() {
         $("th:nth-child(2)").addClass("highlight");
         $("td:nth-child(2)").addClass("highlight");
      });
   });
   
   </script> -->
<div class="container">
   <!-- ---------------Delete Record-------------------- -->
   <div class="container">
      <!-- Modal -->
      <div class="modal fade" id="deleterecords" role="dialog">
         <div class="modal-dialog modal-lg">
            <div class="modal-content" >
               <form action="" method="POST" id="deleterecordsform">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                     <h4 class="modal-title">Update Details</h4>
                  </div>
                  <div class="modal-body" id="info_deleterecords">
                  </div>
                  <div class="modal-footer">
                     <button type="button" class="btn btn-default  pull-left" data-dismiss="modal">Close</button>
                     <button type="submit"  class="btn btns pull-right" id="update_deleterecords">Delete</button>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
   <!-- Modal -->
   <div class="modal fade" id="create_usermodel" role="dialog">
      <div class="modal-dialog modal-lg">
         <div class="modal-content" >
            <form action="" method="POST" id="create_userform" >
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Update User Details</h4>
               </div>
               <div class="modal-body" id="info_create_user">
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default  pull-left" data-dismiss="modal">Close</button>
                  <button type="submit" class="btn btns pull-right" id="create_user">Update</button>
               </div>
            </form>
         </div>
      </div>
   </div>
</div>
<div class="container-fluid">
   <div class="right-part">
      <div class="row">
         <div class="col-lg-6"></div>
         <div class="col-lg-6">
            <ul class="list-inline" style="text-align: right;">
               <li><button onclick="location.href = './createnewuser.php';" type="button" id="addrecord" class="btn btns pull-left">Add User <i class="fas fa-user-plus btnicons"></i></button></li>
            </ul>
         </div>
      </div>
      <div class="row">
         <div class="rightpartitle">
            <span class="acttitle">Manage User</span>
         </div>
         <br>
         <div class="col-lg-12">
            <div class="outsidetable">
               <table class="table table-fixed table-bordered" id="myTable">
                  <?php
                     $userss = "SELECT * from crm_useraccess ";
                     $results = mysqli_query($con, $userss);
                     while($rows = mysqli_fetch_assoc($results))
                     $data[] = $rows;
                     $counnt = count($data);
                     $i = 0;
                     ?>
                  <thead>
                     <tr>
                        <th ></th>
                        <th>S.No</th>
                        <th >Email</th>
                        <th>Table EPS</th>
                        <th>Table Fortinet</th>
                        <th>In Sell View</th>
                        <th>In Sell Edit</th>
                        <th>Out Sell View</th>
                        <th>Out Sell Edit</th>
                        <th>Product Name View</th>
                        <th>Product Name Edit</th>
                        <th>Users View</th>
                        <th>Users Edit</th>
                        <th>Remarks View</th>
                        <th>Remarks Edit</th>
                        <th>Expiry Date View</th>
                        <th>Expiry Date Edit</th>
                        <th>Company View</th>
                        <th>Company Edit</th>
                        <th>Contact Person View</th>
                        <th>Contact Person Edit</th>
                        <th>Mobile View</th>
                        <th>Mobile Edit</th>
                        <th>Email View</th>
                        <th>Email Edit</th>
                        <th>Dealer View</th>
                        <th>Dealer Edit</th>
                        <th>Quoted Price View</th>
                        <th>Quoted Price Edit</th>
                        <th>Renew</th>
                        <th>Upgrade</th>
                        <th>Lost and Renew</th>
                        <th>Lost and Upgrade</th>
                        <th>Dont want to Renew</th>
                        <th>Renewal page</th>
                        <th>Dealer Page</th>
                        <th>Support Page</th>
                        <th>Create user Page</th>
                        <th>Upload Page</th>
                        <th>Stock Summary Page</th>
                        <th>Outstanding page</th>
                        <th>Sales Report</th>
                        <th>Sales Register</th>
                        <th>Suspense Page</th>
                        <th>Funnel Page</th>
                        <th>Suspense Actions</th>
                        <th>Suspense Status</th>
                        <th>Funnel Actions</th>
                        <th>Funnel Status</th>
                        <th>Updated on</th>
                     </tr>
                  </thead>
                  <tbody>
                     <?php 
                        if ($counnt!=0) {
                           
                           while($i<$counnt){
                              
                              ?>
                     <tr>
                        <td class="acticonfirst">
                           <div class="dropdown">
                              <button class="btn  dropdown-toggle" type="button" data-toggle="dropdown" style="padding: 0px 5px;font-size: 12px;">
                              <span class="acticon"><i class="fas fa-ellipsis-v"></i></span>
                              <ul class="dropdown-menu">
                                 <li class="updaterecord create_user" id="<?php echo($data[$i]["email"]); ?>"><span class="dropdown-menuicn"><i class="fas fa-pencil-alt"></i></span><span class="dropdown-menutxt">Update</span></li>
                                 <li class="deleterecords" id="<?php echo($data[$i]["email"]); ?>"><span class="dropdown-menuicn"><i class="fas fa-trash-alt"></i></span><span class="dropdown-menutxt">Delete</span></li>
                              </ul>
                           </div>
                        </td>
                        <td><?php echo $i+1;?></td>
                        <td class="lasst"><?php echo($data[$i]["email"]); ?></td>
                        <td ><input   type="checkbox" name="tableeps" id="tableeps" value="yes" <?php echo ($data[$i]["crm_eps"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="tablefortinet" id="tablefortinet" value="yes" <?php echo ($data[$i]["crm_fortinet"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="insell" id="insell" value="yes" <?php echo ($data[$i]["insellview"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="insell" id="insell" value="yes" <?php echo ($data[$i]["inselledit"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="outsell" id="outsell" value="yes" <?php echo ($data[$i]["outsellview"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="outsell" id="outsell" value="yes" <?php echo ($data[$i]["outselledit"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="product_name_view" id="product_name_view" value="yes" <?php echo ($data[$i]["product_name_view"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="product_name_edit" id="product_name_edit" value="yes" <?php echo ($data[$i]["product_name_edit"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="users_view" id="users_view" value="yes" <?php echo ($data[$i]["users_view"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="users_edit" id="users_edit" value="yes" <?php echo ($data[$i]["users_edit"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="remarks_view" id="remarks_view" value="yes" <?php echo ($data[$i]["remarks_view"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="remarks_edit" id="remarks_edit" value="yes" <?php echo ($data[$i]["remarks_edit"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="expiry_date_view" id="expiry_date_view" value="yes" <?php echo ($data[$i]["expiry_date_view"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="expiry_date_edit" id="expiry_date_edit" value="yes" <?php echo ($data[$i]["expiry_date_edit"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="company_view" id="company_view" value="yes" <?php echo ($data[$i]["company_view"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="company_edit" id="company_edit" value="yes" <?php echo ($data[$i]["company_edit"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="contact_person_view" id="contact_person_view" value="yes" <?php echo ($data[$i]["contact_person_view"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="contact_person_edit" id="contact_person_edit" value="yes" <?php echo ($data[$i]["contact_person_edit"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="mobile_view" id="mobile_view" value="yes" <?php echo ($data[$i]["mobile_view"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="mobile_edit" id="mobile_edit" value="yes" <?php echo ($data[$i]["mobile_edit"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="email_view" id="email_view" value="yes" <?php echo ($data[$i]["email_view"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="email_edit" id="email_edit" value="yes" <?php echo ($data[$i]["email_edit"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="dealer_view" id="dealer_view" value="yes" <?php echo ($data[$i]["dealer_view"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="dealer_edit" id="dealer_edit" value="yes" <?php echo ($data[$i]["dealer_edit"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="quotedprice_view" id="quotedprice_view" value="yes" <?php echo ($data[$i]["quotedprice_view"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="quotedprice_edit" id="quotedprice_edit" value="yes" <?php echo ($data[$i]["quotedprice_edit"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="renew" id="renew" value="yes" <?php echo ($data[$i]["renewedit"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="upgrade" id="upgrade" value="yes" <?php echo ($data[$i]["upgradeedit"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="lostandrenew" id="lostandrenew" value="yes" <?php echo ($data[$i]["lostandrenewedit"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input   type="checkbox" name="lostandupgrade" id="lostandupgrade" value="yes" <?php echo ($data[$i]["lostandupgradeedit"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input type="checkbox" name="dontwanttorenew" id="dontwanttorenew" value="yes" <?php echo ($data[$i]["dontwanttorenewedit"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input type="checkbox" name="renewalpage" id="renewalpage" value="yes" <?php echo ($data[$i]["renewalpage"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input type="checkbox" name="dealerpage" id="dealerpage" value="yes" <?php echo ($data[$i]["dealerpage"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input type="checkbox" name="supportpage" id="supportpage" value="yes" <?php echo ($data[$i]["supportpage"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input type="checkbox" name="createuserpage" id="createuserpage" value="yes" <?php echo ($data[$i]["createuserpage"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input type="checkbox" name="createuserpage" id="createuserpage" value="yes" <?php echo ($data[$i]["uploadpage"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input type="checkbox" name="stocksummary" id="stocksummary" value="yes" <?php echo ($data[$i]["stocksummary"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input type="checkbox" name="outstandings" id="outstandings" value="yes" <?php echo ($data[$i]["outstandings"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input type="checkbox" name="salesreport" id="salesreport" value="yes" <?php echo ($data[$i]["salesreport"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input type="checkbox" name="salesregister" id="salesregister" value="yes" <?php echo ($data[$i]["salesregister"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input type="checkbox" name="suspense" id="suspense" value="yes" <?php echo ($data[$i]["suspense"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input type="checkbox" name="funnel" id="funnel" value="yes" <?php echo ($data[$i]["funnel"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input type="checkbox" name="suspense_actions" id="suspense_actions" value="yes" <?php echo ($data[$i]["suspense_actions"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input type="checkbox" name="suspense_status" id="suspense_status" value="yes" <?php echo ($data[$i]["suspense_status"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input type="checkbox" name="funnel_actions" id="funnel_actions" value="yes" <?php echo ($data[$i]["funnel_actions"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><input type="checkbox" name="funnel_status" id="funnel_status" value="yes" <?php echo ($data[$i]["funnel_status"]=='Yes' ? 'checked' : '');?>></td>
                        <td ><?php echo($data[$i]["createon"]); ?></td>
                        <?php  
                           $i++;
                           }
                           
                           ?>
                     </tr>
                     <?php }
                        else {
                           ?>
                     <tr>
                        <td><?php echo 'No records found' ?></td>
                     </tr>
                     <?php }?>
                  </tbody>
               </table>
            </div>
         </div>
      </div>
   </div>
</div>
<script>
   $(document).ready(function(){
      
      $(document).on('click','.deleterecords', function(){
         
         var edit_id = $(this).attr('id');
         $.ajax({
            url:"edit_data_deleterecord_createuser.php",
            type:"POST",
            data:{edit_id:edit_id},
            success:function(data){
               $('#info_deleterecords').html(data);
               $('#deleterecords').modal('show');
            }
         })
      });
      $(document).on('click','#update_deleterecords', function(){
         $.ajax({
            url:"save_update_deleterecord_createuser.php",
            type:"POST",
            data:$('#deleterecordsform').serialize(),
            success:function(data){
               
               $('#deleterecords').modal('hide');
               setInterval('location.reload()', 1000); 
            }
         });
      });
   });
   $(document).ready(function(){
      $(document).on('click','.create_user', function(){
         
         var edit_id = $(this).attr('id');
         $.ajax({
            url:"edit_data_create_user.php",
            type:"POST",
            data:{edit_id:edit_id},
            success:function(data){
               
               $('#info_create_user').html(data);
               $('#create_usermodel').modal('show');
            }
         })
      });
      $(document).on('click','#create_user', function(){
         
         $.ajax({
            url:"save_create_user.php",
            type:"POST",
            data:$('#create_userform').serialize(),
            success:function(data){
               alert(data)
               // $('#create_usermodel').modal('hide');
               // setInterval('location.reload()', 1000); 
            }
         });
         
      });
   });
</script>
<?php include 'footer.php'?>