<?php include 'config.php'?>
<?php 



    if(isset($_POST["submit"]) ){ 
        $company=$_POST["company"];
        $customer=$_POST["customer"];
        $mobile=$_POST["mobile"];
        $industry=$_POST["industry"];
        $address=$_POST["address"];
        $city=$_POST["city"];
        $state=$_POST["state"];
        $email=$_POST["email"];
        $product=$_POST["product"];
        $qty=$_POST["qty"];
        $remarks=$_POST["remarks"];
        $status=$_POST["status"];
        $salesperson=$_POST["salesperson"];
        $reporter = $_SESSION['email'];

        $date = date('Y-m-d');
        
}

    $insert = "INSERT INTO funnel (dates,company,customer,mobile,industry,address,city,state,email,product,qty,remarks,status,salesperson,reporter_open) 
VALUES ('$date','$company','$customer','$mobile','$industry','$address','$city','$state','$email','$product','$qty','$remarks','$status','$salesperson','$reporter') ";

if ((mysqli_query($con, $insert)))
{
    $_SESSION['status'] = "Great !";
            $_SESSION['status_code'] ="success";
    header("Location:./funnel.php");
    // echo '<script type="text/javascript">alert("entered")</script>';

}
else{
    $_SESSION['status'] = "Failed";
    $_SESSION['status_code'] ="error";
    echo "ERROR: Could not able to execute . " . mysqli_error($con);
    header("Location:./funnel.php");
}

?>