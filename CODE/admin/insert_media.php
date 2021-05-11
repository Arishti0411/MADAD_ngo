<?php
	include("./includes/session_check.php");
	include("../includes/connection.php");
	
	//for creating unique id with database checked
	$f = 0;
	$id = "";
	while($f != 1){
		$temp_id = uniqid("MG");
		//query for checking the uniqueid is exist in table or not
		$sql = "SELECT * FROM media_gallery WHERE media_id='".$temp_id."'";	
		$q = mysqli_query($con,$sql);
		if(mysqli_num_rows($q)==0){
			$id = $temp_id;
			$f = 1;
		}
	}
	
	$m_id = $id;
	$caption = $_POST["media_cation"];
	$description = $_POST["description"];
	$file_name = $_FILES["fileToUpload"]["name"];
	$tmp_file = $_FILES["fileToUpload"]["tmp_name"];
	$extension = strchr($file_name,".");
	if(move_uploaded_file($tmp_file,"../gallery_uploads/$id$extension")){
		$img = "./gallery_uploads/$id$extension";
	}
	else{
		$img = "";
	}
	$sql = "INSERT INTO media_gallery(media_id,caption,image,description) VALUES('".$m_id."','".$caption."','".$img."','".$description."')";
	$result = mysqli_query($con,$sql);
	if($result == 1){
		header("location:upload_media.php");
	}
	else{
		echo "error..";
	}

?>