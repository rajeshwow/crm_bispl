<?php

    include '../config.php';
    $email = $_GET['email'];
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    
    
    $sql = "SELECT email, password,usertype FROM crm_login where email ='" . $email . "' ";
    $result = mysqli_query($con, $sql) or die("Error: " . mysqli_error($con));
    while ($rw = mysqli_fetch_assoc($result)) 
    $row[] = $rw;

    $ueraccessquery = "SELECT * from crm_useraccess where email= '" . $email . "' ";
    $result_ueraccessquery = mysqli_query($con, $ueraccessquery);
    while ($row_ueraccessquery = mysqli_fetch_assoc($result_ueraccessquery)) 
    $ueraccess_arr[] = $row_ueraccessquery;
    
    $ueraccess_str = $ueraccess_arr[0]['dealer_city'];
    $x_ueraccess_str = explode(",", $ueraccess_str);
    for ($sri = 0;$sri < count($x_ueraccess_str) - 1;$sri++)
    {
    
        $dealer_arrs .= "'" . $x_ueraccess_str[$sri] . "'" . ",";
    }
    $dealer_arrs = rtrim($dealer_arrs, ",");
    
    if ($row[0]['usertype'] == 'Admin')
    {
        $sql = "SELECT * FROM crm_support";
    }
    else
    {
        $sql = "SELECT * FROM crm_support";
        // WHERE city IN ($dealer_arrs)
    }
    
    $result = mysqli_query($con, $sql);
    while ($row2 = mysqli_fetch_assoc($result)) 
    $product_data[] = $row2;
    // print_r($product_data);
    if ($product_data) {
        $json = array("status" => 1,"data" =>$product_data,"msg" => "Data Fetched.");
    }
    else{
        $json = array("status" => 0,"data" =>[],"msg" => "Data not there.");
    }
    
    echo json_encode($json);

?>
