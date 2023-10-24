<?php
	session_start();

  	if (isset($_SESSION["name"])){
	session_destroy();
	}
?>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style> h3 {text-align: center;}</style>
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<title>Home Page</title>
</head>
<body>
	<br>
	<h3>Wellcome to International Cricket Club</h3><br>
	<p>Cricket is one of the most famous international sports and was played in the mid 16th century for the first time. 
		It is a bat and ball game played between two teams of eleven players each. The batting side's players score runs 
		by striking the bowl with the bat and running between the wickets placed on both ends of a 22-yard pitch in the 
		center of a field. Bowling side tried to prevent this by keeping the ball within the field and getting it to either 
		of the wickets and dismissing each batter. International Cricket Council (ICC) is the governing body of this sport 
		with more than 100 members. This game is played in different formats internationally such as ODI (One Day International), 
		T20, and Test. </p>
	<p1>This website provides you the details of all the previous tournamnets such as match details, players stats etc.,</p1>
	<br><br>
	<form method="post" action="directory.php">
		<label for = "name"><h6><b>Please enter your name to proceed</b></h6>  </label>
		<input type="text" name="name">
		<input type="submit" value="Go!">
	</form>
	<br><br>
	<center><img src="https://c.tenor.com/Q7nUEoE9AK4AAAAd/virat-kohli-cricket.gif"  width="400" height="300"></center>
</body>
</html>