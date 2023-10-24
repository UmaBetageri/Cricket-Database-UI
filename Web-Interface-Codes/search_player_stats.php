<?php

session_start();

if (!(isset($_SESSION['name']))) {
	die("<h3>Sorry, you need to enter your name on the homepage before proceeding. <a href=\"index.php\">Home Page</a></h3>");
}


?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<title>Player Stats</title>
</head>
<body>
	<h3> <br> <?php echo("{$_SESSION["name"]},"); ?> <br><br> <h5>Please choose cricket format and team to see players' stats of that team.</h5></h3>
	<br>
	<form method="post" action="search_player_stats_result.php">
	<label for = "cricket_type"><b>Cricket Format</b></label>
		<select name = "cricket_type">
			<option value = "Select">Select</option>
			<option value = "ODI">ODI</option>
			<option value = "T20">T20</option>
			<option value = "Test">Test</option>
		</select>
		<br><br>
	<label for = "team"><b>Select Team</b></label>
		<select name = "team">
			<option value = "Select">Select</option>
			<option value="1">India</option>
			<option value="2">Pakistan</option>
			<option value="3">England</option>
			<option value="4">Australia</option>
			<option value="5">New Zealand</option>
			<option value="6">Sri Lanka</option>
			<option value="7">South Africa</option>
			<option value="8">West Indies</option>
			<option value="9">Bangladesh</option>
			<option value="10">Afghanistan</option>
		</select>
		<br><br>
		<input type="submit" value="Go!">
	</form>
	<br><br>
	<form method="post" action="index.php">
		<label for = "home"><h6></h6></label>
		<input type="submit" value="Home">
	</form>
</body>
</html>