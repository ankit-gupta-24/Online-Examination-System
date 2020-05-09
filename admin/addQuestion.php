<?php

if($_POST['testname']==='select'){
	echo "Please select test series name.";
}
else if (empty($_POST['question'])||empty($_POST['testname'])||empty($_POST['optA'])||empty($_POST['optB'])||empty($_POST['optC'])||empty($_POST['optD'])||empty($_POST['cr_opt'])) {
	echo "Please complete the form";
}
else{


	require 'db_connect.php';
	

	$stmt = $con->prepare('SELECT COUNT(id) FROM '.$_POST["testname"].'_questions');
	$stmt->execute();
	$stmt->bind_result($count);
	$stmt->fetch();
	$stmt->close();
	$count=$count+1;

	$questionID='q'.$count;
	$correctANS=$_POST['cr_opt'];

	$countfiles=0;
	if(isset($_FILES['files']['name'])){
		$countfiles = count($_FILES['files']['name']);
	}
	
	$upload_location = "../images/";
	$files_arr = array();

	for($index = 0;$index < $countfiles;$index++)
	{

	   	// File name
	   	$filename = $_FILES['files']['name'][$index];

	   	// Get extension
	   	$ext = pathinfo($filename, PATHINFO_EXTENSION);

	   	// Valid image extension
	   	$valid_ext = array("png","jpeg","jpg");

	   	// Check extension
	   	if(in_array(strtolower($ext), $valid_ext)){

	    	 // File path
	     	$path = $upload_location.$filename;

	     	// Upload file
	     	if(move_uploaded_file($_FILES['files']['tmp_name'][$index],$path)){
	        	$files_arr[] = $path;
	     	}
	   	}
	}

	$questionHTML='<div class="w3-padding w3-khaki w3-margin">
		 	<h4><b>'.$_POST["question"].'</b></h4>';

		 	if(isset($_POST['qcode'])&&!empty($_POST['qcode'])){
		 		$questionHTML.='<pre>'.$_POST["qcode"].'</pre>';
		 	}
		 	$total_moved_files=0;
		 	if(!empty($files_arr)){
		 		$total_moved_files=count($files_arr);
		 		$questionHTML.='<div class=\'qimg\'>';
			}
			$width_img=0;
			if($total_moved_files<=4){
				$width_img=20;
				
			}
		 	else{
		 		$width_img=floor(100/$total_moved_files);
		 		#$questionHTML.='<div class=\'qimg\'>';
		    }

		 	for ($i=0; $i <$total_moved_files ; $i++) { 
		 		$questionHTML.='<img src="'.$files_arr[$i].'" alt="question image" style="width:'.$width_img.'%;">';	
		 	}
		 	if(!empty($files_arr)){
		 		$questionHTML.='</div>';
		 	}
 	$questionHTML.='<input type="radio" name="'.$questionID.'" value="A">
				 	<label>&nbsp;&nbsp;'.$_POST["optA"].'</label><br>
				 	<input type="radio" name="'.$questionID.'" value="B">
				 	<label>&nbsp;&nbsp;'.$_POST["optB"].'</label><br>
				 	<input type="radio" name="'.$questionID.'" value="C">
				 	<label>&nbsp;&nbsp;'.$_POST["optC"].'</label><br>
				 	<input type="radio" name="'.$questionID.'" value="D">
				 	<label>&nbsp;&nbsp;'.$_POST["optD"].'</label><br>
				</div>';
	$qexpn='';
	if(isset($_POST['qexpn'])&&!empty($_POST['qexpn'])){
		$qexpn=$_POST['qexpn'];
	}
	else{
		$qexpn="no explaination available";
	}
	$stmt=$con->prepare('INSERT INTO '.$_POST["testname"].'_questions VALUES(?,?,?,?) ');
	$stmt->bind_param('ssss',$questionID,$questionHTML,$correctANS,$qexpn);
	if($stmt->execute()===TRUE){
		echo "success";
	}
	else{
		echo "Failed";
	}
	$stmt->close();
}

?>