<?php

session_start();

	if (!(isset($_SESSION['name']))){
		die("<h3>Sorry, you need to enter your name on the homepage before proceeding. <a href=\"index.php\">Home Page</a></h3>");
	}
	
	if ($_POST["cricket_typ"] == "Select") {
		die("<h3>Please choose the Cricket Type. <a href=\"search_player_stats.php\">Search</a></h3>");
		} 
	if ($_POST["team"] == "Select") {
		die("<h3>Please choose the League Name. <a href=\"search_player_stats.php\">Search</a></h3>");
		} 
?>


<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Search Results</title>
	<link rel="stylesheet" type="text/css" href="https://dgoldberg.sdsu.edu/686/table_style.css">
</head>
<body>
	<table>
		<tr>
			<th>Player Name</th><th>Player Type</th><th>Matches Played</th><th>Total Runs</th><th>Batting Average</th><th>Total Wickets</th>
		</tr>
<?php

# Set up parameters to connect to database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ICC_Crickets";

# Create connection to database
$conn = mysqli_connect($servername, $username, $password, $dbname);

# Check the connection was successful
if (!$conn) {
	die(mysqli_connect_error());
}

# Sanitize user input
$cleaned_type = mysqli_real_escape_string($conn, $_POST["cricket_type"]);
$cleaned_team = mysqli_real_escape_string($conn, $_POST["team"]);


# SQL query to run
$sql = <<<SQL
CALL Players_Stats("{$cleaned_type}",  {$cleaned_team});
SQL;

# Send SQL query to the database
$result = mysqli_query($conn, $sql);

# Fetch results from the SQL query
# OPTIONAL: MYSQLI_ASSOC setting
# Without this setting, the fields numbered. The first field is [0], the second is [1], etc.
# With this setting, the fields are named. First name is ["First_Name"], etc.
$data = mysqli_fetch_all($result, MYSQLI_ASSOC);

$no_of_records = count($data);
if ($no_of_records > 1) {
	echo("<h4>Players Stats for {$cleaned_type} Cricket Matches.</h4>");
}
else {
	echo("<h4>This team has not played for this type of cricket<h4>");
}


# Loop through query results row-by-row
# Each row will be stored in the $row variable
foreach ($data as $key => $value) {
	echo("<tr><td>{$value["Player_Name"]}</td><td>{$value["Player_Type"]}</td><td>{$value["Matches_Played"]}</td><td>{$value["Total_Runs"]}</td><td>{$value["Batting_Average"]}</td><td>{$value["Total_Wickets"]}</td></tr>");
}

?>
	</table>
	<form method="post" action="search_player_stats.php">
		<label for = "option_2"><h4>Do you want search player stats for other teams?</h4></label>
		<input type="submit" value="Yes">
	</form>
	<br>
	<form method="post" action="index.php">
		<label for = "home"><h3></h3></label>
		<input type="submit" value="Home">
	</form>
<body>
</html>