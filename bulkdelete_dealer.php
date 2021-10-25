<?php include 'config.php'; ?>
<?php include 'crm_userauth.php'; ?>

<?php
$post_ids = $_POST['post_id'];

foreach($post_ids as $id){ 
  // Delete record 
  $query = "DELETE FROM crm_dealer WHERE id=".$id; 
  mysqli_query($con,$query);
}
?>