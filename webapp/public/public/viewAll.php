<?php     
  include_once('templates/header.php');
  include_once('functions.php');
  include_once('adminMenu.php');
  require "config/config.php";

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
	<title>Registration system PHP and MySQL</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<div style="text-align: right;">
	<a href="index.php?logout='1'" style="color: red;">logout</a>
	</div>
<br>
<form method="post" action="viewAll.php" style = "padding: 0px; border: 0px; background: #F8F8FF; text-align: right;">
	<button type="submit" class="btn" name="special">Click to see only pending applications</button>
</form>
<br>
<form method="post" action="viewAll.php" style = "padding: 0px; border: 0px; background: #F8F8FF; text-align: right;">
	<button type="submit" class="btn" name="reurn">Click to see all applications</button>
</form>



<?php

if (isset($_POST['special']))
{
	try{
        $connection = new PDO($dsn, $username, $password, $options);
	} catch(PDOException $error) {
        echo $sql . "<br>" . $error->getMessage();
    }
	
    $sql = "SELECT a.appId, b.firstName, b.lastName, a.dateApplied, c.jobName, a.status, 
			IFNULL(a.decisionDate, 'N/A') AS decisionDate, datediff(NOW(), a.dateApplied) AS NumDaysInQueue
		FROM cartproject.application as a
		INNER JOIN cartproject.user as b
		ON a.User_userId = b.userId
		INNER JOIN cartproject.job as c
		ON a.Job_jobId = c.jobId
		WHERE (a.status LIKE ('%not opened%') OR a.status LIKE ('%pending%'))
		AND datediff(NOW(), a.dateApplied) >= 30
		AND a.User_userId NOT IN (SELECT User_userId 
						  FROM employee)
		ORDER BY dateApplied;";
     $statement = $connection->prepare($sql);
     $statement->execute();
     $result = $statement->fetchAll();
        
if (isset($result)) {
    if ($result && $statement->rowCount() > 0) { ?>
        <h2>Results</h2>
		<br>
        <table>
            <thead>
                <tr>
					<th>Application #</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Date Applied</th>
                    <th>Job Name</th>
                    <th>Current Status</th>
					<th>Decision Date</th>
					<th>Number of days in the Queue</th>
                </tr>
            </thead>
            <tbody>
        <?php foreach ($result as $row) { ?>
            <tr>
				<td><?php echo e($row['appId']); ?></td>
                <td><?php echo e($row["firstName"]); ?></td>
                <td><?php echo e($row["lastName"]); ?></td>
                <td><?php echo e($row["dateApplied"]); ?></td>
                <td><?php echo e($row["jobName"]); ?></td>
                <td><?php echo e($row["status"]); ?></td>
				<td><?php echo e($row["decisionDate"]); ?></td>
				<td><?php echo e($row["NumDaysInQueue"]); ?></td>
            </tr>
        <?php } ?>
        </tbody>
    </table>
    <?php } else { ?>
        <blockquote>No application results found.</blockquote>
    <?php } ?>

<?php
}
}

else {
//main content here
	try{
        $connection = new PDO($dsn, $username, $password, $options);
	} catch(PDOException $error) {
        echo $sql . "<br>" . $error->getMessage();
    }
	
    $sql = "SELECT DISTINCT Application.appId, User.firstName, User.lastName, Application.dateApplied, Job.jobName, Application.status,
				IFNULL(Application.decisionDate, 'N/A') AS decisionDate
				FROM Application
				inner join User on User_userId = User.userId
				inner join Job on Job_jobId = Job.jobId
				GROUP BY appId";
        $statement = $connection->prepare($sql);
        $statement->execute();
        $result = $statement->fetchAll();
        
if (isset($result)) {
    if ($result && $statement->rowCount() > 0) { ?>
        <h2>Results</h2>
		<br>
        <table>
            <thead>
                <tr>
					<th>Application #</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Date Applied</th>
                    <th>Job Name</th>
                    <th>Current Status</th>
					<th>Decision Date</th>
                </tr>
            </thead>
            <tbody>
        <?php foreach ($result as $row) { ?>
            <tr>
				<td><?php echo e($row['appId']); ?></td>
                <td><?php echo e($row["firstName"]); ?></td>
                <td><?php echo e($row["lastName"]); ?></td>
                <td><?php echo e($row["dateApplied"]); ?></td>
                <td><?php echo e($row["jobName"]); ?></td>
                <td><?php echo e($row["status"]); ?></td>
				<td><?php echo e($row["decisionDate"]); ?></td>
            </tr>
        <?php } ?>
        </tbody>
    </table>
    <?php } else { ?>
        <blockquote>No application results found.</blockquote>
    <?php } 
 } 
}?>

<br>
<br>
<a href="adminView.php">Back to admin home</a>

<?php include_once('templates/footer.php'); ?>