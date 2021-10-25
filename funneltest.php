<?php include 'config.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>
<?php 

$ueraccessquery = "SELECT * from crm_useraccess where email= '" . $_SESSION['email'] . "' ";
$result2 = mysqli_query($con, $ueraccessquery);
while ($row3 = mysqli_fetch_assoc($result2)) $user_access[] = $row3;
?>

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
/*th:nth-child(1),
td:nth-child(1)  {
  position: sticky;
  left: 0px;
  z-index: 100;
}
th:nth-child(2),
td:nth-child(2)  {
  position: sticky;
  left: 48px;
  z-index: 100;
}
th:nth-child(3),
td:nth-child(3)  {
  position: sticky;
  left: 127px;
  z-index: 100;
}

th:nth-child(4),
td:nth-child(4)  {
  position: sticky;
  left: 199px;
  z-index: 100;
}

th:nth-child(5),
td:nth-child(5)  {
  position: sticky;
  left: 349px;
  z-index: 100;
}

th:nth-child(6),
td:nth-child(6)  {
  position: sticky;
  left: 492px;
  z-index: 100;
}


tr:nth-of-type(even) td:nth-of-type(1) { background-color: #f2f2f2; }
tr:nth-of-type(odd) td:nth-of-type(1) { background-color: white; }

tr:nth-of-type(even) td:nth-of-type(2) { background-color: #f2f2f2; }
tr:nth-of-type(odd) td:nth-of-type(2) { background-color: white; }

tr:nth-of-type(even) td:nth-of-type(3) { background-color: #f2f2f2; }
tr:nth-of-type(odd) td:nth-of-type(3) { background-color: white; }

tr:nth-of-type(even) td:nth-of-type(4) { background-color: #f2f2f2; }
tr:nth-of-type(odd) td:nth-of-type(4) { background-color: white; }

tr:nth-of-type(even) td:nth-of-type(5) { background-color: #f2f2f2; }
tr:nth-of-type(odd) td:nth-of-type(5) { background-color: white; }

tr:nth-of-type(even) td:nth-of-type(6) { background-color: #f2f2f2; }
tr:nth-of-type(odd) td:nth-of-type(6) { background-color: white; }
*/
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
    <div class="modal-body" id="info_updaterecord">
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
    <div class="modal-body" id="info_deleterecord">
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
    <div style="overflow-x:auto;">
      <table class="table table-fixed" id="myTable">
       <?php
       $sql = "SELECT * FROM funnel ";
       $result = mysqli_query($con, $sql);
       while($row2 = mysqli_fetch_assoc($result))
        $product_data[] = $row2;
      $counnt = count($product_data);
      $i = 0;

      ?>
      <thead>
        <tr >
                     <!-- <th>Id</th>
                     <th>Company</th>
                     <th >Customer Name</th>
                     <th >Mobile</th>
                     <th>Reference</th>
                     <th>Price</th>
                     <th >Remarks </th>
                     <th>City</th>
                     <th>State</th>
                     <th>Quantity</th>
                     <th >Reporter</th>
                     <th >Product Name</th>
                     <th >Status</th>
                     <th >Re Follow up</th> -->

                     <th>S.no</th>
                     <?php if ($user_access[0]["funnel_actions"] == 'Yes'): ?>
                       <th>Actions</th>
                     <?php endif ?>
                     <th>Date</th>
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
                     <?php if ($user_access[0]["funnel_status"] == 'Yes'): ?>
                       <th >Status</th>
                     <?php endif ?>
                     
                     <th >SalesPerson</th>
                     


                     
                   </tr>
                 </thead>
                 <tbody>
                  <?php 
                  while($i<$counnt){
                   ?>
                   <tr>
                    <?php $datesss =  date('d-m-Y', strtotime($product_data[$i]["dates"]));?>
                    <td><?php echo $i+1 ?></td>
                    <?php if ($user_access[0]["funnel_actions"] == 'Yes'): ?>
                     <td>
                      <button type="button" class="btn  updaterecord" id="<?php echo( $product_data[$i]["chequeno"]) ?>-<?php echo( $product_data[$i]["billno"])?>-<?php  echo( $product_data[$i]["id"]) ?>"  ><i class="fas fa-pencil-alt"></i></button>      
                      <button type="button" class="btn  deleterecord" id="<?php echo( $product_data[$i]["company"]) ?>-<?php echo( $product_data[$i]["customer"])?>-<?php  echo( $product_data[$i]["id"]) ?>"  ><i class="fas fa-trash-alt"></i></button>

                    </td>
                  <?php endif ?>

                  <td><?php echo( $datesss ) ?></td>
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
                  <?php if ($user_access[0]["funnel_status"] == 'Yes'): ?>
                    <td style="width: 110px;display: block;">
                      <?php if ($product_data[$i]["status"] == 'Open') {?>

                        <span class="cardok"><?php echo $product_data[$i]["status"];?></span>
                        <span class=" editsts updatestatuss" id="<?php echo( $product_data[$i]["company"]) ?>-<?php echo( $product_data[$i]["customer"])?>-<?php  echo( $product_data[$i]["id"]) ?>" ><i class="fas fa-pencil-alt"></i>
                        </span>
                      <?php }
                      else{ ?>

                        <span class="cardnotok"><?php echo $product_data[$i]["status"];?></span>
                        <span class=" editsts updatestatuss" id="<?php echo( $product_data[$i]["company"]) ?>-<?php echo( $product_data[$i]["customer"])?>-<?php  echo( $product_data[$i]["id"]) ?>" ><i class="fas fa-pencil-alt"></i>

                        <?php } ?>
                      </td>
                    <?php endif ?>


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
      var cccc = 0,j,checkindex=0,k;
      var columnss=[],colres=[];
      var filter = event.target.value.toUpperCase();
      var rows = document.querySelector("#myTable tbody").rows;
      var colCount = $("#myTable tr th").length;
        // alert(colCount);

        for (var i = 0; i < rows.length; i++) {

          for(j=0;j < colCount;j++){
             columnss[j] = rows[i].cells[j].textContent.toUpperCase();
          }

          console.log(columnss);

          for(k=0;k<colCount;k++){

            if (columnss[k].indexOf(filter) > -1) {
              colres[k] = "true";
            }
            else{
              colres[k]= "false";
            }
            
          }
          console.log(colres);

          for (var l = 0; l < colCount; l++) {
            if (colres[l]=="true") {
              checkindex++;
            }
            else{
              continue;
            }
          }



          if (checkindex>0)
          {
            rows[i].style.display = "";
            // cccc++;
          } 
          else {
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
          $('#info_updaterecord').html(data);
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
        $('#info_deleterecord').html(data);
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