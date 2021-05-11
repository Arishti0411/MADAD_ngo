<?php
	session_start();
	include("./includes/connection.php");
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image/x-icon" href="images/logo_icon.png" />
	<title>Donation - Madad</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="./css/style_form.css">
	<script src="./js/jquery.min.js"></script>
	<script>
		$(document).ready(function(){
			$("#donor_state").change(function(){
				var state = $("#donor_state").val();
				$("#donor_city").load("getCity.php?state="+state);
			});
		});
	</script>
</head>
<body>
	<div id="header">
		<div>
			<a href="index.php" id="logo"><img src="images/logo.png" alt="logo"></a>
			<ul>
				<li><a href="index.php">Home</a></li>
				<li><a href="about.php">About</a></li>
				<li><a href="gallery.php">gallery</a></li>
				<li><a href="news.php">News</a></li>
				<li><a href="event.php">Events</a></li>
				<li class="current"><a>Donate</a></li>
				<?php 
					if(isset($_SESSION["user_id"])){
				?>
					<li><a href="profile.php">profile</a></li>
					<li><a href="faq.php">FAQ</a></li>
					<li class="log_btn"><a href="logout.php">Logout</a></li>
				<?php 
					}
					else{
				?>
					<li class="log_btn"><a href="login.php">Login</a></li>
				<?php
					}
				?>
			</ul>
		</div>
	</div>
	<div id="body">
		<div class="donation_div">
		<h3>What you want to Donate ?</h3><hr>
		<div>
			<?php
				$sql = "SELECT * FROM categories";
				$result = mysqli_query($con,$sql);
				while($rs = mysqli_fetch_array($result)){
					?>
					<a href="add_donation.php?cat=<?php echo $rs['category_id']; ?>&donate=<?php echo $rs['name'];?>"><?php echo $rs['name']; ?></a>
					<?php
				}
			?>
		</div>
		<!--
			<h3>Your Donation</h3><hr>
			<form action="./login_check.php" method="post" class="user">
				<label>Name</label>
				<input type="text" name="donor_name">
				<label>Email</label>
				<input type="email" name="donor_email">
				<label>Address</label>
				<textarea name="donor_address" rows="3">
				</textarea>
				<label>State</label>
				<select id="donor_state" name="donor_state">
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
				<label>City</label>
				<select id="donor_city" name="donor_city">
					<option value="">Select State First</option>
				</select>
				<label>description</label>
				<textarea name="donor_address" rows="5">
				</textarea>
				<label>How we collect your donation? </label>
				<div class="pickup">
					<span><input type="radio" name="pickup" checked>
					<label>I'll come to the organization</label><br></span>
					<span><input type="radio" name="pickup">
					<label>Pickup it from my address</label></span>
				</div>
				<input type="submit" value="Donate">
			</form>-->
		</div>
	</div>
	<?php	include("./includes/footer.html");	?>
</body>
</html>