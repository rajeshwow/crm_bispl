<?php include 'crm_userauth.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>

 
<?php 
if (isset($_SESSION['status']) && $_SESSION['status_code'] == 'success') { ?>
   <script>
      swal({
        title: "<?php echo $_SESSION['status']?>",
       text: "Enduser has been added!",
       icon: "<?php echo $_SESSION['status_code']?>",
       button: "Ok",
    });
 </script> 
<?php  
   unset($_SESSION['status']);
   unset($_SESSION['status_code']);
 }
 else if($_SESSION['status_code'] == 'error'){?>
<script>
      swal({
        title: "<?php echo $_SESSION['status']?>",
       text: "Enduser Not added!",
       icon: "<?php echo $_SESSION['status_code']?>",
       button: "Ok",
    });
 </script>
<?php
unset($_SESSION['status']);
unset($_SESSION['status_code']);
}
  ?>

<style type="text/css">
th:nth-child(2),
td:nth-child(2)  {
 left: 0px;

}
th:nth-child(3),
td:nth-child(3)  {
 left: 73px;

}
th:nth-child(4),
td:nth-child(4)  {
 left: 198px;

}
th:nth-child(2),th:nth-child(3),th:nth-child(4){
 background-color: #0a1157;
 position: sticky;
 border: 1px solid white !important;
 z-index: 2;
}
td:nth-child(2),td:nth-child(3),td:nth-child(4)  {
 position: sticky;
 background-color: white;
 z-index: 1;
}
table thead th {
 position: sticky;
 top: 0;
 color: white;
 z-index: 1;
 background: #0a1157;
}
</style>
<div class="container-fluid">
 <div class="right-part">
  <div class="rightpartitle">
    <span class="acttitle">End Users</span>
  </div>
  <br>
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
    <li><button onclick="location.href = './adduser.php';" type="button" id="addrecord" class="btn btns pull-left">Add User <i class="fas fa-user-plus btnicons"></i></button></li>
    <?php if (isset($_SESSION['email']) && ($_SESSION['usertype']=='Admin')) { ?>
      <li><button  type="button" id="bulkdelete" class="btn btns pull-left">Bulk Delete <i class="fas btnicons fa-check-double"></i></button></li>
      <li >

        <button onclick="location.href = './exporttabledata_user.php';" type="button" id="download" class="btn btns pull-right">Export data <i class="fas fa-file-download btnicons"></i></button>

      </li>
    <?php } ?>
  </ul>
</div>
</div>
<!-- <br> -->


<br>
<div class="row">
 <div class="col-lg-12">
  <div class="outsidetable">
    <table class="table table-fixed table-bordered" id="myTable">
     <?php
     $sql = "SELECT email, password,usertype FROM crm_login where email = '".$_SESSION['email']."' ";
     $result = mysqli_query($con, $sql) or die("Error: " . mysqli_error($con));
     while($rw= mysqli_fetch_assoc($result))
      $row[] = $rw;
    $ueraccessquery = "SELECT * from crm_useraccess where email= '".$_SESSION['email']."' ";
    $result_ueraccessquery = mysqli_query($con, $ueraccessquery);
    while($row_ueraccessquery = mysqli_fetch_assoc($result_ueraccessquery))
      $ueraccess_arr[] = $row_ueraccessquery;

    $ueraccess_str = $ueraccess_arr[0]['dealer_city'];
   $x_ueraccess_str = explode(",",$ueraccess_str);
   for ($sri=0; $sri < count($x_ueraccess_str)-1; $sri++) { 

    $dealer_arrs .= "'".$x_ueraccess_str[$sri]."'". ",";
  }
  $dealer_arrs = rtrim($dealer_arrs, ",");

    if ($row[0]['usertype'] == 'Admin') {
      $sql = "SELECT * FROM crm_enduser";
    }
    else{
      $sql = "SELECT * FROM crm_enduser ";
    }


    
    $result = mysqli_query($con, $sql);
    while($row2 = mysqli_fetch_assoc($result))
     $product_data[] = $row2;
   $counnt = count($product_data);
   $i = 0;




  ?>
  <thead>
    <tr >
      <th style="text-align: center;"><button style="padding: 1px 10px;" type="button" id="deleteall" class="btn btns"><i class="fas fa-trash-alt"></i></button></th>
      <th>S.no <span class='sorticon'><i class="fas fa-sort"></i></span></th>
      <th>Company<span class='sorticon'><i class="fas fa-sort"></i></span></th>
      <th >Contact Person<span class='sorticon'><i class="fas fa-sort"></i></span></th>
      <th >Mobile<span class='sorticon'><i class="fas fa-sort"></i></span></th>
      <th>Landline<span class='sorticon'><i class="fas fa-sort"></i></span></th>
      <th>Address1<span class='sorticon'><i class="fas fa-sort"></i></span></th>
      <th >Address2 <span class='sorticon'><i class="fas fa-sort"></i></span></th>
      <th >Address3<span class='sorticon'><i class="fas fa-sort"></i></span></th>
      <th>City<span class='sorticon'><i class="fas fa-sort"></i></span></th>
      <th>Industry<span class='sorticon'><i class="fas fa-sort"></i></span></th>
      <th>State<span class='sorticon'><i class="fas fa-sort"></i></span></th>
      <th >Email<span class='sorticon'><i class="fas fa-sort"></i></span></th>
      <th >Home Address1<span class='sorticon'><i class="fas fa-sort"></i></span></th>
      <th >Home Address2 <span class='sorticon'><i class="fas fa-sort"></i></span></th>
      <th >GST<span class='sorticon'><i class="fas fa-sort"></i></span></th>
      <th>ID no 1<span class='sorticon'><i class="fas fa-sort"></i></span></th>
      <th>ID no 2<span class='sorticon'><i class="fas fa-sort"></i></span></th>




    </tr>
  </thead>
  <tbody>
    <?php 
    if (!$counnt) { ?>
      <tr><td colspan="15">No record found.</td></tr>
    <?php }
    while($i<$counnt){
     ?>
     <tr>
      <td class="acticonfirst">
        <ul class="list-inline">
          <li>
            <div class="form-check">
              <input class="form-check-input delete_checkbox" type="checkbox" value="" id="<?php echo( $product_data[$i]["id"]) ?>">
            </div>
          </li>
        </ul>


      </td>
      
      <td><?php echo $i+1 ?></td>
      <td><?php echo( $product_data[$i]["company"]) ?></td>
      <td class="lasst"><?php echo( $product_data[$i]["contact_person"]) ?></td>
      <td><?php  echo $product_data[$i]['mobile'] ?></td>
      <td><?php echo( $product_data[$i]["telephone"]) ?></td>
      <td><?php echo( $product_data[$i]["address1"]) ?></td>
      <td><?php echo( $product_data[$i]["address2"]) ?></td>
      <td><?php  echo $product_data[$i]['address3'] ?></td>
      <td><?php echo( $product_data[$i]["city"]) ?></td>
      <td><?php echo( $product_data[$i]["industry"]) ?></td>
      <td><?php echo( $product_data[$i]["state"]) ?></td>
      <td><?php echo( $product_data[$i]["email"]) ?></td>
      <td><?php  echo $product_data[$i]['homeaddress1'] ?></td>
      <td><?php echo( $product_data[$i]["homeaddress1"]) ?></td>
      <td><?php echo( $product_data[$i]["gst"]) ?></td>
      <td><?php echo( $product_data[$i]["id1"]) ?></td>
      <td><?php  echo $product_data[$i]['id2'] ?></td>
      <?php  
      $i++;
    }
    ?>
  </tr>
