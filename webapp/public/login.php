<?php 
	include_once('functions.php');
	include_once('config/config.php');
	include_once('templates/header.php');
?>

<?php
// ... 

// LOGIN USER
if (isset($_POST['login_user'])) {
  $username = mysqli_real_escape_string($db, $_POST['username']);
  $password = mysqli_real_escape_string($db, $_POST['password']);

  if (empty($username)) {
  	array_push($errors, "Username is required");
  }
  if (empty($password)) {
  	array_push($errors, "Password is required");
  }

  if (count($errors) == 0) {
  	$password = md5($password);
  	$query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
  	$results = mysqli_query($db, $query);
  	if (mysqli_num_rows($results) == 1) {
  	  $_SESSION['username'] = $username;
  	  $_SESSION['success'] = "You are now logged in";
  	  header('location: index.php');
  	}else {
  		array_push($errors, "Wrong username/password combination");
  	}
  }
}

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
		<h2>Login</h2>
	</div>
	<form method="post" action="login.php">
		
		<?php echo display_error(); ?>

		<div class="input-group">
			<label>Email</label>
			<input type="text" name="email" >
		</div>
		<div class="input-group">
			<label>Password</label>
			<input type="password" name="password">
		</div>
		<div class="input-group">
			<button type="submit" class="btn" name="login">Login</button>
		</div>
		<p>
			Not yet a member? <a href="register.php">Sign up</a>
		</p>
	</form>
</body>
</html>

<?php include_once('templates/footer.php'); ?>