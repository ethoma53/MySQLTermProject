<?php
  include_once('templates/header.php');
  include_once('functions.php');
  require "config/config.php";
	
  if (isset($_GET['logout'])) {
	session_destroy();
	unset($_SESSION['user']);
	header("location: login.php");
  }
?>

<!DOCTYPE html>
<html>
<head>
	<title>Opportunities: UNCC Golf Cart Rides</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="navbar">
  <a href="register.php">Sign up</a>
  <a href="login.php">Sign in</a>
  <a href="jobs.php">Opportunities</a>
  <a href="contact.php">Contact</a>
</div>
<div style="text-align: right;">
	<a href="index.php?logout='1'" style="color: red;">logout</a>
	</div>
<div class="header" style= "width: 100%;">
<h1>Job Opportunities</h1>
</div>
<br>
<h2 style= "text-align: center; color:#5F9EA0;">We have a number of opportunities available. There's a place for everyone on our team!</h2>
	<div>
	<h3 style="color:#5F9EA0;">Driver</h3>
	<p>We need licensed, responsible drivers to drive our customers.</p>
	</div>
	<div>
	<h3 style="color:#5F9EA0;">IT Associate</h3>
	<p>IT associates will assist in management, maintenance, and update of our technology</p>
	</div>
	<div>
	<h3 style="color:#5F9EA0;" >Mechanic</h3>
	<p>Mechanics will provide assistance in the event of golf cart failure as well as perform regular check ups to the carts.
	Certification is preferred.
	</p>
	</div>
<br>
<br>
<div>
	<a class="btn" href = "apply.php"> Apply Now! </a>
</div>
<br>
<div>
	<a class="btn" href="index.php">Back to home</a>
</div>
<br>
<br>
</body>
</html>