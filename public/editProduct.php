<?php
/*
 * Редактирование товара
 */
require_once '../config/config.php';
$id = isset($_GET['id']) ? $_GET['id'] : false;
if (!$id) {
    echo 'id не передан';
    exit();
}
$product = getImage($id);
//die;
$description = $_POST['description'] ?? $product['description'];
$price = $_POST['price'] ?? $product['price'];
// Проверка, редактировался ли отзыв
/*
if ($author !== $review['author'] || $text !== $review['text']) {
    if ($author && $text) {
        // Редактируем отзыв
        if (updateReview($id, $author, $text)) {
            echo 'Комментарий изменен';
        } else {
            echo 'Произошла ошибка';
        }
    } elseif ($author || $text) {
        echo 'Форма не заполнена';
    }
}
echo '<hr>';
*/
?>
<h3><?= $product['name'] ?></h3>
<form method="POST">
    <span>Описание: </span><textarea name="description"><?= $description ?></textarea><br><br>
    <span>Цена: </span><input type="number" name="author" value="<?= $price ?>"><br><br>
    <input type="submit" value="Отправить">
</form>
<!-- Возврат из формы редактирования -->
<a href="gallery.php">Обратно в товары</a><br>
<a href="index.php">На главную</a>