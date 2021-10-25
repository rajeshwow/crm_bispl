<?php include 'config.php' ?>
<?php
$error = "Sorry, your credentials are not valid, Please try again.";

if (isset($_POST['submit']))
{
    $email = filter_var($_POST["email"], FILTER_SANITIZE_STRING);
    $password = filter_var($_POST["password"], FILTER_SANITIZE_STRING);

    $sql = "SELECT email, password,usertype FROM crm_login where email = '$email' ";
    $result = mysqli_query($con, $sql) or die("Error: " . mysqli_error($con));

    $row = mysqli_fetch_array($result);

    if ($row["email"] == $email && $row["password"] == $password)
    {
        $_SESSION['email'] = $email;
        $_SESSION['usertype'] = $row['usertype'];
        header("Location:./index.php");
        exit();
    }
    else
    {
        $_SESSION["error"] = $error;
        header("Location: ./crm_userlogin.php");
        exit();
    }
}
?>
