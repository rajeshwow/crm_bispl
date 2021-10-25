<?php
if (isset($_POST['xx'])) {
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "bispl";


	$con = mysqli_connect($servername, $username, $password, $dbname);

	if (!$con) {
		die("Connection failed: " . mysqli_connect_error());
	}
	else{
		echo "DB Connected <br>";
	}



	$query = "select * from test";
	$selectquery = mysqli_query($con,$query);
	$numofrow = mysqli_num_rows($selectquery);
	echo "Before Delete Number of Row in table = ".$numofrow."<br>";

	$delete = "DELETE FROM test";
    mysqli_query($con, $delete);

	if (mysqli_query($con, $delete)) {
		
		for ($i=0; $i < 800; $i++) { 

			$query = "INSERT INTO `test`( `fname`) VALUES ('Rajesh')";
			$selectquery = mysqli_query($con,$query);
		}
	}

}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Insert after delete</title>
</head>
<body>
	<form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
		
		<button type="submit" name="xx">Clicked</button>
	</form>
</body>
</html>