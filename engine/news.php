<?php
/*
 * Функции для работы с новостями
 */

/** Получение новостей из БД
 * @param   string  $sql    Выражение SQL-запроса для получения новостей
 * @return  array           Массив с новостями
 */
function getNews()
{
    $sql = "SELECT * FROM gallery_news ORDER BY `gallery_news`.`date` DESC";
    return getAssocResult($sql);
}
