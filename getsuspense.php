<?php include 'crm_userauth.php'; ?>
<?php

session_start();
 $selectedStatus = $_POST['selectedStatus'];

if ($selectedStatus == 'All' ) {
    $sql = "SELECT * FROM suspense ";
}
else{
    $sql = "SELECT * FROM suspense where status = '".$selectedStatus."' ";
}
  
  $result = mysqli_query($con, $sql);
  while($row2 = mysqli_fetch_assoc($result))
  $product_data[] = $row2;
  $counnt = count($product_data);
  $i = 0;
  ?>

<?php 
  if ($counnt!=0) {
    while($i<$counnt){
      ?>
      <tr>
      
      <td class="acticonfirst">
      <ul class="list-inline">
      <li>
      <div class="dropdown">
      <button class="btn  dropdown-toggle" type="button" data-toggle="dropdown" style="padding: 0px 5px;font-size: 12px;">
      <span class="acticon"><i class="fas fa-ellipsis-v"></i></span>
      
      <ul class="dropdown-menu">
      <?php if ($user_access[0]["suspense_actions"] == 'Yes'): ?>
        <li class="updaterecord" id="<?php echo( $product_data[$i]["chequeno"]) ?>---<?php echo( $product_data[$i]["billno"])?>---<?php  echo( $product_data[$i]["id"]) ?>" ><span class="dropdown-menuicn"><i class="fas fa-pencil-alt"></i></span><span class="dropdown-menutxt">Update</span></li>
        
        <li class="deleterecord" id="<?php echo( $product_data[$i]["chequeno"]) ?>---<?php echo( $product_data[$i]["billno"])?>---<?php  echo( $product_data[$i]["id"]) ?>"><span class="dropdown-menuicn"><i class="fas fa-trash-alt"></i></span><span class="dropdown-menutxt">Delete</span></li>
        <?php endif ?>
        <?php if ($user_access[0]["suspense_status"] == 'Yes'): ?>
          <li class="updatestatuss" id="<?php echo( $product_data[$i]["chequeno"]) ?>---<?php echo( $product_data[$i]["billno"])?>---<?php  echo( $product_data[$i]["id"]) ?>" >
          
          <span class="dropdown-menuicn"><i class="fas fa-pencil-alt"></i></span>
          <span class="dropdown-menutxt">Update Status</span>
          </li>
          <?php endif ?>
          </ul>
          </div>
          </li>
          <li>
          <div class="form-check">
          <input class="form-check-input delete_checkbox" type="checkbox" value="" id="<?php  echo( $product_data[$i]["id"]) ?>">
          </div>
          </li>
          </ul>
          
          
          </td>
          
          
          <td><?php echo $i+1 ?></td>
          <td class="lasst">
          <?php if ($product_data[$i]["status"] == 'Open') {?>
            <span class="cardprocess"><?php echo $product_data[$i]["status"];?></span> 
            <?php }else if($product_data[$i]["status"] == 'Failed'){ ?>
              <span class="cardnotok"><?php echo $product_data[$i]["status"];?></span> 
              <?php } else { ?>
                <span class="cardok"><?php echo $product_data[$i]["status"];?></span> 
                <?php }  ?>
                </td>
                <td><?php echo( $product_data[$i]["party"]) ?></td>
                <td><?php echo( $product_data[$i]["chequeno"]) ?></td>
                
                <td><?php echo date('d-m-Y', strtotime($product_data[$i]["bill_date"])) ?></td>
                <td><?php echo( $product_data[$i]["bank"]) ?></td>
                <td><?php echo( $product_data[$i]["amount"]) ?></td>
                <td><?php echo( $product_data[$i]["billno"]) ?></td>
                <td><?php  echo $product_data[$i]['remarks'] ?></td>
                <td><?php echo date('d-m-Y', strtotime($product_data[$i]["requested_date"])) ?></td>
                <td><?php echo( $product_data[$i]["requested_by"]) ?></td>
                <?php 
                if ($product_data[$i]["approved_date"] == ''||$product_data[$i]["approved_date"] == 'NULL') { ?>
                  <td>Not Updated</td>
                  <?php  } else{?>
                    <td><?php echo date('d-m-Y', strtotime($product_data[$i]["approved_date"])) ?></td>
                    <?php  } ?>
                    
                    <?php 
                    if ($product_data[$i]["approved_by"] == ''||$product_data[$i]["approved_by"] == 'NULL') { ?>
                      <td>Not Updated</td>
                      <?php  } else{?>
                        <td><?php echo $product_data[$i]["approved_by"] ?></td>
                        <?php  } ?>
                        
                        
                        <?php $i++; } ?>
                        </tr>
                        <?php }
                        else {
                          ?>
                          <tr>
                          <td><?php echo 'No Record Found. ' ?></td>
                          </tr>
                          <?php }?>