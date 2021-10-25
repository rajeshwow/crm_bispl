<?php include 'config.php'; ?>
<?php include 'crm_userauth.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>
<?php 


$sql = "SELECT email, password,usertype FROM crm_login where email = '".$_SESSION['email']."' ";
$result = mysqli_query($con, $sql) or die("Error: " . mysqli_error($con));
while($rw= mysqli_fetch_assoc($result))
  $row[] = $rw;

$ueraccessquery = "SELECT * from crm_useraccess where email= '" . $_SESSION['email'] . "' ";
$result2 = mysqli_query($con, $ueraccessquery);
while ($row3 = mysqli_fetch_assoc($result2)) $user_access[] = $row3;

if ($row[0]['usertype'] == 'Admin') {
  $getdata = "SELECT * FROM funnel ORDER BY dates";
}
else{
  $getdata = "SELECT * FROM funnel where reporter_open = '".$_SESSION['email']."' ORDER BY dates";
}

$resultcc = mysqli_query($con, $getdata);
while($row2 = mysqli_fetch_assoc($resultcc))
  $product_data[] = $row2;
$counnt = count($product_data);
$i = 0;
?>
<style>

.acticonfirst{
  /*font-size: 18px;*/
  overflow: visible;
  color: darkblue;
}
.acticonfirst .dropdown-menu::before {
 position: absolute;
 top: 25px;
 left: -10px;
 display: inline-block;
 border-top: 5px solid transparent;
 border-right: 10px solid white;
 border-bottom: 5px solid transparent;
 content: '';
}
.dropdown-menutxt{
  padding-left: 10px;
  font-weight: bolder;
}
.acticonfirst .dropdown-menu {
  position: absolute;
  top: -20px;
  left: 20px;
  z-index: 1000;
  display: none;
  float: left;
  min-width: 160px;
  padding: 20px;
  margin: 2px 0 0;
  font-size: 14px;
  text-align: left;
  list-style: none;
  background-color: #fff;
  background-clip: padding-box;
  border: none;
  border-radius: 0;
  -webkit-box-shadow: 0 6px 12px rgb(0 0 0 / 18%);
  box-shadow: 0 6px 12px rgb(0 0 0 / 18%);
}
</style>
<style type="text/css">
.formbox{
 width: 800px;
 display: block;
 text-align: left;
 background-color: white;
 box-shadow: 0px 0px 14px -8px rgba(115, 109, 115, 0.67);
 padding: 1% 5%;
 margin: auto;
}

li{
  list-style-type: none;
}
/*th:nth-child(1),th:nth-child(2),th:nth-child(3),th:nth-child(4){
  background: #06065a;
}*/
td:nth-child(1)  {
  position: sticky;
  left: 0px;
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




/*tr:nth-of-type(even) td:nth-of-type(1) { background-color: #f2f2f2; }
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
     </ul>
   </div>
 </div>
 <div class="col-lg-6">
  <ul class="list-inline" style="text-align: right;">
    <li><button onclick="location.href = './addfunnel.php';" type="button" id="addrecord" class="btn btns pull-left">Add Record <i class="fas fa-user-plus btnicons"></i></button></li>
    <li >
      <?php 
      if (isset($_SESSION['email']) && ($_SESSION['usertype']=='Admin')) { ?>
        <button onclick="location.href = './exporttabledatafunnel.php';" type="button" id="download" class="btn btns pull-right">Export data <i class="fas fa-file-download btnicons"></i></button>
      <?php } ?>
    </li>
  </ul>
</div>
</div>
<div class="row">
  <div class="col-lg-12">
    <div class="outsidetable">
      <table class="table table-fixed" id="myTable">
       <?php
       

       ?>
       <thead>
        <tr >
         <th ></th>
         <th>S.no</th>
         <th>Date</th>
         <th >Status</th>
         <th >Industry</th>
         <th >Company</th>
         <th>Customer</th>
         <th>Mobile</th>
         <th >Address </th>
         <th>City</th>
         <th>State</th>
         <th>Email</th>
         <th>Product</th>
         <th>Quantity</th>
         <th >Remarks</th>


         <th >SalesPerson</th>
       </tr>
     </thead>
     <style>
     .dropdown-menuicn{
      width: 20px;
      display: inline-block;
    }
    .acticonfirst .dropdown-menu>li {
      padding: 7% 5%;
    }
  </style>
  <tbody>
    <?php 
    while($i<$counnt){
     ?>
     <tr>
      <?php $datesss =  date('d-m-Y', strtotime($product_data[$i]["dates"]));?>
      <td class="acticonfirst">

        <div class="dropdown">
          <button class="btn  dropdown-toggle" type="button" data-toggle="dropdown" style="padding: 0px 5px;">
            <span class="acticon"><i class="fas fa-ellipsis-v"></i></span>

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
        </td>
        <td><?php echo $i+1 ?></td>
        <td><?php echo( $datesss ) ?></td>
        <td style="">
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
 </script>
 <?php include 'footer.php'; ?>