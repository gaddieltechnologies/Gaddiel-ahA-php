<?php
$dbh = new PDO("mysql:;dbname=", "", "");

$org_code= $_POST['org_Code'];

$sql = "SELECT am.ASSIGN_DESC ASSIGN_DESC, rf.RESOURCE_REF RESOURCE_REF, tm.START_DATETIME START_DATETIME, tm.ID ID
FROM ASSIGNMENTS am, RESOURCE_PROFILE rf, TRACE_MASTER tm
WHERE tm.STATUS =1
AND tm.ASSIGN_ID = am.ID 
AND tm.RESOURCE_ID =  rf.ID
AND tm.ORG_ID = '$org_code'";

$result = $dbh->query($sql)->fetchAll(PDO::FETCH_ASSOC);
//To output as-is json data result
//header('Content-type: application/json');
//echo json_encode($result);

//Or if you need to edit/manipulate the result before output
$return = array();
foreach ($result as $row){
    $return[]=array('assign_desc'=>$row['ASSIGN_DESC'],'resource_ref'=>$row['RESOURCE_REF'],'start_datetime'=>$row['START_DATETIME'],'master_id'=>$row['ID']);
}
$dbh = null;
header('Content-type: application/json');
echo json_encode($return);
	
?>
