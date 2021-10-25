<?php  
if(isset($_POST['submit'])) {  
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "bispl";

// Create connection
    $con = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
    if (!$con) {
      die("Connection failed: " . mysqli_connect_error());
  }
  else{
    echo "database connected <br>";
}

$email = filter_var($_POST["email"], FILTER_SANITIZE_STRING);
$password = filter_var($_POST["password"], FILTER_SANITIZE_STRING);

// $sql = "SELECT email, password FROM crm_login where email = '$email' ";
// $result = mysqli_query($con, $sql) or die("Error: " . mysqli_error($con));

// $row = mysqli_fetch_array($result);

// if ($row["email"] == $email && $row["password"] == $password)
// {
//     echo "<h1>Login Successful</h1>";
// }
// else
// {
//     echo "<h1>Login Failed</h1>";
// }

echo "Email: " .$email;  
echo "<br>";  
echo "Password: " .$password;  
echo "<br>";  


}  
?> 
<!DOCTYPE html>  
<html>  
<head>  
    <style>  
    .error {color: #FF0001;}  
</style>  
</head>  
<body style="text-align:center;">    
    <hr>
    <h2>Registration Form</h2>  
    <span class = "error">* required field </span>  
    <br><br>  
    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" >    

        E-mail:   
        <input type="email" name="email">   
        <br><br>  
        Mobile No:   
        <input type="text" name="password">   
        <br><br>  

        <input type="submit" name="submit" value="Submit">   
        <br><br>                             
    </form>  



</body>  
</html>  