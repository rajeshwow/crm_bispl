

<?php include 'crm_userauth.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>
<style type="text/css">
.ttlsss{
  text-transform: uppercase;
}
.updatetimeicon{
  font-size: 20px;
}
.updatedtime{
  padding: 1%;
  background-color: white;
  color: darkslategrey;
  position: absolute;
  box-shadow:0px 0px 30px -6px rgb(115 109 115 / 67%);
  z-index: 50000;
  display: none;
}
td{
  overflow:scroll !important;
}
#advbutton{
  border: 1px solid lightgray;
  padding: 5px 20px;
  /* background-color: lightgray; */
  display: inline-block;
  cursor: pointer;
  box-shadow: 0px 25px 34px 0px rgba(128,121,128,0.58);
  border-radius: 5px;
}
</style>
<?php 
$ueraccessquery = "SELECT * from crm_useraccess where email= '" . $_SESSION['email'] . "' ";
$result2 = mysqli_query($con, $ueraccessquery);
while ($row3 = mysqli_fetch_assoc($result2)) $user_access[] = $row3;

$sql = "SELECT email, password,usertype FROM crm_login where email = '".$_SESSION['email']."' ";
$result = mysqli_query($con, $sql) or die("Error: " . mysqli_error($con));
while($rw= mysqli_fetch_assoc($result))
  $row[] = $rw;
?>
<?php
$query="SELECT * from tallydatainv_indore union select * from tallydatainv_lucknow union select * from tallydatainv_jaipur    ";
$result = mysqli_query($con, $query);

$getlucknowtime="SELECT * from tallydatainv_lucknow order by id desc";
$resultlucknow = mysqli_query($con, $getlucknowtime);
while( $rowlck = mysqli_fetch_assoc( $resultlucknow ) ) $lckdata[] = $rowlck;

$getjaipurtime="SELECT * from tallydatainv_jaipur order by id desc";
$resultjaipur = mysqli_query($con, $getjaipurtime);
while( $rowjpr = mysqli_fetch_assoc( $resultjaipur ) ) $jprdata[] = $rowjpr;

$getindoretime="SELECT * from tallydatainv_indore order by id desc";
$resultindore = mysqli_query($con, $getindoretime);
while( $rowind = mysqli_fetch_assoc( $resultindore ) ) $inddata[] = $rowind;


?>
<div class="container-fluid">
 <div class="right-part"> 

  <div id="updated" class="alert alert-success fade in alert-dismissible">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Updated!</strong> Inventory updation completed. Please check time of updation below <b>on Last updated on</b> button.
  </div>
  <div id="updating" class="alert alert-danger fade in alert-dismissible">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Updating!</strong> Inventory Update is in Progress. Please wait for a while and check again. Please check last time of update below <b>on Last updated on</b> button.
  </div>

  <div id="nottoday" class="alert alert-danger fade in alert-dismissible">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Wait!</strong> Inventory didn't update today. Please check last time of update below <b>on Last updated on</b> button.
  </div>

  <div class="rightpartitle">
    <span class="acttitle">Stock Summary</span>
  </div> 
  <br>

  <?php 
  if ($row[0]['usertype']=='Admin' || $user_access[0]['stocksummary']== 'Yes') { ?>
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
          <button onclick="location.href = './exportinventory.php';" type="button" id="download" class="btn btns pull-right">Export data <i class="fas fa-file-download btnicons"></i></button>
        <?php } ?>
      </li>
    </ul>
  </div>
</div>  

