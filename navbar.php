<style>
/* width */
.sidenav::-webkit-scrollbar {
  width: 2px;
}


/* Track */
.sidenav::-webkit-scrollbar-track {
  background: gray;
}

/* Handle */
.sidenav::-webkit-scrollbar-thumb {
  background: white;
}

/* Handle on hover */
.sidenav::-webkit-scrollbar-thumb:hover {
  background: #555;
}
.sidenav{
  padding-bottom: 150px;
}
.disableds{
  
  pointer-events: none;
 }
 .wrapper_dis{
  cursor: not-allowed;
 }
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
  
}
.new_dropdown-menu>li>a{
  padding: 10px 15px;
  /* clear: both; */
  color: white;
  font-size: 14px;
  font-weight: 300;
}
.iconss_internal{
  margin-left: 0% !important;
  font-size: 14px;
  color: white;
}
.linktext_internal{
  padding: 5px 26px;
  color: white;
  font-size: 12px;
  font-weight: 300;
}
.dropdown-menu>li>a:focus, .dropdown-menu>li>a:hover {
    color: #262626;
    text-decoration: none;
    background-color:transparent !important;
    background-image: none;
}
.atag{
  background-color: none !important;
}

.icn{
  width: 20px;
    margin-left: 1%;
    display: inline-block;
}
.dropdownicons{
  font-size: 12px;
  color: white;
}


.down{
    transform:rotate(90deg);
}
</style>
<?php


$sql = "SELECT email, password,usertype FROM crm_login where email = '".$_SESSION['email']."' ";
$result = mysqli_query($con, $sql) or die("Error: " . mysqli_error($con));
while($rw= mysqli_fetch_assoc($result))
  $row[] = $rw;


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
    <span class="brandname">BISPL </span> 
  </div>
  <?php if ($row[0]["usertype"] == 'Admin') {?>
    <a href="./dashboard.php"><span data-toggle="tooltip" data-placement="right" title="Renewal"><i class="fas iconss fa-tachometer-alt"></i></span><span class="linktext">Dashboard</span></a> 
  <?php } ?>
  <?php if ($product_dat[0]["renewalpage"] == 'Yes') {?>
    <a href="./renewal.php"><span data-toggle="tooltip" data-placement="right" title="Renewal"><i class="fas iconss fa-money-check-alt"></i></span><span class="linktext">Renewal</span></a> 
  <?php } ?>
  
  <?php if ($product_dat[0]["dealerpage"] == 'Yes') {?>
    <a href="./dealers.php"><span data-toggle="tooltip" data-placement="right" title="Dealers"><i class="fas iconss fa-people-carry"></i></span><span class="linktext">Dealers</span></a>
  <?php } ?>
  <a href="./Enduser.php"><span data-toggle="tooltip" data-placement="right" title="End Users"><i class="fas iconss fa-users"></i></span><span class="linktext">End User</span></a>

  <?php if ($product_dat[0]["supportpage"] == 'Yes') {?>
    <a href="#"><span data-toggle="tooltip" data-placement="right" title="Support"><i class="fas iconss fa-headset"></i></span><span class="linktext">Support</span></a>
  <?php } ?>

  <?php if ($product_dat[0]["createuserpage"] == 'Yes') {?>
    <a href="./createuser.php"><span data-toggle="tooltip" data-placement="right" title="Create User"><i class="fas iconss fa-user-plus"></i></span><span class="linktext">Manage User</span></a>
  <?php } ?>
  <?php if ($product_dat[0]["uploadpage"] == 'Yes') {?>
    <a href="./crm_uploadfile.php"><span data-toggle="tooltip" data-placement="right" title="Upload File"><i class="fas iconss fa-upload"></i></span><span class="linktext">Upload</span></a>
  <?php } ?>
  <?php if ($row[0]["usertype"] == 'Admin' || $row[0]["usertype"] == 'Support') {?>
    <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fas iconss fa-atom"></i><span class="linktext">Accounts</span> <span ><div class="dropdownicons fa fa-chevron-right "></div></span>
      </a>
      <ul class="dropdown-menu new_dropdown-menu">
        <li>
          <?php if ($product_dat[0]["stocksummary"] == 'Yes') {?>
            <a href="./inventorydatashow.php" class="atag">
              <span data-toggle="tooltip" class="icn" data-placement="right" title="Stock Summary"><i class="fas iconss_internal fa-boxes"></i></span><span class="linktext_internal">Stock Summary</span></a>
          <?php } ?>
        </li>
        <li class="wrapper_dis">
          <?php if ($product_dat[0]["outstandings"] == 'Yes') {?>
            <a  href="./crm_outstandings.php" class="atag ">
              <span data-toggle="tooltip" class="icn" data-placement="right" title="Outstandings Summary"><i class="fas iconss_internal fa-calculator"></i></span><span class="linktext_internal">Outstandings </span></a>
          <?php } ?>
        </li>
        <li>
          <?php if ($product_dat[0]["salesreport"] == 'Yes'  ) {?>
            <a href="./crm_salesreport.php" class="atag">
              <span data-toggle="tooltip" class="icn" data-placement="right" title="Sales Reports"><i class="fas iconss_internal fa-file-alt"></i></span><span class="linktext_internal">Sales Report</span>
            </a>
          <?php } ?>
        </li>
        <li class="wrapper_dis">
          <?php if ($product_dat[0]["salesregister"] == 'Yes'  ) {?>
            <a href="./crm_salesregister.php" class="atag ">
              <span data-toggle="tooltip" class="icn" data-placement="right" title="Sales Register"><i class="fas iconss_internal fa-clipboard"></i></span><span class="linktext_internal">Sales Register</span>
            </a>
          <?php } ?>
        </li>
      </ul>
    </li>
  <?php } ?>
  
  


  <?php if ($product_dat[0]["suspense"] == 'Yes') {?>
    <a href="./suspense.php"><span data-toggle="tooltip" data-placement="right" title="Suspense"><i class="fas iconss fa-user-secret"></i></span><span class="linktext">Suspense Amount</span></a>
  <?php } ?>

  <?php if ($product_dat[0]["funnel"] == 'Yes') {?>
    <a href="./funnel.php">
      <span data-toggle="tooltip" data-placement="right" title="Funnel"><i class="fas iconss fa-filter"></i></span><span class="linktext">Funnel</span>
    </a>
  <?php } ?>
  <a href="./crm_logout.php" >
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
          padding: 10px 10px;
          color: white;
          margin: 5px 0;
          font-size: 12px;" href="#"><span><i class="fas fa-user-tie"></i></span> <?php echo ($_SESSION['email']) ?></a></li>
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
  
   // Add slideDown animation to Bootstrap dropdown when expanding.
  $('.dropdown').on('show.bs.dropdown', function() {
    $(this).find('.dropdown-menu').first().stop(true, true).slideDown();
  });

  // Add slideUp animation to Bootstrap dropdown when collapsing.
  $('.dropdown').on('hide.bs.dropdown', function() {
    $(this).find('.dropdown-menu').first().stop(true, true).slideUp();
  });


  $(".dropdown").click(function(){

 $(".dropdownicons").toggleClass("down",5000, "easeOutSine"); 
});
  });
</script>
