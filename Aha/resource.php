<?php

$dbh = new PDO("mysql:;dbname=", "", "");

$sql = "SELECT ID, RESOURCE_REF FROM  RESOURCE_PROFILE";

$result = $dbh->query($sql)->fetchAll(PDO::FETCH_ASSOC);
//To output as-is json data result
//header('Content-type: application/json');
//echo json_encode($result);

//Or if you need to edit/manipulate the result before output
$return = array();
foreach ($result as $row){
    $return[]=array('resource'=>$row['RESOURCE_REF'],'resource_id'=>$row['ID']);
}
//$dbh = null;

header('Content-type: application/json');
echo json_encode($return);
?>
