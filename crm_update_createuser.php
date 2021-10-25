
<?php include 'config.php' ?>


<?php


if(isset($_POST['submit'])) {
$email = $_POST["email"];
$password = $_POST["password"] ;
$usertype = $_POST["usertype"] ;
//tables
$tablefortinet = $_POST["tablefortinet"] == 'Yes' ? 'Yes' : 'No';
$tableeps = $_POST["tableeps"] == 'Yes' ? 'Yes' : 'No';
//columns
$insellview = $_POST["inview"] == 'Yes' ? 'Yes' : 'No';
$inselledit = $_POST["inedit"] == 'Yes' ? 'Yes' : 'No';
$outsellview = $_POST["outview"] == 'Yes' ? 'Yes' : 'No';
$outselledit = $_POST["outedit"] == 'Yes' ? 'Yes' : 'No';
$product_name_view = $_POST["product_name_view"] == 'Yes' ? 'Yes' : 'No';                                                         
$product_name_edit = $_POST["product_name_edit"] == 'Yes' ? 'Yes' : 'No';                                                         
$users_view = $_POST["users_view"] == 'Yes' ? 'Yes' : 'No';                                                         
$users_edit = $_POST["users_edit"] == 'Yes' ? 'Yes' : 'No';                                                         
$remarks_view = $_POST["remarks_view"] == 'Yes' ? 'Yes' : 'No';                                                         
$remarks_edit = $_POST["remarks_edit"] == 'Yes' ? 'Yes' : 'No';                                                         
$expiry_date_view = $_POST["expiry_date_view"] == 'Yes' ? 'Yes' : 'No';
$expiry_date_edit = $_POST["expiry_date_edit"] == 'Yes' ? 'Yes' : 'No';
$company_view = $_POST["company_view"] == 'Yes' ? 'Yes' : 'No';
$company_edit = $_POST["company_edit"] == 'Yes' ? 'Yes' : 'No';
$contact_person_view = $_POST["contact_person_view"] == 'Yes' ? 'Yes' : 'No';
$contact_person_edit = $_POST["contact_person_edit"] == 'Yes' ? 'Yes' : 'No';
$mobile_view = $_POST["mobile_view"] == 'Yes' ? 'Yes' : 'No';
$mobile_edit = $_POST["mobile_edit"] == 'Yes' ? 'Yes' : 'No';
$email_view = $_POST["email_view"] == 'Yes' ? 'Yes' : 'No';
$email_edit = $_POST["email_edit"] == 'Yes' ? 'Yes' : 'No';
$dealer_view = $_POST["dealer_view"] == 'Yes' ? 'Yes' : 'No';
$dealer_edit = $_POST["dealer_edit"] == 'Yes' ? 'Yes' : 'No';
$quotedprice_view = $_POST["quotedprice_view"] == 'Yes' ? 'Yes' : 'No';
$quotedprice_edit = $_POST["quotedprice_edit"] == 'Yes' ? 'Yes' : 'No';

//btns 
$renewedit = $_POST["renewedit"] == 'Yes' ? 'Yes' : 'No';
$upgradeedit = $_POST["upgradeedit"] == 'Yes' ? 'Yes' : 'No';
$lostandrenewedit = $_POST["lostandrenewedit"] == 'Yes' ? 'Yes' : 'No';
$lostandupgradeedit = $_POST["lostandupgradeedit"] == 'Yes' ? 'Yes' : 'No';
$dontwanttorenewedit = $_POST["dontwanttorenewedit"] == 'Yes' ? 'Yes' : 'No';
//side nave links 
$renewalpage = $_POST["renewalpage"] == 'Yes' ? 'Yes' : 'No';
$dealerpage = $_POST["dealerpage"] == 'Yes' ? 'Yes' : 'No';
$supportpage = $_POST["supportpage"] == 'Yes' ? 'Yes' : 'No';
$createuserpage = $_POST["createuserpage"] == 'Yes' ? 'Yes' : 'No';
$uploadpage = $_POST["uploadpage"] == 'Yes' ? 'Yes' : 'No';
$stocksummary = $_POST["stocksummary"] == 'Yes' ? 'Yes' : 'No';
$outstandings = $_POST["outstandings"] == 'Yes' ? 'Yes' : 'No';
$salesreport = $_POST["salesreport"] == 'Yes' ? 'Yes' : 'No';
$salesregister = $_POST["salesregister"] == 'Yes' ? 'Yes' : 'No';
$suspense = $_POST["suspense"] == 'Yes' ? 'Yes' : 'No';
$funnel = $_POST["funnel"] == 'Yes' ? 'Yes' : 'No';

//---------------------------------------- sales report access

for ($sri=0; $sri < count($_POST['salesreport_access']); $sri++) { 

        $salesrp_arrs .= $_POST['salesreport_access'][$sri]. ",";
    }

for ($sregi=0; $sregi < count($_POST['salesregister_access']); $sregi++) { 

        $salesregrp_arrs .= $_POST['salesregister_access'][$sregi]. ",";
    }
    for ($sregi=0; $sregi < count($_POST['outstandings_access']); $sregi++) { 

        $outstandings_arrs .= $_POST['outstandings_access'][$sregi]. ",";
    }

    for ($dealer_i=0; $dealer_i < count($_POST['dealer_city']); $dealer_i++) { 

        $dealer_city_arrs .= $_POST['dealer_city'][$dealer_i]. ",";
    }
    for ($funnel_i=0; $funnel_i < count($_POST['funnel_email']); $funnel_i++) { 

        $funnel_email_arrs .= $_POST['funnel_email'][$funnel_i]. ",";
    }

// ----------- Suspense and funnel actions and status

$suspense_actions = $_POST["suspense_actions"] == 'Yes' ? 'Yes' : 'No';
$suspense_status = $_POST["suspense_status"] == 'Yes' ? 'Yes' : 'No';
$funnel_actions = $_POST["funnel_actions"] == 'Yes' ? 'Yes' : 'No';
$funnel_status = $_POST["funnel_status"] == 'Yes' ? 'Yes' : 'No';


}

