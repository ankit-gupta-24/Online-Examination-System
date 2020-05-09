<?php
echo '<h1 style="text-align:center;" class="mt-3" >Add New Question</h1>
			<div style="width:60%; margin-left:19%; margin-bottom:30px;">
			
				<label for="testNameSelect" class="mt-3">
					<h4>Select test series name :</h4>
				</label>
				<select class="form-control" id="testNameSelect">
					
				</select>

				<label for="question" class="mt-3"><h4>Enter Question :</h4></label>
				<input type="text" name="question" placeholder="Enter question" id="question" class="form-control" required>
				<br>
				<textarea placeholder="Enter if question has any code" name="qcode" class="form-control" id="qcode"></textarea><br>
				<label for="qimg"><h4>Choose if question has image(s) :</h4> </label>
				<input type="file" name="files[]" multiple="multiple" id="files" class="form-control mb-3">
				<h4>Enter Options :</h4>
				
				<input type="text" name="optA" placeholder="Option A" id="optA" class="form-control mt-2" required>
				
				<input type="text" name="optB" placeholder="Option B" id="optB" class="form-control mt-2" required>
				
				<input type="text" name="optC" placeholder="Option C" id="optC" class="form-control mt-2" required>
				
				<input type="text" name="optD" placeholder="Option D" id="optD" class="form-control mt-2" required>

				<h4 class="mt-5">Which one is correct among options A, B, C and D :</h4>
				<input type="radio" name="cr_opt" id="cr_opt" value="A" class="mr-3 ml-3" required>A
				<input type="radio" name="cr_opt" id="cr_opt" value="B" class="mr-3 ml-3" required>B
				<input type="radio" name="cr_opt" id="cr_opt" value="C" class="mr-3 ml-3" required>C
				<input type="radio" name="cr_opt" id="cr_opt" value="D" class="mr-3 ml-3" required>D<br><br>
				<textarea placeholder="Give explanation of correct answer" name="qexpn" class="form-control" id="qexpn"></textarea><br>
				<input type="submit" class="btn btn-info mt-3" id="submitQuestion" value="Submit">
			
			</div>

			<script>
			$(document).ready(function(){
				$.post(
					"selectListOfTest.php",
					{},
					function(data,status){
						$("#testNameSelect").html(data);
				});	
			});

			 $("#submitQuestion").click(function(){

                        var fd = new FormData();                      

                        var totalfiles = document.getElementById("files").files.length;
   						for (var index = 0; index < totalfiles; index++) {
      						fd.append("files[]", document.getElementById("files").files[index]);
   						}

                        var testname=$("#testNameSelect").val();
                        fd.append(\'testname\',testname);

						var question=$("#question").val();
						fd.append(\'question\',question);

						var qcode=$("#qcode").val();
						fd.append(\'qcode\',qcode);

						var optA=$("#optA").val();
						fd.append(\'optA\',optA);

						var optB=$("#optB").val();
						fd.append(\'optB\',optB);

						var optC=$("#optC").val();
						fd.append(\'optC\',optC);

						var optD=$("#optD").val();
						fd.append(\'optD\',optD);

						var cr_opt=$("input[name=cr_opt]:checked").val();
						fd.append(\'cr_opt\',cr_opt);

						var qexpn=$("#qexpn").val();
						fd.append(\'qexpn\',qexpn);

                        $.ajax({
                            url: \'addQuestion.php\',
                            type: \'post\',
                            data: fd,
                            contentType: false,
                            processData: false,
                            success: function(response){
                                alert("Question addition " + response);
			    				$("#testname").val("");
			    				$("#question").val("");
			    				$("#optD").val("");
			    				$("#optC").val("");
			    				$("#optB").val("");
			    				$("#optA").val("");
			    				$("#qcode").val("");
			    				$("#file").val("");
			    				$("#qexpn").val("");
                            },
                        });
                    });

			</script>

			';
?>