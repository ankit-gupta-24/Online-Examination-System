<?php
//match username and email and otp of user with otp_details table
// retrieve password if otp matches
// call verify_password function 
// send password in mail to user
// also deletion code to delete otp from the otp-details table
if(isset($_POST['finalsubmit'])&& !empty($_POST['username']) && !empty($_POST['email']) && !empty($_POST['otp'])){
	require 'db_connect.php';

	$stmt = $con->prepare("SELECT otp from otp_details where username =? and email =? and isused=0");
	$stmt->bind_param('ss',$_POST['username'],$_POST['email']);
	$stmt->execute();
	$stmt->store_result();
	if($stmt->num_rows>0){
		$stmt->bind_result($ser_otp);
		$stmt->fetch();
		if($_POST['otp']==$ser_otp){
			$stmt->close();
            echo "<style type='text/css'>
            *{ display:none; }
            h2{ display:block; }</style>";
// 			$stmt= $con->prepare('SELECT password from accounts where username =? and email =?');
// 			$stmt->bind_param('ss',$_POST['username'],$_POST['email']);
// 			$stmt->execute();
// 			$stmt->bind_result($retr_pswd);
// 			$stmt->fetch();
// 			$stmt->close();
// 			$retr_pswd =password_verify($retr_pswd);
            $retr_pswd='';
            for($i=0;$i<8;$i++){
                $retr_pswd.=chr(rand(33,122));
            }
            
            
            
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
			$mail->Password = '*******';

			$mail->IsHTML(true);
			$mail->setFrom('oes.soc.ipsa@gmail.com', 'OES SOC IPSA');
			$mail->addReplyTo('oes.soc.ipsa@gmail.com', 'OES SOC IPSA');
			$mail->addAddress($_POST['email'], $_POST['username']);
			$mail->Subject = 'Actual Password';
			// $mail->msgHTML('<h2>OTP :'.$otp.'</h2>');
			$mail->Body = 'Temporary Password: '.$retr_pswd.'        Login and change your password immediately. Please reply if not done by you.';
			if (!$mail->send()) {
			    echo 'Mailer Error: ' . $mail->ErrorInfo;
			} else {
			    echo '<script> alert("A temporary Password has been sent to your mail. Login and change password");</script>';
			    $stmt =$con->prepare('UPDATE accounts SET password = ? where username =?');
			    $retr_pswd=password_hash($retr_pswd,PASSWORD_DEFAULT);
			    $stmt->bind_param('ss',$retr_pswd,$_POST['username']);
			    $stmt->execute();
			    $stmt->close();
			    echo "<script>window.location='./';</script>";
			}

			$stmt = $con->prepare('DELETE from otp_details where username = ?');
			$stmt->bind_param('s',$_POST['username']);
			$stmt->execute();
			$stmt->close();
		}
		else{
			echo "OTP is wrong. Please enter correct otp.";
		}
	}
	else{
		echo 'OTP has been used or expired.';
	}
}
else{
	echo "<h2>Please enter OTP</h2>";
}
?>