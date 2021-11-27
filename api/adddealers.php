<?php 
    include '../config.php';
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    if ($_SERVER["REQUEST_METHOD"] === 'POST'){
        $company=$_POST["company"];
        $contact_person=$_POST["contact_person"];
        $mobile=$_POST["mobile"];
        $landline=$_POST["landline"];
        $address1=$_POST["address1"];
        $address2=$_POST["address2"];
        $address3=$_POST["address3"];
        $city=$_POST["city"];
        $state=$_POST["state"];
        $email=$_POST["email"];
        $Permanantadd1=$_POST["Permanantadd1"];
        $Permanantadd2=$_POST["Permanantadd2"];
        $id1=$_POST["id1"];
        $id2=$_POST["id2"];
        $gst=$_POST["gst"];
        $insert = "INSERT INTO crm_dealer (company,contact_person,mobile,telephone,address1,address2,address3,city,state,email,homeaddress1,homeaddress2,id1,id2,gst) VALUES ('$company','$contact_person','$mobile','$landline','$address1','$address2','$address3','$city','$state','$email','$Permanantadd1','$Permanantadd2','$id1','$id2','$gst') ";

        if (mysqli_query($con, $insert))
            {
                $json = array("status" => 1, "msg" => "Done User added!");
            }
        else
            {
                $json = array("status" => 0, "msg" => "Error adding user!");
            }
             
        }
    else{
     $json = array("status" => 0, "msg" => "Request method not accepted");
    }

 echo json_encode($json);
?>