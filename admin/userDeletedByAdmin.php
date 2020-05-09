<?php
if(!isset($_POST['username'])||$_POST['username']==="select"){
		die('please select valid userame');
	}
else{
	require 'db_connect.php';
	$stmt =$con->prepare('DELETE FROM accounts WHERE username = ?');
	$stmt->bind_param('s',$_POST['username']);
	if ($stmt->execute() ===true){
		echo "success";
	}
	else{
		echo "failed";
	}

}
?>