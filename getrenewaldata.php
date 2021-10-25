<?php include 'crm_userauth.php'; ?>
<?php
session_start();
$selectedyear = $_POST['choosedyear'];
$selectedquarter = $_POST['choosedquarter'];

$checkadmin = "SELECT * from crm_login where email= '" . $_SESSION['email'] . "' ";
$checkadmin_result = mysqli_query($con, $checkadmin);
while ($checkadmin_result_row = mysqli_fetch_assoc($checkadmin_result)) $checkadminarr[] = $checkadmin_result_row;




$ueraccessquery = "SELECT * from crm_useraccess where email= '" . $_SESSION['email'] . "' ";
$result2 = mysqli_query($con, $ueraccessquery);
while ($row3 = mysqli_fetch_assoc($result2)) $product_dat[] = $row3;

if (($product_dat[0]["crm_fortinet"] == 'Yes') and ($product_dat[0]["crm_eps"] == 'Yes'))
{
  if (is_null($selectedquarter)  && is_null($selectedyear)) {

   if ($checkadminarr[0]['usertype']== 'Admin') {
      $sql = "SELECT * FROM `crm_eps`
     union 
     SELECT * FROM crm_fortinet  order by expiry_date asc";
   }
   else{
      $sql = "SELECT * FROM `crm_eps` WHERE expiry_date <= CURDATE() or  expiry_date between CURDATE() AND DATE_ADD(curdate(), INTERVAL 90 DAY) 
     union 
     SELECT * FROM crm_fortinet where expiry_date <= CURDATE() or  expiry_date between CURDATE() AND DATE_ADD(curdate(), INTERVAL 90 DAY)  order by expiry_date asc";
   }
    
    

  }
  else {

    if ($selectedyear == 'All') {
      $sql = "SELECT * FROM `crm_eps` union 
     SELECT * FROM crm_fortinet  order by expiry_date asc ";
    }
    else{
      $sql = "SELECT * FROM `crm_eps` WHERE `expiry_date` = $selectedyear AND QUARTER(expiry_date) = $selectedquarter

     union 
     SELECT * FROM crm_fortinet WHERE `expiry_date` = $selectedyear AND QUARTER(expiry_date) = $selectedquarter order by expiry_date asc ";
    }
    
  }
}

elseif ($product_dat[0]["crm_fortinet"] == 'Yes')
{
    $sql = "SELECT * FROM crm_fortinet where expiry_date <= CURDATE() or  expiry_date between CURDATE() AND DATE_ADD(curdate(), INTERVAL 90 DAY)  order by expiry_date asc";
}
elseif ($product_dat[0]["crm_eps"] == 'Yes')
{
    $sql = "SELECT * FROM `crm_eps` WHERE expiry_date <= CURDATE() or  expiry_date between CURDATE() AND DATE_ADD(curdate(), INTERVAL 90 DAY) order by expiry_date asc";
}

$result = mysqli_query($con, $sql);
while ($row2 = mysqli_fetch_assoc($result)) $product_data[] = $row2;

// $total_records = count($product_data)-1 + count($product_dat)-1;
// $_SESSION['pending_records'] = $total_records;

