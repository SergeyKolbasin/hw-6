<?php
/*
 * Файл для тестирования функций
 */
require_once '../config/config.php';

$arrID = enquireID();
foreach ($arrID as $key => $val) {
    echo (int)$val['id'] . ' ';
}
