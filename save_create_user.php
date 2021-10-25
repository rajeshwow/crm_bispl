<?php 
   include 'config.php';
   
$changedemail = $_POST["email"];
$emailactual = $_POST["emailactual"];
$usertype = $_POST["usertype"];
$password = $_POST["password"];
//tables
$tablefortinet = $_POST["tablefortinet"]=="Yes"?"Yes":"No";
$tableeps = $_POST["tableeps"]=="Yes"?"Yes":"No";
//columns
$insellview = $_POST["inview"]=="Yes"?"Yes":"No";
$inselledit = $_POST["inedit"]=="Yes"?"Yes":"No";
$outsellview = $_POST["outview"]=="Yes"?"Yes":"No";
$outselledit = $_POST["outedit"]=="Yes"?"Yes":"No";
$product_name_view = $_POST["product_name_view"]=="Yes"?"Yes":"No";                                                         
$product_name_edit = $_POST["product_name_edit"]=="Yes"?"Yes":"No";                                                         
$users_view = $_POST["users_view"]=="Yes"?"Yes":"No";                                                         
$users_edit = $_POST["users_edit"]=="Yes"?"Yes":"No";                                                         
$remarks_view = $_POST["remarks_view"]=="Yes"?"Yes":"No";                                                         
$remarks_edit = $_POST["remarks_edit"]=="Yes"?"Yes":"No";                                                         
$expiry_date_view = $_POST["expiry_date_view"]=="Yes"?"Yes":"No";
$expiry_date_edit = $_POST["expiry_date_edit"]=="Yes"?"Yes":"No";
$company_view = $_POST["company_view"]=="Yes"?"Yes":"No";
$company_edit = $_POST["company_edit"]=="Yes"?"Yes":"No";
$contact_person_view = $_POST["contact_person_view"]=="Yes"?"Yes":"No";
$contact_person_edit = $_POST["contact_person_edit"]=="Yes"?"Yes":"No";
$mobile_view = $_POST["mobile_view"]=="Yes"?"Yes":"No";
$mobile_edit = $_POST["mobile_edit"]=="Yes"?"Yes":"No";
$email_view = $_POST["email_view"]=="Yes"?"Yes":"No";
$email_edit = $_POST["email_edit"]=="Yes"?"Yes":"No";
$dealer_view = $_POST["dealer_view"]=="Yes"?"Yes":"No";
$dealer_edit = $_POST["dealer_edit"]=="Yes"?"Yes":"No";
$quotedprice_view = $_POST["quotedprice_view"]=="Yes"?"Yes":"No";
$quotedprice_edit = $_POST["quotedprice_edit"]=="Yes"?"Yes":"No";

//btns 
$renew = $_POST["renewedit"]=="Yes"?"Yes":"No";
$upgrade = $_POST["upgradeedit"]=="Yes"?"Yes":"No";
$lostandrenew = $_POST["lostandrenewedit"]=="Yes"?"Yes":"No";
$lostandupgrade = $_POST["lostandupgradeedit"]=="Yes"?"Yes":"No";
$dontwanttorenew = $_POST["dontwanttorenewedit"]=="Yes"?"Yes":"No";
//side nave links 
$renewalpage = $_POST["renewalpage"]=="Yes"?"Yes":"No";
$dealerpage = $_POST["dealerpage"]=="Yes"?"Yes":"No";
$supportpage = $_POST["supportpage"]=="Yes"?"Yes":"No";
$createuserpage = $_POST["createuserpage"]=="Yes"?"Yes":"No";
$uploadpage = $_POST["uploadpage"]=="Yes"?"Yes":"No";
$stocksummary = $_POST["stocksummary"]=="Yes"?"Yes":"No";
$outstandings = $_POST["outstandings"]=="Yes"?"Yes":"No";
$salesreport = $_POST["salesreport"]=="Yes"?"Yes":"No";
$salesregister = $_POST["salesregister"]=="Yes"?"Yes":"No";
$suspense = $_POST["suspense"]=="Yes"?"Yes":"No";
$funnel = $_POST["funnel"]=="Yes"?"Yes":"No";

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

$suspense_actions = $_POST["suspense_actions"]=="Yes"?"Yes":"No";
$suspense_status = $_POST["suspense_status"]=="Yes"?"Yes":"No";
$funnel_actions = $_POST["funnel_actions"]=="Yes"?"Yes":"No";
$funnel_status = $_POST["funnel_status"]=="Yes"?"Yes":"No";


      
      
       
   	$userloginupdate = "UPDATE  crm_login set usertype = '".$usertype."', email = '".$changedemail."', password = '".$password."' where email =  '".$emailactual."'";
   	$sql = "UPDATE crm_useraccess set  email = '".$changedemail."',crm_eps = '".$tableeps."',crm_fortinet = '".$tablefortinet."', insellview = '".$insellview."', inselledit = '".$inselledit."',outsellview = '".$outsellview."', outselledit = '".$outselledit."',product_name_view = '".$product_name_view."',product_name_edit = '".$product_name_edit."',users_view = '".$users_view."',users_edit = '".$users_edit."',remarks_view = '".$remarks_view."',remarks_edit = '".$remarks_edit."',expiry_date_view = '".$expiry_date_view."',expiry_date_edit = '".$expiry_date_edit."',company_view = '".$company_view."',company_edit = '".$company_edit."',contact_person_view = '".$contact_person_view."',contact_person_edit = '".$contact_person_edit."',mobile_view = '".$mobile_view."',mobile_edit = '".$mobile_edit."',email_view = '".$email_view."',email_edit = '".$email_edit."',dealer_view = '".$dealer_view."',dealer_edit = '".$dealer_edit."',quotedprice_view = '".$quotedprice_view."',quotedprice_edit = '".$quotedprice_edit."',renewedit = '".$renew."', upgradeedit = '".$upgrade."', lostandupgradeedit = '".$lostandupgrade."', lostandrenewedit = '".$lostandrenew."', dontwanttorenewedit = '".$dontwanttorenew."', renewalpage = '".$renewalpage."', dealerpage = '".$dealerpage."', supportpage = '".$supportpage."', createuserpage = '".$createuserpage."', 
    uploadpage = '".$uploadpage."',
    stocksummary = '".$stocksummary."',
    outstandings = '".$outstandings."',
    salesreport = '".$salesreport."',
    salesregister = '".$salesregister."',
    suspense = '".$suspense."',
    funnel = '".$funnel."',
    salesreport_access = '".$salesrp_arrs."',
    salesregister_access = '".$salesregrp_arrs."',
    outstandings_access = '".$outstandings_arrs."',
    dealer_city = '".$dealer_city_arrs."',
    funnel_email = '".$funnel_email_arrs."',
    suspense_actions = '".$suspense_actions."',
    suspense_status = '".$suspense_status."',
    funnel_actions = '".$funnel_actions."',
    funnel_status = '".$funnel_status."',
    createon = now()
     where email =  '".$emailactual."'";
// $sql = "UPDATE crm_useraccess set email = '".$changedemail."' where email =  '".$emailactual."'";
   	$result = mysqli_query($con,$sql);
      $resultlogin = mysqli_query($con,$userloginupdate);
      if (mysqli_query($con,$sql) && mysqli_query($con,$userloginupdate) ) {  
           echo 1;  
      }else{  
           echo 0;  
      }

   ?>