<?php
	if(!isset($_POST['cc'])||empty($_POST['cc'])){
		die('<script>alert("please select valid computer code");</script>');
	}
	else{
		require 'db_connect.php';
        
        $stmt1 = $con->prepare('SELECT comp_code FROM accounts WHERE comp_code =?');
        $stmt1->bind_param('s',$_POST['cc']);
        $stmt1->execute();
        $stmt1->store_result();
        if($stmt1->num_rows>0){
        $stmt1->close();
		$stmt =$con->prepare('SELECT username,images,email,comp_code,course FROM accounts WHERE comp_code = ?');
		$stmt->bind_param('s',$_POST['cc']);
		$stmt->execute();
		$stmt->bind_result($username,$imagesrc,$email,$comp_code,$course);
		$stmt->fetch();
		echo "<div><h3>Searched User</h3>";
		echo "<img style='width:150px; height:150px;' class='mt-3' src='../prof_images/".$imagesrc."'></div>";
		echo "<div><h5 class='mt-3 mr-5' >Username: <span id='userToBeDeleted'>".$username."</span></h5>";
		echo "<h5 class='mt-3 mr-5'>Email: ".$email."</h5>";
		echo "<h5 class='mt-3 mr-5'>Computer Code: $comp_code</h5>";
		echo "<h5 class='mt-3 mr-5'>Course: ".strtoupper($course)."</h5>";
		echo "<button id='deleteUserbtn' class='btn btn-primary mt-3' style='width:auto; height:3rem;'>Delete if not of your college</button></div>";
		echo "<script>
			$('#deleteUserbtn').click(function(){

				var UTBD = $('#userToBeDeleted').text();
				var conf = confirm('Do you really want to delete user '+ UTBD);
				if(conf===false){
					return false;
				}
				$.post(
					'userDeletedByAdmin.php',
					{
						username:UTBD
					},
					function(data,status){
						alert('user deletion '+data);
						window.location='./home.php';
				});
			});
		</script>";
		$stmt->close();
        }
        else{
            die('<script>alert("computer code doesn\'t exist");</script>');
        }
	}
?>