<?php 
	include_once('functions.php');
	include_once('templates/header.php');
?>

<!DOCTYPE html>
<html>
<head>
	<title>Registration system PHP and MySQL</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="navbar">
  <a href="register.php">Sign up</a>
  <a href="login.php">Sign in</a>
  <a href="jobs.php">Opportunities</a>
  <a href="contact.php">Contact</a>
</div>
<div class="header">
	<h2>Register</h2>
</div>
<form method="post">
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
		<button type="submit" class="btn" name="submit">Register</button>
	</div>
	<p>
		Already a member? <a href="login.php">Sign in</a>
	</p>
</form>
</body>
</html>

<?php include_once('templates/footer.php'); ?>