<?php include 'config.php' ?>
<?php include 'crm_userauth.php'; ?>
<?php header('Content-Type: text/html; charset=UTF-8'); ?>
<?php
if(isset($_POST["submit"]))
{         
  $epscolcount= 24;
  $crm_dealer = 17;

  $tablename = $_POST['tablename'];
  $file = $_FILES['file']['tmp_name'];
  $filename = $_FILES['file']['name'];
  $ext = pathinfo($filename, PATHINFO_EXTENSION);
  
  $_SESSION["ext"] = '';
  $_SESSION["query"] = '';
  $_SESSION["success"] = '';
  if ($ext!='csv') {
    $_SESSION["ext"] = 'false';
    header("Location: ./crm_uploadfile.php");
  }
  else{

  $handle = fopen($file, "r");
  $c = 1;
  $flag = true;
  if ($tablename == 'crm_dealer') {
    while(($filesop = fgetcsv($handle, 1000, ",")) !== false)
    {
      if($flag) { $flag = false; continue; }
      $company=mysqli_real_escape_string($con,$filesop[1]);
      $contact_person=mysqli_real_escape_string($con,$filesop[2]);
      $mobile=mysqli_real_escape_string($con,$filesop[3]);
      $landline=mysqli_real_escape_string($con,$filesop[4]);
      $address1=mysqli_real_escape_string($con,$filesop[5]);
      $address2=mysqli_real_escape_string($con,$filesop[6]);
      $address3=mysqli_real_escape_string($con,$filesop[7]);
      $city=mysqli_real_escape_string($con,$filesop[8]);
      $district=mysqli_real_escape_string($con,$filesop[9]);
      $state=mysqli_real_escape_string($con,$filesop[10]);
      $email=mysqli_real_escape_string($con,$filesop[11]);
      $Permanantadd1=mysqli_real_escape_string($con,$filesop[12]);
      $Permanantadd2=mysqli_real_escape_string($con,$filesop[13]);
      $id1=mysqli_real_escape_string($con,$filesop[14]);
      $id2=mysqli_real_escape_string($con,$filesop[15]);
      $gst=mysqli_real_escape_string($con,$filesop[16]);

      

      $sql = "INSERT INTO crm_dealer (company,contact_person,mobile,telephone,address1,address2,address3,city,district,state,email,homeaddress1,homeaddress2,id1,id2,gst) VALUES ('$company','$contact_person','$mobile','$landline','$address1','$address2','$address3','$city','$district','$state','$email','$Permanantadd1','$Permanantadd2','$id1','$id2','$gst') ";
      $stmt = mysqli_prepare($con,$sql);
      mysqli_stmt_execute($stmt);

      $c = $c + 1;
    }
  }

  elseif ($tablename == 'funnel') {
    while(($filesop = fgetcsv($handle, 1000, ",")) !== false)
    {
      if($flag) { $flag = false; continue; }
      $id=mysqli_real_escape_string($con,$filesop[0]);
      $date=mysqli_real_escape_string($con,$filesop[1]);
      $industry=mysqli_real_escape_string($con,$filesop[2]);
      $company=mysqli_real_escape_string($con,$filesop[3]);
      $customer=mysqli_real_escape_string($con,$filesop[4]);
      $mobile=mysqli_real_escape_string($con,$filesop[5]);
      $address=mysqli_real_escape_string($con,$filesop[6]);
      $city=mysqli_real_escape_string($con,$filesop[7]);
      $state=mysqli_real_escape_string($con,$filesop[8]);
      $email=mysqli_real_escape_string($con,$filesop[9]);
      $product=mysqli_real_escape_string($con,$filesop[10]);
      $qty=mysqli_real_escape_string($con,$filesop[11]);
      $remarks=mysqli_real_escape_string($con,$filesop[12]);
      $status=mysqli_real_escape_string($con,$filesop[13]);
      $salesperson=mysqli_real_escape_string($con,$filesop[14]);
      $created_at=mysqli_real_escape_string($con,$filesop[15]);
      $reporter_open=mysqli_real_escape_string($con,$filesop[16]);
      $reporter_close=mysqli_real_escape_string($con,$filesop[17]);

      

      $sql = "INSERT INTO funnel (dates,industry,company,customer,mobile,address,city,state,email,product,qty,remarks,status,salesperson,created_at,reporter_open,reporter_close) 
      VALUES ('$date','$industry','$company','$customer','$mobile','$address','$city','$state','$email','$product','$qty','$remarks','$status','$salesperson',NOW(),'$reporter_open','$reporter_close') ";
      $stmt = mysqli_prepare($con,$sql);
      mysqli_stmt_execute($stmt);

      $c = $c + 1;
    }
  }

  else{
    while(($filesop = fgetcsv($handle, 1000, ",")) !== false)
    {
      if($flag) { $flag = false; continue; }
      $product_name=mysqli_real_escape_string($con,$filesop[1]);
      $serialno=mysqli_real_escape_string($con,$filesop[2]);
      $plantype=mysqli_real_escape_string($con,$filesop[3]);
      $type = mysqli_real_escape_string($con,$filesop[4]);
      $users=mysqli_real_escape_string($con,$filesop[5]);
      $expirydate=mysqli_real_escape_string($con,$filesop[6]);
      $company=mysqli_real_escape_string($con,$filesop[7]);
      $designation=mysqli_real_escape_string($con,$filesop[8]);
      $contact_person=mysqli_real_escape_string($con,$filesop[9]);
      $mobile=mysqli_real_escape_string($con,$filesop[10]);
      $landline=mysqli_real_escape_string($con,$filesop[11]);
      $email=mysqli_real_escape_string($con,$filesop[12]);
      $address1=mysqli_real_escape_string($con,$filesop[13]);
      $address2=mysqli_real_escape_string($con,$filesop[14]);
      $city=mysqli_real_escape_string($con,$filesop[15]);
      $state=mysqli_real_escape_string($con,$filesop[16]);
      $in=mysqli_real_escape_string($con,$filesop[17]);
      $out=mysqli_real_escape_string($con,$filesop[18]);
      $dealer=mysqli_real_escape_string($con,$filesop[19]);
      $status=mysqli_real_escape_string($con,$filesop[20]);
      $remarks=mysqli_real_escape_string($con,$filesop[21]);
      $quotedprice=mysqli_real_escape_string($con,$filesop[22]);

      $sql = "INSERT INTO $tablename (product_name,serialno,plantype,expiry_date,users,company,designation,person_name,mobile,landline,city,state,email,in_sell,out_sell,address1,address2,dealer,status,remarks,quotedprice) VALUES ('$product_name','$serialno','$plantype','$expirydate','$users','$company','$designation','$contact_person','$mobile','$landline','$city','$state','$email','$in','$out','$address1','$address2','$dealer','$status','$remarks','$quotedprice')";
      $stmt = mysqli_prepare($con,$sql);
      mysqli_stmt_execute($stmt);

      $c = $c + 1;
    }
  }


if($sql){
               // echo "sucess";
  $_SESSION["success"] = 'true';
   header("Location: ./crm_uploadfile.php");
   exit();
 } 
 else
 {
  $_SESSION["query"] = 'false';
  header("Location: ./crm_uploadfile.php");
}


  }

}
?>