<?php

	require 'db_connect.php';
	
	echo "<option value='select'>Select any one from list</option>";
	$stmt= $con->prepare('SELECT TestSeriesName FROM list_of_test');
	$stmt->execute();
	$stmt->bind_result($row);
	while($stmt->fetch()){
		echo '<option value="'.$row.'">'.$row.'</option>';
		$stmt->bind_result($row);
	}
?>