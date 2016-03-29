<?php
$dbh = new PDO("mysql:;dbname=", "", "");

$activation_code= $_POST['activation_Code'];

$sql = "SELECT ui.ID ID, ui.ACTIVATION_CODE ACTIVATION_CODE, ui.USER_ORG_ID USER_ORG_ID
FROM USER_INFO ui, KEY_VALUE kv
WHERE ui.STATUS =1
AND ui.EXPIRY_DATE >= NOW( ) 
AND kv.GROUP_NAME =  'ORG'
AND kv.KEY_NAME =  'ROLE'
AND kv.VALUE_ID =  'MEM'
AND kv.ID = ui.USER_ROLE_ID
AND ui.ACTIVATION_CODE =  '$activation_code''";

$result = $dbh->query($sql)->fetchAll(PDO::FETCH_ASSOC);
//To output as-is json data result
//header('Content-type: application/json');
//echo json_encode($result);

//Or if you need to edit/manipulate the result before output
$return = array();
foreach ($result as $row){
    $return[]=array('activate_code'=>$row['ACTIVATION_CODE'],'org_code'=>$row['USER_ORG_ID'],'activate_id'=>$row['ID']);
}
$dbh = null;
header('Content-type: application/json');
echo json_encode($return);
	
?>