$userlogin = "INSERT INTO crm_login (usertype,email,password) VALUES ('$usertype','$email','$password') ";
$useraccess = "INSERT INTO crm_useraccess (email,crm_eps,crm_fortinet,insellview,inselledit, outsellview,outselledit,
product_name_view,product_name_edit,users_view,users_edit,remarks_view,remarks_edit,expiry_date_view,expiry_date_edit,company_view,company_edit,contact_person_view,contact_person_edit,mobile_view,mobile_edit,email_view,email_edit,dealer_view,dealer_edit,quotedprice_view,quotedprice_edit, renewedit,upgradeedit,lostandrenewedit,lostandupgradeedit,dontwanttorenewedit,renewalpage,dealerpage,supportpage,createuserpage,uploadpage,stocksummary,outstandings,salesreport,salesregister,salesreport_access,salesregister_access,outstandings_access,dealer_city,funnel_email,suspense,funnel,suspense_actions,suspense_status,funnel_actions,funnel_status ) VALUES ('$email','$tableeps','$tablefortinet','$insellview','$inselledit','$outsellview','$outselledit','$product_name_view','$product_name_edit','$users_view','$users_edit','$remarks_view','$remarks_edit','$expiry_date_view','$expiry_date_edit','$company_view','$company_edit','$contact_person_view','$contact_person_edit','$mobile_view','$mobile_edit','$email_view','$email_edit','$dealer_view','$dealer_edit','$quotedprice_view','$quotedprice_edit','$renewedit','$upgradeedit','$lostandrenewedit','$lostandupgradeedit','$dontwanttorenewedit','$renewalpage','$dealerpage','$supportpage','$createuserpage','$uploadpage','$stocksummary','$outstandings','$salesreport','$salesregister','$salesrp_arrs','$salesregrp_arrs','$outstandings_arr','$dealer_city_arrs','$funnel_email_arrs','$suspense','$funnel','$suspense_actions','$suspense_status','$funnel_actions','$funnel_status') ";

if ((mysqli_query($con, $userlogin)) && (mysqli_query($con, $useraccess)))
{
    // header(Location: './createuser.php');
    header("Location: ./createuser.php");
    exit();
    // echo '<script type="text/javascript">alert("both entries entered")</script>';

}
else{
    echo "ERROR: Could not able to execute . " . mysqli_error($con);
}

?>
