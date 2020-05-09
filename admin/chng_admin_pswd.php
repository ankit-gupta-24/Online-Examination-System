<?php
session_start();
if (!isset($_SESSION['loggedin'])) {
	header("Location: ./index.html");
}
else{
$pswd = password_hash($_POST['newpswd'], PASSWORD_DEFAULT);
require 'db_connect.php';
$stmt=$con->prepare('UPDATE admin SET password = ? WHERE username= ?');
$stmt->bind_param('ss',$pswd,$_SESSION['name']);
if($stmt->execute()===true){
    echo 'success';
}
else{
    echo 'failed';
}
$stmt->close();
}
?>