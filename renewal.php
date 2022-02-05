<?php include 'crm_userauth.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>
<!-- <?php include 'getpresent.php'; ?> -->
<?php 
$currentdate =  "SELECT * FROM crm_eps where CAST(renewed_at AS DATE) = curdate( ) union SELECT * FROM crm_fortinet where CAST(renewed_at AS DATE)= curdate( )";
$todayss = mysqli_query($con, $currentdate);
while($rtodayss = mysqli_fetch_assoc($todayss))
   $ttodays[] = $rtodayss;
$count_currentdate = count($ttodays);


       // echo "<script>alert('$count_currentdate');</script>"; 

$weekdate =  "SELECT * FROM crm_eps where `renewed_at` BETWEEN DATE_SUB( now( ) ,INTERVAL 7 DAY ) AND now( )
union 
SELECT * FROM crm_fortinet where `renewed_at` BETWEEN DATE_SUB( now( ) ,INTERVAL 7 DAY ) AND now( )";
$weeks = mysqli_query($con, $weekdate);
while($rweeks = mysqli_fetch_assoc($weeks))
 $tweeks[] = $rweeks;

$count_weekdate = count($tweeks);

$monthdate =  "SELECT * FROM crm_eps where `renewed_at` BETWEEN DATE_SUB( now( ) ,INTERVAL 30 DAY ) AND now( )
union 
SELECT * FROM crm_fortinet where `renewed_at` BETWEEN DATE_SUB( now( ) ,INTERVAL 30 DAY ) AND now( )";
$months = mysqli_query($con, $monthdate);
while($rmonths = mysqli_fetch_assoc($months))
 $tmonths[] = $rmonths;

$count_monthdate = count($tmonths);

$yeardate =  "SELECT * FROM crm_eps where `modify_on` BETWEEN DATE_SUB( now( ) ,INTERVAL 365 DAY ) AND now( )
union 
SELECT * FROM crm_fortinet where `modify_on` BETWEEN DATE_SUB( now( ) ,INTERVAL 365 DAY ) AND now( )";
$years = mysqli_query($con, $yeardate);
while($ryears = mysqli_fetch_assoc($years))
 $tyears[] = $ryears;
$count_yeardate = count($tyears);






?>
<style type="text/css">
ul#inlineform li {
   display:inline;
   float: left;
}
ul{
   padding-inline-start: 0px;
}
.selectwidth{
   min-width: 325px;
}
   /*tr:nth-child(even) {
   background-color: #f2f2f2;
   }*/
   /*th{
   white-space: nowrap;
   text-align: left;
   background-color: white;
   z-index: 1;
   border-bottom: none !important;
   }*/
   td>.btns{
      padding: 2px 10px;
   }
   /*td{
   white-space: nowrap;
   text-align: left;
   max-width: 220px;
   font-size: 12px;
   word-wrap:break-word;
   }*/
   .errormessage{
      position: fixed;
      top: 0px;
      left: 0;
      right: 0;
      width: 100%;
      z-index: 1;
   }
   .updaterecord,.deleterecord{
      padding: 5px;
      font-size: 10px;
   }
   /*th:nth-child(1),
   td:nth-child(1)  {
   left: 0px;
   }
   th:nth-child(2),
   td:nth-child(2)  {
   left: 48px;
   }
   th:nth-child(3),
   td:nth-child(3)  {
   left: 155px;
   }
   th:nth-child(4),
   td:nth-child(4)  {
   left: 253px;
   }
   th:nth-child(5),
   td:nth-child(5)  {
   left: 364px;
   }
   td:nth-child(1)  {
   left: 0px;
   z-index: 100;
   position: sticky;
   }
   td:nth-child(2)  {
   left: 48px;
   z-index: 100;
   position: sticky;
   }
   td:nth-child(3)  {
   left: 155px;
   z-index: 100;
   position: sticky;
   }
   td:nth-child(4)  {
   left: 253px;
   z-index: 100;
   position: sticky;
   }
   td:nth-child(5)  {
   left: 364px;
   z-index: 100;
   position: sticky;
   }
   th:nth-child(1)  {
   z-index: 102;
   }
   th:nth-child(2)  {
   z-index: 102;
   }
   th:nth-child(3)  {
   z-index: 102;
   }
   th:nth-child(4)  {
   z-index: 102;
   }
   th:nth-child(5)  {
   z-index: 102;
   }
   tr:nth-of-type(even) td:nth-of-type(1) { background-color: #f2f2f2; }
   tr:nth-of-type(odd) td:nth-of-type(1) { background-color: white; }
   tr:nth-of-type(even) td:nth-of-type(2) { background-color: #f2f2f2; }
   tr:nth-of-type(odd) td:nth-of-type(2) { background-color: white; }
   tr:nth-of-type(even) td:nth-of-type(3) { background-color: #f2f2f2; }
   tr:nth-of-type(odd) td:nth-of-type(3) { background-color: white; }
   tr:nth-of-type(even) td:nth-of-type(4) { background-color: #f2f2f2; }
   tr:nth-of-type(odd) td:nth-of-type(4) { background-color: white; }
   tr:nth-of-type(even) td:nth-of-type(5) { background-color: #f2f2f2; }
   tr:nth-of-type(odd) td:nth-of-type(5) { background-color: white; }*/
