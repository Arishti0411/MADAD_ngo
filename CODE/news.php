<?php
	session_start();
	include("./includes/connection.php");
?>
<!DOCTYPE html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image/x-icon" href="images/logo_icon.png" />
	<title>News - Madad</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<div id="header">
		<div>
			<a href="index.php" id="logo"><img src="images/logo.png" alt="logo"></a>
			<ul>
				<li><a href="index.php">Home</a></li>
				<li><a href="about.php">About</a></li>
				<li><a href="gallery.php">gallery</a></li>
				<li class="current"><a>News</a></li>
				<li><a href="event.php">Events</a></li>
				<li><a href="donate.php">Donate</a></li>
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
		<div id="newsblog">
			<div class="aside">
			<?php
				$sql = "SELECT * FROM news ORDER BY date DESC";
				$result = mysqli_query($con,$sql);
				$rs = mysqli_fetch_array($result);
			?>
				<div>
					<h2><a href="news.php"><?php echo $rs['heading']; ?></a></h2>
					<span class="date">Mar 12, 2021</span> <a href="news.php" class="figure"></a>
					<p>
						<?php echo $rs['description']; ?>
					</p>
				</div>
			<?php
				$count = 1;
				while($rs = mysqli_fetch_array($result)){
					if($count <=4){
			?>
				<ul style="display:inline;">
					<li style="overflow:scroll">
						<h2><a href="news.php"><?php echo $rs['heading']; ?></a></h2>
						<span class="date">Feb 09, 2021</span>
						<p>
							<?php echo $rs['description']; ?>
						</p>
					</li>
				</ul>
			<?php
					}
					$count++;
				}
			?>
			</div>
			<div class="sidebar">
				<div>
					<h2>Recent Post</h2>
					<ul>
						<li>
							<a href="news.php">Hospitals are now Joining with us and docots will help us for good health care.</a>
						</li>
						<li>
							<a href="news.php">"Hope" is just joined with us which is for childrens.</a>
						</li>
						<li>
							<a href="news.php">Elders get there requirement full-filled by donors.</a>
						</li>
						<li>
							<a href="news.php">Childrens are now happy when they get toys, clothes and foodpackets from donors.</a>
						</li>
						<li>
							<a href="news.php">"NaiSoch" and "Savera" two new founadtions are joined with us.</a>
						</li>
					</ul>
				</div>
			</div>
			
		</div>
	</div>
	<?php	include("./includes/footer.html");	?>
</body>
</php>