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
	<title>Admin: Delete Application</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<style>
		.header {
			background: #003366;
		}
		button[name=delete] {
			background: #003366;
		}
	</style>
</head>
<body>
	<br>
	<div>
		<h3>Please enter the information for the application you wish to delete.</h3>
	</div>
	<div class="header">
		<h2>Admin - Delete Application</h2>
	</div>
	<div class="content">
		<!-- notification message -->
		<?php if (isset($_SESSION['success'])) : ?>
			<div class="error success" >
				<h3>
					<?php 
						echo $_SESSION['success']; 
						unset($_SESSION['success']);
					?>
				</h3>
			</div>
		<?php endif ?>
		
	<form method="post" action="delete.php">

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
			<button type="submit" class="btn" name="delete">Delete Application</button>
		</div>
	</form>
</body>
</html>
<?php require "templates/footer.php"; ?>