</style>
<input type="hidden" id="hiddencontainer" name="hiddencontainer"/>
<div class="container" style="display: none;">
   <div class="errormessage">
      <div class="alert alert-danger alert-dismissible">
         <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
         <strong>Stop !</strong> You skipped some rows. Please update records by serial number.
      </div>
   </div>
</div>
<div class="container">
   <!-- Modal -->
   <div class="modal fade" id="quotemodal" role="dialog">
      <div class="modal-dialog modal-lg">
         <div class="modal-content" >
            <form action="" method="POST" id="quoteform">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Quote</h4>
               </div>
               <div class="modal-body" id="info_quote">
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default  pull-left" data-dismiss="modal">Close</button>
                  <button type="submit"  class="btn btns pull-right" id="update_updaterecordss">Update</button>
               </div>
            </form>
         </div>
      </div>
   </div>
</div>
<div class="container">
   <!-- Modal -->
   <div class="modal fade" id="holdmodal" role="dialog">
      <div class="modal-dialog modal-lg">
         <div class="modal-content" >
            <form action="" method="POST" id="holdform">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Hold</h4>
               </div>
               <div class="modal-body" id="info_hold">
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default  pull-left" data-dismiss="modal">Close</button>
                  <button type="submit"  class="btn btns pull-right" id="update_hold">Update</button>
               </div>
            </form>
         </div>
      </div>
   </div>
</div>
<div class="container">
   <!-- Modal -->
   <div class="modal fade" id="mailmodal" role="dialog">
      <div class="modal-dialog modal-lg">
         <div class="modal-content" >
            <form action="" method="POST" id="mailform">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Mail</h4>
               </div>
               <div class="modal-body" id="info_mail">
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default  pull-left" data-dismiss="modal">Close</button>
                  <!-- <button type="submit"  class="btn btns pull-right" id="update_mail">Update</button> -->
               </div>
            </form>
         </div>
      </div>
   </div>
</div>
<div class="container">
   <!-- Modal -->
   <div class="modal fade" id="updaterecord" role="dialog">
      <div class="modal-dialog modal-lg">
         <div class="modal-content" >
            <form action="" method="POST" id="updaterecordform">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Update Record</h4>
               </div>
               <div class="modal-body" id="info_updaterecord">
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default  pull-left" data-dismiss="modal">Close</button>
                  <button type="submit"  class="btn btns pull-right" id="update_updaterecord">Update</button>
               </div>
            </form>
         </div>
      </div>
   </div>
