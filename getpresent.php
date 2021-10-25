<?php
include 'config.php';

$start_date = $_POST['start_date'];
$end_date = $_POST['end_date'];

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

$total_records = count($product_data);



// Renew Present 
$renew_query =  "SELECT SUM(COUNT) as count FROM ( (select renewed_at,COUNT(renewed_at) AS 'count' FROM crm_fortinet where CAST(renewed_at AS DATE) BETWEEN CAST('$start_date' AS DATE)  and  CAST('$end_date' AS DATE) GROUP BY CAST(renewed_at AS DATE)) union ALL (select renewed_at,COUNT(renewed_at) AS 'count' FROM crm_eps where CAST(renewed_at AS DATE) BETWEEN CAST('$start_date' AS DATE)  and  CAST('$end_date' AS DATE) GROUP BY CAST(renewed_at AS DATE)) ) derivedTable 
";
$renew_result = mysqli_query($con, $renew_query);
while($row_renew = mysqli_fetch_assoc($renew_result))
$renew_stat[] = $row_renew;
$count_renew = ($renew_stat[0]['count']);
$renew_present = ($count_renew/$total_records)*100;





// -------------------------------------Upgrade Present
$upgrade_query =  "SELECT SUM(COUNT) as count FROM ( (select upgrade_at,COUNT(upgrade_at) AS 'count' FROM crm_fortinet where CAST(upgrade_at AS DATE) BETWEEN CAST('$start_date' AS DATE)  and  CAST('$end_date' AS DATE) GROUP BY CAST(upgrade_at AS DATE)) union ALL (select renewed_at,COUNT(upgrade_at) AS 'count' FROM crm_eps where CAST(upgrade_at AS DATE) BETWEEN CAST('$start_date' AS DATE)  and  CAST('$end_date' AS DATE) GROUP BY CAST(upgrade_at AS DATE)) ) derivedTable 
";
$upgrade_result = mysqli_query($con, $upgrade_query);
while($row_upgrade = mysqli_fetch_assoc($upgrade_result))
$upgrade_stat[] = $row_upgrade;
$count_upgrade = ($upgrade_stat[0]['count']);
$upgrade_present = ($count_upgrade/$total_records)*100;

//----------------------------------------Hold Present
$hold_query =  "SELECT SUM(COUNT) as count FROM ( (select hold_at,COUNT(hold_at) AS 'count' FROM crm_fortinet where CAST(hold_at AS DATE) BETWEEN CAST('$start_date' AS DATE)  and  CAST('$end_date' AS DATE) GROUP BY CAST(hold_at AS DATE)) union ALL (select renewed_at,COUNT(hold_at) AS 'count' FROM crm_eps where CAST(hold_at AS DATE) BETWEEN CAST('$start_date' AS DATE)  and  CAST('$end_date' AS DATE) GROUP BY CAST(hold_at AS DATE)) ) derivedTable 
";
$hold_result = mysqli_query($con, $hold_query);
while($row_hold = mysqli_fetch_assoc($hold_result))
$hold_stat[] = $row_hold;
$count_hold = ($hold_stat[0]['count']);
$hold_present = ($count_hold/$total_records)*100;

//----------------------------------------Quote Present
$quoted_query =  "SELECT SUM(COUNT) as count FROM ( (select quoted_at,COUNT(quoted_at) AS 'count' FROM crm_fortinet where CAST(quoted_at AS DATE) BETWEEN CAST('$start_date' AS DATE)  and  CAST('$end_date' AS DATE) GROUP BY CAST(quoted_at AS DATE)) union ALL (select renewed_at,COUNT(quoted_at) AS 'count' FROM crm_eps where CAST(quoted_at AS DATE) BETWEEN CAST('$start_date' AS DATE)  and  CAST('$end_date' AS DATE) GROUP BY CAST(quoted_at AS DATE)) ) derivedTable 
";
$quoted_result = mysqli_query($con, $quoted_query);
while($row_quoted = mysqli_fetch_assoc($quoted_result))
$quoted_stat[] = $row_quoted;
$count_quoted = ($quoted_stat[0]['count']);
$quoted_present = ($count_quoted/$total_records)*100;

//----------------------------------------Lost and upgrade Present
$lostupgrade_query =  "SELECT SUM(COUNT) as count FROM ( (select lostupgrade_at,COUNT(lostupgrade_at) AS 'count' FROM crm_fortinet where CAST(lostupgrade_at AS DATE) BETWEEN CAST('$start_date' AS DATE)  and  CAST('$end_date' AS DATE) GROUP BY CAST(lostupgrade_at AS DATE)) union ALL (select renewed_at,COUNT(lostupgrade_at) AS 'count' FROM crm_eps where CAST(lostupgrade_at AS DATE) BETWEEN CAST('$start_date' AS DATE)  and  CAST('$end_date' AS DATE) GROUP BY CAST(lostupgrade_at AS DATE)) ) derivedTable 
";
$lostupgrade_result = mysqli_query($con, $lostupgrade_query);
while($row_lostupgrade = mysqli_fetch_assoc($lostupgrade_result))
$lostupgrade_stat[] = $row_lostupgrade;
$count_lostupgrade = ($lostupgrade_stat[0]['count']);
$lostupgrade_present = ($count_lostupgrade/$total_records)*100;

