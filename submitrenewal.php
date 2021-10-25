<?php include 'config.php'?>
<?php 



    if(isset($_POST["submit"]) ){ 
        $product_name=$_POST["product_name"];
        $serialno=$_POST["serialno"];
        $planyear=$_POST["planyear"];
        $expirydate=$_POST["acctexpirydate"];
        $tablename=$_POST["tablename"];
        $users=$_POST["users"];
        $company=$_POST["company"];
        $designation=$_POST["designation"];
        $contact_person=$_POST["contact_person"];
        $mobile=$_POST["mobile"];
        $landline=$_POST["landline"];
        $city=$_POST["city"];
        $state=$_POST["state"];
        $email=$_POST["email"];
        $in=$_POST["in"];
        $out=$_POST["out"];
        $address1=$_POST["address1"];
        $address2=$_POST["address2"];
        $dealer=$_POST["dealer"];
        $remarks=$_POST["remarks"];
        
        // echo '<script type="text/javascript">alert( "'.$expirydate.'")</script>';
         $date= date_create($expirydate);
         $newdate = date_format($date,"Y-m-d");
         // echo '<script type="text/javascript">alert( "'.$newdate.'")</script>';



}

    $insert = "INSERT INTO $tablename (product_name,serialno,plantype,expiry_date,type,users,company,designation,person_name,mobile,landline,city,state,email,in_sell,out_sell,address1,address2,dealer,remarks) VALUES ('$product_name','$serialno','$planyear','$newdate','$tablename','$users','$company','$designation','$contact_person','$mobile','$landline','$city','$state','$email','$in','$out','$address1','$address2','$dealer','$remarks') ";

if ((mysqli_query($con, $insert)))
{
     
     header("Location:./renewal.php");
     exit();
    // echo '<script type="text/javascript">alert("entered")</script>';

}
else{
    echo "ERROR: Could not able to execute . " . mysqli_error($con);
}

?>