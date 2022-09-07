<?php
include '../config.php';
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
if ($_SERVER["REQUEST_METHOD"] === 'POST') {

    $date = $_POST["date"];
    $serialno = $_POST["serialno"];
    $customer = $_POST["customer"];
    $contactPerson = $_POST["contactPerson"];
    $designation = $_POST["designation"];
    $mobile = $_POST["mobile"];
    $address = $_POST["address"];
    $email = $_POST["email"];
    $dealer = $_POST["dealer"];
    $supportType = $_POST["supportType"];
    $callDetails = $_POST["callDetails"];
    $ref = $_POST["ref"];
    $remarks = $_POST["remarks"];
    $fgt = $_POST["fgt"];
    $av = $_POST["av"];
    $users = $_POST["users"];
    $expiry = $_POST["expiry"];
    $createdBy = $_POST["createdBy"];

    $insert = "INSERT INTO crm_support (`date`,serialno,customer,contactPerson,designation,mobile,`address`,email,dealer,supportType,callDetails,ref,remarks,fgt,av,users,expiry,createdBy,createdAt) VALUES   ('$date','$serialno','$customer','$contactPerson','$designation','$mobile','$address','$email','$dealer','$supportType','$callDetails','$ref','$remarks','$fgt','$av','$users','$expiry','$createdBy',now()) ";

    if (mysqli_query($con, $insert)) {
        $json = array("status" => 1, "msg" => "Done User added!");
    } else {
        $json = array("status" => 0, "msg" => "Error adding user!");
    }
} else {
    $json = array("status" => 0, "msg" => "Request method not accepted");
}

echo json_encode($json);
