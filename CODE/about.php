<?php	session_start();	?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image/x-icon" href="images/logo_icon.png" />
	<title>About - Madad</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<div id="header">
		<div>
			<a href="index.php" id="logo"><img src="images/logo.png" alt="logo"></a>
			<ul>
				<li><a href="index.php">Home</a></li>
				<li class="current"><a>About</a></li>
				<li><a href="gallery.php">gallery</a></li>
				<li><a href="news.php">News</a></li>
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
		<div id="about">
			<div class="aside">
				<div>
					<h2>We focus on:-</h2>
					<p>
						<span>Rehabilitating and providing education, shelter and food to economically backward, child labourers, disabled, orphans and semi orphans.</span>
					</p>
					<p>
						<span>Spreading awareness among the public on health & sanitation, education, environment, consumer rights, road safety and other socio economic rights particularly Human rights</span>
					</p>
					<p>
						<span>Organizing seminars, impact studies, workshops, research study and awareness campaign on educational policies, statistics, health, legal issues, women and children developmental activities.</span>
					</p>
					<p>
						<span>Encouraging sustainable agricultural development and organic farming, Establishing unity, integrity and communal harmony, Encouraging adult education among rural masses and slum dwellers, Working for persons with disability.</span>
					</p>
					<p>
						<span>Sensitizing destitute women and adolescent girls for their rights & entitlements.</span>
					</p>
					<p>
						<span>Ladies Empowerment and promoting SHGs.</span>
					</p>
					<p>
						<span>Sponsoring midday meals and groceries for old age groups, to enable them to get timely food.</span>
					</p>
					<p>
						<span>Providing relief and rehabilitation to the victims of Natural Calamities like floods and droughts</span>
					</p>
					<p>
						<span>Enlightening and educating the indigenous people and remote rural masses.</span>
					</p>
					<p>
						<span>Spreading awareness about HIV/ AIDS, TB, Malaria and conduct medical health camps for the remote rural tribes.</span>
					</p>
					<p>
						<span>Promoting scientific temper and establish IT in grass roots</span>
					</p>
					
				</div>
			</div>
			<div class="sidebar">
				<h2>Our targets are the groups who are below poverty line:-</h2>
				<p>Children</p>
				<p>Women</p>
				<p>Youth</p>
				<p>Old age / Elderly people</p>
				<p>Orphans, Semi Orphans, Street Children</p>
				<p>Adolescents</p>
				<p>Women / Self Help groups (SHGs)</p>
				<p>Disabled persons</p>
				<p>Tribals</p>
			</div>
		</div>
	</div>
	<?php	include("./includes/footer.html");	?>
</body>
</html>