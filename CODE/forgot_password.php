<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Forgot Password - Helping Hands</title>
	
	<link rel="shortcut icon" type="image/x-icon" href="images/logo_icon.png" />
	<link rel="stylesheet" type="text/css" href="./css/style.css">
	<link rel="stylesheet" type="text/css" href="./css/style_form.css">
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
	<div id="body">
		<div style="margin-bottom:50px">
			<div class="login_div" style="margin-top:30px">
				<h3>Forgot Password ?</h3>
				<form action="./security_question.php" method="post" class="user">
					<label>Email Address</label>
					<input type="email" name="email" required>
					<a href="./login.php" class="back_button">back</a>
					<input type="submit" value="continue" class="forgot">
				</form>
			</div>
		</div>
	</div>
	<?php include("./includes/footer.html"); ?>
</body>
</html>