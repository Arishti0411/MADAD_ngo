<?php
	include("./includes/connection.php");
	
	//for creating unique id with database checked
	$f = 0;
	$id = "";
	while($f != 1){
		$temp_id = uniqid("DN");
		//query for checking the uniqueid is exist in table or not
		$sql = "SELECT * FROM donation WHERE donate_id='".$temp_id."'";	
		$q = mysqli_query($con,$sql);
		if(mysqli_num_rows($q)==0){
			$id = $temp_id;
			$f = 1;
		}
	}
	
	$user_id = $id;
	$name = $_POST["donor_name"];
	$email = $_POST["donor_email"];
	$address = $_POST["donor_address"];
	$city = $_POST["donor_city"];
	$category = $_POST["cat"];
	$dateofdonation = date("Y-m-d");
	$item = $_POST['items'];
	$discription = $_POST["donor_discription"];
	$pickup = $_POST["pickup"];
echo $category."<br>";
	$sql = "INSERT INTO donation(donate_id,donar_name,donar_email,city_id,address,category_id,date,items,discription,pickup) VALUES('".$user_id."','".$name."','".$email."',".$city.",'".$address."','".$category."','".$date."',".$item.",'".$discription."','".$pickup."')";
	$q=mysqli_query($con,$sql);
	if($q == 1){
		header("location:./donate.php");
	}
	else{
		echo "Error".mysqli_error($con);
	}
	mysqli_close($con);
?>