//----------------------------------------Lost and renew Present
$lostrenew_query =  "SELECT SUM(COUNT) as count FROM ( (select lostrenew_at,COUNT(lostrenew_at) AS 'count' FROM crm_fortinet where CAST(lostrenew_at AS DATE) BETWEEN CAST('$start_date' AS DATE)  and  CAST('$end_date' AS DATE) GROUP BY CAST(lostrenew_at AS DATE)) union ALL (select renewed_at,COUNT(lostrenew_at) AS 'count' FROM crm_eps where CAST(lostrenew_at AS DATE) BETWEEN CAST('$start_date' AS DATE)  and  CAST('$end_date' AS DATE) GROUP BY CAST(lostrenew_at AS DATE)) ) derivedTable 
";
$lostrenew_result = mysqli_query($con, $lostrenew_query);
while($row_lostrenew = mysqli_fetch_assoc($lostrenew_result))
$lostrenew_stat[] = $row_lostrenew;
$count_lostrenew = ($lostrenew_stat[0]['count']);
$lostrenew_present = ($count_lostrenew/$total_records)*100;

//----------------------------------------Dwtr Present
$dwtr_query =  "SELECT SUM(COUNT) as count FROM ( (select dwtr_at,COUNT(dwtr_at) AS 'count' FROM crm_fortinet where CAST(dwtr_at AS DATE) BETWEEN CAST('$start_date' AS DATE)  and  CAST('$end_date' AS DATE) GROUP BY CAST(dwtr_at AS DATE)) union ALL (select renewed_at,COUNT(dwtr_at) AS 'count' FROM crm_eps where CAST(dwtr_at AS DATE) BETWEEN CAST('$start_date' AS DATE)  and  CAST('$end_date' AS DATE) GROUP BY CAST(dwtr_at AS DATE)) ) derivedTable 
";
$dwtr_result = mysqli_query($con, $dwtr_query);
while($row_dwtr = mysqli_fetch_assoc($dwtr_result))
$dwtr_stat[] = $row_dwtr;
$count_dwtr = ($dwtr_stat[0]['count']);
$dwtr_present = ($count_dwtr/$total_records)*100;





?>
        <div class="circle_wrapper ">
           
         <div class="circle_items">
            <div class="circlechart" data-percentage="<?php echo round($quoted_present, 2); ?>">
               Quoted

            </div>
            <div class="circle_no" ><?php echo $count_quoted?> no. out of <?php echo $total_records?></div>
         </div>
         <div class="circle_items">
            <div class="circlechart" data-percentage="<?php echo round($hold_present, 2); ?>">
               Hold
            </div>
            <div class="circle_no" ><?php echo $count_hold?> no. out of <?php echo $total_records?></div>
         </div>
         <div class="circle_items">
            <div class="circlechart" data-percentage="<?php echo round($renew_present, 2); ?>">
               Renew
            </div>
            <div class="circle_no" ><?php echo $count_renew?> no. out of <?php echo $total_records?></div>
         </div>
         <div class="circle_items">
            <div class="circlechart" data-percentage="<?php echo round($upgrade_present, 2); ?>">
               Upgrade
            </div>
            <div class="circle_no" ><?php echo $count_upgrade?> no. out of <?php echo $total_records?></div>
         </div>

         <div class="circle_items">
            <div class="circlechart" data-percentage="<?php echo round($lostupgrade_present, 2); ?>">
               Lost <br> &<br>  Upgrade
            </div>
            <div class="circle_no" ><?php echo $count_lostupgrade?> no. out of <?php echo $total_records?></div>
         </div>
         <div class="circle_items">
            <div class="circlechart" data-percentage="<?php echo round($lostrenew_present, 2); ?>">
              Lost & Renew
           </div>
           <div class="circle_no" ><?php echo $count_lostrenew?> no. out of <?php echo $total_records?></div>
        </div>
        <div class="circle_items">
         <div class="circlechart" data-percentage="<?php echo round($dwtr_present, 2); ?>">
            Don't want renew
         </div>
         <div class="circle_no" ><?php echo $count_dwtr?> no. out of <?php echo $total_records?></div>
      </div>


   </div>

   <script src="./progresscircle.js"></script>
<script>
   $(function(){

    $('.circlechart').circlechart();

 });
</script>