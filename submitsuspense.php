<?php include 'config.php'?>
<?php 



    if(isset($_POST["submit"]) ){ 
        $party=$_POST["party"];
        $chequeno=$_POST["chequeno"];
        $bank=$_POST["bank"];
        $bill_date=$_POST["bill_date"];
        $status=$_POST["status"];
        $amount=$_POST["amount"];
        $billno=$_POST["billno"];
        $remarks=$_POST["remarks"];
        $reporter=$_POST["reporter"];
        $email=$_POST["email"];
        $productname=$_POST["productname"];
        $status=$_POST["status"];
        $refollowup=$_POST["refollowup"];
        $reporter=$_POST["reporter"];
}

    $insert = "INSERT INTO suspense (party,chequeno,bank,bill_date,status,amount,billno,remarks,requested_by) 
                        VALUES ('$party','$chequeno','$bank','$bill_date','$status','$amount','$billno','$remarks','$reporter') ";

if ((mysqli_query($con, $insert)))
{
    $_SESSION['status'] = "Great !";
     $_SESSION['status_code'] ="success";
    header("Location:./suspense.php");
    // echo '<script type="text/javascript">alert("entered")</script>';

}
else{
    $_SESSION['status'] = "Failed ";
    $_SESSION['status_code'] ="error";
    echo "ERROR: Could not able to execute . " . mysqli_error($con);
    header("Location:./suspense.php");
}

?>