

<?php

	// Connect database 

	require_once('config.php');

	$limit = 10;

	if (isset($_POST['page_no'])) {
	    $page_no = $_POST['page_no'];
	}else{
	    $page_no = 1;
	}

	$offset = ($page_no-1) * $limit;

	$query = "SELECT * from tallydatainv_indore union select * from tallydatainv_lucknow LIMIT $offset, $limit";

	$result = mysqli_query($con, $query);

	$output = "";
	$i=1;

	?>

	<table class='table table-striped' id='myTable'>
		    <thead>
		        <tr>
		           <th>S.no</th>
                   <th>Particulars</th>
                   <th>Quantity</th>
                   <th>Location</th>
	            </tr>
		    </thead>
	         <tbody>
	<?php while ($row = mysqli_fetch_assoc($result)) { ?>

	<tr>
	          <td><?php echo $i?></td>
	            <td><?php echo $row['perticular'] ?></td>
	            <td><?php echo $row['qty'] ?></td>
	            <td><?php echo $row['location'] ?></td>
		 </tr>
		 <?php $i++; } ?>
	
	</tbody>
		</table>
		<?php

	$sql = "SELECT * from tallydatainv_indore union select * from tallydatainv_lucknow";

	$records = mysqli_query($con, $sql);

	$totalRecords = mysqli_num_rows($records);

	$totalPage = ceil($totalRecords/$limit);

	?>
	<ul class='pagination justify-content-center' style='margin:20px 0'>
		<?php
		$pagecounts = 0;
	for ($i=1; $i <= $totalPage ; $i++) { 
	   if ($i == $page_no) {
		$active = "active";
		$pagecounts++;
	   }else{
		$active = "";
	   }
	   ?>

	    <li class='page-item <?php echo $active ?> '><a class='page-link' id='<?php echo $i?>' href=''><?php echo $i?></a></li>
	
	<?php }?>
	</ul>


	
