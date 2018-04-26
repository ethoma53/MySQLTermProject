<div id="adminMenu">
    <ul>
        <li><a href="update.php" <?php if($_GET['currentPage'] == 'update') echo 'class="active"'; ?>>Update Application</a></li>
        <li><a href="delete.php" <?php if($_GET['currentPage'] == 'delete') echo 'class="active"'; ?>>Delete Application</a></li>
        <li><a href="viewAll.php" <?php if($_GET['currentPage'] == 'viewAll') echo 'class="active"'; ?>>View Applications</a></li>
    </ul>
</div>