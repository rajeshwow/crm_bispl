
<!DOCTYPE html>
<html>
<head>
   <title>Button click </title>
</head>
<body>

<button onclick="show(this.value)"   type="button" value="1" id="1">Click me </button>

<form action="" method="POST">
    <input type="submit" value="0" name="mybutton">
    <input type="submit" value="1" name="mybutton">
    <input type="submit" value="2" name="mybutton">
</form>
<a href="airpro_product_1.php?myNumber=1&myFruit=orange">Send variables via URL!</a> 
</body>
</html>

<script type="text/javascript">
   function show(val){
      
      location.href = './airpro_product_1.php?id='+val; 
   
   }
</script>



<?php 
   if (isset($_POST["mybutton"]))
   {
       echo $_POST["mybutton"];
   }
?>