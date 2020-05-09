<?php

session_start();

if (!isset($_SESSION["loggedin"])) {
	header("Location: ../index.html");
	exit();
}
// $DB_HOST="localhost";
// $DB_USER="root";
// $DB_PASS="";
// $DB_NAME="phplogin";
// $con=mysqli_connect($DB_HOST,$DB_USER,$DB_PASS,$DB_NAME);
// if(mysqli_connect_errno()){
// 	die("Failed to connect to DATABASE".mysqli_connect_error());
// }
require "../db_connect.php";
$stmt = $con->prepare('SELECT COUNT(id) FROM java_questions');
$stmt->execute();
$stmt->bind_result($no_of_questions);
$stmt->fetch();
$stmt->close();

$qid="q";
$count=1;
$fullTestResult="";
$qs="";
?>
<!DOCTYPE html>
<html>
<head>
	<title> java Test</title>

	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
	<link rel="stylesheet" type="text/css" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" type="text/css" href="../teststyle.css">
	
</head>
<body id="main">

<div  id="full"><button  class="w3-button w3-red w3-hover-green" onclick="openFullscreen()">Allow full sreen</button> </div>
	<div class="w3-container w3-teal" id="header">
		<div class="w3-row">
			<div class="w3-col s6 w3-xlarge"><b>javaTest </b></div>
			<div class="w3-col s6 w3-large w3-padding " style="text-align: right;" id="timer"></div>
		</div>
    </div>
		<div class="w3-container w3-padding w3-margin" id="test">
			<form action="result_java.php" method="POST" name="Test">
				<?php 
					$trackQN=0;
					for ($i=rand(1,5);$i<=$no_of_questions; $i=$i+rand(1,floor($no_of_questions/30))) { 
						$qid.=$i;					
						$stmt=$con->prepare('SELECT `question` FROM `java_questions` WHERE id=?');
						$stmt->bind_param("s",$qid);
						$stmt->execute();
						$stmt->bind_result($question[$qid]);
						$stmt->fetch();
						$stmt->close();
						$rse_stmt=$con->prepare('SELECT `answer` FROM `java_questions` WHERE id=?');
						$rse_stmt->bind_param("s",$qid);
						$rse_stmt->execute();
						$rse_stmt->bind_result($quesResult);
						$rse_stmt->fetch();
						$rse_stmt->close();
						$trackQN++;
						$fullTestResult.=$quesResult." ";
						echo "Q.".$count++.".";
						echo $question[$qid];
						$qs.=$qid." ";
						$qid="q";
						if($trackQN==30){
							break;
						}

					}
					$con->close();
					$_SESSION['FullTestResult']=$fullTestResult;
					$_SESSION['questionSequence']=$qs;
				 ?>				

				<center><input type="submit" value="submit" class="w3-button w3-indigo w3-xlarge w3-hover-red"></center>
			</form>

		</div>
<script type="text/javascript" src="../fullscreen.js"></script>
<script type="text/javascript" src="../counter.js"> </script>
</body>
</html>