</div>
<!-- ---------------Delete Record-------------------- -->
<div class="container">
   <!-- Modal -->
   <div class="modal fade" id="deleterecord" role="dialog">
      <div class="modal-dialog modal-lg">
         <div class="modal-content" >
            <form action="" method="POST" id="deleterecordform">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Delete Record</h4>
               </div>
               <div class="modal-body" id="info_deleterecord">
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default  pull-left" data-dismiss="modal">Close</button>
                  <button type="submit"  class="btn btns pull-right" id="update_deleterecord">Delete</button>
               </div>
            </form>
         </div>
      </div>
   </div>
</div>
<!-- ------------------------------------ -->
<div class="container">
   <!-- Modal -->
   <div class="modal fade" id="renew" role="dialog">
      <div class="modal-dialog modal-lg">
         <div class="modal-content" >
            <form action="" method="POST" id="renewform">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Renew</h4>
               </div>
               <div class="modal-body" id="info_renew">
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default  pull-left" data-dismiss="modal">Close</button>
                  <button type="submit" class="btn btns pull-right" id="update">Update</button>
               </div>
            </form>
         </div>
      </div>
   </div>
</div>
<div class="container">
   <!-- Modal -->
   <div class="modal fade" id="upgrade" role="dialog">
      <div class="modal-dialog modal-lg">
         <div class="modal-content" >
            <form action="" method="POST" id="upgradeform">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Upgrade</h4>
               </div>
               <div class="modal-body" id="info_upgrade">
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default  pull-left" data-dismiss="modal">Close</button>
                  <button type="submit" class="btn btns pull-right" id="update1">Update</button>
               </div>
            </form>
         </div>
      </div>
   </div>
</div>
<div class="container">
   <!-- Modal -->
   <div class="modal fade" id="lostandupgrademodel" role="dialog">
      <div class="modal-dialog modal-lg">
         <div class="modal-content" >
            <form action="" method="POST" id="lostandupgradeform" role="form">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Lost and Upgrade</h4>
               </div>
               <div class="modal-body" id="info_lostandupgrade">
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default  pull-left" data-dismiss="modal">Close</button>
                  <button type="submit" class="btn btns pull-right" id="lostandupgrade">Update</button>
               </div>
            </form>
         </div>
      </div>
   </div>
</div>
<div class="container">
   <!-- Modal -->
   <div class="modal fade" id="lostandrenewmodel" role="dialog">
      <div class="modal-dialog modal-lg">
         <div class="modal-content" >
            <form action="" method="POST" id="lostandrenewform" role="form">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Lost and Renew</h4>
               </div>
               <div class="modal-body" id="info_lostandrenew">
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default  pull-left" data-dismiss="modal">Close</button>
                  <button type="submit" class="btn btns pull-right" id="lostandrenew">Update</button>
               </div>
            </form>
         </div>
      </div>
   </div>
</div>
<div class="container">
   <!-- Modal -->
   <div class="modal fade" id="donotwanttorenewmodel" role="dialog">
      <div class="modal-dialog modal-lg">
         <div class="modal-content" >
            <form action="" method="POST" id="donotwanttorenewform" role="form">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Do not want to renew</h4>
               </div>
               <div class="modal-body" id="info_donotwanttorenew">
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default  pull-left" data-dismiss="modal">Close</button>
                  <button type="submit" class="btn btns pull-right" id="donotwanttorenew">Update</button>
               </div>
            </form>
         </div>
      </div>
   </div>
