<!-- Добавление нового товара -->
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
    <title>Новый товар</title>
</head>
<body>
<h3>Новый товар</h3>
<!--
<div class="container">
    <div class="img">
        <img src="<?= $product['url'] ?>" alt="<?= $product['name'] ?>" width="800" height="600">
    </div>
</div>
<br>
-->
<form enctype="multipart/form-data" method="POST">
    <span>Наименование: </span><input type="text" name="name" size="35"><br><br>
    <fielset>
        <legend>Описание:</legend>
        <textarea name="description" cols="50" rows="15"></textarea>
    </fielset>
    <br><br>
    <span>Цена: </span><input type="number" name="price" min="0" step="0.01"><br><br>
    <input type="hidden" name="MAX_FILE_SIZE" value="30000000">
    <span>Загрузить этот файл: </span><input type="file" name="userfile"><br><br>
    <input type="submit" value="Отправить">
</form>
<!-- Возврат из формы редактирования -->
<a href="/gallery.php"><< Назад</a><br>
<a href="index.php">На главную</a>
</body>

<?php
/*
 * Добавление нового товара
 */

require_once '../config/config.php';

$name = $_POST['name'] ?? '';                           // наименование товара
$description = $_POST['description'] ?? '';             // описание товара
$price = $_POST['price'] ?? '';                         // цена товара
/*
$url = $product['url'];                                             // фото товара
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
if (!empty($_FILES)) {
    // Если выбран файл для загрузки
    if (isset($_FILES['userfile']) && ($_FILES['userfile']['error']) !== UPLOAD_ERR_NO_FILE) {
        echo 'Выбран файл<br>';
        var_dump($_FILES);
        // Загружаем файл на сервер
        $upload_dir = PRODUCT_DIR;
        //$upload_file = $upload_dir . basename($_FILES['userfile']['name']);
        $upload_file = $url;
        // Переносим временный файл
        if (move_uploaded_file($_FILES['userfile']['tmp_name'], $upload_file)) {
            echo 'Файл корректен и был успешно загружен.';
        } else {
            echo 'Возможная атака с помощью фаловой загрузки';
        }

        // и возможно обновить страницу с новым фото
    }
}

echo '<hr>';
*/
?>