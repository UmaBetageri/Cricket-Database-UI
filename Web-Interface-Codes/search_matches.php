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
	<title>Search Matches</title>
</head>
<body>
	<h3> <br><?php echo("{$_SESSION["name"]}"); ?>, <br><h5>Please select the cricket format, league name and year to see match details of a league </h5></h3>
	<br>
	<form method="post" action="search_matches_result.php">
		<label for = "cricket_type"><b>Cricket Format</b></label>
		<select name = "cricket_type">
			<option value = "Select">Select</option>
			<option value = "ODI">ODI</option>
			<option value = "T20">T20</option>
			<option value = "Test">Test</option>
		</select>
		<br><br>
		<label for = "league"><b>League Name</b></label>
		<select name = "league">
			<option value = "Select">Select</option>
			<option value = "ICC Cricket World Cup">ICC Cricket World Cup</option>
			<option value = "ICC Men's T20 World Cup">ICC Men's T20 World Cup</option>
			<option value = "ICC Champions Trophy">ICC Champions Trophy</option>
			<option value = "ICC World Test Championship">ICC World Test Championship</option>
		</select>
		<br><br>
		<label for = "year"><b>League Year</b></label>
		<select name = "year">
			<option value = "Select">Select</option>
			<option value = "2013">2013</option>
			<option value = "2015">2015</option>
			<option value = "2016">2016</option>
			<option value = "2017">2017</option>
			<option value = "2019">2019</option>
			<option value = "2021">2021</option>
		</select>
		<br><br>
		<input type="submit" value="Go!">
	</form>
	<br>
	<form method="post" action="index.php">
		<label for = "home"><h6></h6></label>
		<input type="submit" value="Home">
	</form>
</body>
</html>