</div>
<style type="text/css">
.headinngs{
   text-align: center;
   padding: 5% 0 2% 0;
}
.modal-title{
   text-align: center;
}
</style>
<div class="container-fluid">
   <div class="right-part" >
      <div class="rightpartitle">
         <span class="acttitle">Renewal </span>
      </div>
      <br>

      <?php 
      $ueraccessquery = "SELECT * from crm_useraccess where email= '" . $_SESSION['email'] . "' ";
      $result2 = mysqli_query($con, $ueraccessquery);
      while ($row3 = mysqli_fetch_assoc($result2)) 
         $user_access[] = $row3;

      $sql = "SELECT email, password,usertype FROM crm_login where email = '".$_SESSION['email']."' ";
      $result = mysqli_query($con, $sql) or die("Error: " . mysqli_error($con));
      while($rw= mysqli_fetch_assoc($result))
         $row[] = $rw;
      ?>
      <?php if ($row[0]['usertype']=='Admin' || $user_access[0]['renewalpage']== 'Yes') { ?>
         <div class="row">
            <div class="col-lg-12">
               <div class="box_wrapper">
                  <!-- <div class="h4" style="text-align: center;">Renewal </div> -->
                  <div class="stat_wrapper ">
                     <div class="stat_items box1">
                        <div class="statcountt"><?php echo $count_currentdate; ?></div>
                        <div class="stattimee">Today</div>
                     </div>
                     <div class="stat_items box2">
                        <div class="statcountt"><?php echo $count_weekdate; ?></div>
                        <div class="stattimee">This Week</div>
                     </div>
                     <div class="stat_items box3">
                        <div class="statcountt"><?php echo $count_monthdate; ?></div>
                        <div class="stattimee">This Month</div>
                     </div>
                     <div class="stat_items box4">
                        <div class="statcountt"><?php echo $total_records; ?></div>
                        <!-- <div class="statcountt"><span id="showttlrecord"></span></div> -->
                        <div class="stattimee">Records</div>
                     </div>
                  </div>
               </div>
               <br>
               <style>
               .title_wrapper{
                  display: flex;
                  flex-direction: row;
                  justify-content: space-between;
               }
            </style>
            <!-- <div class="box_wrapper">
               <div class="title_wrapper">
                  <div class="title_items">
                     <div class="h4" style="text-align: center;">Stats</div>
                  </div>
                  <div class="title_items">
                     <form class="form-inline" action="">
                        <div class="form-group">
                         <label for="usr"><small>Start Date</small>:</label><br>
                         <input type="date" value="<?php echo date("Y-m-d", strtotime('-30 days'));?>"  class="form-control input-sm" name="start_date" id="start_date">
                      </div>
                      <div class="form-group">
                         <label for="usr"><small>End Date</small>:</label><br>
                         <input type="date" value="<?php echo date("Y-m-d");?>" class="form-control input-sm" name="end_date" id="end_date">
                      </div>
                   </form>
                </div>
               </div>
               <br>
               
               <div id="circle_div">
               
               </div>
            </div> -->
         </div>
         <!-- <div class="col-lg-6">
            <div class="box_wrapper">
               <div class="title_wrapper">
                  <div class="title_items">
                     <div class="h4" style="text-align: center;">Renewal</div>
                  </div>
                  <div class="title_items">
                     <form class="form-inline" action="">
                        <div class="form-group">
                         <select class="form-control input-sm" id="updategraph">
                          <option selected  value="7">Past 7 days</option>
                          <option value="30">Past 30 days</option>
                          <option value="90">Past 3 months</option>
                          
                       </select>
                    </div>
                 </form>
              </div>
            </div>
            
            <div id="graphs"></div>
            </div>
            
         </div> -->
      </div>
      <hr>
      <div class="row">
         <div class="col-lg-6">
            <div class="input-group">
               <ul class="list-inline">
                  <li>
                     <div class="input-group">
                        <span class="input-group-addon"><i class="fas fa-search"></i></span>
                        <input type="text" id="myInput" class="form-control "  placeholder="Search ..." />
                     </div>
                  </li>
                  <li>
                     <span class="recordcount"> </span>
                  </li>
               </ul>
            </div>
         </div>
         <div class="col-lg-6">
            <ul class="list-inline" style="text-align: right;">
               <li><button onclick="location.href = './addrenewal.php';" type="button" id="addrecord" class="btn btns ">Add  Renewal <i class="fas fa-plus-circle"></i></button></li>
               <li><?php 
               if (isset($_SESSION['email']) && ($_SESSION['usertype']=='Admin')) { ?>
                  <button onclick="location.href = './exporttabledatarenewal.php';" type="button" id="downloaddata" class="btn btns ">Export data <i class="fas fa-file-download btnicons"></i></button><?php } ?>
               </li>
            </ul>
         </div>
      </div>
      <?php if (isset($_SESSION['email']) && ($_SESSION['usertype']=='Admin')) {  ?>
         <div class="row">
            <div class="col-lg-3">
               <button type="button" id="advbutton" class="btn btns">Show Filtered Data</button>
            </div>
            <div class="col-lg-9">
               <form class="form-inline" id="advsearch" style="display: none;text-align: right;" >
                  <div class="form-group">
                     <select class="form-control selectwidth" name="yearss" id="yearss">
                        <option disabled="true" selected="true">Select Year</option>
                        <option value="All">All</option>
                        <?php
                        $records = mysqli_query($con, "SELECT DISTINCT year(expiry_date)  FROM crm_eps UNION SELECT DISTINCT year(expiry_date)  FROM crm_fortinet order by 1 asc ");  // Use select query here 
                        
                        while($data = mysqli_fetch_array($records))
                        {
                            echo "<option value='". $data['year(expiry_date)'] ."'>" .$data['year(expiry_date)'] ."</option>";  // displaying data in option menu
                         }   
                         ?> 
                      </select>
                   </div>
                   <div class="form-group">
                     <select class="form-control selectwidth" name="quarter" id="quarter">
                        <option disabled="true" selected="true">Select Quarter</option>
                        <option value="1">Quarter 1</option>
                        <option value="2">Quarter 2</option>
                        <option value="3">Quarter 3</option>
                        <option value="4">Quarter 4</option>
                     </select>
                  </div>
                  <button type="submit" id="filterrenewaltable" class="btn btn-default">Submit</button>
                  <button type="button" id="clear" class="btn btn-warning">Clear</button>
               </form>
            </div>
         </div>
      <?php }  ?>
      <br>
      <div class="row">
         <div class="col-lg-12">
            <div class="outsidetable">
               <table class="table table-fixed table-bordered" id="myTable">
                  <thead>
                     <tr >
                        <th >S.No<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <th>Actions<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <th>Update<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <?php if ($product_dat[0]["product_name_view"] == 'Yes' || ($_SESSION['usertype']=='Admin')) {?>
                           <th >Product Name <span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <?php }?>
                        <th >Serial No.<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <?php if ($product_dat[0]["remarks_view"] == 'Yes' || ($_SESSION['usertype']=='Admin')) {?>
                           <th >Remarks<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <?php }?>
                        <?php if ($product_dat[0]["expiry_date_view"] == 'Yes' || ($_SESSION['usertype']=='Admin')) {?>
                           <th  >Expiring On<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <?php }?>
                        <?php if ($product_dat[0]["insellview"] == 'Yes' || ($_SESSION['usertype']=='Admin')) {?>
                           <th  >In<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <?php }?>
                        <?php if ($product_dat[0]["outsellview"] == 'Yes' || ($_SESSION['usertype']=='Admin')) { ?>
                           <th  >Out<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <?php }?>
                        <?php if ($product_dat[0]["company_view"] == 'Yes' || ($_SESSION['usertype']=='Admin')) { ?>
                           <th >Company<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <?php }?>
                        <?php if ($product_dat[0]["contact_person_view"] == 'Yes' || ($_SESSION['usertype']=='Admin')) { ?>
                           <th  >Contact Person<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <?php }?>
                        <?php if ($product_dat[0]["mobile_view"] == 'Yes' || ($_SESSION['usertype']=='Admin')) { ?>
                           <th  >Mobile<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <?php }?>
                        <?php if ($product_dat[0]["email_view"] == 'Yes' || ($_SESSION['usertype']=='Admin')) { ?>
                           <th  >Email<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <?php }?>
                        <?php if ($product_dat[0]["dealer_view"] == 'Yes' || ($_SESSION['usertype']=='Admin')) { ?>
                           <th  >Dealer<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <?php }?>
                        <?php if ($product_dat[0]["quotedprice_view"] == 'Yes' || ($_SESSION['usertype']=='Admin')) { ?>
                           <th >Quoted Price<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <?php }?>
                        <?php if ($product_dat[0]["users_view"] == 'Yes' || ($_SESSION['usertype']=='Admin')) { ?>
                           <th >Users<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <?php }?>
                        <th >Designation<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <th >Landline<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <th >Address1<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <th  >Address2 <span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <th >City<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                        <th >State<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                     </tr>
                  </thead>
                  <tbody id="tbodys">
                     <div id="loadingss">
                        <tr>
                           <td colspan="6">
                              <!-- <img id="loading-image" src="./img/Preloader_11.gif" alt="Loading..." /> -->
                              <h4>Loading...</h4>
                           </td>
                        </tr>
                     </div>
                  </tbody>
               </table>
            </div>
         </div>
      </div>
      <?php } else{ ?>
      <div class="alert alert-danger">
         <strong>Unauthorised Access !</strong> Uh hoo..You don't have access to view this page. Contact to Admin.
      </div>
   <?php } ?>


