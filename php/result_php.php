<?php
session_start(); 

if (!isset($_SESSION['loggedin'])) {
	header('Location: ../index.html');
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
if($stmt=$con->prepare('SELECT `php` FROM `score_card` WHERE id=?')){
	$stmt->bind_param('i',$_SESSION["id"]);
	$stmt->execute();
	$stmt->bind_result($htmlText);
	
	$stmt->fetch();
	$stmt->close();
	
	if($score>intval($htmlText)){
		if($stmt=$con->prepare('UPDATE `score_card` SET `php` = ? WHERE `id`=?') ){
			$stmt->bind_param('ii',$score,$_SESSION["id"]);
		
			$stmt->execute();
			$stmt->close();
		
		}
		else{
			echo "can't update score card ".mysqli_error($con);
		}
	}
}

// view answers marked by students
echo "<head>
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.1/css/all.css'>
	<link rel='stylesheet' type='text/css' href='https://www.w3schools.com/w3css/4/w3.css'>
	<link rel='stylesheet' type='text/css' href='../teststyle.css'>
	<style type='text/css'>
	body{
		padding:16px;
	}
	</style>
</head><body><center><h1>View correct answers and explaination</h1><h2>Your result of current test = $score / $noq</h2></center>";

for ($i=0; $i <count($questionArr) ;$i++ ) {
	if($stmt=$con->prepare('SELECT question,explaination FROM php_questions WHERE id=?')){
		$stmt->bind_param('s',$questionArr[$i]);
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
$extra = '../home.php?score='.$score.'&noq='.$noq;
echo "<a href='".$extra."' class='w3-btn w3-indigo'>Go to home page</a></body>";
//header("Location: http://localhost/codemaster/onlineExam/$extra");
?>
