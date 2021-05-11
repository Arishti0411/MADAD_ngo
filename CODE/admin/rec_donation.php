<?php
include("./includes/connection.php");
	$sql = "UPDATE donation SET Receive_date='".date("Y-m-d")."' WHERE donate_id='".$_GET['donate']."'";
	mysqli_query($con,$sql);
	$sql = "SELECT * FROM categories WHERE category_id='".$_GET['cat']."'";
	$result = mysqli_query($con,$sql);
	$rs = mysqli_fetch_array($result);
	$avl = $rs['avaliable'];
	$avl = $avl + $_GET['donations'];
	$sql = "UPDATE categories SET avaliable=".$avl." WHERE category_id='".$_GET['cat']."'";
	if(mysqli_query($con,$sql)){
		header("location:donation_manage.php?cat=".$_GET['cat']);
	}
	else{
		echo mysqli_error($con);
	}
?>