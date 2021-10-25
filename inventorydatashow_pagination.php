<?php include 'crm_userauth.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>

<style type="text/css">
  th{
    background: white;
  }
</style>
<div class="container-fluid">
 <div class="right-part">  
  <h1 style="text-align: center;">Stock Summary</h1>  
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
<style type="text/css">
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
<div class="container-fluid">
  <div class="col-lg-12"> 
    <div id="table-data">
  
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

</script>
<script type="text/javascript">
  $(document).ready(function(){
    function loadData(page){
      $.ajax({
        url  : "pagination.php",
        type : "POST",
        cache: false,
        data : {page_no:page},
        success:function(response){
          $("#table-data").html(response);
        }
      });
    }
    loadData();
    
    // Pagination code
    $(document).on("click", ".pagination li a", function(e){
      e.preventDefault();
      var pageId = $(this).attr("id");
      loadData(pageId);
    });
  });
</script>
<?php include 'footer.php'; ?>