</div>
</div>
<style type="text/css">
.holds{
   background: #ffcb0c;
   color: black;
}
.quoteds{
   background: #f62d51;
   color: white;
}
.statuss{
   background: white;
   color: black;
}
</style>
<style type="text/css">
.accordionnbtn {
   cursor: pointer;
   padding: 5px 10px;
   width: 90px;
   border: none;
   box-shadow: 0px 0px 10px 0px rgba(128,121,128,0.58);
   border-radius: 5px;
   text-align: left;
   outline: none;
   margin-bottom: 1%;
   transition: all .5s ease-out;
}
.accordionnbtn:after {
   content: '\002B';
   font-weight: bold;
   float: right;
   margin-left: 5px;
}
/*.alert{
   left: 0;
   margin: auto; 
   position: absolute; 
   right: 0;
   text-align: center;
   top: 1em;
   display: none;
   width: 80%;
   z-index: 1; 
}*/
</style>
<script>
   $("recordcount").hide();
   $(document).ready(function(){
      $('#myTable').find('tr').click( function(){
         var rownumber = $(this).index()+1;
         if (rownumber>1) {
           var skippedrow = $(this).index();
           $(".alert-danger").fadeTo(5000, 500).slideUp(500, function(){
            $(".alert-danger").slideUp(500);
         });
                         // alert('please update records by serial number.<br> You skipped '+ skippedrow+ ' records.' );
                      }

                   });
      $("#advbutton").click(function(){
        $("#advsearch").slideToggle();
     });
   });
   var cccc =0;
   function filterTable(event) {
    var cccc = 0;
    var filter = event.target.value.toUpperCase();
    var rows = document.querySelector("#myTable tbody").rows;
    var colCount = $("#myTable tr th").length;
        // alert(colCount);
        
        for (var i = 0; i < rows.length; i++) {

         var firstCol = rows[i].cells[0].textContent.toUpperCase();
         var secondCol = rows[i].cells[1].textContent.toUpperCase();
         var thirdCol = rows[i].cells[2].textContent.toUpperCase();
         var forthCol = rows[i].cells[3].textContent.toUpperCase();

         var ccccccccc = rows[i].cells[4].textContent.toUpperCase();
         var sixthCol = rows[i].cells[5].textContent.toUpperCase();
         var seventhCol = rows[i].cells[6].textContent.toUpperCase();
         var eightcol = rows[i].cells[7].textContent.toUpperCase();
         var ninethcol = rows[i].cells[8].textContent.toUpperCase();
         var tenthcol = rows[i].cells[9].textContent.toUpperCase();
         var elecol = rows[i].cells[10].textContent.toUpperCase();
         var twecol = rows[i].cells[11].textContent.toUpperCase();
         var thircol = rows[i].cells[12].textContent.toUpperCase();
         var forteenCol = rows[i].cells[13].textContent.toUpperCase();
         var fifteen = rows[i].cells[14].textContent.toUpperCase();
         var sixteen = rows[i].cells[15].textContent.toUpperCase();
         var seventeen = rows[i].cells[16].textContent.toUpperCase();
         var eighteen = rows[i].cells[17].textContent.toUpperCase();
         var ninteen = rows[i].cells[18].textContent.toUpperCase();
         var twenty = rows[i].cells[19].textContent.toUpperCase();


         if (firstCol.indexOf(filter) > -1 || 
          secondCol.indexOf(filter) > -1|| 
          thirdCol.indexOf(filter) > -1|| 
          forthCol.indexOf(filter) > -1|| 
          ccccccccc.indexOf(filter) > -1|| 
          sixthCol.indexOf(filter) > -1|| 
          seventhCol.indexOf(filter) > -1|| 
          eightcol.indexOf(filter) > -1|| 
          ninethcol.indexOf(filter) > -1|| 
          tenthcol.indexOf(filter) > -1|| 
          elecol.indexOf(filter) > -1|| 
          twecol.indexOf(filter) > -1|| 
          thircol.indexOf(filter) > -1|| 
          forteenCol.indexOf(filter) > -1|| 
          fifteen.indexOf(filter) > -1|| 
          sixteen.indexOf(filter) > -1|| 
          seventeen.indexOf(filter) > -1|| 
          eighteen.indexOf(filter) > -1|| 
          ninteen.indexOf(filter) > -1|| 
          twenty.indexOf(filter) > -1) {
          rows[i].style.display = "";
       cccc++;
    } else {
       rows[i].style.display = "none";
    }   

 }
 console.log ( cccc );
 $(".recordcount").fadeIn().html('Records:' + cccc);
}
document.querySelector('#myInput').addEventListener('keyup', filterTable, false);
$(document).ready(function(){
   $.ajax({
      url:"getrenewaldata.php",
      type:"POST",
      beforeSend: function(){
    // Show image container
    $("#loadingss").show();
 },
 success:function(data){
   $("#tbodys").html(data);
           // alert(data); 
           var table = document.getElementById("myTable");
      var tbodyRowCount = table.tBodies[0].rows.length; // 3
      console.log(tbodyRowCount);
      document.getElementById('showttlrecord').innerHTML =tbodyRowCount;
      // document.getElementById('hiddencontainer').value = tbodyRowCount;
      //   alert(tbodyRowCount);
   },
   complete:function(data){
    // Hide image container
    $("#loadingss").hide();
 }

});
   return false;
   
   
});


