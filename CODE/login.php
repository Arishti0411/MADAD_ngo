<?php	session_start();	?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Get Involved - Madad</title>
	
	<link rel="shortcut icon" type="image/x-icon" href="images/logo_icon.png" />
	<link rel="stylesheet" type="text/css" href="./css/style.css">
	<link rel="stylesheet" type="text/css" href="./css/style_form.css">
	<script type="text/javascript">
		function checkPassword(){
			if(document.getElementById("password").value == document.getElementById("password1").value){
				return true;
			}
			else{
				document.getElementById("password").style.border="2px solid #ff3300";
				document.getElementById("password1").style.border="2px solid #ff3300";
				return false;
			}
		}
	</script>
</head>
<body>
	<div id="header">
		<div>
			<a href="index.php" id="logo"><img src="images/logo.png" alt="logo"></a>
			<ul>
				<li><a href="index.php">Home</a></li>
				<li><a href="about.php">About</a></li>
				<li><a href="gallery.php">Gallery</a></li>
				<li><a href="news.php">News</a></li>
				<li><a href="event.php">Events</a></li>
				<li><a href="donate.php">Donate</a></li>
				<?php 
					if(isset($_SESSION["user_id"])){
				?>
					<li><a href="profile.php">profile</a></li>
					<li class="login"><a href="logout.php">Logout</a></li>
				<?php 
					}
					else{
				?>
					<li class="login"><a>Login</a></li>
				<?php
					}
				?>
				</li>
			</ul>
		</div>
	</div>
	<div id="body">
			<div>
				<div class="login_div">
					<h3>Login</h3>
					<form action="./login_check.php" method="post" class="user">
						<label>Email Address</label>
						<input type="email" name="email" required>
						<label>Password</label>
						<input type="password" name="password" required>
						<label class="forgot"><a href="forgot_password.php" style="text-decoration: none">forgot password ?</a></label><br>
						<input type="submit" value="Login">
					</form>
				</div>
				<div class="register_div">
					<h3>Register</h3>
					<form action="./registration.php" method="post" onsubmit="return checkPassword()" class="user">
						<label>Your Name</label>
						<input type="text" name="name" required>
						<label>Email Address</label>
						<input type="email" name="email" required>
						<label>Password</label>
						<input type="password" name="password" id="password" required>
						<label>Confirm Password</label>
						<input type="password" name="password" id="password1" required>
						<input type="submit" value="Register">
					</form>
				</div>
			</div>
	</div>
	<?php	include("./includes/footer.html");	?>
</body>
</html>