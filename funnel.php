<?php include 'config.php'; ?>
<?php include 'crm_userauth.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>

 
<?php 
if (isset($_SESSION['status']) && $_SESSION['status_code'] == 'success') { ?>
   <script>
      swal({
        title: "<?php echo $_SESSION['status']?>",
       text: "New Record has been added!",
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
       text: "New Record Not added!",
       icon: "<?php echo $_SESSION['status_code']?>",
       button: "Ok",
    });
 </script>
<?php
unset($_SESSION['status']);
unset($_SESSION['status_code']);
}
  ?>
<?php 


$sql = "SELECT email, password,usertype FROM crm_login where email = '".$_SESSION['email']."' ";
$result = mysqli_query($con, $sql) or die("Error: " . mysqli_error($con));
while($rw= mysqli_fetch_assoc($result))
  $row[] = $rw;

$ueraccessquery = "SELECT * from crm_useraccess where email= '" . $_SESSION['email'] . "' ";
$result2 = mysqli_query($con, $ueraccessquery);
while ($row3 = mysqli_fetch_assoc($result2)) 
  $user_access[] = $row3;

$ueraccess_str = $user_access[0]['funnel_email'];
$x_ueraccess_str = explode(",",$ueraccess_str);
for ($sri=0; $sri < count($x_ueraccess_str)-1; $sri++) { 

  $funnel_email_arrs .= "'".$x_ueraccess_str[$sri]."'". ",";
}
$funnel_email_arrs = rtrim($funnel_email_arrs, ",");

if ($row[0]['usertype'] == 'Admin') {
  $getdata = "SELECT * FROM funnel ORDER BY dates";
}
else{
  $getdata = "SELECT * FROM funnel where salesperson IN ($funnel_email_arrs) ORDER BY dates";
}

$resultcc = mysqli_query($con, $getdata);
while($row2 = mysqli_fetch_assoc($resultcc))
  $product_data[] = $row2;
$counnt = count($product_data);
$i = 0;
?>
<style>


