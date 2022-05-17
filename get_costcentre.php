<?php
include 'config.php';

$costCentre_query =  "SELECT DISTINCT costcentre from (select DISTINCT costcentre FROM crm_salesreport
UNION 
select DISTINCT costcentre FROM crm_salesreport_indore
UNION
select DISTINCT costcentre FROM crm_salesreport_lucknow) derivedtable";
$costCentre_query_result = mysqli_query($con, $costCentre_query);
while ($costCentres = mysqli_fetch_assoc($costCentre_query_result))
    $costCentress[] = $costCentres;

$count = count($costCentress)

?>


<select class="form-control" id="cost_centre" name="cost_centre">
    <?php
    for ($i = 0; $i < $count; $i++) {
        if ($costCentress[$i]['costcentre'] !== 'Array') { ?>
            <option value="<?php echo $costCentress[$i]['costcentre'] ?>"> <?php echo $costCentress[$i]['costcentre'] ?> </option>
    <?php }
    } ?>
</select>