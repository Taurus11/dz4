<?php

include('lib/_function.php');
include('lib/_classes.php');

$content['title'] = 'Состав заказов';
$content['mainmenu'] = mainmenu($mainmenu, 'Состав заказов');
$table = 'order_items';
$obj = new Order_items();

include "lib/_template.php";