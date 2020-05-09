<?php
// We need to use sessions, so you should always start sessions using the below code.
//define("TestAccessPreventByUrl", true);
session_start();
// If the user is not logged in redirect to the login page...
if (!isset($_SESSION['loggedin'])) {
	header('Location: index.html');
	exit();
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		
		<title>Home Page</title>
		<link href="style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
		<link rel="stylesheet" type="text/css" href="https://www.w3schools.com/w3css/4/w3.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
		<style type="text/css">
			a{
				text-decoration: none;
			}
			th,td{
				width: 20%;
			}
		</style>
	</head>
	<body class="loggedin">

		<div class="w3-top w3-indigo w3-large w3-padding">
  			<i class=" w3-xlarge">Welcome  <?=$_SESSION['name']?></i>
  			<a href="logout.php" class="w3-button w3-hover-pale-red w3-right"><i class="fas fa-sign-out-alt"></i>&nbsp;Logout</a>
  			<a href="profile.php" class="w3-button w3-hover-pale-red w3-right"><i class="fas fa-user-circle"></i>&nbsp;Profile</a>
  			<a href="scorecard.php" class="w3-button w3-hover-pale-red w3-right"><i class=""></i>&nbsp;Score Card</a>
		</div>

		<div id="space" class=""><br><br><br></div>
         <div>
         	
         		<?php
         			if(isset($_GET["score"])&&isset($_GET['noq'])){ 
         		?>
         			<h1> &nbsp;&nbsp;Your Score of Current Test :&nbsp;
         		<?php 
         			//$_GET["score"]=0;
         			echo $_GET["score"]."/".$_GET['noq']."&nbsp;&nbsp;&nbsp;";
         		 //echo $_SESSION["id"];
         			if($_GET['score']>$_GET['noq']-2){
         				echo '<font size="20px" color="green"><b><i>Excellent</i></b></font>';
         			}
         			elseif ($_GET['score']>=$_GET['noq']-($_GET['noq']/4)) {
         				echo '<font size="20px" color="green"><b><i>Good ! Keep Practicing</b></i></font>';   			
         			}
         			elseif($_GET['score']>=$_GET['noq']-($_GET['noq']/2)){
         				echo '<font size="20px" color="orange"><b><i>Fair ! Keep Learning & practicing.</b></i></font>';
         			}
         			else {
         				echo '<font size="20px" color="red"><b><i>Sorry ! You are very weak. Keep Learning & practicing.</b></i></font>';
         			}
         		}
         		?>
         	</h1>
         	
         </div>
		<div class="w3-container">
			<h2>Instructions :</h2>
			<ul>
				<li>Test will be automatically submitted after timeout. </li>
				<li>You can also submit test Manually.</li>
				<li>Don't try to go backward or forward in browser otherwise questions will be changed.</li>
				<li>Don't refresh page otherwise questions will be changed.</li>
				<li>You must allow full screen mode to give test.</li>
				<li>Changing full screen mode will automatically submit the test.</li>
			</ul>
			<h2>List of test / select language of your choice : </h2><br>
<?php 
// $DATABASE_HOST = 'localhost';
// $DATABASE_USER = 'root';
// $DATABASE_PASS = '';
// $DATABASE_NAME = 'phplogin';
// $con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
// if (mysqli_connect_errno()) {
// 	die ('Failed to connect to MySQL: ' . mysqli_connect_error());
// }
require 'db_connect.php';
$id=1;
$stmt=$con->prepare('SELECT `TestSeriesName` FROM `list_of_test`');
// $stmt->bind_param('i',$id);
$stmt->execute();
$stmt->bind_result($list);
echo "<ul>";
while ($stmt->fetch()) {
	echo "<li><a href='./$list/test_$list.php'>$list</a></li>";
	$stmt->bind_result($list);
}
echo "</ul>";
$stmt->close();
$con->close();

?>		
			
		</div>
		<script type="text/javascript">

		//	window.history.forward();
			sessionStorage.clear();
	 		//console.log("code run");
		</script>
	</body>
</html>