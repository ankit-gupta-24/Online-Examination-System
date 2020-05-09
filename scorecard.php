<?php
// We need to use sessions, so you should always start sessions using the below code.
//define("TestAccessPreventByUrl", true);
session_start();
// If the user is not logged in redirect to the login page...
if (!isset($_SESSION['loggedin'])) {
	header('Location: index.html');
	exit();
}
// $DB_HOST="localhost";
// $DB_USER="root";
// $DB_PASS="";
// $DB_NAME="phplogin";
// $con =mysqli_connect($DB_HOST,$DB_USER,$DB_PASS,$DB_NAME)or die("Failed to connect to database"+mysqli_error());
require 'db_connect.php';
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Score Page</title>
		<link href="style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
		<link rel="stylesheet" type="text/css" href="https://www.w3schools.com/w3css/4/w3.css">
		<style type="text/css">
			a{	text-decoration: none;	}
			table{	width: 70%;margin-left: 15%; }
			td,th{	width: 33%;	border:1px dashed blue; color: indigo;}
			.maintable td{	margin: 0 10px 0 10px;	width: 33%; text-align: center;	font-weight: 600;}
			.maintable tr:first-child td{font-size: 20px; font-weight: bold; padding: 8px;} 
			h1{font-weight: bold;}
		</style>
	</head>
	<body class="loggedin">

		<div class="w3-top w3-indigo w3-large w3-padding">
  			<a href="home.php"><i class=" w3-xlarge">Welcome  <?=$_SESSION['name']?></i></a>
  			<a href="logout.php" class="w3-button w3-hover-pale-red w3-right"><i class="fas fa-sign-out-alt"></i>&nbsp;Logout</a>
  			<a href="profile.php" class="w3-button w3-hover-pale-red w3-right"><i class="fas fa-user-circle"></i>&nbsp;Profile</a>
  			
		</div>

		<div id="space" class=""><br><br><br></div>
		<h1 class="w3-center w3-text-blue">Score Card</h1><br>

		<table  cellspacing="0" cellpadding="5" class="maintable">
			<tr style="background-color: #666;"><td style="color: white; border:0; border-left:1px solid white;">Test Name</td><td style="color: white;border:0; border-left: 1px solid white;">Score</td><td style="color: white;border:0; border-left: 1px solid white;">Rank</td> </tr>
		<?php
			$stmt=$con->prepare('SELECT `TestSeriesName` FROM `list_of_test`');
			$stmt->execute();
			$stmt->bind_result($list);
			// $i=0;
			$col_arr=[];
			while($stmt->fetch()){
				array_push($col_arr, $list);				
				$stmt->bind_result($list);				
			}
			$stmt->close();

			foreach ($col_arr as $value) {
				$stmt = $con->prepare('SELECT '.$value.' FROM `score_card` WHERE `id` = ? ');
				$stmt->bind_param('i',$_SESSION['id']);	
				$stmt->execute();
				$stmt->bind_result($score);
				$stmt->fetch();
				$stmt->close();
				if($score==NULL){
					$score=0;
				}
				$stmt =$con->prepare("SELECT COUNT($value)+1 FROM score_card WHERE $value>$score");
				// $stmt->bind_param('i',$_SESSION['id']);
				$stmt->execute();
				$stmt->bind_result($rank);
				$stmt->fetch();
				$stmt->close();
				echo "<tr><td>$value</td><td>$score</td><td>$rank</td></tr>";
				
			}
		?>
			
		</table>

			 <!-- overall rank to be computed in future -->

<?php $con->close();?>
	</body>
</html>

