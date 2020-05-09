<?php
$complete_execution=0;

if (empty($_POST['newTestName'])) {
	echo "Test name can't be blank";
}
else{
	require 'db_connect.php';

	$newTestName = $_POST['newTestName'];
	$stmt= $con->prepare('INSERT INTO `list_of_test`(`TestSeriesName`) VALUES ( ? )');
	$stmt->bind_param('s',$newTestName);
	$stmt->execute();
	$stmt->close();

	$stmt = $con->prepare('ALTER TABLE `score_card` ADD '.$newTestName.' INT(11) DEFAULT 0');
	$stmt->execute();
	$stmt->close();

	$stmt=$con->prepare('CREATE TABLE '.$newTestName.'_questions ( `id` VARCHAR(75) NOT NULL , `question` TEXT NOT NULL , `answer` VARCHAR(10) NOT NULL, `explaination` TEXT DEFAULT NULL, PRIMARY KEY (`id`)) ENGINE = MyISAM');
	$stmt->execute();
	$stmt->close();	
	// echo "$newTestName";


	//code for files and folder creation on server 
	if(is_dir($newTestName)===false){
		mkdir("../$newTestName/");
	}
	
	$testfile=fopen("../$newTestName/test_$newTestName.php", "w");

	$TestFileContent='<?php

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
$stmt = $con->prepare(\'SELECT COUNT(id) FROM '.$newTestName.'_questions\');
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
	<title> '.$newTestName.' Test</title>

	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
	<link rel="stylesheet" type="text/css" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" type="text/css" href="../teststyle.css">
	
</head>
<body id="main">

<div  id="full"><button  class="w3-button w3-red w3-hover-green" onclick="openFullscreen()">Allow full sreen</button> </div>
	<div class="w3-container w3-teal" id="header">
		<div class="w3-row">
			<div class="w3-col s6 w3-xlarge"><b>'.$newTestName.'Test </b></div>
			<div class="w3-col s6 w3-large w3-padding " style="text-align: right;" id="timer"></div>
		</div>
    </div>
		<div class="w3-container w3-padding w3-margin" id="test">
			<form action="result_'.$newTestName.'.php" method="POST" name="Test">
				<?php 
					$trackQN=0;
					for ($i=rand(1,5);$i<=$no_of_questions; $i=$i+rand(1,floor($no_of_questions/30))) { 
						$qid.=$i;					
						$stmt=$con->prepare(\'SELECT `question` FROM `'.$newTestName.'_questions` WHERE id=?\');
						$stmt->bind_param("s",$qid);
						$stmt->execute();
						$stmt->bind_result($question[$qid]);
						$stmt->fetch();
						$stmt->close();
						$rse_stmt=$con->prepare(\'SELECT `answer` FROM `'.$newTestName.'_questions` WHERE id=?\');
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
					$_SESSION[\'FullTestResult\']=$fullTestResult;
					$_SESSION[\'questionSequence\']=$qs;
				 ?>				

				<center><input type="submit" value="submit" class="w3-button w3-indigo w3-xlarge w3-hover-red"></center>
			</form>

		</div>
<script type="text/javascript" src="../fullscreen.js"></script>
<script type="text/javascript" src="../counter.js"> </script>
</body>
</html>';

	fwrite($testfile, $TestFileContent);
	fclose($testfile);


	$resultfile=fopen("../$newTestName/result_$newTestName.php", "w");
	$resultFileContent='<?php
session_start(); 

if (!isset($_SESSION[\'loggedin\'])) {
	header(\'Location: ../index.html\');
	exit();
}
$score=0;
$serverResult=$_SESSION["FullTestResult"];
$questionSequence=$_SESSION["questionSequence"];
$serverResult=rtrim($serverResult);
$questionSequence=rtrim($questionSequence);
$serverResultArr=explode(" ", $serverResult);
$questionArr=explode(" ",$questionSequence);
$noq=count($questionArr);
for ($i=0; $i <count($questionArr) ; $i++) { 

	$index=$questionArr[$i];
	if(isset($_POST[$index])){
		$userResultArr[$i]=$_POST[$index];
	}
	else{
		$userResultArr[$i]="0";	
	}

}

for ($i=0; $i <count($userResultArr) ; $i++) { 
     if($serverResultArr[$i]==$userResultArr[$i]){
     	$score++;
     }
}

// store score in database 

// $DB_HOST="localhost";
// $DB_USER="root";
// $DB_PASS="";
// $DB_NAME="phplogin";
// $con=mysqli_connect($DB_HOST,$DB_USER,$DB_PASS,$DB_NAME);
// if(mysqli_connect_errno()){
// 	die("Failed to connect to DATABASE".mysqli_connect_error());
// }
require "../db_connect.php";
if($stmt=$con->prepare(\'SELECT `'.$newTestName.'` FROM `score_card` WHERE id=?\')){
	$stmt->bind_param(\'i\',$_SESSION["id"]);
	$stmt->execute();
	$stmt->bind_result($htmlText);
	
	$stmt->fetch();
	$stmt->close();
	
	if($score>intval($htmlText)){
		if($stmt=$con->prepare(\'UPDATE `score_card` SET `'.$newTestName.'` = ? WHERE `id`=?\') ){
			$stmt->bind_param(\'ii\',$score,$_SESSION["id"]);
		
			$stmt->execute();
			$stmt->close();
		
		}
		else{
			echo "can\'t update score card ".mysqli_error($con);
		}
	}
}

// view answers marked by students
echo "<head>
<link rel=\'stylesheet\' href=\'https://use.fontawesome.com/releases/v5.7.1/css/all.css\'>
	<link rel=\'stylesheet\' type=\'text/css\' href=\'https://www.w3schools.com/w3css/4/w3.css\'>
	<link rel=\'stylesheet\' type=\'text/css\' href=\'../teststyle.css\'>
	<style type=\'text/css\'>
	body{
		padding:16px;
	}
	</style>
</head><body><center><h1>View correct answers and explaination</h1><h2>Your result of current test = $score / $noq</h2></center>";

for ($i=0; $i <count($questionArr) ;$i++ ) {
	if($stmt=$con->prepare(\'SELECT question,explaination FROM '.$newTestName.'_questions WHERE id=?\')){
		$stmt->bind_param(\'s\',$questionArr[$i]);
		$stmt->execute();
		$stmt->bind_result($question,$explaination);
		$stmt->fetch();
		$j=$i+1;
		echo "Q.$j";
		echo "$question";
		if($userResultArr[$i]==="0"){
			echo "Your answer: not attempted<br>";
		}else{
		echo "Your answer: $userResultArr[$i]<br>";}
		echo "Correct answer: $serverResultArr[$i]<br>";
		echo "Explaination of answer: $explaination<br>";
	}
	else{
		echo "unable to fetch questions...";
	}
}



$con->close();
//redirect to home page
$extra = \'../home.php?score=\'.$score.\'&noq=\'.$noq;
echo "<a href=\'".$extra."\' class=\'w3-btn w3-indigo\'>Go to home page</a></body>";
//header("Location: http://localhost/codemaster/onlineExam/$extra");
?>
';

	fwrite($resultfile, $resultFileContent);
	fclose($resultfile);	

	$complete_execution=1;
}

if ($complete_execution===1) {
	echo "success";
} else {
	echo "Failed";
}

?>