<?php

include('lib/_function.php');
include('lib/_classes.php');

$content['title'] = 'Пользователи';
$content['mainmenu'] = mainmenu($mainmenu, 'Пользователи');
$table = 'users';
$obj = new Users();

include 'lib/_template.php';