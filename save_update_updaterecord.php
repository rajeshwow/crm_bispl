<?php include 'config.php';

echo "<script>console.log('Debug Objects: " . $serialno . "' );</script>";?>
<?php 
        $oldserialno = $_POST["edit_id"];
        $product_name=$_POST["product_name"];
        $serialno=$_POST["serialno"];
        $expirydate=$_POST["expiry_date"];
        $tablename=$_POST["tablename"];
        $users=$_POST["users"];
        $company=$_POST["company"];
        $designation=$_POST["designation"];
        $contact_person=$_POST["person_name"];
        $mobile=$_POST["mobile"];
        $landline=$_POST["landline"];
        $city=$_POST["city"];
        $state=$_POST["state"];
        $email=$_POST["email"];
        $in_sell=$_POST["in_sell"];
        $out_sell=$_POST["out_sell"];
        $address1=$_POST["address1"];
        $address2=$_POST["address2"];
        $quotedprice=$_POST["quotedprice"];
        $dealer=$_POST["dealer"];
        $status=$_POST["status"];
        $remarks=$_POST["remarks"];
        
        // echo '<script type="text/javascript">alert( "'.$expirydate.'")</script>';
        //  $date= date_create($expirydate);
        //  $newdate = date_format($date,"Y-m-d");
        //  echo '<script type="text/javascript">alert( "'.$newdate.'")</script>';






    $sql = "UPDATE $tablename set product_name = '".$product_name."',serialno = '".$serialno."',expiry_date = '".$expirydate."',users = '".$users."',company = '".$company."',designation = '".$designation."',person_name = '".$contact_person."',mobile = '".$mobile."',landline = '".$landline."',city = '".$city."',state = '".$state."',email = '".$email."',in_sell = '".$in_sell."',out_sell = '".$out_sell."',address1 = '".$address1."',address2 = '".$address2."',quotedprice = '".$quotedprice."',dealer = '".$dealer."',status = '".$status."',remarks = '".$remarks."',modify_on =now() where serialno =  '".$oldserialno."'";

    
$result = mysqli_query($con,$sql);

?>