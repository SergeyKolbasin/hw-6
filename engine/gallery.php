<?php
/*
 * Функции работы с галереей
 */
require_once '../config/config.php';

/** Функция формирует и возвращает HTML-код отображения галереи
 *
 * @param   array   $fArrayImages   Массив с информацией о фотографиях - выборка из БД
 * @param   integer $fColumns       Количество столбцов в строке
 * return   html                    HTML документ отображения галереи
 */
function renderGallery(
    $fArrayImages = [],      // Массив с иформацией о фотографиях - выборка из БД
    $fColumns = 3            // Количество столбцов в строке по умолчанию
)
{
    // ПЕРЕМЕННЫЕ
    $urls = $fArrayImages;   // Массив фото
    $k = 0;                  // Счетчик картинок в строке
    $result = '';            // Формируемый HTML-код отображения галереи
    
    // КОД
    $result .= '<table>';                                               // Открывем тег таблицы
    //  Цикл по всем файлам в галерее
    foreach ($urls as $url) {
        if ($k % $fColumns == 0) echo '<tr>';                                               // Добавляем строку
        $result .= '<td>';                                                                  // Начинаем столбец
            $result .= '<a href=image.php?id=' . strval($url['id']) . '>';        // Формируем ссылку
            $result .= '<img src=' .  $url['url'] . ' alt=' . $url['name'] . ' width="100"/>';  // Формируем превью
            $result .= '</a>';                                                              // Закрываем ссылку
        $result .= '</td>';                                                                 // Закрываем столбец
        if ((($k + 1) % $fColumns == 0)) {                          // Переходим на следеющею строку при заполнении
            $result .= '</tr>';                                 // Закрываем тег строки
        }
        $k++;                       // Увеличиваем  счётчик картинок в строке
    }
    $result .= '</table>';          // Закрываем тег таблицы
    return $result;                 // Возвращаем HTML-код отображения галереи
}

/** Функция получает выборку из БД об отображаемых фото
 *
 * @param   string  $sql    Выражение SQL-запроса
 * @param   string  $sql    Выражение SQL-запроса
 * @return  array           Массив с информацией об отображаемых фотографиях
 */
function getImages($sql)
{
    $result = getAssocResult($sql);     // Получаем инфу из БД
    return $result;                     // и возвращаем ее ассоциативным массивом
}

/** Функция получает информацию об одном фото по его id
 *
 * @param   integer    $id    Идентификатор фотографии
 * @return  array             Массив с информацией об отображаемой фотографии
 */
function getImage($id)
{
    $id = (int)$id;                                     // Превращаем id в число
    $sql = "SELECT * FROM `gallery` WHERE `id` = $id";  // Формируем SQL-запрос
    return getSingle($sql);                             // и возвращаем результат, выполняя его
}

/** Функция возвращает HTML-код отображения страницы фото из БД по его id
 *
 * @param   integer     $id     Идентификатор отображаемой фотографии
 * @return  array               HTML-код отображения страницы с фото
 */
function showImage($id)
{
    $id = (int)$id;                                             // Преобразуем id в число
    $image = getImage($id);                                     // Получаем информацию о фото
    if (empty($image)) {                                        // Если информация о фото отсутствует в базе
        echo "Ошибка 404, фотографии с id=$id нет в базе!";             // Выводим сообщение об ошибке
        die;
    }
    if (!file_exists($image['url'])) {                                     // Если запрашиваемый файл отсутствует
        echo 'Ошибка 404, файл "' . $image['url'] . '" отсутствует!';      // Выводим сообщение об ошибке
        die;
    }
    $image['views']++;                                      // Увеличиваем количество просмотров на 1
    updateViews($id, $image['views']);                      // Запишем их в БД
    return render(TEMPLATES_DIR . 'product.tpl', $image);     // Возвращаем HTML-код отображения страницы с фото
}

/** Функция записывает количество просмотров фото заданного $id в БД
 *
 * @param   intger      $id     Идентификатор фотографии
 * @param   integer     $views  Количество записываемых просмотров
 * @return  boolean             Результат обновления записи таблицы
 */
function updateViews(
    $id,                // id фотографии
    $views              // Количество записываемых просмотров
)
{
    $id = (int)$id;                                                       // Преобразуем $id в число
    $viewsStr = strval($views);                                           // Число преобразем в строку
    $sql = "UPDATE `gallery` SET `views`=$viewsStr WHERE `id` = $id";     // Формируем SQL-запрос
    return execQuery($sql);                                               // Выполняем его
}