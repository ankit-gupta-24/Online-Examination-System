<?php

session_start();

if(!isset($_SESSION['loggedin'])){
	header("Location: ../");
	exit();
}
require 'db_connect.php';

echo "<div><h2>Admin Dashboard<button class='btn btn-primary float-right' id='chng_pswd' data-toggle='modal' data-target='#myModal'>Change Password</button></h2></div>
    <div id='myModal' class='modal fade' role='dialog'>
  <div class='modal-dialog'>
    <div class='modal-content'>
      <!--<div class='modal-header'>
        <h4 class='modal-title'>Type New Password ...</h4>
        <button type='button' class='close' data-dismiss='modal'>&times;</button>
      </div>-->
      <div class='modal-body'>
        <label>Type New Password ...</label>
        <input type='password' name='newpswd' id='newpswd' class='form-control'/>
      </div>
      <div class='modal-footer'>
        <button type='button' class='btn btn-danger' data-dismiss='modal'>Close</button>
        <button type='button' class='btn btn-success' data-dismiss='modal' id='save_newpswd'>Save</button>
      </div>
    </div>

  </div>
</div>

<script type='text/javascript'>
$('#save_newpswd').click(function(){
    $.post(
        'chng_admin_pswd.php',
        {
            newpswd:$('#newpswd').val()
        },
        function(result){
            alert(result);
    });
});
</script>
<h4 class='mt-5'>Available Test Series and Number of Questions</h4>";

echo "

		<script> var list_of_test_arr=[];
";
	$click=0;
	$stmt= $con->prepare('SELECT TestSeriesName FROM list_of_test');
	$stmt->execute();
	$stmt->bind_result($row);
	while($stmt->fetch()){
		echo 'list_of_test_arr.push("'.$row.'");';
		$click++;
		$stmt->bind_result($row);
	}
	$stmt->close();

	$stmt = $con->prepare('SELECT COUNT(username) FROM accounts');
	$stmt->execute();
	$stmt->bind_result($stu_count);
	$stmt->fetch();
	$stmt->close();


echo "</script>";
echo "<div class='available-test mt-5' id='available-test'>	</div>";
echo "<div id='display_que'> </div>";
echo "<h4 class='mt-5'>Registerd Student</h4>
<div class='available-stu'>
	<div>
		<p >Registered Students</p>
		<p id='stu_count'>$stu_count</p>
	</div>
	<div>
		<p>Check profile of student</p>
		<select id='list_of_stu' class='form-control'>

		</select>
		<button class='btn btn-info mt-3' id='check'>Check</button>
		<input type='number' placeholder='Search by Computer code' class='form-control mt-3' id='cc'/>
		<button class='btn btn-info mt-3' id='sea_cc'>Search</button>
	</div>
</div>";

echo "<div id='stu_profile_section' class='container mt-5 mb-5'></div>";

echo "<script type='text/javascript'>

	color=['linear-gradient(0deg,yellow,green)','linear-gradient(0deg,orange,blue)','linear-gradient(0deg,orange,#777777)','linear-gradient(0deg,red,yellow)','linear-gradient(0deg,orange,green)','linear-gradient(0deg,blue,green)','linear-gradient(0deg,yellow,teal)','linear-gradient(0deg,aqua,green)','linear-gradient(0deg,yellow,lightblue)'];
	// var que_count=990;

	for(let m=0; m<list_of_test_arr.length ;m++){
			task(m);		
			
	}

	function task(m){
		setTimeout(function(){
			var prevHTML=$('#available-test').html();

			var bwHTML = prevHTML + '<div style=\'background:' + color[m%color.length] + ';\'><p class=\'one-test\'>' + list_of_test_arr[m] + '</p>';

			var newHTML = bwHTML+'<p id=\'qcount_'+m+'\'> Que. </p></div>';
			$('#available-test').html(newHTML);		
			
			$.post(
					'find_N_of_Que.php',
					{
						test_name:list_of_test_arr[m]
					},
					function(data,status){
						$('#qcount_'+m).text(data+' Que.');
						// console.log(data,que_count);
			});
			},2000*m);

	}
</script>";


$stmt = $con->prepare('SELECT username FROM accounts');
$stmt->execute();
$stmt->bind_result($one_option);
$option_str="<option value='select'>select</option>";
while ($stmt->fetch()) {
	$option_str.="<option value='".$one_option."'>".$one_option."</option>";
	$stmt->bind_result($one_option);
}
$stmt->close();

echo "<script>
$('#list_of_stu').html(\"$option_str\");

$('#check').click(function(){
	var username = $('#list_of_stu').val();
	$.post(
	'check_stu_profile.php',
	{
		username:username
		},
		function(data,status){
			$('#stu_profile_section').html(data);
	});
});

$('#sea_cc').click(function(){
	var comp_cd = $('#cc').val();
	$.post(
	'sea_cc.php',
	{
		cc:comp_cd
		},
		function(data,status){
			$('#stu_profile_section').html(data);
	});
});
</script>";
?>