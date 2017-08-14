<?php
  session_start(); /* Starts the session */

  if($_SESSION['Active'] == false){ /* Redirects user to Login.php if not logged in */
    header("location:login.php");
	  exit;
  }
?>
<!-- Show password protected content down here -->

<!-- Open Sans font -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

<style>
	.container {
		width: 33%;
		min-width: 300px;
		font-family: 'Open Sans', sans-serif;
		display: flex;
		justify-content: center;
	}
	
	.jumbotron .btn {
		padding: 8px 10px;
		text-align: center;	
		margin: 1px;
		width: 300px;
		max-width: 95%;
	}

	hr {
		width: 90%;
	}	
</style>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
    <title>steamboost_palone</title>
  </head>
  <body>
    <div class="container">
      <div class="jumbotron">
		<p><h2>Simple Steamboost Start and Stop</h2></p>
		<hr>
		<p><a class="btn btn-sm btn-success" href="start.php" role="button">Start Boost</a>
		<a class="btn btn-sm btn-warning" href="stop.php" role="button">Stop Boost</a></p>
		<p><a class="btn btn-sm btn-info" href="logout.php" role="button">Log out</a></p>
      </div>
    </div>
  </body>
</html>
