<?php
  require "config/config.php";      
  include_once('templates/header.php');
  include_once('functions.php');
  include_once('adminMenu.php');
  
  if (!isAdmin()) {
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
	<title>Admin: Update Application Status</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<style>
		.header {
			background: #003366;
		}
		button[name=update] {
			background: #003366;
		}
	</style>
</head>
<body>
	<br>
	<div style="text-align: right;">
	<a href="index.php?logout='1'" style="color: red;">logout</a>
	</div>
	<div>
		<h3>Please enter the information for the application you wish to update, </h3>
		<h3>then choose the status you wish to input.</h3>
	</div>
	<div class="header">
		<h2>Admin - Update Application Status</h2>
	</div>
		
	<form method="post" action="update.php">

		<?php echo display_error(); ?>

		<div class="input-group">
			<label>First Name</label>
			<input type="text" name="firstName" id="firstName">
		</div>
		<div class="input-group">
			<label>Last Name</label>
			<input type="text" name="lastName" id="lastName">
		</div>
		<div class="input-group">
			<label>Application Number</label>
			<input type="text" name="appId" id="appId">
		</div>
		<div class="input-group">
			<label>Application Status</label>
			<select name="taskOption">
				<option value="not opened">Not opened</option>
				<option value="pending">Pending</option>
				<option value="accepted">Accepted</option>
				<option value="rejected">Rejected</option>
			</select>
		</div>
		<div class="input-group">
			<button type="submit" class="btn" name="update">Update Status</button>
		</div>
	</form>
	
<br>
<br>
<a href="adminView.php">Back to admin home</a>
</body>
</html>

<?php include_once('templates/footer.php'); ?>