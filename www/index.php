<?php

include ('lib/_function.php');

$content['title'] = 'Главная страница';
$content['mainmenu'] = mainmenu($mainmenu,'Главная');
$content['content'] = '<p>База данных: '.$db_name.' Выберете таблицу</p>';

showPage($content);
