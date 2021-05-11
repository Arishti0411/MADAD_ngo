<?php
	include("./includes/connection.php");
	$state = $_GET['state'];
	$sql = "SELECT * FROM city WHERE state_id='".$state."'";
	$result = mysqli_query($con,$sql);
	
	while($rs = mysqli_fetch_array($result)){
?>
		<option value="<?php echo $rs['city_id']; ?>"><?php echo $rs['city_name']; ?></option>
<?php
	}
?>