<?php
	session_start();
	include("./includes/connection.php");
	//for creating unique id with database checked
	$f = 0;
	$id = "";
	while($f != 1){
		$temp_id = uniqid("QU");
		//query for checking the uniqueid is exist in table or not
		$sql = "SELECT * FROM donation WHERE donate_id='".$temp_id."'";	
		$q = mysqli_query($con,$sql);
		if(mysqli_num_rows($q)==0){
			$id = $temp_id;
			$f = 1;
		}
	}
	$sql = "INSERT INTO faq(faq_id,user_id,question) VALUES('".$id."','".$_SESSION['user_id']."','".$_GET['faq_que']."')";
	if(mysqli_query($con,$sql)){
		header("location:faq.php");
	}
	else{
		echo mysqli_error($con);
	}
?>