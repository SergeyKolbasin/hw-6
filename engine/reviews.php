<?php
/*
 * Функции для работы с отзывами
 */

/**
 * Получение отзывов из БД
 * @param   string  $sql    Выражение sql-запроса для получения отзывов
 * @return  array           Массив с отзывами
 */
function    getReviews() {
    $sql = "SELECT * FROM gallery_reviews ORDER BY `gallery_reviews`.`date` DESC";
    return getAssocResult($sql);
}

/** Отображение отзывов на страницу
 *
 * @param   array   $reviews    Массив отзывов
 * @return  text                HTML-код отзывов
 */
function renderReviews($reviews)
{
    $reviews = getReviews();
    echo '<div class=\"reviews\">';
    foreach($reviews as $review) {
        echo $review['author'] . ':' . $review['text'];
        echo '<br>';
    }
    echo '<div>';
    //return $reviewsContent;
}