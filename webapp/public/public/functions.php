<?php
	require "config/config.php";
?>

<?php 
session_start();

// variable declaration
$email    = "";
$errors   = array(); 

try
	{
		//connect to database
		$connection = new PDO($dsn, $username, $password, $options);
		
	}
	catch(PDOException $error) {
        echo $sql . "<br>" . $error->getMessage();
    }

// call the register() function if submit is clicked
if (isset($_POST['submit'])) {
	//call register function
	register();
}
	

// REGISTER USER
function register(){
	
	// call these variables with the global keyword to make them available in function
	global $connection, $errors, $email;

	// receive all input values from the form. Call the e() function
    // defined below to escape form values
	$last = isset($_POST['lastName']) ? e($_POST['lastName']) : "";
	$first = isset($_POST['firstName']) ? e($_POST['firstName']) : "";
	$age = isset($_POST['age']) ? e($_POST['age']) : "";
	$phone = isset($_POST['phoneNumber']) ? e($_POST['phoneNumber']) : "";
	$email       =  isset($_POST['email']) ? e($_POST['email']) : "";
	$password_1  =  isset($_POST['password_1']) ? e($_POST['password_1']) : "";
	$password_2  = isset($_POST['password_2']) ? e($_POST['password_2']) : "";

	// form validation: ensure that the form is correctly filled ...
	// by adding (array_push()) corresponding error unto $errors array
	if (empty($last) || empty($first)){ 
		array_push($errors, "Name is required"); 
	}
	if (empty($age)){ array_push($errors, "Age is required"); }
	if (empty($email)) { array_push($errors, "Email is required"); }
	if (empty($phone)) { array_push($errors, "Phone number is required"); }
	if (empty($password_1)) { array_push($errors, "Password is required"); }
	if ($password_1 != $password_2) {
		array_push($errors, "The two passwords do not match");
	}
		
	// first check the database to make sure 
	// a user does not already exist with the same email
	$user_check_query = "SELECT * FROM User WHERE email=:email LIMIT 1";
	$statement1 = $connection -> prepare($user_check_query);
	$statement1 -> bindparam(':email', $email);
	$statement1 -> execute();
	$user = $statement1 -> fetch(PDO::FETCH_ASSOC);
		
	if ($user) { // if user exists
		if ($user['email'] === $email) {
			array_push($errors, "email already exists");
		}
	}
		
	if (count($errors) == 0)
	{
		$password = md5($password_1);//encrypt the password before saving in the database
			
		if (isset($_POST['user_type'])) { //essentially if admin (if user type is passed)
			$type = e($_POST['user_type']);
			$new_user = array(
				"userId" => "default",
				"lastName" => $last,
				"firstName" => $first,
				"age"       => $age,
				"email"  => $email,
				"phoneNumber" => $phone,
				"password" => $password,
				"type" => $type
			);

			//create sql statement
			$sql = sprintf(
				"INSERT INTO %s (%s) values (%s)",
				"User",
				implode(", ", array_keys($new_user)),
				":" . implode(", :", array_keys($new_user))
			);
		   
			//execute sql statement 
			$statement = $connection->prepare($sql);
			$statement->execute($new_user);
		
			$_SESSION['email'] = $email;
			$_SESSION['success'] = "New user successfully created";
			header('location: adminView.php');
		}
		else //non-admin (no type passed)
		{
			$type = "user";
			//fill array with insert values
			$new_user = array(
				"userId" => "default",
				"lastName" => $last,
				"firstName" => $first,
				"age"       => $age,
				"email"  => $email,
				"phoneNumber" => $phone,
				"password" => $password,
				"type" => $type
			);

			//create sql statement
			$sql = sprintf(
				"INSERT INTO %s (%s) values (%s)",
				"User",
				implode(", ", array_keys($new_user)),
				":" . implode(", :", array_keys($new_user))
			);
		   
			//execute sql statement 
			$statement = $connection->prepare($sql);
			$statement->execute($new_user);
				
			// get id of the created user
			$logged_in_user_id = $connection -> lastInsertId();
		
			$_SESSION['user'] = getUserById($logged_in_user_id); //save user in the session
			$_SESSION['email'] = $email;
			$_SESSION['success'] = "You are now logged in";
			header('location: userView.php');
		}
		
	}
}

