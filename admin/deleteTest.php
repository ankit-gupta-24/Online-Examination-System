<?php

if ($_POST['testname']==='select') {
	echo "Please select correct test series name.";
}
else{
	require 'db_connect.php';

	$testname = $_POST['testname'];
	$stmt= $con->prepare('DELETE FROM `list_of_test` WHERE  `TestSeriesName` = ?');
	$stmt->bind_param('s',$testname);
	$stmt->execute();
	$stmt->close();

	$stmt = $con->prepare('ALTER TABLE `score_card` DROP COLUMN '.$testname);
	$stmt->execute();
	$stmt->close();

	$stmt=$con->prepare('DROP TABLE '.$testname.'_questions');
	$stmt->execute();
	$stmt->close();	

	array_map('unlink', glob("../$testname/*"));
	rmdir("../".$testname);
	echo "success";
}	
?>