<?php
 include('connection.php');
$activeId=$_POST['ActiveId'];
 $orgId=$_POST['OrgId'];
 $assign=$_POST['Assign'];
 $resouce=$_POST['Resouce'];
 $startDateTime=$_POST['StartDateTime']; 
 $stopDateTime=$_POST['StopDateTime'];
 $status=$_POST['Status'];
 $times=$_POST['Times'];
 $latitude=$_POST['Latitude'];
 $longitude=$_POST['Longitude'];
 $address=$_POST['Address']; 
 $process=$_POST['Process']; 

/*echo "activeId = $activeId<br> orgId=$orgId <br>  assign =$assign <br>  resouce =$resouce <br> startDateTime =$startDateTime <br>  stopDateTime =$stopDateTime <br>  status =$status <br>  times = $times <br>  latitude = $latitude <br>  longitude =$longitude <br>  address =$address <br>  process =$process ";*/
	if($process == "1")
{
     
	$pdo = Database::connect();
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$query ="SELECT * FROM TRACE_MASTER WHERE START_DATETIME='$startDateTime'";
	$result = $pdo->prepare($query);
	$result->execute();	
	$row = $result->fetch();
	if($row >0)
	{
            
		$pdo = Database::connect();
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$query ="SELECT ID FROM TRACE_MASTER WHERE USER_ID='$activeId'";
		$result = $pdo->prepare($query);
		$result->execute();	
		$row = $result->fetch();
		$masterId=$row['ID'];	
		Database::disconnect();	
		
		$pdo = Database::connect();
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$query ="INSERT INTO TRACE_DETAIL (CREATED_BY,CREATED_DATE,UPDATED_BY,UPDATED_DATE,TRACE_MASTER_ID,TRACE_TIME,TRACE_LAT,TRACE_LNG,TRACE_ADDRESS) VALUES (-1,now(),-1,now(), ?,?,?,?,?)";
		$result = $pdo->prepare($query);
		$result->execute(array($masterId ,$times,$latitude ,$longitude,$address));	
		Database::disconnect();
	}else
	{	
		
		$pdo = Database::connect();
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$query ="INSERT INTO TRACE_MASTER (CREATED_BY, CREATED_DATE, ORG_ID, ASSIGN_ID, RESOURCE_ID, USER_ID, START_DATETIME, STATUS) 
	VALUES (-1,now(),?,?,?,?,?,?)";
		$result = $pdo->prepare($query);
		$result->execute(array($orgId ,$assign,$resouce ,$activeId,$startDateTime,$status));	
		Database::disconnect();	
		
		$pdo = Database::connect();
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$query ="SELECT ID FROM TRACE_MASTER WHERE USER_ID='$activeId' AND START_DATETIME='$startDateTime'";
		$result = $pdo->prepare($query);
		$result->execute();	
		$row = $result->fetch();
		$masterId=$row['ID'];	
		Database::disconnect();	
		
		$pdo = Database::connect();
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$query ="INSERT INTO TRACE_DETAIL (CREATED_BY,CREATED_DATE,UPDATED_BY,UPDATED_DATE,TRACE_MASTER_ID,TRACE_TIME,TRACE_LAT,TRACE_LNG,TRACE_ADDRESS) VALUES (-1,now(),-1,now(), ?,?,?,?,?)";
		$result = $pdo->prepare($query);
		$result->execute(array($masterId ,$times,$latitude ,$longitude,$address));	
		Database::disconnect();
           echo "1";
	}	
     
}
	if($process=="0")
{
 $pdo = Database::connect();
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$query ="UPDATE TRACE_MASTER SET STOP_DATETIME=? WHERE USER_ID='$activeId' AND START_DATETIME='$startDateTime'";
	$result = $pdo->prepare($query);
	$result->execute(array($stopDateTime));	
	Database::disconnect();	
	
	$pdo = Database::connect();
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$query ="SELECT ID FROM TRACE_MASTER WHERE USER_ID='$activeId' AND START_DATETIME='$startDateTime'";
	$result = $pdo->prepare($query);
	$result->execute();	
	$row = $result->fetch();
	$masterId=$row['ID'];	
	Database::disconnect();	
	
	$pdo = Database::connect();
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$query ="INSERT INTO TRACE_DETAIL (CREATED_BY,CREATED_DATE,UPDATED_BY,UPDATED_DATE,TRACE_MASTER_ID,TRACE_TIME,TRACE_LAT,TRACE_LNG,TRACE_ADDRESS) VALUES (-1,now(),-1,now(), ?,?,?,?,?)";
	$result = $pdo->prepare($query);
	$result->execute(array($masterId ,$times,$latitude ,$longitude,$address));	
	Database::disconnect();	
         echo "1";
}
	if($process=="2")
{
      
	$pdo = Database::connect();
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$query ="SELECT ID FROM TRACE_MASTER WHERE USER_ID='$activeId' AND START_DATETIME='$startDateTime'";
	$result = $pdo->prepare($query);
	$result->execute();	
	$row = $result->fetch();
	$masterId=$row['ID'];	
	Database::disconnect();	
	
	$pdo = Database::connect();
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$query ="INSERT INTO TRACE_DETAIL (CREATED_BY,CREATED_DATE,UPDATED_BY,UPDATED_DATE,TRACE_MASTER_ID,TRACE_TIME,TRACE_LAT,TRACE_LNG,TRACE_ADDRESS) VALUES (-1,now(),-1,now(), ?,?,?,?,?)";
	$result = $pdo->prepare($query);
	$result->execute(array($masterId ,$times,$latitude ,$longitude,$address));	
	Database::disconnect();
          echo "1";
}
?>