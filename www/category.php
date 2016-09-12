<?php

include('lib/_function.php');
include('lib/_classes.php');

$content['title'] = 'Категории заказов';
$content['mainmenu'] = mainmenu($mainmenu, 'Категории');
$table = 'category';

$obj = new Category();

include "lib/_template.php";