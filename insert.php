<?php include './config.php'?>
<!DOCTYPE html>
<html>
<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 80%;
  margin: auto;
}

td, th {
  border: 1px solid #dddddd;
  text-align: center;
  padding: 8px;
  height: 30px;
  
}
td{
   
  overflow-y: auto;
  max-height: 20px;
}

tr:nth-child(even) 
{
  background-color:;
}
</style>
</head>
<body>

<style type="text/css">
  input{
    width: 80%;
  }
</style>
<h2 style="text-align: center;">Insert Records</h2>
<form method="POST" action="./insertintotable.php">
<table>
  <tr>
    <th>Column Name</th>
    <th>Data</th>
  </tr>
  <tr>
    <td><div>Product id</div></td>
    <td><div><input class="input-lg" type="text" value="delta" name="product_id"></div></td>

  </tr>
  <tr>
    <td><div>ClassName</div></td>
    <td>
      <div>
      <select name="classs">
      <option value="airpro_outdoor_access">Airpro outdoor access</option>
      <option value="airpro_poe_switch">airpro_poe_switch</option>
      <option value="airpro_wlan_aps">airpro_wlan_aps</option>
      <option value="molex">Molex</option>
      <option value="netrack_floor_mount">Netrack Floor mount</option>
      <option value="netrack_wall_mount">Netrack wall mount</option>
      <option value="netrack_kvm">Netrack KVM</option>
      <option value="benq_flat_panel">benq_flat_panel</option>
      <option value="benq_projector">benq_projector</option>
      <option value="delta">Delta</option>
      <option value="asus">Ashustor</option>
      <option value="lg_flat_panel">lg_flat_panel</option>
      <option value="lg_tv">lg_tv</option>
      <option value="fortinet">Fortinet</option>
      <option value="ncomputing">NComputing</option>
      </select>
</div></td>

  </tr>
  <tr>
    <td><div>Name</div></td>
    <td><div><input class="input-lg" type="text" name="name"></div></td>

  </tr>
  <tr>
    <td><div>Specification</div></td>
    <td><div><textarea class="input-lg" cols="70" rows="10" type="text" name="specification"></textarea></div></td>

  </tr>
  <tr>
    <td><div>Image URL</div></td>
    <td><div><input class="input-lg" value="./img/delta/.jpg" type="text" name="image"></div></td>
    
  </tr>
  <tr>
    <td><div>General Details</div></td>
    <td><div><input class="input-lg" type="text" name="general_details"></div></td>
    
  </tr>
  <tr>
    <td><div>specification_image</div></td>
    <td><div><input class="input-lg" type="text" value="./img/delta/.png" name="specification_image"></div></td>
    
  </tr>
  <tr>
    <td><div>Download Url</div></td>
    <td><div><input class="input-lg" type="text" name="download"></div></td>
    
  </tr>
  <tr>
    <td style="text-align: center;" colspan="2"><div>
      <button style="text-align: center;display: block;margin-left: auto;margin-right: auto;"  type="submit" value="submit">Submit Record</button>
    </div></td>
  </tr>
</table>
</form>

<?php

$sql = "SELECT * FROM airpro_poe_switch order by product_id desc";
$result = mysqli_query($conn, $sql);
while($row2 = mysqli_fetch_assoc($result))
$product_data[] = $row2;
?>

<table>
  <tr>
    <th>Serial No</th>
    <th>Id</th>
    <th>Product Id</th>
    <th>Name</th>
    <th>specification</th>
    <th>IMage URL</th>
    <th>General Details</th>
    <th>Specification image</th>
    <th>Download URL</th>
    
  </tr>
  <?php
    $i=0;
    $count = count($product_data);
    while ($i < $count) {
    ?>
    <tr>
    <td><div class="tdd"><?php echo $i+1 ?></div></td>
    <td><div class="tdd"><?php echo $product_data[$i]["id"];?></div></td>
    <td><div class="tdd"><?php echo $product_data[$i]["product_id"];?></div></td>
    <td><div class="tdd"><?php echo $product_data[$i]["name"];?></div></td>
    <td><div class="tdd"><?php echo $product_data[$i]["specification"];?></div></td>
    <td><div class="tdd"><?php echo $product_data[$i]["image"];?></div></td>
    <td><div class="tdd"><?php echo $product_data[$i]["general_details"];?></div></div></td>
    <td><div class="tdd"><?php echo $product_data[$i]["specification_image"];?></div></td>
    <td><div class="tdd"><?php echo $product_data[$i]["download"];?></div></td>
    <?php 
      $i++;
      } 

    ?></tr>
  
    <style type="text/css">
      .tdd{
        height: 50px;
        overflow-y: auto;
      }
    </style>
</table>


</body>
</html>
