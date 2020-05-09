<?php
// We need to use sessions, so you should always start sessions using the below code.
session_start();
// If the user is not logged in redirect to the login page...
if (!isset($_SESSION['loggedin'])) {
	header('Location: index.html');
	exit();
}

require 'db_connect.php';

$msg="";

//isset($_POST['upload'])
if(isset($_POST['upload']) && $_FILES['image']['size']>0 ){
	$target="./prof_images/".basename($_FILES['image']['name']);
	$image=$_FILES['image']['name'];

	$stmt=$con->prepare('UPDATE accounts SET images=? WHERE id = ?');
	$stmt->bind_param('si',$image,$_SESSION['id']);
	$stmt->execute();
	
	if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
		$msg="<p id='response' style='color:green;'><b>Profile picture uploaded Successfully</b></p>";
	}
	else{
		$msg="<p id='response' style='color:red;'><b>Profile picture upload Failed</b></p>";	
	}
	$stmt->close();
}
else if (isset($_POST['upload']) ) {
	$msg="<p id='response' style='color:red;'><b>No file choosen. Upload Failed.</b></p>";
}

if(isset($_POST['newpswd'])){
	if (strlen($_POST['newpswd']) > 20 || strlen($_POST['newpswd']) < 5) {
		$msg="<p id='response' style='color:red;'>Password must be between 5 and 20 characters long!</b></p>";
	}
	else{

		$stmt=$con->prepare('UPDATE accounts SET password=? WHERE id=?');
		$password = password_hash($_POST['newpswd'], PASSWORD_DEFAULT);
		$stmt->bind_param('si',$password,$_SESSION['id']);
		if($stmt->execute()===TRUE){
			$msg="<p id='response' style='color:green;'><b>Password Changed Successfully</b></p>";
		}
		else{
			$msg="<p id='response' style='color:green;'><b>Password Changing Failed</b></p>";
		}

	}
}

// We don't have the password or email info stored in sessions so instead we can get the results from the database.
$stmt = $con->prepare('SELECT images, email,comp_code,course FROM accounts WHERE id = ?');
// In this case we can use the account ID to get the account info.
$stmt->bind_param('i', $_SESSION['id']);
$stmt->execute();
$stmt->bind_result($imgsrc,$email,$comp_code,$course);
$stmt->fetch();
$stmt->close();

$con->close();
?>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Profile Page</title>
		<link href="style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
		<link rel="stylesheet" type="text/css" href="https://www.w3schools.com/w3css/4/w3.css">
		<style type="text/css">a{text-decoration: none;}

	</style>
	</head>
	<body class="loggedin">
		<div class="w3-top w3-indigo w3-large w3-padding">
  			<a href="home.php"><i class=" w3-xlarge">Welcome  <?=$_SESSION['name']?> </i></a>
  			<a href="logout.php" class="w3-button w3-hover-pale-red w3-right"><i class="fas fa-sign-out-alt"></i>&nbsp;Logout</a>
  			<a href="scorecard.php" class="w3-button w3-hover-pale-red w3-right">&nbsp;Score Card</a>
		</div>
		<div id="space" class=""><br><br><br></div>
		<div class="content">
			<h2>Profile Page</h2>
			<div class="" id="profile_img">
			
				<?php 
					$img='<img src="./prof_images/'.$imgsrc.'" width="120px" height="120px" >';
				 echo $img; ?>
				
			</div> 
			<div id="detail">
				<table>
					<tr>
						<td>UserID:</td>
						<td><?=$_SESSION['id']?></td>
					</tr>
					<tr>
						<td>UserName:</td>
						<td><?=$_SESSION['name']?></td>
					</tr>
					<tr>
						<td>Email:</td>
						<td><?=$email?></td>
					</tr>
					<tr>
						<td>Computer Code:</td>
						<td><?=$comp_code?></td>
					</tr>
					<tr>
						<td>Course:</td>
						<td><?=strtoupper($course)?></td>
					</tr>
				</table>
			</div>

			<button class="w3-button w3-blue" onclick="showimg()">Upload/Change Image</button>
			<button class="w3-button w3-blue" onclick="showpswd()">Change Password</button>
			<?php echo "$msg"; $msg="";?>
			<div id="in_img" class="w3-container">
					<form action="profile.php" method="POST" enctype="multipart/form-data">
						<input type="file" class="w3-margin" name="image" accept=".jpg,.jpeg,.png">&nbsp;&nbsp;&nbsp;
						<input type="submit" class="w3-button w3-blue" name="upload" value="Save">			
					</form>	
					<!--<i><b>NOTE : </b>If you want to remove profile picture then just click on save without choosing any file. It will show " Profile picture upload failed but ignore it."</i>-->
			</div>

			<div id="chng_pswd">
				<form action="profile.php" method="POST">
					<input type="password" class="w3-input w3-margin" name="newpswd" placeholder="Type new password">
					<input type="submit" class="w3-button w3-blue" name="change" value="Save">
				</form>
			</div>
			<br><br><br>
			
		</div>
	<script type="text/javascript">
					function showimg() {
						document.getElementById('in_img').style.display="block";
						document.getElementById('chng_pswd').style.display="none";
						document.getElementById('response').style.display="none";
					}
					function showpswd() {
						document.getElementById('in_img').style.display="none";
						document.getElementById('chng_pswd').style.display="block";	
						document.getElementById('response').style.display="none";
					}
				</script>
	</body>
</html>