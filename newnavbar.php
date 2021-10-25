<?php
$ueraccessquery = "SELECT * from crm_useraccess where email= '".$_SESSION['email']."' ";
$result2 = mysqli_query($con, $ueraccessquery);
while($row3 = mysqli_fetch_assoc($result2))
  $product_dat[] = $row3;
?>
<style type="text/css">
  /*.sidenav:hover {
    z-index: 500000;
    width: 250px;
  }*/
  .brandimageebox a{
    padding: 0px;
    text-decoration: none;
    color: #516378;
    display: inline;
    font-size: 20px;
    border-bottom: 1px solid rgba(255,255,255,.1);
    font-family: 'Poppins', sans-serif;
    
    transition: 0.3s;
  }
</style>
<?php if (isset($_SESSION['email'])) { ?> 
  <style type="text/css">
   .crmtitle{
     display: none;
   }
 </style>
<?php }?>
<?php if (!isset($_SESSION['email'])) { ?> 
  <style type="text/css">
   .sidenav{
     width: 0px;
   }
   .navbar-default {
     margin-left: 0px; 
   }
   .right-part {
     margin-left: 0px; 
   }
   .navbar{
     margin-bottom: 0px;
   }
   .lefthamburger{
     display: none;
   }
   .crmtitle{
     display: block;
   }
   
 </style>
<?php }?>
<div id="mySidenav" class="sidenav">
  <!-- <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a> -->
  
  <div class="brandimageebox">
    <a href="./index.php"><span class="brandimageebox1" ><img src="./img/bispl_logo.png" class="brandimagee"></span></a> 
    <span class="brandname">BISPL</span> 
  </div>
  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fas iconss fa-money-check-alt"></i><span class="linktext">Renewal</span> <span class="caret"></span></a>
        <ul class="dropdown-menu new_dropdown-menu">
          <li><a href="#">Performance 1</a></li>
          <li><a href="#">Performance 2</a></li>
          <li><a href="#">Performance 3</a></li>
        </ul>
  </li>
  <?php if ($product_dat[0]["renewalpage"] == 'Yes') {?>
    <li>
      <a href="./renewal.php"><span data-toggle="tooltip" data-placement="right" title="Renewal"><i class="fas iconss fa-money-check-alt"></i></span><span class="linktext">Renewal</span></a> 
    </li>
    
  <?php } ?>
  
  <?php if ($product_dat[0]["dealerpage"] == 'Yes') {?>
    <a href="./dealers.php"><span data-toggle="tooltip" data-placement="right" title="Dealers"><i class="fas iconss fa-people-carry"></i></span><span class="linktext">Dealers</span></a>
  <?php } ?>
  <?php if ($product_dat[0]["supportpage"] == 'Yes') {?>
    <a href="#"><span data-toggle="tooltip" data-placement="right" title="Support"><i class="fas iconss fa-headset"></i></span><span class="linktext">Support</span></a>
  <?php } ?>

  <?php if ($product_dat[0]["createuserpage"] == 'Yes') {?>
    <a href="./createuser.php"><span data-toggle="tooltip" data-placement="right" title="Create User"><i class="fas iconss fa-user-plus"></i></span><span class="linktext">Create User</span></a>
  <?php } ?>
  <?php if ($product_dat[0]["uploadpage"] == 'Yes') {?>
    <a href="./crm_uploadfile.php"><span data-toggle="tooltip" data-placement="right" title="Upload File"><i class="fas iconss fa-upload"></i></span><span class="linktext">Upload</span></a>
  <?php } ?>

  <?php if ($product_dat[0]["stocksummary"] == 'Yes') {?>
    <a href="./inventorydatashow.php"><span data-toggle="tooltip" data-placement="right" title="Stock Summary"><i class="fas iconss fa-boxes"></i></span><span class="linktext">Stock Summary</span></a>
  <?php } ?>

  <?php if ($product_dat[0]["outstandings"] == 'Yes') {?>
    <a href="./outstandingdatashow.php"><span data-toggle="tooltip" data-placement="right" title="Outstandings Summary"><i class="fas iconss fa-calculator"></i></span><span class="linktext">Outstandings </span></a>
  <?php } ?>

  <?php if ($product_dat[0]["suspense"] == 'Yes') {?>
    <a href="./suspense.php"><span data-toggle="tooltip" data-placement="right" title="Suspense"><i class="fas iconss fa-user-secret"></i></span><span class="linktext">Suspense Amount</span></a>
  <?php } ?>

  <?php if ($product_dat[0]["funnel"] == 'Yes') {?>
    <a href="./funnel.php">
      <span data-toggle="tooltip" data-placement="right" title="Funnel"><i class="fas iconss fa-filter"></i></span><span class="linktext">Funnel</span>
    </a>
  <?php } ?>

  <a href="./crm_logout.php" > <!-- style="position: absolute;bottom: 0;border-top: 1px solid rgba(255,255,255,.1);" -->
      <span data-toggle="tooltip" data-placement="right" title="Logout"><i class="fas iconss fa-power-off"></i></span><span class="linktext">Logout</span>
    </a>


  <?php if (isset($_SESSION['email'])) { ?>





  <?php }?>
  
  
</div>


<style type="text/css">
  .lefthamburger{
    cursor: pointer;
    border: 1px solid lightgray;
    padding: 3px 12px;
    border-radius: 3px;
    display: none;
  }
  .new_dropdown-menu{
    position:relative !important;
    background-color: transparent;
    transition: all 2s;
}
.new_dropdown-menu>li>a{
  padding: 3px 62px;
    /* clear: both; */
    color: white;
    font-size: 14px;
    font-weight: 300;
}
</style>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>

      <a  class="navbar-brand" href="#">
        <span id="open" class="lefthamburger" onclick="openNav()">
          <i class="fas fa-bars"></i> 

        </span>
        <span class="crmtitle" onclick="location.href='./index.php'">CRM</span>

      </a>
      <div id="main">

       <!--  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; </span> -->
     </div>

   </div>
   <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav">
      <!-- <li class="active"><a href="#">Home</a></li> -->
        <!-- <li><a href="#">Page 1</a></li>
        <li><a href="#">Page 2</a></li>
        <li><a href="#">Page 3</a></li> -->
      </ul>
      <ul class="nav navbar-nav navbar-right">

        <!-- <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li> -->
        <?php
        if (isset($_SESSION['email'])) { ?>
          <!-- <li><a href="#"><?php echo $_SESSION['usertype'];?></a></li> --> <!-- <span class="glyphicon glyphicon-log-in"></span>  -->
          <li><a style="border-radius: 5px;
    background: darkblue;
    padding: 5% 10px;
    color: white;
    margin: 4% 0;" href="#"><span><i class="fas fa-user-tie"></i></span> <?php echo ($_SESSION['email']) ?></a></li>
          <!-- <li><a href="./crm_logout.php"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li> -->

        <?php } else { ?>
          <!-- <li><a href="#"> <?php echo $_SESSION['usertype'];?></a></li> -->  <!-- <span class="glyphicon glyphicon-log-in"></span> -->
          <li><a href="./crm_userlogin.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
</nav>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> -->

<script>
  $(document).ready(function(){
    $(".sidenav").hover(
      function(){$(".sidenav").css("width","250px")},
      function(){$(".sidenav").css("width","70px")}
    );
  });
</script>
