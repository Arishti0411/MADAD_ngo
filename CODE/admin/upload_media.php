<?php
	include("./includes/session_check.php");
	include("./includes/connection.php");
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image/x-icon" href="./images/logo_icon.png" />
	<title>Admin Panel - Madad</title>
	<link rel="stylesheet" type="text/css" href="./css/style.css">
	<link rel="stylesheet" type="text/css" href="./css/style_form.css">
</head>
<body>
	<div id="header">
		<div>
			<a href="index.php" id="logo"><img src="./images/mylogo.png" alt="logo"></a>
			<ul>
				<li><a href="home.php">Donations</a></li>
				<li class="current"><a>Upload Media</a></li>
				<li><a href="news.php">News</a></li>
				<li><a href="events.php">Events</a></li>
				<li><a href="ngo_activities.php">NGO Activities</a></li>
				<li class="log_btn"><a href="./logout.php">Logout</a></li>
			</ul>
		</div>
	</div>
	<div id="body">
		<div class="admin_manages">
			<h3>Upload Media</h3><hr>
			<form action="insert_media.php" method="post" enctype="multipart/form-data" class="user">
			<label>Caption</label>
			<input type="text" name="media_cation">
			<input type='file' name='fileToUpload'>
			<label>Description</label>
			<textarea rows="5" cols="35" name="description"></textarea>
			<input type='submit' value='Upload'>
			</form>
			<div class="stored">
				<h4>uploaded media</h4><hr>
				<?php
					$sql = "SELECT * FROM media_gallery ORDER BY view DESC";
					$result = mysqli_query($con,$sql);
					$count=1;
					while($rs = mysqli_fetch_array($result)){
						if($count<=4){
						?>
						<a>
							<div>
								<span><?php echo $rs['caption']; ?></span>
								<img src="<?php echo ".".$rs['image']; ?>">
							</div>
						</a>
						<?php
						}
						$count++;
					}
				?>
			</div>
		</div>
	</div>
	<?php	include("./includes/footer.html");	?>
</body>
</html>