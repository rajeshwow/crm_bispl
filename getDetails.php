<?php
include "config.php";

$request = $_POST['request'];   // request

// Get username list
if($request == 1){
    $search = $_POST['search'];

    $query = "SELECT * FROM crm_dealer WHERE company like'%".$search."%'";
    $result = mysqli_query($con,$query);
    
    while($row = mysqli_fetch_array($result) ){
        $response[] = array("value"=>$row['id'],"label"=>$row['company']);
    }

    // encoding array to json format
    echo json_encode($response);
    exit;
}

// Get details
if($request == 2){
    $userid = $_POST['userid'];
    $sql = "SELECT * FROM crm_dealer WHERE id=".$userid;

    $result = mysqli_query($con,$sql);

    $users_arr = array();

    while( $row = mysqli_fetch_array($result) ){
        $userid = $row['id'];
        $company = $row['company'];
        $contact_person = $row['contact_person'];
        $mobile = $row['mobile'];
        $telephone = $row['telephone'];
        $address1 = $row['address1'];
        $address2 = $row['address2'];
        $address3 = $row['address3'];
        $city = $row['city'];
        $state = $row['state'];
        $email = $row['email'];
        $homeaddress1 = $row['homeaddress1'];
        $homeaddress2 = $row['homeaddress2'];
        $gst = $row['gst'];
        $id1 = $row['id1'];
        $id2 = $row['id2'];


        $users_arr[] = array("id" => $userid, 
        	"company" => $company,
        	"contact_person" => $contact_person, 
        	"mobile" =>$mobile, 
        	"telephone" =>$telephone,
        	"address1" => $address1,
        	"address2" => $address2, 
        	"address3" =>$address3, 
        	"city" =>$city,
        	"state" =>$state,
        	"email" =>$email,
        	"homeaddress1" =>$homeaddress1,
        	"homeaddress2" =>$homeaddress2,
        	"gst" =>$gst,
        	"id1" =>$id1,
        	"id2" =>$id2

        );
    }

    // encoding array to json format
    echo json_encode($users_arr);
    exit;
}
