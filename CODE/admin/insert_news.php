<?php
	include("./includes/session_check.php");
	include("../includes/connection.php");
	
	//for creating unique id with database checked
	$f = 0;
	$id = "";
	while($f != 1){
		$temp_id = uniqid("NS");
		//query for checking the uniqueid is exist in table or not
		$sql = "SELECT * FROM news WHERE news_id='".$temp_id."'";	
		$q = mysqli_query($con,$sql);
		if(mysqli_num_rows($q)==0){
			$id = $temp_id;
			$f = 1;
		}
	}
	$date = $_POST["news_date"];
	$time = $_POST["news_time"];
	$heading = $_POST["news_heading"];
	$description = str_replace("'","\'",$_POST['news_description']);
	
	$file_name = $_FILES["fileToUpload"]["name"];
	$tmp_file = $_FILES["fileToUpload"]["tmp_name"];
	$extension = strchr($file_name,".");
	if(move_uploaded_file($tmp_file,"../news_uploads/$id$extension")){
		$img = "./news_uploads/$id$extension";
	}
	else{
		$img = "";
	}
	$sql = "INSERT INTO news(news_id,heading,description,date,time) VALUES('".$id."','".$heading."','".$description."','".$date."','".$time."')";
	$result = mysqli_query($con,$sql);
	if($result == 1){
		header("location:news.php");
	}
	else{
		echo "error..".mysqli_error($con);
	}
?>