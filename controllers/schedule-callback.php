<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

define('SERVERNAME','');
define('SERVERPORT','');
define('DBUSERNAME','');
define('DBPASSWORD','');
define('DBNAME','');
define('BASE_URL',''); // With trailing slash


function db() {
	global $dbh;
	try {
	  $dbh = new PDO("mysql:host=".SERVERNAME.";dbname=".DBNAME, DBUSERNAME, DBPASSWORD);
	  $dbh->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
	}
	catch(PDOException $e) {
		echo "We are experiencing very heavy load at the moment. Please try again in 10 minutes.";
		file_put_contents('PDOErrors.txt', $e->getMessage(), FILE_APPEND);
		exit;
	}
}


if ($_POST['type'] == "delete") {

	db();

	$schedule_id = $_POST['scheduleVal'];

	$firstQuery = $dbh->prepare("DELETE FROM accounts_schedule WHERE schedule_id = ?");
	$firstQuery->execute(array( $schedule_id ));

	$secondQuery = $dbh->prepare("DELETE FROM accounts_queue WHERE schedule_id = ?");
	$secondQuery->execute(array( $schedule_id ));	

	$thirdQuery = $dbh->prepare("DELETE FROM schedules WHERE scheduleID = ?");
	$thirdQuery->execute(array( $schedule_id ));		
	
}

if ($_POST['type'] == "view") {

	db();

	$scheduleToView = $_POST['scheduleVal'];
	$dayCurrent = $_POST['dayCurrent'];

	$query = $dbh->prepare("SELECT time FROM accounts_schedule WHERE schedule_id = ? AND day = ?");
	$query->execute(array($scheduleToView, $dayCurrent));
	$times = $query->fetchAll();	


	echo json_encode($times);

}



?>

