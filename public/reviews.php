<?php
    /*
     * Отображение страницы отзывов
     */
    require_once '../config/config.php';
    
    $reviews = getReviews();
    $content = renderReviews($reviews);
    echo  render(TEMPLATES_DIR . 'reviews.tpl', [
        'title'     =>  'Отзывы',
        'h3'        =>  'Отзывы',
        'content'   =>  'На этой странице публикуются отзывы о нашем зоопарке',
    ]);
    
    echo renderReviews($reviews);
