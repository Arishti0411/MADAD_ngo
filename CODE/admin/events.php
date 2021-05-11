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
				<li class="current"><a>Events</a></li>
				<li><a href="ngo_activities.php">NGO Activities</a></li>
				<li class="log_btn"><a href="./logout.php">Logout</a></li>
			</ul>
		</div>
	</div>
	<div id="body">
		<div class="admin_manages">
			<h3>add event</h3><hr>
			<form action="insert_event.php" method="post" enctype="multipart/form-data" class="user">
			<label>Event Name</label>
			<input type="text" name="event_name">
			<label>Description</label>
			<textarea name="event_description" rows="5"></textarea>
			<label>date</label>
			<input type="date" name="event_date">
			<label>time</label>
			<input type="time" name="event_time">
			<label>address</label>
			<textarea name="event_address" rows="3"></textarea>
			<label>Poster</label>
			<input type="file" name="fileToUpload">
			<label>state</label>
			<select id="event_state" name="event_state">
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
			<select id="event_city" name="event_city">
				<option value="">Select State First</option>
			</select>
			<label>duration</label>
			<input type="text" name="event_duration">
			<input type="submit" value="Add Event">
			</form>
			<div class="stored">
				<h4>Added Events</h4><hr>
				<?php
					$sql = "SELECT * FROM event ORDER BY date DESC";
					$result = mysqli_query($con,$sql);
					$count=1;
					while($rs = mysqli_fetch_array($result)){
						if($count<=4){
						?>
						<a>
							<div>
								<span><?php echo $rs['event_name']; ?></span>
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