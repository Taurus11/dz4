<?php

include('lib/_function.php');
include('lib/_classes.php');

$content['title'] = 'Заказы';
$content['mainmenu'] = mainmenu($mainmenu, 'Заказы');

$table = 'orders';
$obj = new Orders();

include 'lib/_template.php';