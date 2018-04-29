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

<?php
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
} ?> 

<br>
<br>
<a href="adminView.php">Back to home</a>

<?php include_once('templates/footer.php'); ?>