<?php include 'config.php'?>
<?php 



    if(isset($_POST["submit"]) ){ 
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
        $industry=$_POST["industry"];
        $Permanantadd1=$_POST["Permanantadd1"];
        $Permanantadd2=$_POST["Permanantadd2"];
        $id1=$_POST["id1"];
        $id2=$_POST["id2"];
        $gst=$_POST["gst"];
        

        $insert = "INSERT INTO crm_enduser (company,contact_person,mobile,telephone,address1,address2,address3,city,state,email,homeaddress1,homeaddress2,id1,id2,gst,industry) VALUES ('$company','$contact_person','$mobile','$landline','$address1','$address2','$address3','$city','$state','$email','$Permanantadd1','$Permanantadd2','$id1','$id2','$gst','$industry') ";

        if ((mysqli_query($con, $insert)))
        {
            $_SESSION['status'] = "Great !";
            $_SESSION['status_code'] ="success";
            header("Location:./Enduser.php");
            // echo '<script type="text/javascript">alert("entered")</script>';
        
        }
        else{
            $_SESSION['status'] = "Failed";
            $_SESSION['status_code'] ="error";
            echo "ERROR: Could not able to execute . " . mysqli_error($con);
            header("Location:./Enduser.php");
        }

}



?> 