</tbody>
</table>
</div>
</div>
</div>
</div>
</div>










<script>
  $("recordcount").hide();
  $(document).ready(function(){
    $("#advbutton").click(function(){
      $("#advsearch").slideToggle();
    });
  });
  var cccc =0;
  function filterTable(event) {
    var cccc = 0;
    var filter = event.target.value.toUpperCase();
    var rows = document.querySelector("#myTable tbody").rows;

    for (var i = 0; i < rows.length; i++) {
      var firstCol = rows[i].cells[0].textContent.toUpperCase();
      var secondCol = rows[i].cells[1].textContent.toUpperCase();
      var thirdCol = rows[i].cells[2].textContent.toUpperCase();
      var forthCol = rows[i].cells[3].textContent.toUpperCase();
      if (firstCol.indexOf(filter) > -1 || secondCol.indexOf(filter) > -1|| thirdCol.indexOf(filter) > -1|| forthCol.indexOf(filter) > -1) {
        rows[i].style.display = "";
        cccc++;
      } else {
        rows[i].style.display = "none";
      }      
    }
    console.log ( cccc );
    $(".recordcount").fadeIn().html('Records:' + cccc);
  }

  document.querySelector('#myInput').addEventListener('keyup', filterTable, false);

  $(document).ready(function(){
    $(".delete_checkbox").hide();
    $("#deleteall").hide();
    $('#bulkdelete').click(function(){
      $(".delete_checkbox").fadeToggle();
      $("#deleteall").fadeToggle();
    });

    $('#deleteall').click(function(){

      var post_arr = [];

    // Get checked checkboxes
    $('#myTable .form-check input[type=checkbox]').each(function() {
      if ($(this).is(":checked")) {
        var id = this.id;
        var postid = id;
        post_arr.push(postid);
        
      }
    });

    if(post_arr.length > 0){
      var isDelete = confirm("Do you really want to delete records?");
      if (isDelete == true) {
           // AJAX Request
           $.ajax({
            url: 'bulkdelete_user.php',
            type: 'POST',
            data: { post_id: post_arr},
            success: function(response){
             location.reload();
           }
         });
         } 
       } 
       else{
        alert("Please select atleast one checkbox to Delete.");
      }
    });

  });


   $(document).ready(function(){

    $('.outsidetable').on('scroll', function() {
     var p = $( "th:eq(2)").position();
     console.log(p.left);
     if (p.left > 160) {
       $( "th:eq(3),th:eq(2),th:eq(1)" ).css("background-color", "#567AED");
       $(".lasst").addClass("shadow");
     }
     else{
       $( "th:eq(3),th:eq(2),th:eq(1)" ).css("background-color", "#0a1157");
       $(".lasst").removeClass("shadow");
     }
   });
  });
</script>
<?php include 'footer.php'; ?>