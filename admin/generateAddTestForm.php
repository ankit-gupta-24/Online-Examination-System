<?php
echo'<h1 style="text-align:center;" class="mt-3" >Add New Test Series</h1>
	<div style="width:60%; margin-left:19%;">
	<input type="text" name="newTestName" placeholder="New Test Name" id="newTestName" class="form-control" required>
	<input type="submit" class="btn btn-info mt-3" id="registerNewTest" value="Add">

	<script>

    	$("#registerNewTest").click(function(){
    		var newTestName=$("#newTestName").val();
            var re = /^\d/;
            if(newTestName.includes(" ")||newTestName.match(re)){
                alert("spaces and digits at starting are not allowed");
                return false;
            }
            if(newTestName.length<2||newTestName.length>40){
                alert("length must be between 2 to 40 characters");
                return false;
            }
    		$.post(
    			"addTest.php",
    			{
    				newTestName:newTestName
    			},
    			function(data,status){
    				alert("Test addition " + data);
    				$("#newTestName").val("");
    		});
    	});

	</script>
	';
?>