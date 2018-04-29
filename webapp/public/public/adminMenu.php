<!DOCTYPE html>
<div id="adminMenu">
    <ul>
		<li><a href="adminView.php" <?php if($_SERVER['PHP_SELF'] == '/cartProject/public/adminView.php') echo 'class="active"'; ?>>Admin Home</a></li>
        <li><a href="update.php" <?php if($_SERVER['PHP_SELF'] == '/cartProject/public/update.php') echo 'class="active"'; ?>>Update Application</a></li>
        <li><a href="delete.php" <?php if($_SERVER['PHP_SELF'] == '/cartProject/public/delete.php') echo 'class="active"'; ?>>Delete Application</a></li>
        <li><a href="viewAll.php" <?php if($_SERVER['PHP_SELF'] == '/cartProject/public/viewAll.php') echo 'class="active"'; ?>>View Applications</a></li>
		<li><a href="create_user.php" <?php if($_SERVER['PHP_SELF'] == '/cartProject/public/create_user.php') echo 'class="active"'; ?>>Add a user</a></li>
    </ul>
</div>