<?php
  include_once("config/config.php");      
  include_once('templates/header.php');
  include_once('functions.php');
  include_once('userMenu.php');
  if (!isLoggedIn()) {
	$_SESSION['msg'] = "You must log in first";
	header('location: login.php');
  }
?>

<h2>Welcome <?php if (isset($_SESSION['user'])) : echo $_SESSION['user']['firstName'] . " " . $_SESSION['user']['lastName']; endif ?> !</h2>

<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="header">
		<h2>Home Page</h2>
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
		<!-- logged in user information -->
		<div class="profile_info">
			<?php $chooseAvatar = (string) rand(1, 4); ?>
			<img src= <?php echo "images/avatar" . $chooseAvatar . ".png" ?>>

			<div>
				<?php  if (isset($_SESSION['user'])) : ?>
					<strong><?php echo $_SESSION['user']['email']; ?></strong>

					<small>
						<i  style="color: #888;">(<?php echo ucfirst($_SESSION['user']['type']); ?>)</i> 
						<br>
						<a href="index.php?logout='1'" style="color: red;">logout</a>
					</small>

				<?php endif ?>
			</div>
		</div>
	</div>
</body>
</html>


<?php include_once('templates/footer.php'); ?>
