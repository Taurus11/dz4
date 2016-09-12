<?php

include('lib/_function.php');
include('lib/_classes.php');

$content['title'] = 'Товары';
$content['mainmenu'] = mainmenu($mainmenu, 'Товары');
$table = 'products';
$obj = new Products();

include 'lib/_template.php';