</style>
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
 left: 157px;

}
th:nth-child(5),
td:nth-child(5)  {
 left: 273px;
}
th:nth-child(6),
td:nth-child(6)  {
 left: 373px;
}
th:nth-child(2),th:nth-child(3),th:nth-child(4),th:nth-child(5),th:nth-child(6){
 background-color: #0a1157;
 position: sticky;
 border: 1px solid white !important;
 z-index: 2;
}
td:nth-child(2),td:nth-child(3),td:nth-child(4) ,td:nth-child(5),td:nth-child(6)  {
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
/*th:nth-child(1),th:nth-child(2),th:nth-child(3),th:nth-child(4){
  background: #06065a;
}


td:nth-child(1)  {
  position: sticky;
  left: 34px;
  background-color: white;
  
}


td:nth-child(2)  {
  position: sticky;
  left: 34px;
  background-color: white;
  
}

td:nth-child(3)  {
  position: sticky;
  left: 79px;
  background-color: white;
  
}


td:nth-child(4)  {
  position: sticky;
  left: 162px;
  background-color: white;
  
  }

tr:nth-of-type(even) td:nth-of-type(1) { background-color: #f2f2f2; }
tr:nth-of-type(odd) td:nth-of-type(1) { background-color: white; }

tr:nth-of-type(even) td:nth-of-type(2) { background-color: #f2f2f2; }
tr:nth-of-type(odd) td:nth-of-type(2) { background-color: white; }

tr:nth-of-type(even) td:nth-of-type(3) { background-color: #f2f2f2; }
tr:nth-of-type(odd) td:nth-of-type(3) { background-color: white; }

tr:nth-of-type(even) td:nth-of-type(4) { background-color: #f2f2f2; }
tr:nth-of-type(odd) td:nth-of-type(4) { background-color: white; }*/

</style>
<!-- ---------------Update Record-------------------- -->
<div class="container">
 <!-- Modal -->
 <div class="modal fade" id="updaterecord" role="dialog">
  <div class="modal-dialog modal-lg">
   <div class="modal-content" >
    <form action="" method="POST" id="updaterecordform">
     <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal">&times;</button>
      <h4 class="modal-title">Update Details</h4>
    </div>
    <div class="modal-body" id="info_updaterecord_funnels">
    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-default  pull-left" data-dismiss="modal">Close</button>
      <button type="submit"  class="btn btns pull-right" id="update_updaterecord">Update</button>
    </div>
  </form>
</div>
</div>
</div>
</div>
<!-- ---------------Delete Record-------------------- -->
<div class="container">
 <!-- Modal -->
 <div class="modal fade" id="deleterecord" role="dialog">
  <div class="modal-dialog modal-lg">
   <div class="modal-content" >
    <form action="" method="POST" id="deleterecordform">
     <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal">&times;</button>
      <h4 class="modal-title">Update Details</h4>
    </div>
    <div class="modal-body" id="info_deleterecord_funells">
    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-default  pull-left" data-dismiss="modal">Close</button>
      <button type="submit"  class="btn btns pull-right" id="update_deleterecord">Delete</button>
    </div>
  </form>
</div>
</div>
</div>
</div>
<div class="container">
 <!-- Modal -->
 <div class="modal fade" id="update_status_funnelmodel" role="dialog">
  <div class="modal-dialog modal-lg">
   <div class="modal-content" >
    <form action="" method="POST" id="update_status_susform" role="form">
     <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal">&times;</button>
      <h4 class="modal-title">Funnel</h4>
    </div>
    <div class="modal-body" id="info_update_status_funnel">
    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-default  pull-left" data-dismiss="modal">Close</button>
      <button type="submit" class="btn btn-default pull-right" id="update_status_funnel">Update</button>
    </div>
  </form>
</div>
</div>
</div>
</div>
<div class="container-fluid">
 <div class="right-part">

  <div class="rightpartitle">
    <span class="acttitle">Funnel</span>
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
       <li>
         
       </li>
     </ul>
   </div>
 </div>
 <div class="col-lg-6">
  <ul class="list-inline" style="text-align: right;">
    <li><button onclick="location.href = './addfunnel.php';" type="button" id="addrecord" class="btn btns pull-left">Add Record <i class="fas fa-user-plus btnicons"></i></button>
    </li>
    <?php  if (isset($_SESSION['email']) && ($_SESSION['usertype']=='Admin')) { ?>
      <li><button  type="button" id="bulkdelete" class="btn btns pull-left">Bulk Delete <i class="fas btnicons fa-check-double"></i></button>
      </li>
      <li >
        
        <button onclick="location.href = './exporttabledatafunnel.php';" type="button" id="download" class="btn btns pull-right">Export data <i class="fas fa-file-download btnicons"></i></button>
        
      </li>
    <?php } ?>
  </ul>
</div>
</div>
<div class="row">
  <div class="col-lg-12">
    <div class="outsidetable">
      <table class="table table-fixed table-bordered" id="myTable">
       <?php
       

       ?>
       <thead>
        <tr >
         <th style="text-align: center;"><button style="padding: 1px 10px;" type="button" id="deleteall" class="btn btns"><i class="fas fa-trash-alt"></i></button></th>
         <th>S.no<span class='sorticon'><i class="fas fa-sort"></i></span></th>
         <th>Date<span class='sorticon'><i class="fas fa-sort"></i></span></th>
         <th >Status<span class='sorticon'><i class="fas fa-sort"></i></span></th>
         <th >Industry<span class='sorticon'><i class="fas fa-sort"></i></span></th>
         <th >Company<span class='sorticon'><i class="fas fa-sort"></i></span></th>
         <th>Customer<span class='sorticon'><i class="fas fa-sort"></i></span></th>
         <th>Mobile<span class='sorticon'><i class="fas fa-sort"></i></span></th>
         <th >Address <span class='sorticon'><i class="fas fa-sort"></i></span></th>
         <th>City<span class='sorticon'><i class="fas fa-sort"></i></span></th>
         <th>State<span class='sorticon'><i class="fas fa-sort"></i></span></th>
         <th>Email<span class='sorticon'><i class="fas fa-sort"></i></span></th>
         <th>Product<span class='sorticon'><i class="fas fa-sort"></i></span></th>
         <th>Quantity<span class='sorticon'><i class="fas fa-sort"></i></span></th>
         <th >Remarks<span class='sorticon'><i class="fas fa-sort"></i></span></th>


         <th >SalesPerson<span class='sorticon'><i class="fas fa-sort"></i></span></th>
       </tr>
     </thead>
     <tbody> 
      <?php 
      while($i<$counnt){
       ?>
       <tr>
        <?php $datesss =  date('d-m-Y', strtotime($product_data[$i]["dates"]));?>
        <td class="acticonfirst">
          <ul class="list-inline">
            <li>
              <div class="dropdown">
                <button class="btn  dropdown-toggle" type="button" data-toggle="dropdown" style="padding: 0px 5px;font-size: 12px;">
                  <span class="acticon"><i class="fas fa-ellipsis-v"></i></span></button>

                  <ul class="dropdown-menu">
                    <?php if ($user_access[0]["funnel_actions"] == 'Yes'): ?>
                      <li class="updaterecord" id="<?php  echo( $product_data[$i]["id"]) ?>"><span class="dropdown-menuicn"><i class="fas fa-pencil-alt"></i></span><span class="dropdown-menutxt">Update</span></li>

                      <li class="deleterecord" id="<?php echo( $product_data[$i]["company"]) ?>-<?php echo( $product_data[$i]["customer"])?>-<?php  echo( $product_data[$i]["id"]) ?>"><span class="dropdown-menuicn"><i class="fas fa-trash-alt"></i></span><span class="dropdown-menutxt">Delete</span></li>
                    <?php endif ?>
                    <?php if ($user_access[0]["funnel_status"] == 'Yes'): ?>
                      <li class="  updatestatuss" id="<?php echo( $product_data[$i]["company"]) ?>-<?php echo( $product_data[$i]["customer"])?>-<?php  echo( $product_data[$i]["id"]) ?>"><span class="dropdown-menuicn"><i class="fas fa-pencil-alt"></i></span><span class="dropdown-menutxt">Status change</span></li>
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
          <td><?php echo( $datesss ) ?></td>
          <td class="lasst">
            <?php if ($product_data[$i]["status"] == 'Open') {?>
              <span class="cardok"><?php echo $product_data[$i]["status"];?></span>
            <?php }
            else{ ?>
              <span class="cardnotok"><?php echo $product_data[$i]["status"];?></span>
            <?php } ?>
          </td>
          <td><?php echo( $product_data[$i]["industry"]) ?></td>
          <td><?php echo( $product_data[$i]["company"]) ?></td>
          <td><?php echo( $product_data[$i]["customer"]) ?></td>
          <td><?php  echo $product_data[$i]['mobile'] ?></td>
          <td><?php echo( $product_data[$i]["address"]) ?></td>
          <td><?php  echo $product_data[$i]['city'] ?></td>
          <td><?php echo( $product_data[$i]["state"]) ?></td>
          <td><?php echo( $product_data[$i]["email"]) ?></td>
          <td><?php echo( $product_data[$i]["product"]) ?></td>
          <td><?php echo( $product_data[$i]["qty"]) ?></td>
          <td><?php echo( $product_data[$i]["remarks"]) ?></td>

          <td><?php echo( $product_data[$i]["salesperson"]) ?></td>
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
    var colCount = $("#myTable tr th").length;
        // alert(colCount);

        for (var i = 0; i < rows.length; i++) {
          var firstCol = rows[i].cells[0].textContent.toUpperCase();
          var secondCol = rows[i].cells[1].textContent.toUpperCase();
          var thirdCol = rows[i].cells[2].textContent.toUpperCase();
          var forthCol = rows[i].cells[3].textContent.toUpperCase();

          var ccccccccc = rows[i].cells[4].textContent.toUpperCase();
          var sixthCol = rows[i].cells[5].textContent.toUpperCase();
          var seventhCol = rows[i].cells[6].textContent.toUpperCase();
          var eightcol = rows[i].cells[7].textContent.toUpperCase();
          var ninethcol = rows[i].cells[8].textContent.toUpperCase();
          var tenthcol = rows[i].cells[9].textContent.toUpperCase();
          var elecol = rows[i].cells[10].textContent.toUpperCase();
          var twecol = rows[i].cells[11].textContent.toUpperCase();
          var thircol = rows[i].cells[12].textContent.toUpperCase();
          var forteenCol = rows[i].cells[13].textContent.toUpperCase();

          if (firstCol.indexOf(filter) > -1 || 
            secondCol.indexOf(filter) > -1|| 
            thirdCol.indexOf(filter) > -1|| 
            forthCol.indexOf(filter) > -1|| 
            ccccccccc.indexOf(filter) > -1|| 
            sixthCol.indexOf(filter) > -1|| 
            seventhCol.indexOf(filter) > -1|| 
            eightcol.indexOf(filter) > -1|| 
            ninethcol.indexOf(filter) > -1|| 
            tenthcol.indexOf(filter) > -1|| 
            elecol.indexOf(filter) > -1|| 
            twecol.indexOf(filter) > -1|| 
            thircol.indexOf(filter) > -1|| 
            forteenCol.indexOf(filter) > -1) {
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
  </script>
  <script>
    // --------------------------------------------------------- Update record
    $(document).ready(function(){

      $(document).on('click','.updaterecord', function(){

       var edit_id = $(this).attr('id');
       $.ajax({
        url:"edit_data_updaterecord_funnel.php",
        type:"POST",
        data:{edit_id:edit_id},
        success:function(data){
          $('#info_updaterecord_funnels').html(data);
          $('#updaterecord').modal('show');
        }
      })
     });
      $(document).on('click','#update_updaterecord', function(){
        $.ajax({
          url:"save_update_updaterecord_funnel.php",
          type:"POST",
          data:$('#updaterecordform').serialize(),
          success:function(data){

            $('#updaterecord').modal('hide');
            setInterval('location.reload()', 1000); 
          }
        });
      });
    });
   // --------------------------------------------------------- Delete record
   $(document).ready(function(){

    $(document).on('click','.deleterecord', function(){

     var edit_id = $(this).attr('id');
     $.ajax({
      url:"edit_data_deleterecord_funnel.php",
      type:"POST",
      data:{edit_id:edit_id},
      success:function(data){
        $('#info_deleterecord_funells').html(data);
        $('#deleterecord').modal('show');
      }
    })
   });
    $(document).on('click','#update_deleterecord', function(){
      $.ajax({
        url:"save_update_deleterecord_funnel.php",
        type:"POST",
        data:$('#deleterecordform').serialize(),
        success:function(data){

          $('#deleterecord').modal('hide');
          setInterval('location.reload()', 1000); 
        }
      });
    });
  });
   // -------------------------------------------------
   $(document).ready(function(){
     $(document).on('click','.updatestatuss', function(){

      var edit_id = $(this).attr('id');
      $.ajax({
       url:"update_funnel_status.php",
       type:"POST",
       data:{edit_id:edit_id},
       success:function(data){
         $('#info_update_status_funnel').html(data);
         $('#update_status_funnelmodel').modal('show');
       }
     })
    });
     $("#update_status_susform").submit(function(e) {
      e.preventDefault();
      var remarks = $("#newremarks").val();
      if (remarks == '') {
        $("#newremarks").focus();
        $("#newremarks").attr('placeholder', 'Enter Remarks*');
        $("#newremarks").attr('style', 'border:1px solid red !important');
        $("#newremarks").addClass("animate__animated animate__shakeX animate__repeat-1 ");
      }
      else {
        $.ajax({
         url:"save_update_status_funnel.php",
         type:"POST",
         data:$('#update_status_susform').serialize(),
         success:function(data){
           $('#update_status_funnelmodel').modal('hide');
           setInterval('location.reload()', 1000); 
         }
       });
      }
      return false;
    });
   });

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
            url: 'bulkdelete_funnel.php',
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
       $( "th:eq(5),th:eq(4),th:eq(3),th:eq(2),th:eq(1)" ).css("background-color", "#567AED");
       $(".lasst").addClass("shadow");
     }
     else{
       $( "th:eq(5),th:eq(4),th:eq(3),th:eq(2),th:eq(1)" ).css("background-color", "#0a1157");
       $(".lasst").removeClass("shadow");
     }
   });
  });
</script>
<?php include 'footer.php'; ?>