<?php 
	include_once('functions.php');
	//include_once('templates/header.php');
?>

<!DOCTYPE html>
<html>
<head>
	<title>Homepage: UNCC Golf Card Rides</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
* {
    box-sizing: border-box;
}

/* Style the body */
body {
    font-family: Arial;
    margin: 0;
	margin-bottom: 100px;
	clear: both;
}

/* Header/logo Title */
.header {
    padding: 80px;
    text-align: center;
    background: #1abc9c;
    color: white;
}

/* Increase the font size of the heading */
.header h1 {
    font-size: 40px;
}

/* Style the top navigation bar */
.navbar {
    overflow: hidden;
    background-color: #333;
}

/* Style the navigation bar links */
.navbar a {
    float: left;
    display: block;
    color: white;
    text-align: center;
    padding: 14px 20px;
    text-decoration: none;
}

/* Right-aligned link */
.navbar a.right {
    float: right;
}

/* Change color on hover */
.navbar a:hover {
    background-color: #ddd;
    color: black;
}

/* Column container */
.row {  
    display: -ms-flexbox; /* IE10 */
    display: flex;
    -ms-flex-wrap: wrap; /* IE10 */
    flex-wrap: wrap;
}

/* Create two unequal columns that sits next to each other */
/* Sidebar/left column */
.side {
    -ms-flex: 30%; /* IE10 */
    flex: 30%;
    background-color: #f1f1f1;
    padding: 20px;
}

/* Main column */
.main {   
    -ms-flex: 70%; /* IE10 */
    flex: 70%;
    background-color: white;
    padding: 20px;
}

.img {
	text-align:center;
    background-color: #aaa;
    width: 100%;
    padding: 20px;
}

/* Footer */
.footer {
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
	height: 70px;
    background-color: #5F9EA0;
    color: white;
    text-align: center;
}

.btn {
	padding: 10px;
	font-size: 15px;
	color: white;
	background: #5F9EA0;
	border: none;
	border-radius: 5px;
}

/* Responsive layout - when the screen is less than 700px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 700px) {
    .row {   
        flex-direction: column;
    }
}

/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 400px) {
    .navbar a {
        float: none;
        width: 100%;
    }
}
</style>
</head>
<body>
<div class="header">
  <h1>UNCC Golf Cart Rides</h1>
</div>

<div class="navbar">
  <a href="register.php"> Sign up</a>
  <a href="login.php">Sign in</a>
  <a href="jobs.php">Opportunities</a>
  <a href="contact.php">Contact</a>
</div>
<div class="row">
<div class="main">
	<h3 style= "text-align: center;">Welcome to the employment management site for UNCC Golf Cart Rides</h3>
	<div class="img" style="height:350px;">
	<img src="images/home2.png" style="height:300px; width: 100%; padding:10px;">
	</div>
	<p>Want to join? <a class="btn" href='register.php'> Sign up</a>
	</p>
	<p>
		Already a member? <a class="btn" href="login.php">Sign in</a>
	</p>
	<br>
</div>
</div>
</body>
</html>

<?php include_once('templates/footer.php'); ?>
