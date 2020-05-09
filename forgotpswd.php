<?php

if(isset($_POST['username'])&& !empty($_POST['username']) && !empty($_POST['email'])){

	require 'db_connect.php';
	$stmt = $con->prepare("SELECT username, email from accounts where username =? and email = ?");
	$stmt->bind_param('ss',$_POST['username'],$_POST['email']);
	$stmt->execute();
	$stmt->store_result();
	if($stmt->num_rows>0){
		$stmt->bind_result($ser_username,$ser_email);
		$stmt->fetch();
		$stmt->close();
		if($ser_username==$_POST['username'] && $ser_email == $_POST['email']){
			
			//generate otp and send otp to mail
			$otp=rand(100000,999999);
			// sending mail
			require './PHPMailer/PHPMailerAutoload.php';
			$mail = new PHPMailer;
			$mail->isSMTP();
			$mail->Mailer='smtp';

			$mail->SMTPDebug = 1;
			$mail->SMTPAuth = true;
			$mail->SMTPSecure='tls';
			$mail->Port = 587;
			$mail->Host = 'smtp.gmail.com';
			
			$mail->Username = 'oes.soc.ipsa@gmail.com';
			$mail->Password = '*********';

			$mail->IsHTML(true);
			$mail->setFrom('oes.soc.ipsa@gmail.com', 'OES SOC IPSA');
			$mail->addReplyTo('oes.soc.ipsa@gmail.com', 'OES SOC IPSA');
			$mail->addAddress($ser_email, "$ser_username");
			$mail->Subject = 'OTP verification for password reset';
			// $mail->msgHTML('<h2>OTP :'.$otp.'</h2>');
			$mail->Body = 'OTP: '.$otp.'  Please reply if not done by you.';
			if (!$mail->send()) {
			    echo 'Mailer Error: ' . $mail->ErrorInfo;
			} else {
			    echo 'The email message was sent.';
				
				$stmt = $con->prepare('INSERT into otp_details(username,email,otp) VALUES(?,?,?)');
				$stmt->bind_param('ssi',$ser_username,$ser_email,$otp);
				$stmt->execute();
				$stmt->close();


			?>
			<style type="text/css">
					* {
						visibility: hidden;
						/*display: none;*/
					}
					h2,form,input,span,p{
						display: block;
						position: absolute;
						/*display: block;*/
						visibility: visible;						
					}
					h2{top:0px;left: 100px;}
					form{top:50px; left: 100px;}
					
					input{padding: 5px; }
					input[type='text']{top:70px; left:100px;}
					input[type='email']{top:120px; left:100px;}
					input[type='number']{top:170px; left:100px;}
					input[type='submit']{top:220px; left:100px;}
					span{top:300px;}
				</style>
			<center>

				<h2>Verify email by OTP</h2>
			<form action="sendpswd.php" method="post">
				<p style="top:70px;">Username:</p>
				<input type="text" name="username" value=<?php echo $ser_username; ?> readonly>
				<p style="top:120px;">Email:</p>
				<input type="email" name="email" value=<?php echo $ser_email; ?> readonly>
				<p style="top:170px;">Enter OTP:</p>
				<input type="number" name="otp"><br><br>
				<input type="submit" name="finalsubmit">
			</form>
			<span style="color: red;">*OTP has been sent to your mail<span>
				</center>
			<?php
			
			}			
		}


	}
	else{
		echo '<h2>no user found with given details. Please enter correct details.</h2>';
	}



}
else{
	echo "<h3>Please fill username and email</h3>";
}
?>