<?php include 'config.php'; ?>
<?php include 'crm_userauth.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>


<div class="container-fluid">
  <div class="right-part">
<?php 
  $ueraccessquery = "SELECT * from crm_useraccess where email= '" . $_SESSION['email'] . "' ";
  $result2 = mysqli_query($con, $ueraccessquery);
  while ($row3 = mysqli_fetch_assoc($result2)) 
   $user_access[] = $row3;

 $sql = "SELECT email, password,usertype FROM crm_login where email = '".$_SESSION['email']."' ";
 $result = mysqli_query($con, $sql) or die("Error: " . mysqli_error($con));
 while($rw= mysqli_fetch_assoc($result))
   $row[] = $rw;
 ?>

    <div class="rightpartitle">
      <span class="acttitle">Upload file</span>
    </div>
    <br>
    <?php if ($row[0]['usertype']=='Admin' || $user_access[0]['uploadpage']== 'Yes') { ?>
    <?php if ($_SESSION["ext"]=='false'): ?>
      <div class="alert alert-danger" role="alert">
      Stop ! File format is not CSV. Please upload the correct file.
    </div>
    <?php endif ?>
    <?php if ($_SESSION["query"]=='false'): ?>
      <div class="alert alert-danger" role="alert">
      Stop ! Please upload the correct file. Columns are not matched.
    </div>
    <?php endif ?>
    <?php if ($_SESSION["success"]=='true'): ?>
      <div class="alert alert-success" role="alert">
  Great ! File Uploaded successfully.
</div>
    <?php endif ?>
    <div class="row"> 
      <div class="col-lg-6">
        <form action="./crm_datauploadtodb.php" enctype="multipart/form-data" method="post" role="form">
          <div class="form-group">
            <select  class="form-control" id="tablename"  name="tablename" required>
             <option disabled="" value="" selected="">Product type</option>

             <option value="crm_eps">EPS</option>
             <option value="crm_fortinet">Fortinet</option>
             <option value="crm_dealer">Dealer data</option>
             <option value="funnel">Funnel data</option>
             <option value="suspense">Suspense data</option>
           </select>
           <br>
           <label for="exampleInputFile">File Upload</label>
           <input type="file" name="file" id="file">
           <p class="help-block">Only CSV File Import.</p>
         </div>
         <button type="submit" class="btn btn-default" name="submit" value="submit">Upload</button>
       </form>   
     </div>
   </div>

   <?php } else{ ?>

 <div class="alert alert-danger">
  <strong>Unauthorised Access !</strong> Uh hoo..You don't have access to view this page. Contact to Admin.
</div>
<?php } ?>
 </div>
</div>

<?php include 'footer.php'; ?>