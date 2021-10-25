<?php include 'config.php'; ?>
<?php

if (empty($_SESSION['email'])) {
    // The username session key does not exist or it's empty.
    header('location: ./crm_userlogin.php');
    exit;
}

?>