</script>
<script>
   // alert(document.getElementById('start_date').value);
   // alert(document.getElementById('end_date').value);
   $("#start_date, #end_date").on('change', function() {
     var start_date = $("#start_date").val();
     var end_date =   $("#end_date").val();
     $.ajax({
       type: "POST",
       url: "getpresent.php",
       data: {
         start_date: start_date,
         end_date:  end_date
      },
      success: function (data) {
         // alert(data);
         $("#circle_div").html(data); 
      }
   });
  });
   $(document).ready(function() { 
      var start_date = $("#start_date").val();
      var end_date =   $("#end_date").val();
      $.ajax({
       type: "POST",
       url: "getpresent.php",
       data: {
         start_date: start_date,
         end_date:  end_date
      },
      success: function (data) {
         // alert(data);
         $("#circle_div").html(data); 
      }
   });
   });
   
    
   
   $(document).ready(function() { 
      var daysss = $("#updategraph").val();
      // alert(daysss);
      $.ajax({
       type: "POST",
       url: "getgraph.php",
       data:{
         days: daysss
      },
      success: function (data) {
         // alert(data);
         $("#graphs").html(data); 
      }
   });
   });
   $("#updategraph").on('change', function() {
     var days = $(this).val();
    // alert(days);
    var end_date =   $("#end_date").val();
    $.ajax({
       type: "POST",
       url: "getgraph.php",
       data: {
         days: days
      },
      success: function (data) {
         // alert(data);
         $("#graphs").html(data); 
      }
   });
 });
</script>
<script src="./progresscircle.js"></script>
<script>
   $(function(){

    $('.circlechart').circlechart();

 });
</script>
<?php include 'footer.php'; ?>