<?php
require 'db_connect.php';

if(!isset($_POST['test_name'])){
	echo 0;
}
else{
$stmt = $con->prepare('SELECT COUNT(id) FROM '.$_POST["test_name"].'_questions');
$stmt->execute();
$stmt->bind_result($count);
$stmt->fetch();
$stmt->close();
echo $count;

}
?>