<div style="display: none;"  id="lstupdate"><?php echo date("d-m-Y", strtotime($jprdata[0]["created_on"])); ?></div>
<div class="row">
  <div class="col-lg-12">
    <button class="btn  updatedon"><span updatetimeicon><i class="fas fa-info-circle"></i></span> Last updated on </button>
    <div class="updatedtime">
      <ul style="padding-inline-start: 0px;">
        <li>
          <span class="ttlsss"><b>Jaipur</b>: </span><span><?php echo date("d-m-Y H:i:s", strtotime($jprdata[0]["created_on"])); ?></span></li><hr>
          <li><span class="ttlsss"><b>Indore</b>: </span><span><?php echo date("d-m-Y H:i:s", strtotime($inddata[0]["created_on"])); ?></span></li><hr>
          <li><span class="ttlsss"><b>Lucknow</b>: </span><span><?php echo date("d-m-Y H:i:s", strtotime($lckdata[0]["created_on"])); ?></span></li><hr>
          <li>If data fluctuating, Please wait for some time <br> and then refresh the tab.<br> At that time uploading may be in progress.</li>
        </ul>
      </div>
    </div>
  </div>

  <div class="row" >

    <div class="col-lg-11" style="text-align: right;height: 40px">
      <form class="form-inline" id="advsearch" style="display: none;" >
       <div class="form-group">
        <select class="form-control selectwidth" id="city">
         <option disabled="true" selected="true">City wise</option>
         <option value="All">All</option>
         <option value="Jaipur">Jaipur</option>
         <option value="Lucknow">Lucknow</option>
         <option value="Indore">Indore</option>

       </select>
     </div>
   </form>
 </div>
 <div class="col-lg-1" style="text-align: right;">
  <span id="advbutton"><i class="fas fa-filter"></i></span>
</div>

</div>  
<div class="row">
  <div class="col-lg-12">
    <div class="outsidetable">
      <table class="table table-striped" id="myTable" style="">
        <thead>
          <tr>
            <th>S.no</th>
            <th>Particulars</th>
            <th>Quantity</th>
            <th>Location</th>
      <!-- <th>Rate</th>
        <th>Amount</th> -->
      </tr>
    </thead>
    <tbody>
      <?php while( $row = mysqli_fetch_assoc( $result ) ){ ?>
       <tr>
        <td><?php echo $i+1;?></td>
        <td><?php echo $row["perticular"] ?></td>
        <td><?php echo $row["qty"] ?></td>
        <td><?php echo $row["location"] ?></td>
      </tr>
      <?php $i++; } ?>
    </tbody>
  </table>
</div>
</div>
</div>

<?php } else{ ?>

  <div class="alert alert-danger">
    <strong>Unauthorised Access !</strong> Uh hoo..You don't have access to view this page. Contact to Admin.
  </div>
<?php }
?>



</div>
</div>
<script>
  $(document).ready(function(){
    $(".updatedon").hover(function()
    {
      $(".updatedtime").fadeIn(300);
    },
    function(){
      $(".updatedtime").fadeOut(300);
    }
    );


  });
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

    $('#city').change( function(){
      $('table').show();
      var selection = $(this).val();
      var dataset = $('#myTable').find('tr');

      dataset.each(function(index) {
        item = $(this);
        item.hide();
        if (index==0) {
          item.show();
        }

        var firstTd = item.find('td:nth-child(4)');
        var text = firstTd.text();
        var ids = text.split(',');
        if (selection == 'All') {
          item.show();
        }
        else{
          for (var i = 0; i < ids.length; i++)
          {
            if (ids[i] == selection)
            {
              item.show();
            }

          }
        }
        
      });
    });
  });

  $(document).ready(function(){
    $("#updated").hide();
    $("#updating").hide();
    $("#nottoday").hide();

    var lstupdates = $("#lstupdate").text();
    var myArr = lstupdates.split("-");
    var dbdate = myArr[0];
    var dbmonth = myArr[1];
    var d = new Date();
    var cdate = d.getDate();
    var cmonth = d.getMonth()+1;

    var hours = d.getHours();
    var minutes = d.getMinutes();


    if (dbdate == cdate && dbmonth == cmonth) {

      if(minutes<3 || minutes >30 && minutes <33){
      $("#updating").show();
    }
    else{
      $("#updated").show();
    }
      
    }
    else{
      $("#nottoday").show();
    }

    



  });
</script>
<?php include 'footer.php'; ?>