$counnt = count($product_data);
$i = 0;
?>
<?php 
   $stcount = 0;
      if ($counnt!=0) {
       
       while($i<$counnt){
      
        // $date=date_create($product_data[$i]["expiry_date"]);
        // date_sub($date,date_interval_create_from_date_string("60 days"));
        
?>

<tr>
   <td><?php echo $i+1 ?></td>
   <td style="overflow-x: visible;">
      <div class="dropdown">
         <?php if ($product_data[$i]["status"] == 'Hold') { ?>
         <button type="button" data-toggle="dropdown" class="accordionnbtn holds dropdown-toggle">Hold</button>
         <?php } else if ($product_data[$i]["status"] == 'Quoted') { ?>
         <button type="button" data-toggle="dropdown" class="accordionnbtn quoteds dropdown-toggle">Quoted</button>
         <?php } else   { 
            if ($stcount == 0) { ?>
         <button type="button" data-toggle="dropdown"  class="accordionnbtn statuss dropdown-toggle">Status</button>
         <?php $stcount = $stcount+1;
            }else{?>
         <button   type="button" data-toggle="dropdown"  class="accordionnbtn statuss  dropdown-toggle">Status</button> 
         <!-- disabled lgana h -->
         <?php  }
            }
            
            ?>
         <ul class="dropdown-menu">
            <li><button type="button" class="btn btns quoted" id="<?php echo( $product_data[$i]["type"]) ?>-<?php echo $product_data[$i]["serialno"] ?>"  >Quoted</button></li>
            <li><button type="button" class="btn btns hold" id="<?php echo( $product_data[$i]["type"]) ?>-<?php echo $product_data[$i]["serialno"] ?>"  >Hold</button></li>
            <?php if ($product_dat[0]["renewedit"] == 'Yes') { ?>
            <li><button type="button" class="btn btns renew" id="<?php echo( $product_data[$i]["type"]) ?>-<?php echo( $product_data[$i]["serialno"]) ?>">Renew</button></li>
            <?php }?>
            <?php if ($product_dat[0]["upgradeedit"] == 'Yes') {
               ?>
            <li><button type="button" class="btn btns upgrade" id="<?php echo( $product_data[$i]["type"]) ?>-<?php echo $product_data[$i]["serialno"] ?>"  >Upgrade</button></li>
            <?php }?>
            <!-- <?php if ($product_dat[0]["quotededit"] == 'Yes') { ?> -->
            <!-- <?php }?> -->
            <?php if ($product_dat[0]["lostandupgradeedit"] == 'Yes') {
               ?>
            <li><button type="button" class="btn btns lostandupgrade" id="<?php echo( $product_data[$i]["type"]) ?>-<?php echo $product_data[$i]["serialno"] ?>" >Lost and Upgrade</button></li>
            <?php }?>
            <?php if ($product_dat[0]["lostandrenewedit"] == 'Yes') {
               ?>
            <li><button type="button" class="btn btns lostandrenew" id="<?php echo( $product_data[$i]["type"]) ?>-<?php echo $product_data[$i]["serialno"] ?>"  >Lost and Renew</button></li>
            <?php }?>
            <?php if ($product_dat[0]["dontwanttorenewedit"] == 'Yes') {
               ?>
            <li><button type="button" class="btn btns donotwanttorenew" id="<?php echo( $product_data[$i]["type"]) ?>-<?php echo $product_data[$i]["serialno"] ?>"  >Don't Want to Renew</button></li>
            <?php }?>
         </ul>
      </div>
   </td>
   <td>
      <button type="button" class="btn  updaterecord" id="<?php echo( $product_data[$i]["type"]) ?>-<?php echo $product_data[$i]["serialno"] ?>"  ><i class="fas fa-pencil-alt"></i></button>
      <?php if (isset($_SESSION['email']) && ($_SESSION['usertype']=='Admin')) { ?> 
      <button type="button" class="btn  deleterecord" id="<?php echo( $product_data[$i]["type"]) ?>-<?php echo $product_data[$i]["serialno"] ?>"  ><i class="fas fa-trash-alt"></i></button>
      <?php } ?>
   </td>
   <?php if ($product_dat[0]["product_name_view"] == 'Yes' || ($_SESSION['usertype']=='Admin')) { ?>
   <td><?php echo( $product_data[$i]["product_name"]) ?></td>
   <?php }?>
   <td >
      <div style="width: 180px;background: lightgoldenrodyellow;">
         <span class="pull-left"> <?php echo( $product_data[$i]["serialno"]) ?></span>
         <span data-toggle="tooltip" data-placement="right" title="Click to Send Mail !" class="pull-right"><i id="<?php echo( $product_data[$i]["type"]) ?>-<?php echo $product_data[$i]["serialno"] ?>" class="fas fa-envelope-open-text mailicon" ></i></span>
      </div>
   </td>
   <?php if ($product_dat[0]["remarks_view"] == 'Yes' || ($_SESSION['usertype']=='Admin')) { ?>
   <td><?php echo( $product_data[$i]["remarks"]) ?></td>
   <?php }?>
   <?php
      $datess = strtotime($product_data[$i]['expiry_date']);
      if ($datess<0) {
        $wowdate= "Invalid Date";
      }
      else{
        $wowdate=  date("d-m-Y",$datess);
      }
      
      ?>
   <?php if ($product_dat[0]["expiry_date_view"] == 'Yes' || ($_SESSION['usertype']=='Admin')) { ?>
   <td class="text-danger">
      <?php echo ($wowdate);?>
   </td>
   <?php }?>
   <?php if ($product_dat[0]["insellview"] == 'Yes') {
      ?>
   <td><?php  echo $product_data[$i]['in_sell'] ?></td>
   <?php }?>
   <?php if ($product_dat[0]["outsellview"] == 'Yes') {
      ?>
   <td><?php  echo $product_data[$i]['out_sell'] ?></td>
   <?php }?>
   <?php if ($product_dat[0]["company_view"] == 'Yes' || ($_SESSION['usertype']=='Admin')) { ?>
   <td><?php echo( $product_data[$i]["company"]) ?></td>
   <?php }?>
   <?php if ($product_dat[0]["contact_person_view"] == 'Yes' || ($_SESSION['usertype']=='Admin')) { ?>
   <td><?php echo( $product_data[$i]["person_name"]) ?></td>
   <?php }?>
   <?php if ($product_dat[0]["mobile_view"] == 'Yes' || ($_SESSION['usertype']=='Admin')) { ?>
   <td><?php  echo $product_data[$i]['mobile'] ?></td>
   <?php }?>
   <?php if ($product_dat[0]["email_view"] == 'Yes' || ($_SESSION['usertype']=='Admin')) { ?>
   <td><?php echo( $product_data[$i]["email"]) ?></td>
   <?php }?>
   <?php if ($product_dat[0]["dealer_view"] == 'Yes' || ($_SESSION['usertype']=='Admin')) { ?>
   <td><?php echo( $product_data[$i]["dealer"]) ?></td>
   <?php }?>
   <?php if ($product_dat[0]["quotedprice_view"] == 'Yes' || ($_SESSION['usertype']=='Admin')) { ?>
   <td><?php echo( $product_data[$i]["quotedprice"]) ?></td>
   <?php }?>
   <?php if ($product_dat[0]["users_view"] == 'Yes' || ($_SESSION['usertype']=='Admin')) { ?>
   <td><?php echo( $product_data[$i]["users"]) ?></td>
   <?php }?>
   <td><?php echo( $product_data[$i]["designation"]) ?></td>
   <td><?php echo( $product_data[$i]["landline"]) ?></td>
   <td><?php echo( $product_data[$i]["address1"]) ?></td>
   <td><?php echo( $product_data[$i]["address2"]) ?></td>
   <td><?php echo( $product_data[$i]["city"]) ?></td>
   <td><?php echo( $product_data[$i]["state"]) ?></td>
   <?php  
      $i++;
      }
      
        ?>
</tr>
<?php }
   else {
   ?>
<tr>
   <td><?php echo 'No Record Found. ' ?></td>
</tr>
<?php }?>
                  