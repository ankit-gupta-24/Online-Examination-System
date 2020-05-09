<!DOCTYPE html>
<html>
<head>
	<title>Admin Panel | view all question</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
	 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <style type="text/css">
    	table{ width: 100%; border:1px solid;}
    	td,th{border:1px solid; padding: 10px; margin: 0;text-align: center;	}
    	.main_que,.expn{ width: 42%; text-align: center;}
    	.que{text-align: left;}
    </style>
</head>
<body class="w3-sand">
	<h1 style="text-align:center;" class="mt-3">Please Select Test Series Name</h1>
	<div class="container mt-3" style="width: 50%;" >
		<select id="test_list" class="form-control">
		
		</select>
		<button id="go" class="btn btn-primary mt-3">Go</button>
	</div>
	<div class="container mt-5" >
		<table>
			<thead><tr><th>QID</th><th class="main_que">QUESTION</th><th>ANSWER</th><th class="expn">EXPLAINATION</th></tr></thead>
			<tbody id="show_que">

			</tbody>
		
		</table>
	</div>

	<script  src="https://code.jquery.com/jquery-3.4.1.min.js"  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="   crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/udm/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			$.post(
				'selectListOfTest.php',
				function(data,status){
					$('#test_list').html(data);
			});

			$('#go').click(function(){
				var test_name=$('#test_list').val();
				$.post(
					'generateAllQuestion.php',
					{
						test_name:test_name
					},
					function(data,status){
						 $('#show_que').html(data);
						console.log('success');
				});
			});
		});
	</script>
</body>
</html>