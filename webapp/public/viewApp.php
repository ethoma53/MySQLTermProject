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
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<div style="text-align: right;">
	<a href="index.php?logout='1'" style="color: red;">logout</a>
	</div>
<br>
<h2>Application status for <?php if (isset($_SESSION['user'])) : echo $_SESSION['user']['firstName'] . " " . $_SESSION['user']['lastName']; endif ?> :</h2>
<br>
<br>

<?php

try {
        $connection = new PDO($dsn, $username, $password, $options);
		} catch(PDOException $error) {
        echo $sql . "<br>" . $error->getMessage();
    }

if (isset($_SESSION['user'])) {
    
    $sql = "SELECT DISTINCT User.firstName, User.lastName, dateApplied, Job.jobName, status
			FROM Application
			INNFER JOIN User ON User_userId = User.userId
			INNER JOIN Job On Job_jobId = Job.jobId
			WHERE userId = :id
			GROUP BY appId";
       $id = $_SESSION['user']['userId'];
       $statement = $connection->prepare($sql);
       $statement->bindParam(':id', $id);
       $statement->execute();
       $result = $statement->fetchAll();
}
       
if (isset($result)) {
    if ($result && $statement->rowCount() > 0) { ?>
        <h2>Results</h2>
		<br>
        <table>
            <thead>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Date Applied</th>
                    <th>Job Name</th>
                    <th>Current Status</th>
                </tr>
            </thead>
            <tbody>
        <?php foreach ($result as $row) { ?>
            <tr>
                <td><?php echo e($row["firstName"]); ?></td>
                <td><?php echo e($row["lastName"]); ?></td>
                <td><?php echo e($row["dateApplied"]); ?></td>
                <td><?php echo e($row["jobName"]); ?></td>
                <td><?php echo e($row["status"]); ?></td>
            </tr>
        <?php } ?>
        </tbody>
    </table>
    <?php } else { ?>
        <blockquote>No application results found.</blockquote>
    <?php } 
} ?> 

<br>
<br>
<a href="userView.php">Back to user home</a>

<?php include_once('templates/footer.php'); ?>

