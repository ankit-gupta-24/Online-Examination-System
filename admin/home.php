<?php
session_start();
if (!isset($_SESSION['loggedin'])) {
	header("Location: ./index.html");
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Admin Panel</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
	 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="./style.css">
    <style type="text/css">
      #navbarSupportedContent ul li a{font-size: 16px; color: black; font-weight: 500;}
      #navbarSupportedContent ul li{ padding-left: 5px;padding-right: 5px; text-align: center;}
      #navbarSupportedContent ul li:hover{background-color: #ddd; border-radius: 2rem;}
      #navbarSupportedContent ul li:hover a{color: maroon;}
      #footer{  position:fixed;   bottom:0;   width:100%;  background-color:gray; padding:10px;}
      /*#footer { width:100%;}*/
      #footer center a{color:white;}
      /*#addAdminForm{width: 100%; margin-left: 0;}*/
    </style>
</head>
<body id="body">
<nav class="navbar navbar-expand-lg navbar-light bg-light ">
  <a class="navbar-brand" href="./home.php"><b>Welcome&nbsp;&nbsp;<?=$_SESSION['name'];?>&nbsp;&nbsp;</b><span class="badge badge-pill badge-primary">&#x2713;</span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent" >
    <ul class="navbar-nav ml-auto">
      <li class="nav-item mr-3">
        <a class="nav-link" href="./home.php" id="dashboard">Dashboard</a>
      </li>
      <li class="nav-item mr-3">
        <a class="nav-link" href="#" id="addTestLink">Add Test Series</a>
      </li>
      <li class="nav-item mr-3">
        <a class="nav-link" id="deleteTestLink" href="#">Delete Test Series</a>
      </li>
      <li class="nav-item mr-3">
        <a class="nav-link" href="#" id="addQuestionLink">Add Question</a>
      </li>
      <li class="nav-item mr-3">
        <a class="nav-link" href="viewAllQuestion.php" id="viewQuestionLink">View Questions</a>
      </li>
      <li class="nav-item mr-3">
        <a class="nav-link" id="addAdminLink" href="#">Add New Admin</a>
      </li>
      <li class="nav-item mr-3">
        <a class="nav-link" href="./logout.php">Logout</a>
      </li>
     </ul>
  </div>
</nav>


<script  src="https://code.jquery.com/jquery-3.4.1.min.js"  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="   crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/udm/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<div class="container mt-5" id="addAdminForm">
	
</div>
<div id='footer'>
    <center><a href='https://ipsacademy.org'>https://www.ipsacademy.org</a></center>
</div>

    <script type="text/javascript">
    	$("#addAdminLink").click(function () {
    			$.post(
    				"generateAddAdminForm.php",
    				{

    				},
    				function(data,status){
    					$(".container").html(data);
    			});
    		});

      $("#addTestLink").click(function () {
          $.post(
            "generateAddTestForm.php",
            {

            },
            function(data,status){
              $(".container").html(data);
          });
        });

      $("#addQuestionLink").click(function () {
          $.post(
            "generateAddQuestionForm.php",
            {

            },
            function(data,status){
              $(".container").html(data);
          });
        });

      $("#deleteTestLink").click(function () {
          $.post(
            "generateDeleteTestForm.php",
            {

            },
            function(data,status){
              $(".container").html(data);
          });
        });

          $.post(
            "generateDashboard.php",
            {

            },
            function(data,status){
              $(".container").html(data);
          });
    </script>
</body>
</html>