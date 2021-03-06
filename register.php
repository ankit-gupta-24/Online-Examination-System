<?php

require 'db_connect.php';

// Now we check if the data was submitted, isset() function will check if the data exists.
if (!isset($_POST['username'], $_POST['password'], $_POST['email'], $_POST['comp_code'],$_POST['course'])) {
	// Could not get the data that should have been sent.
	die ('Please complete the registration form!');
}
// Make sure the submitted registration values are not empty.
if (empty($_POST['username']) || empty($_POST['password']) || empty($_POST['email'])||empty($_POST['comp_code'])||empty($_POST['course'])) {
	// One or more values are empty.
	die ('Please complete the registration form');
}

//Email Validation
if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
	die ('Email is not valid!');
}
//invalid character validation
if (preg_match('/[A-Za-z0-9]+/', $_POST['username']) == 0) {
    die ('Username is not valid!');
}
//password validation
if (strlen($_POST['password']) > 20 || strlen($_POST['password']) < 5) {
	die ('Password must be between 5 and 20 characters long!');
}

// We need to check if the account with that username exists.
if ($stmt = $con->prepare('SELECT id, password FROM accounts WHERE username = ?')) {
	// Bind parameters (s = string, i = int, b = blob, etc), hash the password using the PHP password_hash function.
	$stmt->bind_param('s', $_POST['username']);
	$stmt->execute();
	$stmt->store_result();
	// Store the result so we can check if the account exists in the database.
	if ($stmt->num_rows > 0) {
		// Username already exists
		echo 'Username exists, please choose another!';
		$stmt->close();
	}
	else 
	{   $stmt->close();
		// Username doesnt exists, insert new account
		if ($stmt = $con->prepare('INSERT INTO accounts (username, password, email,comp_code,course) VALUES (?, ?, ?, ?, ?)')) 
		{
		// We do not want to expose passwords in our database, so hash the password and use password_verify when a user logs in.
// 			$score='0';
			$password = password_hash($_POST['password'], PASSWORD_DEFAULT);
			$stmt->bind_param('sssis', $_POST['username'], $password, $_POST['email'],$_POST['comp_code'],$_POST['course']);
			if($stmt->execute()===TRUE){
			    $stmt->close();
			    $last_id=$con->insert_id;
			    $stmt=$con->prepare('INSERT INTO score_card(id) VALUES(?)');
			    $stmt->bind_param('i',$last_id);
			    $stmt->execute();
			    $stmt->close();
				echo "You are successfully registered";	
				echo "<a href='./'>Login here !</a>";
			}
			else {
				echo 'Error in execution. Computer code and username must be unique';
			}
// 			$stmt->close();
		}
		else
		{
			echo 'Could not prepare statement!';
		}
	}
}
$con->close();
?>