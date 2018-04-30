<?php
	include_once('templates/header.php');
	include_once('userMenu.php');
	include_once("config/config.php");      
	include_once('functions.php');
	require "config/config.php";
	if (!isLoggedIn()) {
		$_SESSION['msg'] = "You must log in first";
		header('location: login.php');
		
	if (isset($_GET['logout'])) {
		session_destroy();
		unset($_SESSION['user']);
		header("location: login.php");
	}
}
?>

<?php

try  {
        $connection = new PDO($dsn, $username, $password, $options);
} 
catch(PDOException $error) {
        echo $sql . "<br>" . $error->getMessage();
}

if (isset($_POST['apply']) && isset($_SESSION['user'])) {
    
    $new_app = array(
		"appId" => "default",
		"User_userId" => $_SESSION['user']['userId'],
		"status" => "not opened",
		"Job_jobId" => $_POST['taskOption'],
		"dateApplied" => date("Y-m-d H:i:s", time()),
		"decisionDate" => NULL
    );
		
    $sql = sprintf(
		"INSERT INTO %s (%s) values (%s)",
        "Application",
        implode(", ", array_keys($new_app)),
        ":" . implode(", :", array_keys($new_app))
        );
		
    $statement = $connection->prepare($sql);
    $statement->execute($new_app);
} 
?>


<!DOCTYPE html>
<html>
<div style="text-align: right;">
	<a href="index.php?logout='1'" style="color: red;">logout</a>
	</div>
<head>
	<title>Admin: Update Application Status</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<style>
		.header {
			background: #003366;
		}
		button[name=apply] {
			background: #003366;
		}
	</style>
</head>
<?php if (isset($_POST['apply']) && $statement) { ?>
    <blockquote>Application successfully added.</blockquote>
<?php } ?>
<br>
<h2>Apply for a job:</h2>
<br>
<body>
<br>
<div>
	<p> We're delighted you want to join our team! Please select the job for which you would like to apply. </p>
</div>
<br>
<form method="post">
	<select name="taskOption">
      <option value="1">Mechanic</option>
      <option value="2">Driver</option>
      <option value="3">IT</option>
	</select>
    <input type="submit" name="apply">
</form>
<br>
<br>
<a href="userView.php">Back to user home</a>
</body>
</html>
<?php require "templates/footer.php"; ?>