<?php
// Change this to your connection info.
$DATABASE_HOST = 'localhost';
$DATABASE_USER = '******';
$DATABASE_PASS = '******';
$DATABASE_NAME = '******';
// Try and connect using the info above.
$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if (mysqli_connect_errno()) {
	// If there is an error with the connection, stop the script and display the error.
	die ('Failed to connect to MySQL: ' . mysqli_connect_error());
}

?>