<?php
	include_once("templates/header.php");
?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
    box-sizing: border-box;
}

/* Create three equal columns that floats next to each other */
.column {
    float: left;
    width: 33.33%;
    padding: 10px;
    height: 300px; 
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
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
/* Header/logo Title */
.mainheader {
    padding: 80px;
    text-align: center;
    background: #1abc9c;
    color: white;
}

/* Increase the font size of the heading */
.mainheader h1 {
    font-size: 40px;
}
</style>
</head>
<body>
<div class="navbar">
  <a href="register.php">Sign up</a>
  <a href="login.php">Sign in</a>
  <a href="jobs.php">Opportunities</a>
  <a href="contact.php">Contact</a>
</div>
<h1>Contact Us</h1>

<div class="row">
  <div class="column" style="background-color:#5F9EA0;">
    <h2>Rachel Pullen</h2>
    <p>Some text..</p>
  </div>
  <div class="column" style="background-color:#5F9EA0;">
    <h2>Richard Alaimo</h2>
    <p>Some text..</p>
  </div>
  <div class="column" style="background-color:#5F9EA0;">
    <h2>Lizzy Thomas</h2>
    <p>Some text..</p>
  </div>
</div>
</body>
<a href="index.php">Back to home</a>
</html>