// return user array from their id
function getUserById($id){
	global $connection;
	$query = "SELECT * FROM User WHERE userId= :id";
	$result = $connection -> prepare($query);
	$result -> bindparam(':id', $id);
	$result -> execute();
	$user = $result -> fetch(PDO::FETCH_ASSOC);
	return $user;
}

// escape string (prevents cross site scripting attacks)
function e($val){
	global $connection;
	return htmlspecialchars($val, ENT_QUOTES | ENT_SUBSTITUTE, "UTF-8");
}

function display_error() {
	global $errors;

	if (count($errors) > 0){
		echo '<div class="error">';
			foreach ($errors as $error){
				echo $error .'<br>';
			}
		echo '</div>';
	}
}	

function isLoggedIn()
{
	if (isset($_SESSION['user'])) {
		return true;
	}else{
		return false;
	}
}

// log user out if logout button clicked
if (isset($_GET['logout'])) {
	session_destroy();
	unset($_SESSION['user']);
	header("location: login.php");
}

// call the login() function if login is clicked
if (isset($_POST['login'])) {
	login();
}

// LOGIN USER
function login(){
	global $connection, $email, $errors;

	//sanitize values against xss
	$email = e($_POST['email']);
	$password = e($_POST['password']);

	// make sure form is filled properly
	if (empty($email)) {
		array_push($errors, "Email is required");
	}
	if (empty($password)) {
		array_push($errors, "Password is required");
	}

	// attempt login if no errors on form
	if (count($errors) == 0) {
		$password = md5($password);

		$query = "SELECT * FROM User WHERE email=:email AND password= :password LIMIT 1";
		$statement = $connection -> prepare($query);
		$statement -> bindparam(':email', $email);
		$statement -> bindparam(':password', $password);
		$statement -> execute();
		$results = $statement -> fetch(PDO::FETCH_ASSOC);

		if ($results) { // user found
			// check if user is admin or user
			$logged_in_user = $results;
			if ($logged_in_user['type'] == 'admin') {
				$_SESSION['user'] = $logged_in_user;
				$_SESSION['success']  = "You are now logged in";
				header('location: adminView.php');		  
			}else{
				$_SESSION['user'] = $logged_in_user;
				$_SESSION['success']  = "You are now logged in";
				header('location: userView.php');
			}
		}else {
			array_push($errors, "Wrong email/password combination");
		}
	}
}

//call function to update status if update is submitted
if (isset($_POST['update'])) {
	update();
}

//function to update status of an application
function update()
{
	// call these variables with the global keyword to make them available in function
	global $connection, $errors, $email;
	
	// receive all input values from the form. Call the e() function
    // defined below to escape form values
	$last = isset($_POST['lastName']) ? e($_POST['lastName']) : "";
	$first = isset($_POST['firstName']) ? e($_POST['firstName']) : "";
	$appId = isset($_POST['appId']) ? e($_POST['appId']) : "";
	$status = isset($_POST['taskOption']) ? e($_POST['taskOption']) : "";
	$decisionDate = date("Y-m-d H:i:s", time());
	
	//create query
	$update_statement = "UPDATE Application set status = :status, decisionDate = :decisionDate WHERE appId = :id";
	
	$update = $connection -> prepare($update_statement);
	$update -> bindparam(':id', $appId);
	$update -> bindparam(':status', $status);
	$update -> bindparam(':decisionDate', $decisionDate);
	$update -> execute();
	
	$_SESSION['success'] = "Application status for ". $first . " " . $last . " successfully updated";
	header('location: adminView.php');
	} 
	

// ...
function isAdmin()
{
	if (isset($_SESSION['user']) && $_SESSION['user']['type'] == 'admin' ) {
		return true;
	}else{
		return false;
	}
}