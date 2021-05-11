<?php
	include("./includes/session_check.php");
	include("../includes/connection.php");
	
	//for creating unique id with database checked
	$f = 0;
	$id = "";
	while($f != 1){
		$temp_id = uniqid("ET");
		//query for checking the uniqueid is exist in table or not
		$sql = "SELECT * FROM event WHERE event_id='".$temp_id."'";	
		$q = mysqli_query($con,$sql);
		if(mysqli_num_rows($q)==0){
			$id = $temp_id;
			$f = 1;
		}
	}
	$date = $_POST["event_date"];
	$time = $_POST["event_time"];
	$name = $_POST["event_name"];
	$description = $_POST["event_description"];
	$address = $_POST["event_address"];
	$city = $_POST["event_city"];
	$duration = $_POST["event_duration"];
	$file_name = $_FILES["fileToUpload"]["name"];
	$tmp_file = $_FILES["fileToUpload"]["tmp_name"];
	$extension = strchr($file_name,".");
	if(move_uploaded_file($tmp_file,"../event_uploads/$id$extension")){
		$img = "./event_uploads/$id$extension";
	}
	else{
		$img = "";
	}
	$sql = "INSERT INTO event(event_id,event_name,event_description,date,time,address,city_id,duration,image) VALUES('".$id."','".$name."','".$description."','".$date."','".$time."','".$address."',".$city.",'".$duration."','".$img."')";
	$result = mysqli_query($con,$sql);
	if($result==1){
		header("location:events.php");
	}
	else{
		echo "error..";
	}
?>