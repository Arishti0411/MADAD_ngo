<?php
	include("./includes/session_check.php");
	include("../includes/connection.php");
	
	//for creating unique id with database checked
	$f = 0;
	$id = "";
	while($f != 1){
		$temp_id = uniqid("NS");
		//query for checking the uniqueid is exist in table or not
		$sql = "SELECT * FROM ngo_data WHERE ngo_id='".$temp_id."'";	
		$q = mysqli_query($con,$sql);
		if(mysqli_num_rows($q)==0){
			$id = $temp_id;
			$f = 1;
		}
	}
	
	$name = $_POST["nago_name"];
	$address = $_POST["ngo_address"];
	$city = $_POST["ngo_city"];
	
	$sql = "INSERT INTO ngo_data(ngo_id,nago_name,address,city_id) VALUES('".$id."','".$name."','".$address."','".$city."')";
	$result = mysqli_query($con,$sql);
	if($result == 1){
		header("location:ngo_activities.php");
	}
	else{
		echo "error..".mysqli_error($con);
	}
?>