<?php	include("./includes/session_check.php");	?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image/x-icon" href="../images/logo_icon.png" />
	<title>Admin Panel - Madad</title>
	<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
	<div id="header">
		<div>
			<a href="index.php" id="logo"><img src="../images/logo.png" alt="logo"></a>
			<ul>
				<li><a href="./">Home</a></li>
				<li class="current"><a href="">Upload Media</a></li>
				<li><a href="./news.php">News</a></li>
				<li><a href="./logout.php">Logout</a></li>
			</ul>
		</div>
	</div>
	<div id="body">
		<div style="width: 900px; margin:0px auto">
			<h2>Upload Media</h2><hr>
			<form action="insert_media.php" method="post" enctype="multipart/form-data">
			<input type='file' name='fileToUpload'><br><br>
			<label>Description: </label>
			<textarea rows="5" cols="35" name="txt_description"></textarea><br><br>
			<input type='submit' value='Upload'>
			</form>
		</div>
	</div>
	<?php	include("./includes/footer.html");	?>
</body>
</html>