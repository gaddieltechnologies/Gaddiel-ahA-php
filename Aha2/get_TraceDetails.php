<?php
$dbh = new PDO("mysql:;dbname=", "", "");

$masterId= $_POST['MasterId'];

$sql = "SELECT * FROM TRACE_DETAIL
WHERE TRACE_MASTER_ID ='$masterId'";

$result = $dbh->query($sql)->fetchAll(PDO::FETCH_ASSOC);
//To output as-is json data result
//header('Content-type: application/json');
//echo json_encode($result);

//Or if you need to edit/manipulate the result before output
$return = array();
foreach ($result as $row){
    $return[]=array('trace_time'=>$row['TRACE_TIME'],'trace_address'=>$row['TRACE_ADDRESS'],'lat'=>$row['TRACE_LAT'],'lng'=>$row['TRACE_LNG']);
}
$dbh = null;
header('Content-type: application/json');
echo json_encode($return);
	
?>
