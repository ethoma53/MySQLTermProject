<?php
  include_once('templates/header.php');
  include_once('functions.php');
  include_once('userMenu.php');
  require "config/config.php";
  if (!isLoggedIn()) {
	$_SESSION['msg'] = "You must log in first";
	header('location: login.php');
	}
	
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
<h1>Job Opportunities</h1>
<h2>We have a number of opportunities available. There's a place for everyone on our team!</h2>
<div>
	<h3>Driver</h3>
	<p>Driver Description</p>
	
	<h3>IT Associate</h3>
	<p>IT Description</p>
	
	<h3>Mechanic</h3>
	<p>Mechanic Description</p>
	
	<a href = "apply.php" > Apply Now! </a>
</div>
</body>
</html>