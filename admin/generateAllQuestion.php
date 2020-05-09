<?php 
if(!isset($_POST['test_name'])||$_POST['test_name']==='select'){
	echo "<script type='text/javascript'>alert('please select valid test name');</script>";
}
else{
	require 'db_connect.php';
	$stmt=$con->prepare('SELECT * FROM '.$_POST['test_name'].'_questions');
	$stmt->execute();
	$stmt->store_result();
	if($stmt->num_rows>0){
		$stmt->bind_result($qid,$question,$answer,$explaination);
		while($stmt->fetch()){
			echo "<tr><td>$qid</td><td class='que'>$question</td><td>$answer</td><td>$explaination</td></tr>";
			$stmt->bind_result($qid,$question,$answer,$explaination);
		}
	}
	else{
		echo "<script type='text/javascript'>alert('NO question available '+$stmt->num_rows);</script>";
	}
	$stmt->close();
	$con->close();
}
?>