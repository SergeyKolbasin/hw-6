<?php
/*
 * Редактирование отзыва
 */
require_once '../config/config.php';

// Проверка и защита id отзыва
$id = isset($_GET['id']) ? $_GET['id'] : false;
if (!$id) {
    echo 'id не передан';
    exit();
}

$review = getReview($id);       // Выборка отзыва

// Проверка существования отзыва с данным идентификатором
    if (is_null($review)) {
    echo 'Записи с id=' . $id . ' не существует';
    exit();
}
var_dump($review);
    
    