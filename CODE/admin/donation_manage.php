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
	<script src="./js/jquery.min.js"></script>
	
</head>
<body>
	<div id="header">
		<div>
			<a href="index.php" id="logo"><img src="./images/mylogo.png" alt="logo"></a>
			<ul>
				<li class="current"><a href="home.php">Donations</a></li>
				<li><a href="upload_media.php">Upload Media</a></li>
				<li><a href="news.php">News</a></li>
				<li><a href="events.php">Events</a></li>
				<li><a href="ngo_activities.php">NGO Activities</a></li>
				<li class="log_btn"><a href="./logout.php">Logout</a></li>
			</ul>
		</div>
	</div>
	<div id="body">
		<div class="admin_manages">
			<?php
				$sql = "SELECT * FROM categories WHERE category_id='".$_GET['cat']."'";
				$result = mysqli_query($con,$sql);
				$rs = mysqli_fetch_array($result);
				$cat = $rs['name'];
			?>
			<h3><?php echo $cat;?>'s Donations</h3>
			<?php
				$sql = "SELECT * FROM categories WHERE category_id='".$_GET['cat']."'";
				$result = mysqli_query($con,$sql);
				$rs = mysqli_fetch_array($result);
				$avl = $rs['avaliable'];
				echo "<h4 style='text-align:right;'>".$rs['avaliable']."-".$cat." Available</h4>";
				?>
			<hr>
			<?php
				$sql = "SELECT * FROM donation WHERE category_id='".$_GET['cat']."' and Receive_date IS NULL";
				$result = mysqli_query($con,$sql);
				while($rs = mysqli_fetch_array($result)){
					?>
					<div style="height:300px; width:350px; margin:20px; box-shadow:0 0 1px;">
						<h2><?php echo $rs['donar_name'] ?></h2>
						<h4><?php echo $rs['donar_email'] ?></h4>
						<p><?php echo $cat; ?></p>
						<form action="rec_donation.php" class="user">
							<input type="hidden" value="<?php echo $_GET['cat']; ?>" name="cat">
							<input type="hidden" value="<?php echo $rs['donate_id']; ?>" name="donate">
							<label>Items</label>
							<input type="number" name="donations">
							<input type="submit" value="Reveived" name="btn_reveive">
						</form>
					</div>
					<?php
				}
				
			?>
			<div class="stored">
			<?php
				if($avl>0){
					?>
			<h4>Send Donations to NGO</h4><hr>
				<div>
						<form action="insert_distribution.php" class="user">
						<label>Items</label>
							<input type="hidden" value="<?php echo $_GET['cat']; ?>" name="cat">
							<input type="number" name="donations">
						<label>Select NGO</label>
							<select name="ngo_id">
							<?php
								$sql = "SELECT * FROM ngo_data";
								$result = mysqli_query($con,$sql);
								while($rs = mysqli_fetch_array($result)){?>
									
									<option value="<?php echo $rs['ngo_id'];?>"><?php echo $rs['nago_name'];?></option>
									<?php
								}
							?>
							</select>
							<input type="submit" value="Send" name="btn_send">
						</form>
					</div>
			<div>
				<?php } ?>
			</div>
		</div>
	</div>
	<?php	include("./includes/footer.html");	?>
</body>
</html>