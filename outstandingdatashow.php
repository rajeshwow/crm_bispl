<?php include 'crm_userauth.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>
<?php
$query="SELECT * from tallyoutstanding_indore union SELECT * from tallyoutstanding_lucknow union SELECT * from tallyoutstanding_jaipur ";
$result = mysqli_query($con, $query);
$i=0;

?>
<style type="text/css">
  th{
    background: white;
  }
</style>
<div class="container-fluid">
 <div class="right-part">  
  <div class="rightpartitle">
      <span class="acttitle">Outstandings Summary</span>
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
    
    <li >
      <?php 
      if (isset($_SESSION['email']) && ($_SESSION['usertype']=='Admin')) { ?>
        <button onclick="location.href = './exportoutstanding.php';" type="button" id="download" class="btn btns pull-right">Export data <i class="fas fa-file-download btnicons"></i></button>
      <?php } ?>
    </li>
  </ul>
</div>
</div>    
<table class="table table-striped" id="myTable">
  <thead>
    <tr>
      <th>S.no</th>
        <th>Party Name</th>
        <th>Bill Date</th>
        <th>Pending Amount</th>
        <th>Due On</th>
        <th>Overdue By Days</th>
    </tr>
  </thead>
  <tbody>
    <?php while( $row = mysqli_fetch_assoc( $result ) ){ ?>
     <tr>
      <td><?php echo $i+1;?></td>
      <td><?php echo $row["party"] ?></td>
      <td><?php echo $row["bill_date"] ?></td>
      <?php if($row["pendingamount"]<0 ){ $arr=explode("-",$row["pendingamount"]);?>
      <td><?php echo $arr[1] ?></td>
    <?php } else {?>

      <td><?php echo $row["pendingamount"] ?></td>
      <?php }?>
      <?php if($row["dueon"]=='Array'){?>
      <td><?php echo 'Not Available.' ?></td>
    <?php } else{?>
      <td><?php echo $row["dueon"] ?></td>
    <?php }?>
      <td><?php echo $row["overdueday"]?></td>
    </tr>
    <?php $i++; } ?>
  </tbody>
</table>
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
</script>
<?php include 'footer.php'; ?>