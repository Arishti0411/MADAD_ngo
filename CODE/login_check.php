<?php
	include("./includes/connection.php");
	
	if(isset($_POST["email"]) && isset($_POST["password"])){
		$email = $_POST["email"];
		$password = $_POST["password"];
		
		$sql = "SELECT * FROM user_data WHERE email='".$email."' and password='".md5($password)."'";
		$q = mysqli_query($con,$sql);
		if(mysqli_num_rows($q)==1){
			session_start();
			while($rs = mysqli_fetch_array($q)){
				$_SESSION["user_id"] = $rs["user_id"];
			}
			header("location:./index.php");
		}
		else{
			?>
			<script>
				alert("Invalid email or password.!!");
				window.location="./login.php";
			</script>
			<?php
		}
	}
	else{
		header("location:./errors/illigle_operation.php");
	}
	mysqli_close($con);
?>