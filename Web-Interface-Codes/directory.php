<?php

session_start();

if ($_POST["name"] == null) {
	die("<h3>Please add your name in home page and come back to this page. <a href=\"index.php\">Home Page</a></h3>");
} 

$_SESSION['name'] = $_POST['name']

?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.7.4/css/foundation.min.css">
	<title>Directory</title>
</head>
<body> 
	<h3> Hello <?php echo("{$_POST["name"]},"); ?></h3>
	<p><h6>Here you have options to choose between various services provides by this website. </h6></p>
	<form method="post" action="search_matches.php">
		<label for = "option_1"><h6><b>Do you want to see match details of a tournament? </b></h6></label>
		<input type="submit" value="Yes">
	</form>
	<br>
	<form method="post" action="search_player_stats.php">
		<label for = "option_2"><h6><b>Do you want to see players' stats?</b></h6></label>
		<input type="submit" value="Yes">
	</form>
	<br><br>
	<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Cricket_World_Cup_2015_%2816593393546%29.jpg/640px-Cricket_World_Cup_2015_%2816593393546%29.jpg"  width="400" height="400">
	<br><br>
	<form method="post" action="index.php">
		<label for = "home"><h6></h6></label>
		<input type="submit" value="Home">
	</form>
</body>
</html>