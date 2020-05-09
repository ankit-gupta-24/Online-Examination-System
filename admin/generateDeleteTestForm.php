<?php
echo '<h1 style="text-align:center;" class="mt-3" >Delete Test Series</h1>
			<div style="width:60%; margin-left:19%; margin-bottom:30px;">
			
				<label for="testNameSelect" class="mt-3">
					<h4>Select test series name :</h4>
				</label>
				<select class="form-control" id="testNameSelect">
					<option>Select</option>
				</select>
				<input type="submit" class="btn btn-info mt-3" id="submitQuestion" value="Submit">
			
			</div>
		<script>
			function selectListOfTest(){
				$.post(
					"selectListOfTest.php",
					{},
					function(data,status){
					$("#testNameSelect").html(data);
				});
			}
			selectListOfTest();

			$("#submitQuestion").click(function(){
    			var testname=$("#testNameSelect").val();
    			var conf = confirm("Do you really want to delete test series "+ testname + ". You will not be able to recover it ");
				if(conf===false){
					return false;
				}
    			$.post(
    				"deleteTest.php",
    				{
    					testname:testname,
    				},
    				function(data,status){
    					alert("test series deletion " + data);
    					selectListOfTest();
    			});
    	    });

			</script>

			';
?>