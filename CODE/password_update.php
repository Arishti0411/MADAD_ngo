<?php
	include("./includes/connection.php");
	
$id = $_POST["id"];
$password = md5($_POST["password"]);
	
$sql = "UPDATE user_data SET password='".$password."' WHERE user_id='".$id."'";

$q = mysqli_query($con,$sql);

if($q==1){
	header("location:login.php");
}
else{
	echo "ERROR...!!!";
}

mysqli_close($con);

?>