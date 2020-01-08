<?php
/*
 * Файл для тестирования функций
 */
require_once '../config/config.php';

$testResult = getImages('SELECT * FROM gallery ORDER BY `views` DESC');
echo renderGallery(5, $testResult);