<?php
	include("../includes/connection.php");
	if(isset($_POST["admin"]) && isset($_POST["password"])){
		$admin = $_POST["admin"];
		$password = $_POST["password"];
		
		$sql = "SELECT * FROM admin WHERE admin_Id='".$admin."' and password='".$password."'";
		$result = mysqli_query($con,$sql);
		if(mysqli_num_rows($result) == 1){
			while($rs = mysqli_fetch_array($result)){
				session_start();
				$_SESSION["admin"] = $rs["admin_Id"];
			}
			header("location:./home.php");
		}
		else{
			?>
			<script>
				alert("Invalid admin name or password.!!");
				window.location="./index.php";
			</script>
			<?php
		}
	}
	else{
		header("location:../errors/illigle_operation.html");
	}
	mysqli_close($con);
?>