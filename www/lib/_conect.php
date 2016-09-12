<?php

try {
	$dbh = new PDO("mysql:host=". $host . ";dbname=". $db_name, $mysqllogin, $mysqlpassword);
	$dbh->query("set names 'utf8'");
} catch (PDOException $e) {
	echo 'Ошибка '.$e.getMessage();
}
