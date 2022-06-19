<?php include 'config.php'?>
<?php include 'auth.php'?>
<?php include 'header.php'?>
<?php include 'nav.php'?>

<?php 
$i=0;
              	$sql = "SELECT * FROM contact";
            $result = mysqli_query($conn, $sql);
            while($row2 = mysqli_fetch_assoc($result))
            $product_data[] = $row2;
            $count = count($product_data);
            ?>
<style type="text/css">
   .accordionnn {
   background: linear-gradient(to right, #667db6, #0082c8, #0082c8, #667db6); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
   cursor: pointer;
   color: white;
   padding: 18px;
   width: 100%;
   border: none;
   text-align: left;
   outline: none;
   
   box-shadow: 0px 0px 21px -8px rgba(115,109,115,0.67);
   font-size: 15px;
   transition: 0.4s;
   }
   .active, .accordionnn:hover {
   background-color: #ccc;
   }
   .accordionnn:after {
   content: '\002B';
   color: #777;
   font-weight: bold;
   float: right;
   margin-left: 5px;
   }
   .panel {
   padding: 0 18px;
   background-color: white;
   max-height: 0;
   border:none;
   margin-bottom: 0px !important;
   overflow: hidden;
   border: 1px solid white;
   transition: max-height 0.2s ease-out;
   }
   .box{
   	box-shadow: 0px 0px 21px -8px rgba(115,109,115,0.67);
   }
   .listyle{
   	list-style-type: none;
    padding: 3% 2%;
    border-bottom: 1px solid lightskyblue;
   }
</style>
<div class="container" >
   <div class="row" style="margin: 5% 0%">
      <div class="col-lg-4">
      	<div class="box">
      	<ul>
      		<li class="listyle">New Chats<span style="float: right;"><?php echo $count?></span></li>
      		
      		<li class="listyle">Chat Completed</li>
      		
      		<a href="./logout.php" style="color:white !important;text-decoration: none;"><li class="listyle" style="background: indigo;">Logout</li></a>
      	</ul>
      	</div>
      </div>
      <div class="col-lg-8">
         <?php
            
               while ($i < $count)
               {?> 
         <button class="accordionnn ">
         	<span>From: </span> <?php echo ($product_data[$i]["email"]) ?><br>
         	<span>Subject: </span> <?php echo ($product_data[$i]["subject"]) ?>
         </button>
         <div class="panel">
         	<h4>Hello Bispl,</h4><br>
            <h5><?php echo ($product_data[$i]["comment"]) ?></h5><br>
            <h5>Regards</h5>
            <h6><?php echo ($product_data[$i]["name"]) ?></h6>
         </div>
         <?php $i++;
            } ?>
      </div>
   </div>
</div>
<script>
   var acc = document.getElementsByClassName("accordionnn");
   var i;
   
   for (i = 0; i < acc.length; i++) {
       acc[i].addEventListener("click", function () {
           this.classList.toggle("active");
           var panel = this.nextElementSibling;
           if (panel.style.maxHeight) {
               panel.style.maxHeight = null;
           } else {
               panel.style.maxHeight = panel.scrollHeight + "px";
           }
       });
   }
   
</script>