<?php include './config.php'?>
<?php




  $name = $_POST["name"];
  $classname= $_POST["classs"];
  $product_id = $_POST["product_id"];
  $specification = $_POST["specification"];
  $image = $_POST["image"];
  $general_details = $_POST["general_details"];
  $specification_image = $_POST["specification_image"];
  $download = $_POST["download"];



  $sql = "INSERT INTO $classname (product_id, name, specification, image, general_details,specification_image, download)
VALUES ( '$product_id','$name'  , '$specification', '$image',' $general_details', '$specification_image', '$download')";


if(!$result = $conn->query($sql)){
die('There was an error running the query [' . $conn->error . ']');
}
else
{
echo "Thank you! We will contact you soon";
header("location:./insert.php");
}


?>