<?php
  include_once("config/config.php");      
  include_once('header.php');
?>

<h1>UNCC Golf Cart Rides</h1>

<?php include_once('userMenu.php'); ?>

<h3>UNCC Golf Cart Rides</h3>

<?php
//main content here

if (isset($_POST['submit'])) {
    try  {
        
        require "config/config.php";
        require "config/common.php";
        $connection = new PDO($dsn, $username, $password, $options);
        $sql = "select DISTINCT user.firstName, user.lastName, application.dateApplied, job.jobName, application.status
				from application
				inner join user on user_userId = user.userId
				inner join job on job_jobId = job.jobId
				where userId = :user
				group by appId";
        $user = $_POST['userId'];
        $statement = $connection->prepare($sql);
        $statement->bindParam(':user', $user, PDO::PARAM_STR);
        $statement->execute();
        $result = $statement->fetchAll();
    } catch(PDOException $error) {
        echo $sql . "<br>" . $error->getMessage();
    }
}
?>
        
<?php  
if (isset($_POST['submit'])) {
    if ($result && $statement->rowCount() > 0) { ?>
        <h2>Results</h2>

        <table>
            <thead>
                <tr>
                    <th>#</th>
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
                <td><?php echo escape($row["user.firstName"]); ?></td>
                <td><?php echo escape($row["user.lastName"]); ?></td>
                <td><?php echo escape($row["application.dateApplied"]); ?></td>
                <td><?php echo escape($row["job.jobName"]); ?></td>
                <td><?php echo escape($row["application.status"]); ?></td>
            </tr>
        <?php } ?>
        </tbody>
    </table>
    <?php } else { ?>
        <blockquote>No results found for <?php echo escape($_POST['userId']); ?>.</blockquote>
    <?php } 
} ?> 

<h2>Show Application Status</h2>

<form method="post">
    <label for="viewApp">View Application</label>
    <input type="text" id="userId" name="User">
    <input type="submit" name="submit" value="View Results">
</form>

<a href="index.php">Back to home</a>

<?php include_once('templates/footer.php'); ?>

