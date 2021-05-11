<?php	include("./includes/session_check.php");	?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image/x-icon" href="./images/logo_icon.png" />
	<title>Admin Panel - Madad</title>
	<link rel="stylesheet" type="text/css" href="./css/style.css">
	<link rel="stylesheet" type="text/css" href="./css/report.css">
	<link rel="stylesheet" type="text/css" href="./css/style_form.css">
	<script src="./js/jquery.min.js"></script>
	<script>
		$(document).ready(function(){
			$("#show_report").hide(1);
			$("#donation_report").click(function(){
				$("#show_report").fadeOut(1);
				$("#show_report").load("donation_report.php");
				$("#show_report").fadeIn();
			});
		});
	</script>
</head>
<body>
	<div id="header">
		<div>
			<a href="index.php" id="logo"><img src="./images/mylogo.png" alt="logo"></a>
			<ul id="menus">
				<li><a href="home.php">Donations</a></li>
				<li><a href="upload_media.php">Upload Media</a></li>
				<li><a href="news.php">News</a></li>
				<li><a href="events.php">Events</a></li>
				<li class="current"><a href="ngo_activities">NGO Activities</a></li>
				<li class="log_btn"><a href="./logout.php">Logout</a></li>
			</ul>
		</div>
	</div>
	<div id="body">
		<div class="ngo_activities">
			<div>
				<!--<a style="width:auto;padding:30px 50px" id="top_five_report">Top Five Donor</a>
				<a id="donation_report" style="width:auto;padding:30px 60px">Donations</a>-->
				<?php
					include("./donation_report.php");
				?>
			</div>
			<div id="show_report">
				
			</div>
		</div>
		
	</div>
	<?php	include("./includes/footer.html");	?>
</body>
</html>