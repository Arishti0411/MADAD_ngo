<?php
	include("./includes/connection.php");
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Forgot Password - Helping Hands</title>
	
	<link rel="shortcut icon" type="image/x-icon" href="images/logo_icon.png" />
	<link rel="stylesheet" type="text/css" href="./css/style.css">
	<link rel="stylesheet" href="./css/style_form.css">
</head>
<body>
	<div id="header">
		<div>
			<a href="index.php" id="logo"><img src="images/logo.png" alt="logo"></a>
			<ul>
				<li><a href="index.php">Home</a></li>
				<li><a href="about.php">About</a></li>
				<li><a href="gallery.php">Gallery</a></li>
				<li><a href="news.php">News &amp; Blog</a></li>
				<li><a href="donate.php">Donate</a></li>
			</ul>
		</div>
	</div>
	<?php
		if(isset($_GET["email"])){
			$email = $_GET["email"];
		}
		else{
			$email = $_POST["email"];
		}
		$sql = "SELECT * FROM user_data WHERE email='".$email."'";
		$result = mysqli_query($con,$sql);
		if(mysqli_num_rows($result)==1){
			while($rs = mysqli_fetch_array($result)){
				$que = $rs['security_que'];
				$id = $rs['user_id'];
			}
	?>
	<div id="body">
		<div style="margin-bottom:50px">
			<div class="login_div" style="margin-top:30px">
				<h3>Security Question</h3>
				<form action="./new_password.php" method="post" class="user">
					<label><?php echo $que; ?></label>
					<input type="text" name="answer" required>
					<input type="hidden" name="id" value="<?php echo $id; ?>">
					<input type="submit" value="continue">
				</form>
			</div>
		</div>
	</div>
	<?php
		}
		else{
			?>
			<script>
				alert("Invalid email...!!");
				window.location="./forgot_password.php";
			</script>
			<?php
		}
	?>
</body>
</html>