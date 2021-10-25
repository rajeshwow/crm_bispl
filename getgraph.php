<?php include 'crm_userauth.php'; ?>
<?php 

$days = $_POST['days'];
// Data fetch for map for 8 days

$graph_query =  "SELECT CAST(renewed_at AS DATE) as dates,SUM(COUNT) as count FROM 
(   
   (select renewed_at,COUNT(renewed_at) AS 'count'   FROM crm_fortinet where renewed_at BETWEEN DATE_SUB( now( ) ,INTERVAL $days DAY ) AND now( ) GROUP BY CAST(renewed_at AS DATE))
   union ALL
   (select renewed_at,COUNT(renewed_at) AS 'count'   FROM crm_eps where renewed_at BETWEEN DATE_SUB( now( ) ,INTERVAL $days DAY ) AND now( ) GROUP BY CAST(renewed_at AS DATE))
) derivedTable
GROUP BY CAST(renewed_at AS DATE)
";
$graph_result = mysqli_query($con, $graph_query);
while($row_graph = mysqli_fetch_assoc($graph_result))
   $graph_stat[] = $row_graph;
$count_graph = count($graph_stat);


$iteration = 0;
$labels= array();
$values= array();
while($iteration < $count_graph){
 array_push($labels,$graph_stat[$iteration]["dates"]);
 array_push($values,$graph_stat[$iteration]["count"]);
 $iteration++;
}
?>

<canvas id="myChart" style=" height:300px;"></canvas>
<script type="text/javascript">
	BuildChart(<?php echo json_encode($labels) ?> , <?php echo json_encode($values) ?>,'Renew');

</script>