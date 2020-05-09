<?php
echo '<h1 style="text-align:center;" class="mt-3" >Add New Admin</h1>
			<div style="width:60%; margin-left:19%;">
			<!--<form action="register.php" method="post">-->
				<label for="username">
					<i class="fas fa-user"></i>
				</label>
				<input type="text" name="username" placeholder="Username" id="username" class="form-control" required>
				<label for="password">
					<i class="fas fa-lock"></i>
				</label>
				<input type="password" name="password" placeholder="Password" id="password" class="form-control" required>
				<label for="email">
					<i class="fas fa-envelope"></i>
				</label>
				<input type="email" name="email" placeholder="Email" id="email" class="form-control" required>
				<input type="submit" class="btn btn-info mt-3" id="registerNewAdmin" value="Register">
				<!--</form>-->
			</div>
			<script>

    	$("#registerNewAdmin").click(function(){
    		var username1=$("#username").val();
    		var password1=$("#password").val();
    		var email1=$("#email").val();
    		$.post(
    			"addAdmin.php",
    			{
    				username:username1,
    				password:password1,
    				email:email1
    			},
    			function(data,status){
    				alert("admin addition " + data);
    				$("#username").val("");
    				$("#password").val("");
    				$("#email").val("");
    		});
    	});

			</script>

			';
?>