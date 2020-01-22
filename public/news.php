<?php
/*
 * Отображение страницы новостей
 */
require_once '../config/config.php';

$news = getNews();
$content = renderNews($news);
echo  render(TEMPLATES_DIR . 'news.tpl', [
    'title'     =>  'Новости',
    'h3'        =>  'Новости'
]);