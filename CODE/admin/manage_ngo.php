<?php	include("./includes/session_check.php");	
include("./includes/connection.php");?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image/x-icon" href="./images/logo_icon.png" />
	<title>Admin Panel - Madad</title>
	<link rel="stylesheet" type="text/css" href="./css/style.css">
	<link rel="stylesheet" type="text/css" href="./css/style_form.css">
	<script src="./js/jquery.min.js"></script>
	<script>
		$(document).ready(function(){
			$("#event_state").change(function(){
				var state = $("#event_state").val();
				$("#event_city").load("getCity.php?state="+state);
			});
		});
	</script>
</head>
<body>
	<div id="header">
		<div>
			<a href="index.php" id="logo"><img src="./images/mylogo.png" alt="logo"></a>
			<ul>
				<li><a href="home.php">Donations</a></li>
				<li><a href="upload_media.php">Upload Media</a></li>
				<li><a href="news.php">News</a></li>
				<li><a href="events.php">Events</a></li>
				<li class="current"><a href="ngo_activities.php">NGO Activities</a></li>
				<li class="log_btn"><a href="./logout.php">Logout</a></li>
			</ul>
		</div>
	</div>
	<div id="body">
		<div class="admin_manages">
			<h3>Add NGO</h3><hr>
			<form action="insert_ngo.php" method="post" enctype="multipart/form-data" class="user">
			<label>Name</label>
			<input type="text" name="nago_name">
			<label>Address</label>
			<textarea rows="5" cols="35" name="ngo_address"></textarea>
			<label>state</label>
			<select id="event_state" name="ngo_state">
				<option value="">Select State</option>
				<?php
					$sql = "SELECT * FROM state";
					$result = mysqli_query($con,$sql);
					while($rs = mysqli_fetch_array($result)){
						?>
						<option value="<?php echo $rs["state_id"]; ?>"><?php echo $rs["state_name"]; ?></option>
						<?php
					}
				?>
			</select>
			<label>city</label>
			<select id="event_city" name="ngo_city">
				<option value="">Select State First</option>
			</select>
			<input type='submit' value='Add'>
			</form>
			<div class="stored">
				<h4>Available NGO</h4><hr>
				<?php
					$sql = "SELECT * FROM ngo_data";
					$result = mysqli_query($con,$sql);
					$count=1;
					while($rs = mysqli_fetch_array($result)){
						?>
						<a>
							<div>
								<span><?php echo $count.") ".$rs['nago_name']; ?></span>
							</div>
						</a>
						<?php
						$count++;
					}
				?>
			</div>
		</div>
	</div>
	<?php	include("./includes/footer.html");	?>
</body>
</html>