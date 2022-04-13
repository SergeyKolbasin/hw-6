<?php
/*
 * Функции для работы с новостями
 */

/** Получение новостей из БД
 *
 * @return  array           Массив с новостями
 */
function getNews():array
{
    $sql = "SELECT * FROM gallery_news ORDER BY `gallery_news`.`date` DESC";
    return getAssocResult($sql);
}

/** Отображение новостей на страницу
 *
 * @param   array   $news   Массив новостей
 * @return  string          HTML-код новостей
 */
function renderNews(
    array   $news = []
):string
{
    $newsContent = '';
    foreach($news as $newsItem) {
        $newsContent .= render(TEMPLATES_DIR . 'newsItem.tpl', $newsItem);
    }
    return $newsContent;
}