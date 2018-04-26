<div id="userMenu">
    <ul>
		<li><a href="jobs.php" <?php if($_GET['currentPage'] == 'jobs') echo 'class="active"'; ?>>Job Descriptions</a></li>
        <li><a href="apply.php" <?php if($_GET['currentPage'] == 'apply') echo 'class="active"'; ?>>Apply</a></li>
        <li><a href="viewApp.php" <?php if($_GET['currentPage'] == 'viewApp') echo 'class="active"'; ?>>View Status</a></li>
    </ul>
</div>