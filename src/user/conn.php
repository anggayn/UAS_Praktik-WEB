<?php
 
//MySQLi Procedural
$conn = mysqli_connect("localhost","root","","animal_care");
if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}
 
?>