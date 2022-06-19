<?php include 'header.php'?>
<?php include 'headernav.php'?>
<?php include 'nav.php'?>
<?php include 'config.php'?>
<?php


$sql = "SELECT * FROM asus ";
$result = mysqli_query($conn, $sql);
while($row2 = mysqli_fetch_assoc($result))
$product_data[] = $row2;

?>
<style type="text/css">

	
</style>

<script type="text/javascript">
   function show(val){
    
    	var classs ="asus";
      location.href = "./airpro_product_1.php?id="+val+"&classs="+classs; 
   
   }
</script>


<div class="container-fluid" style="background-color: #F2F3F4">
	<div class="row" style="margin: 5% 0%">
		<div class="col-lg-4" >
			<div class="card">
				<div class="cardimage">
					<img src="<?php echo $product_data[3]["image"];?>">
				</div>
				<div class="cardtitle">
					<h4><?php echo $product_data[3]["name"];?></h4>
				</div>

				<button onclick="show(this.value)" value="asus4"  class="btn btn-warning">Get More Details</button>
			</div>
			
		</div>
		
		

	</div>
	
	

</div>




<?php include 'footer.php'?>
