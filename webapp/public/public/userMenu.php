<!DOCTYPE html>
<div id="userMenu">
    <ul>
		<li><a href="jobs.php" <?php if($_SERVER['PHP_SELF'] == '/cartProject/public/jobs.php') echo 'class="active"'; ?>>Opportunities</a></li>
        <li><a href="apply.php" <?php if($_SERVER['PHP_SELF'] == '/cartProject/public/apply.php') echo 'class="active"'; ?>>Apply for a Job</a></li>
        <li><a href="viewApp.php" <?php if($_SERVER['PHP_SELF'] == '/cartProject/public/viewApp.php') echo 'class="active"'; ?>>View Application Status</a></li>
		<li><a href="userView.php" <?php if($_SERVER['PHP_SELF'] == '/cartProject/public/userView.php') echo 'class="active"'; ?>>User Home</a></li>
    </ul>
</div>
