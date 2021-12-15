<!-- Изображение -->
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
    <title>{{NAME}}</title>
</head>
<body>
    <header>
        <ul>
            <li><a href="/">Редактировать</a></li>
        </ul>
    </header>
    <h3>{{NAME}}</h3>
    <div class="container">
        <div class="img">
            <img src="{{URL}}" alt="{{NAME}}">
        </div>
        <div class="txt">
            <span>{{DESCRIPTION}}</span>
            <p>Просмотров: {{VIEWS}}</p>
            <p><b>Цена: {{PRICE}}</b></p>
            <a href="/gallery.php"><< Назад</a>
        </div>
    </div>
    <br>
</body>
</html>
