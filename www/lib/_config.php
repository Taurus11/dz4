<?php
$host = 'localhost';
$db_name = 'db';
$mysqlpassword = '';
$mysqllogin = 'root';

$action = ''; if (isset($_GET['action'])) $action = $_GET['action'];
$id = 0; if (isset($_GET['id'])) $id = $_GET['id'];
$field = ''; if (isset($_GET['field'])) $field = $_GET['field'];
$value = ''; if (isset($_GET['value'])) $value = $_GET['value'];