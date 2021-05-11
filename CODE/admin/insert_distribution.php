<?php
		include("./includes/connection.php");
	$f = 0;
	$id = "";
	while($f != 1){
		$temp_id = uniqid("DS");
		//query for checking the uniqueid is exist in table or not
		$sql = "SELECT * FROM distributions WHERE distribution_id='".$temp_id."'";	
		$q = mysqli_query($con,$sql);
		if(mysqli_num_rows($q)==0){
			$id = $temp_id;
			$f = 1;
		}
	}
	$sql = "INSERT INTO distributions VALUES('".$id."','".$_GET['ngo_id']."','".$_GET['cat']."','".$_GET['donations']."')";
	if(mysqli_query($con,$sql)){
	$sql = "SELECT * FROM categories WHERE category_id='".$_GET['cat']."'";
	$result = mysqli_query($con,$sql);
	$rs = mysqli_fetch_array($result);
	$avl = $rs['avaliable'];
	$avl = $avl - $_GET['donations'];
	$sql = "UPDATE categories SET avaliable=".$avl." WHERE category_id='".$_GET['cat']."'";
	if(mysqli_query($con,$sql)){
		header("location:donation_manage.php?cat=".$_GET['cat']);
	}
	else{
		echo mysqli_error($con);
	}}
	else{
		echo mysqli_error($con);
	}
?>