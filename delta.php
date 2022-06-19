<?php include 'header.php'?>
<?php include 'headernav.php'?>
<?php include 'nav.php'?>
<?php include './config.php'?>
<?php


$sql = "SELECT * FROM delta ";
$result = mysqli_query($conn, $sql);
while($row2 = mysqli_fetch_assoc($result))
$repeater[] = $row2;

?>
<style type="text/css">

	
</style>

<script type="text/javascript">
   function show(val){
    
    	var classs ="delta";
      location.href = "./airpro_product_1.php?id="+val+"&classs="+classs; 
   
   }
</script>


<div class="container-fluid" style="background-color: #F2F3F4">

	<?php
$x = 1;
$z = 1;
// Total items in the repeater field
$total_items = count($repeater);

?>
<?php
foreach($repeater as $item):
    // Check if $x is bigger than 3 then we set it back to 1
    $x = ($x > 3) ? 1 : $x;
    // if $x = 1 then we start a new row
    echo ($x == 1) ? '<div class="row">' : '';
        ?>
        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12" >
			<div class="card">
				<div class="cardimage">
					<img src="<?php echo $item["image"] ?>">
				</div>
				<div class="cardtitle">
					<h4><?php echo $item["name"] ?></h4>
				</div>

				<button onclick="show(this.value)" value="<?php echo $item['product_id']; ?>"  class="btn btn-warning">Get More Details</button>
			</div>
			
		</div>
        
    <?php
    // Check if $x is equal to 3 or if $z equal to the total of the items in the repeater
    // then its true we close the row
    echo ($x == 3) || ($z == $total_items) ? '</div>' : '';
    $x++;
    $z++;
endforeach;
?>
	
	

</div>




<?php include 'footer.php'?>
