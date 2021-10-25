<?php include 'config.php'; ?>
<?php include 'crm_userauth.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>



 
<?php 
if (isset($_SESSION['status']) && $_SESSION['status_code'] == 'success') { ?>
   <script>
      swal({
        title: "<?php echo $_SESSION['status']?>",
       text: "Record has been added!",
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
       text: "Record Not added!",
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
/*th:nth-child(4),
td:nth-child(4)  {
 left: 157px;

}*/
th:nth-child(2),th:nth-child(3) {
 background-color: #0a1157;
 position: sticky;
 border: 1px solid white !important;
 z-index: 2;
}
td:nth-child(2),td:nth-child(3) {
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
/*.shadow {
    padding: 12px !important;
}*/
 </style>
 <!-- ---------------Update Record-------------------- -->
 <div class="container">
   <!-- Modal -->
   <div class="modal fade" id="updaterecord_suspense_model" role="dialog">
    <div class="modal-dialog modal-lg">
     <div class="modal-content" >
      <form action="" method="POST" id="updaterecordform">
       <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Update Details</h4>
      </div>
      <div class="modal-body" id="info_updaterecord_ssss">
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
    <div class="modal-body" id="info_deleterecord_susss">
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
 <div class="modal fade" id="update_status_susmodel" role="dialog">
  <div class="modal-dialog modal-lg">
   <div class="modal-content" >
    <form action="" method="POST" id="update_status_susform" role="form">
     <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal">&times;</button>
      <h4 class="modal-title">Suspense Entry Management</h4>
    </div>
    <div class="modal-body" id="info_update_status_sus">
    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-default  pull-left" data-dismiss="modal">Close</button>
      <button type="submit" class="btn btn-default pull-right" id="update_status_sus">Update</button>
    </div>
  </form>
</div>
</div>
</div>
</div>
<div class="container-fluid">
 <div class="right-part">

  <div class="rightpartitle">
    <span class="acttitle">Suspense Account Management</span>
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
    <!-- <li>
      <div class="input-group" id="yearly" >
        <select class="form-control input-sm" id="seleted_year" >
          <option value="25" selected="selected">25 Records</option>
          <option value="50">50 Records</option>
          <option value="100">100 Records</option>
          <option value="All">All</option>
        </select>
      </div>
    </li> -->
    <li><button onclick="location.href = './addsuspense.php';" type="button" id="addrecord" class="btn btns pull-left">Add Record <i class="fas fa-user-plus btnicons"></i></button></li>
    <?php  if (isset($_SESSION['email']) && ($_SESSION['usertype']=='Admin')) { ?>
      <li><button  type="button" id="bulkdelete" class="btn btns pull-left">Bulk Delete <i class="fas btnicons fa-check-double"></i></button>
      </li>
      <li >

        <button onclick="location.href = './exporttabledatasuspense.php';" type="button" id="download" class="btn btns pull-right">Export data <i class="fas fa-file-download btnicons"></i></button>

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
       $sql = "SELECT * FROM suspense ";
       $result = mysqli_query($con, $sql);
       while($row2 = mysqli_fetch_assoc($result))
        $product_data[] = $row2;
      $counnt = count($product_data);
      $i = 0;


      $ueraccessquery = "SELECT * from crm_useraccess where email= '" . $_SESSION['email'] . "' ";
      $result2 = mysqli_query($con, $ueraccessquery);
      while ($row3 = mysqli_fetch_assoc($result2)) $user_access[] = $row3;
      ?>
      <thead>
        <style>

      </style>
      <tr >
        <th style="text-align: center;"><button style="padding: 1px 10px;" type="button" id="deleteall" class="btn btns"><i class="fas fa-trash-alt"></i></button></th>
        <th>S.no<span class='sorticon'><i class="fas fa-sort"></i></span></th>
        <th>Status<span class='sorticon'><i class="fas fa-sort"></i></span></th>
        <th>Party<span class='sorticon'><i class="fas fa-sort"></i></span></th>
        <th >Cheque No.<span class='sorticon'><i class="fas fa-sort"></i></span></th>

        <th>Cheque Date<span class='sorticon'><i class="fas fa-sort"></i></span></th>
        <th >Bank<span class='sorticon'><i class="fas fa-sort"></i></span></th>
        <th>Amount<span class='sorticon'><i class="fas fa-sort"></i></span></th>
        <th >Bill No. <span class='sorticon'><i class="fas fa-sort"></i></span></th>
        <th>Remarks<span class='sorticon'><i class="fas fa-sort"></i></span></th>

        <th>Reported On<span class='sorticon'><i class="fas fa-sort"></i></span></th>
        <th>Reported By<span class='sorticon'><i class="fas fa-sort"></i></span></th>
        <th>Approved Date<span class='sorticon'><i class="fas fa-sort"></i></span></th>
        <th>Approved By<span class='sorticon'><i class="fas fa-sort"></i></span></th>
      </tr>
    </thead>
    <tbody>
      <?php 
      while($i<$counnt){
       ?>
       <tr>

        <td class="acticonfirst">
          <ul class="list-inline">
            <li>
              <div class="dropdown">
                <button class="btn  dropdown-toggle" type="button" data-toggle="dropdown" style="padding: 0px 5px;font-size: 12px;">
                  <span class="acticon"><i class="fas fa-ellipsis-v"></i></span>

                  <ul class="dropdown-menu">
                    <?php if ($user_access[0]["suspense_actions"] == 'Yes'): ?>
                      <li class="updaterecord" id="<?php echo( $product_data[$i]["chequeno"]) ?>---<?php echo( $product_data[$i]["billno"])?>---<?php  echo( $product_data[$i]["id"]) ?>" ><span class="dropdown-menuicn"><i class="fas fa-pencil-alt"></i></span><span class="dropdown-menutxt">Update</span></li>

                      <li class="deleterecord" id="<?php echo( $product_data[$i]["chequeno"]) ?>---<?php echo( $product_data[$i]["billno"])?>---<?php  echo( $product_data[$i]["id"]) ?>"><span class="dropdown-menuicn"><i class="fas fa-trash-alt"></i></span><span class="dropdown-menutxt">Delete</span></li>
                    <?php endif ?>
                    <?php if ($user_access[0]["suspense_status"] == 'Yes'): ?>
                <li class="updatestatuss" id="<?php echo( $product_data[$i]["chequeno"]) ?>---<?php echo( $product_data[$i]["billno"])?>---<?php  echo( $product_data[$i]["id"]) ?>" >

                  <span class="dropdown-menuicn"><i class="fas fa-pencil-alt"></i></span>
                  <span class="dropdown-menutxt">Update Status</span>
                </li>
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
          <td class="lasst">
            <?php if ($product_data[$i]["status"] == 'Open') {?>
              <span class="cardprocess"><?php echo $product_data[$i]["status"];?></span> 
            <?php }else if($product_data[$i]["status"] == 'Failed'){ ?>
              <span class="cardnotok"><?php echo $product_data[$i]["status"];?></span> 
            <?php } else { ?>
              <span class="cardok"><?php echo $product_data[$i]["status"];?></span> 
            <?php }  ?>
          </td>
          <td><?php echo( $product_data[$i]["party"]) ?></td>
          <td><?php echo( $product_data[$i]["chequeno"]) ?></td>

          <td><?php echo date('d-m-Y', strtotime($product_data[$i]["bill_date"])) ?></td>
          <td><?php echo( $product_data[$i]["bank"]) ?></td>
          <td><?php echo( $product_data[$i]["amount"]) ?></td>
          <td><?php echo( $product_data[$i]["billno"]) ?></td>
          <td><?php  echo $product_data[$i]['remarks'] ?></td>
          <td><?php echo date('d-m-Y', strtotime($product_data[$i]["requested_date"])) ?></td>
          <td><?php echo( $product_data[$i]["requested_by"]) ?></td>
          <?php 
          if ($product_data[$i]["approved_date"] == ''||$product_data[$i]["approved_date"] == 'NULL') { ?>
            <td>Not Updated</td>
          <?php  } else{?>
            <td><?php echo date('d-m-Y', strtotime($product_data[$i]["approved_date"])) ?></td>
          <?php  } ?>

          <?php 
          if ($product_data[$i]["approved_by"] == ''||$product_data[$i]["approved_by"] == 'NULL') { ?>
            <td>Not Updated</td>
          <?php  } else{?>
            <td><?php echo $product_data[$i]["approved_by"] ?></td>
          <?php  } ?>


          <?php $i++; } ?>
        </tr>
      </tbody>
    </table>
  </div>
</div>
</div>
</div>
</div>
<script>
  // --------------------------------------------------------- Update record
  $(document).ready(function(){

    $(document).on('click','.updaterecord', function(){

     var edit_id = $(this).attr('id');
     $.ajax({
      url:"edit_data_updaterecord_suspense.php",
      type:"POST",
      data:{edit_id:edit_id},
      success:function(data){
        $('#info_updaterecord_ssss').html(data);
        $('#updaterecord_suspense_model').modal('show');
      }
    })
   });
    $(document).on('click','#update_updaterecord', function(){
      $.ajax({
        url:"save_update_updaterecord_suspense.php",
        type:"POST",
        data:$('#updaterecordform').serialize(),
        success:function(data){

          $('#updaterecord_suspense_model').modal('hide');
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
      url:"edit_data_deleterecord_suspense.php",
      type:"POST",
      data:{edit_id:edit_id},
      success:function(data){
        $('#info_deleterecord_susss').html(data);
        $('#deleterecord').modal('show');
      }
    })
   });
    $(document).on('click','#update_deleterecord', function(){
      $.ajax({
        url:"save_update_deleterecord_suspense.php",
        type:"POST",
        data:$('#deleterecordform').serialize(),
        success:function(data){

          $('#deleterecord').modal('hide');
          setInterval('location.reload()', 1000); 
        }
      });
    });
  });
   $(document).ready(function(){
     $(document).on('click','.updatestatuss', function(){

      var edit_id = $(this).attr('id');
      $.ajax({
       url:"update_suspense_status.php",
       type:"POST",
       data:{edit_id:edit_id},
       success:function(data){
         $('#info_update_status_sus').html(data);
         $('#update_status_susmodel').modal('show');
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
         url:"save_update_status_sus.php",
         type:"POST",
         data:$('#update_status_susform').serialize(),
         success:function(data){
           $('#update_status_susmodel').modal('hide');
           setInterval('location.reload()', 1000); 
         }
       });
      }
      return false;
    });
   });
 </script>
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

      var ccccccccc = rows[i].cells[4].textContent.toUpperCase();
      var sixthCol = rows[i].cells[5].textContent.toUpperCase();
      var seventhCol = rows[i].cells[6].textContent.toUpperCase();
      var eightcol = rows[i].cells[7].textContent.toUpperCase();
      var ninethcol = rows[i].cells[8].textContent.toUpperCase();
      var tenthcol = rows[i].cells[9].textContent.toUpperCase();
      var elecol = rows[i].cells[10].textContent.toUpperCase();
      var twecol = rows[i].cells[11].textContent.toUpperCase();
      var thircol = rows[i].cells[12].textContent.toUpperCase();

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
        thircol.indexOf(filter) > -1) {
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
            url: 'bulkdelete_suspense.php',
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
         $( "th:eq(2),th:eq(1)" ).css("background-color", "#567AED");
         $(".lasst").addClass("shadow");
       }
       else{
         $( "th:eq(2),th:eq(1)" ).css("background-color", "#0a1157");
         $(".lasst").removeClass("shadow");
       }
    });
 });


</script>

<?php include 'footer.php'; ?>