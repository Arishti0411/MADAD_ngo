<?php	session_start();	?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image/x-icon" href="images/logo_icon.png" />
	<title>Profile - Helping Hands</title>
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
				<li><a href="news.php">News</a></li>
				<li><a href="event.php">Events</a></li>
				<li><a href="donate.php">Donate</a></li>
				<?php 
					if(isset($_SESSION["user_id"])){
				?>
					<li class="current"><a>Profile</a></li>
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
		<div id="gallery">
			<div class="header">
				<div><div>
					<h2>True Happiness is Helping Others!</h2>
					<p> Your Involvement, however small, can make a BIG 
						DIFFERENCE in the Vulnerable Life of the 
						Underprivileged. Donate for whoever you want,
						 whatever you want, however you want... Register 
						 if you are new or login if you already have an
						 account to donate :) 
					</p>
                 </div>
				</div>
				
					<img src=".\gallery_uploads\MG57fb2d6c1c200.jpg" height="300px" width="450px">
				
				
			</div>
			<div class="body">
				<div>
					<h2><img src=".\gallery_uploads\MG57fb2d94e9cce.jpg" height="200px" width="255px"></h2>
					<p> Save the Children NGO. We distributed fruits here. Children need vitamins to improve their
					immunity. Fruits help in doing so. Happy children enjoying the fruits!</p>
				</div>
				<div>
					<h2><img src=".\gallery_uploads\MG57fb2dad3a178.jpg" height="200px" width="255px"></h2>
					<p> Dharavi - India's largest Slum area! We distributed clothes to small kids here. 
					They got so excited and happy they immediately changed and got ready for this beautiful
					picture. 
					</p>
				</div>
				<div>
					<h2><img src=".\gallery_uploads\MG57fb2ddd8cdd0.jpg" height="200px" width="255px"></h2>
					<p> Vidya Boys School, Mandawa, Rajasthan. We went to the school to provide these students 
						with stationery and books that we got. Happy students, happy learning!
					</p>
				</div>
			</div>
			<div class="footer">
				<p>
					Stay connected with us, we know the needs of pepole who are poor, disabled. get invloved with us and start helping pepole with your abilities
				</p>
				<a href="login.php">Get Involved</a>
			</div>
		</div>
	</div>
	<?php	include("./includes/footer.html");	?>
</body>
</html>