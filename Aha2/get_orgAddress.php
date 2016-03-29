<?php
$dbh = new PDO("mysql:;dbname=", "", "");

$org_code= $_POST['org_Code'];

$sql = "SELECT ORG_ADDRESS 
FROM  ORG_MASTER WHERE ID= '$org_code'";

$result = $dbh->query($sql)->fetchAll(PDO::FETCH_ASSOC);
//To output as-is json data result
//header('Content-type: application/json');
//echo json_encode($result);

//Or if you need to edit/manipulate the result before output
$return = array();
foreach ($result as $row){
    $return[]=array('org_address'=>$row['ORG_ADDRESS']);
}
$dbh = null;
header('Content-type: application/json');
echo json_encode($return);
	
?>
