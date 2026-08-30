<?php
	// TODO: fill these in to match the MySQL database your LAMP stack creates
	define('DB_HOST', 'localhost');
	define('DB_USER', 'your_db_user');
	define('DB_PASS', 'your_db_password');
	define('DB_NAME', 'Colors');

	function getDbConnection()
	{
		return new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
	}

	function getRequestInfo()
	{
		return json_decode(file_get_contents('php://input'), true);
	}

	function sendResultInfoAsJson( $obj )
	{
		header('Content-type: application/json');
		echo $obj;
	}
?>
