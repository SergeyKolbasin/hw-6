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
$name = $_POST['name'] ?? $product['name'];
$description = $_POST['description'] ?? $product['description'];
$price = $_POST['price'] ?? $product['price'];
// Проверка, редактировались ли параметры товара
if ($name !== $product['name'] || $description !== $product['description'] || $price !== $product['price']) {
    if ($name && $description && $price) {
        // Редактируем товар
        if (updateProduct($id, $name, $description, $price) == 1) {     // запросом д/б затронута только одна запись
            echo 'Товар изменен';
        } else {
            echo 'Произошла ошибка';
        }
    } elseif ($name || $description || $price) {
        echo 'Форма не заполнена';
    }
}
echo '<hr>';
?>
<!doctype>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <style type="text/css">
        .img {
            float: left;
            margin-right: 1%;
        }
    </style>
    <title><?= $product['name'] ?></title>
</head>
<body>
<h3><?= $product['name'] ?></h3>
<div class="container">
    <div class="img">
        <img src="<?= $product['url'] ?>" alt="<?= $product['name'] ?>" width="800" height="600">
    </div>
</div>
<br>

<form method="POST">
    <span>Наименование: </span><input type="text" name="name" size="35" value="<?= $name ?>"><br><br>
    <fielset>
        <legend>Описание:</legend>
        <textarea name="description" cols="50" rows="15"><?= $description ?></textarea>
    </fielset>
    <br><br>
    <span>Цена: </span><input type="number" name="price" value="<?= $price ?>" min="0" step="0.01"><br><br>
    <input type="submit" value="Отправить">
</form>
<!-- Возврат из формы редактирования -->
<a href="/gallery.php"><< Назад</a><br>
<a href="index.php">На главную</a>
</body>