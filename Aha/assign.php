<?php

$dbh = new PDO("mysql:;dbname=", "", "");

$sql = "SELECT ID, ASSIGN_CODE FROM ASSIGNMENTS";

$result = $dbh->query($sql)->fetchAll(PDO::FETCH_ASSOC);
//To output as-is json data result
//header('Content-type: application/json');
//echo json_encode($result);

//Or if you need to edit/manipulate the result before output
$return = array();
foreach ($result as $row){
    $return[]=array('assign_id'=>$row['ID'],'assign_code'=>$row['ASSIGN_CODE']);
}
//$dbh = null;

header('Content-type: application/json');
echo json_encode($return);
?>
