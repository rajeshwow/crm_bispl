
<?php 
$servername = "localhost";
$dbname = "i7232841_ma1";
$username = "lha78u13omzr";
$password = "BinaryCpanel#1";



$con = mysqli_connect($servername, $username, $password, $dbname);

if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}
else {
    echo "connected";
}



$inset_table = "UPDATE crm_eps set expiry_date = date_format(expiry_date,"Y-m-d") where id = 322";
if ((mysqli_query($conn, $inset_table)))
    {

        echo "Updated";
    }

    else
    {
        echo "Not Updated " . mysqli_error($conn);
    }

// Close connection
    mysqli_close($conn);
?>


