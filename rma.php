<?php include 'crm_userauth.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>

<div class="container-fluid">
   <div class="right-part">
      <div class="row">
         <div class="col-lg-6">
            <div class="input-group">
               <ul class="list-inline">
                  <li>
                    <div class="input-group">
                     <span class="input-group-addon"><i class="fas fa-search"></i></span>
                     <input type="text" id="myInput" class="form-control "  placeholder="Search ..." />
                   </div>
                  </li>
                  <li>
                     <span class="recordcount"> </span>
                  </li>
               </ul>
            </div>
         </div>
         <div class="col-lg-6">
            <ul class="list-inline" style="text-align: right;">
               <li><button onclick="location.href = './addrmaproduct.php';" type="button" id="addrecord" class="btn btns ">Add Product <i class="fas fa-plus-circle"></i></button></li>
               <li><?php 
                  if (isset($_SESSION['email']) && ($_SESSION['usertype']=='Admin')) { ?>
                  <button onclick="location.href = './exporttabledatarenewal.php';" type="button" id="downloaddata" class="btn btns ">Export data <i class="fas fa-file-download btnicons"></i></button><?php } ?>
               </li>
            </ul>
        </div>
    </div>
 </div>
</div>


<?php include 'footer.php'; ?>
