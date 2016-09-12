<?php
include('_config.php');
include('_map.php');
include('_conect.php');

function showPage($content)
{
    $template = file_get_contents('layout/_index.html');

    foreach ($content as $key => $value) {
        $template = str_replace("{%$key%}", $value, $template);
    }
    echo $template;
}

function mainmenu($mainmenu, $active)
{
    $html = '<ul class="nav nav-pills">';
    foreach ($mainmenu as $key => $value) {
        if ($key == $active) {
            $html .= '<li role="presentation" class="active"><a href="' . $value . '">' . $key . '</a></li>';
        } else {
            $html .= '<li role="presentation"><a href="' . $value . '">' . $key . '</a></li>';
        }
    }
    $html .= '</ul>';
    return $html;
}

function showTable($table, $data, $access = Array(1, 1, 1))
{
    $temp = $GLOBALS['map'][$table];
    $id = 0;

    $html = '<div class="container-fluid"><div class="row"><div class="col-lg-12"><table class="table table-hover"><thead><tr>';
    foreach ($temp as $key => $value) {
        $html .= '<th>' . $value . '</th>';
    }
    $html .= '</tr></thead><tbody>';
    foreach ($data as $key => $value) {
        $html .= '<tr>';
        foreach ($value as $k => $val) {
            $link = explode('_', $k);
            if ($link[0] == 'id' && !empty($link[1])) {
                if ($link[1] == 'catalog') $link[1] = 'category'; else $link[1] .= 's';
                $html .= '<td><a href="' . $link[1] . '.php?action=detail&id=' . $val . '">' . $val . '</a></td>';
            } else {
                $html .= '<td>' . $val . '</td>';
            }
            if ($k == 'id') $id = $val;
        }
        if ($access[0]) $html .= '<td><a href="' . $table . '.php?action=detail&id=' . $id . '">Подробнее</a></td>';
        if ($access[1]) $html .= '<td><a href="' . $table . '.php?action=edit&id=' . $id . '">Редактировать</a></td>';
        if ($access[2]) $html .= '<td><a href="' . $table . '.php?action=delete&id=' . $id . '">Удалить</a></td>';
        $html .= '</tr>';
        $id = 0;
    }
    $html .= '</tbody></table></div></div></div>';
    return $html;
}

function showMessage($type, $message)
{
    if ($type == 'info') {
        $html = '<div class="alert alert-info" role="alert">' . $message . '</div>';
    } elseif ($type == 'error') {
        $html = '<div class="alert alert-danger" role="alert">' . $message . '</div>';
    } elseif ($type == 'success') {
        $html = '<div class="alert alert-success" role="alert">' . $message . '</div>';
    }
    return $html;
}