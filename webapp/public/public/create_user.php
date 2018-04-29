<?php 
	include_once('functions.php');
	include_once('adminMenu.php');
	include_once('templates/header.php');
	
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
	<title>Registration system PHP and MySQL - Create user</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<style>
		.header {
			background: #003366;
		}
		button[name=register_btn] {
			background: #003366;
		}
	</style>
</head>
<body>
	<div class="header">
		<h2>Admin - create user</h2>
	</div>
	
	<form method="post" action="create_user.php">

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
			<label>Email</label>
			<input type="email" name="email" value="<?php echo $email; ?>">
		</div>
		<div class="input-group">
			<label>User type</label>
			<select name="user_type" id="user_type" >
				<option value="user">User</option>
				<option value="admin">Admin</option>
			</select>
		</div>
		<div class="input-group">
			<label>Age</label>
			<input type="text" name="age" id="age">
		</div>
		<div class="input-group">
			<label>Phone Number (xxx) xxx-xxxx</label>
			<input type="text" name="phoneNumber" id="phoneNumber">
		</div>
		<div class="input-group">
			<label>Password</label>
			<input type="password" name="password_1">
		</div>
		<div class="input-group">
			<label>Confirm password</label>
			<input type="password" name="password_2">
		</div>
		<div class="input-group">
			<button type="submit" class="btn" name="submit">Create user</button>
		</div>
	</form>
</body>
</html>

<?php include_once('templates/footer.php');?>