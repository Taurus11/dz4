<?php

if ($action == '')
{
    $sth = $obj->find();
    $access = Array(1, 1, 1);
    $content['content'] .= showTable($table, $sth, $access);

} elseif ($action == 'detail') {

    $sth = $obj->findOne($id);
    if (empty($sth)) {
        $content['content'] .= showMessage('error', 'Категория не найдена!');
    } else {
        $access = Array(0, 1, 1);
        $content['content'] .= showTable($table, $sth, $access);
    }

} elseif ($action == 'edit') {

    $content['content'] .= showMessage('info', 'В разработке');

} elseif ($action == 'delete') {

    $sth = $obj->delete($id);
    if ($sth[0] == 0) {
        $sth = $obj->find();
        $access = [1, 1, 1];
        $content['content'] .= showTable($table, $sth, $access);
    } else {
        $content['content'] .= showMessage('error', $sth[2]);
    }
    
}

showPage($content);

