-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 07 2022 г., 17:46
-- Версия сервера: 10.4.22-MariaDB
-- Версия PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `jetsaus`
--

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

CREATE TABLE `gallery` (
  `id` smallint(5) UNSIGNED NOT NULL COMMENT 'id товара',
  `id_category` smallint(5) NOT NULL COMMENT 'id категории товара',
  `url` varchar(255) NOT NULL COMMENT 'Расположение фотографии животного',
  `size` int(10) UNSIGNED NOT NULL COMMENT 'Размер в байтах демонстрационной картинки',
  `name` varchar(255) NOT NULL COMMENT 'Наименование товара',
  `description` varchar(1024) DEFAULT NULL COMMENT 'Описание товара',
  `views` smallint(5) DEFAULT NULL COMMENT 'Количество просмотров',
  `price` decimal(5,2) UNSIGNED NOT NULL COMMENT 'Цена товара'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`id`, `id_category`, `url`, `size`, `name`, `description`, `views`, `price`) VALUES
(1, 0, 'img/product/1.jpg', 170934, 'Дельфин', 'Дельфины (др.-греч. δελφῖνος, δελφίς) — водные млекопитающие инфраотряда китообразных, принадлежащие либо к семейству дельфиновых (Delphinidae) — морские, либо к надсемейству речных дельфинов (Platanistoidea) — пресноводные.', 39, '127.00'),
(2, 0, 'img/product/2.jpg', 98882, 'Лисица', 'Лисица — общее название нескольких видов млекопитающих семейства псовые. Лишь 10 видов этой группы относят к роду собственно лисиц (лат. Vulpes). Наиболее известный и распространённый представитель — обыкновенная лисица (Vulpes vulpes).', 32, '19.50'),
(3, 0, 'img/product/3.jpg', 372746, 'Коала', 'Коала (лат. Phascolarctos cinereus) — вид сумчатых, обитающий в Австралии. Единственный современный представитель семейства коаловых (Phascolarctidae) из отряда двурезцовых сумчатых (Diprotodontia).', 25, '56.09'),
(4, 0, 'img/product/4.jpg', 339981, 'Лев', 'Лев (лат. Panthera leo) — вид хищных млекопитающих, один из четырёх представителей рода пантер (Panthera), относящегося к подсемейству больших кошек (Pantherinae) в составе семейства кошачьих (Felidae). Наряду с тигром — самая крупная из ныне живущих кошек, масса некоторых самцов может достигать 250 кг.', 25, '45.68'),
(5, 0, 'img/product/5.jpg', 442827, 'Рысь', 'Рысь (лат. Lynx) — род хищных млекопитающих семейства кошачьих, наиболее близкий к роду кошек (Felis).', 27, '67.12'),
(6, 0, 'img/product/6.jpg', 365881, 'Панда', 'Панда (лат. Ailuridae) — семейство млекопитающих из подотряда псообразные (Caniformia) отряда хищных. Включает семь вымерших и один современный род. Единственный современный вид — малая, или красная панда (Ailurus fulgens).', 26, '90.43'),
(7, 0, 'img/product/7.jpg', 254168, 'Белый медведь', '\'Белый медведь, или полярный медведь, северный медведь, ошкуй, нанук, умка (лат. Ursus maritimus — «медведь морской») — хищное млекопитающее семейства медвежьих, близкий родственник бурого медведя. Второй по величине сухопутный хищник планеты после гребнистого крокодила. Назван так из-за белой шерсти.', 26, '89.33'),
(8, 0, 'img/product/8.jpg', 225933, 'Пума', 'Пума (горный лев, кугуар) (лат. Puma concolor) — хищник рода Пумы семейства кошачьих. Обитает в Северной и Южной Америке. Самый крупный представитель рода пум. Длина тела животного составляет 100—180 см, при длине хвоста 60—75 см, высоте в холке 61—76 см при весе до 105 кг (самцы). Охотится преимущественно на оленей.', 27, '78.45'),
(9, 0, 'img/product/9.jpg', 359751, 'Тигр', 'Тигр (лат. Panthera tigris) — вид хищных млекопитающих семейства кошачьих, один из четырёх представителей рода пантера (лат. Panthera), который относится к подсемейству больших кошек. Слово «тигр» происходит от др.-греч. τίγρις, которое в свою очередь восходит к др.-перс. *tigri от корня «*taig» со значением «острый; быстрый».', 28, '110.00'),
(10, 0, 'img/product/10.jpg', 220331, 'Волки', 'Волк, или серый волк, или обыкновенный волк (лат. Canis lupus), — вид хищных млекопитающих из семейства псовых (Canidae). Наряду с койотом (Canis latrans), обыкновенным шакалом (Canis aureus) и ещё несколькими видами составляет род волков (Canis).Dолк — одно из самых крупных современных животных в своём семействе: длина его тела (без учёта хвоста) может достигать 160 см, длина хвоста — до 52 см, высота в холке — до 90 см; масса тела может доходить до 90—100 кг.', 29, '120.67'),
(11, 0, 'img/product/11.jpg', 134743, 'Скунс', 'Полосатые скунсы (лат. Mephitis) — род хищных млекопитающих семейства скунсовых, включающий в себя всего два вида: полосатого скунса и мексиканского скунса.\r\nПолосатый скунс (лат. Mephitis mephitis) — зверёк средней величины и крепкого сложения. Длина его тела 28—38 см, длина хвоста обычно 17—30 см (иногда достигает 43 см); масса взрослого животного лежит в диапазоне от 1,2 до 5,3 кг. Самцы обычно на 10—15 % крупнее самок. Лапы короткие, стопоходящие, со слабо изогнутыми когтями. Когти передних лап длинные, приспособленные для рытья; задние лапы — короче. Уши короткие, с широким основанием и закруглёнными верхушками.\r\nМех у скунса высокий, очень густой, но грубый. Хвост длинный и лохматый. Окраска — сочетание тёмного (чёрного) и белого цветов: на общем тёмном фоне выделяются широкие белые полосы, начинающиеся на голове и идущие вдоль хребта к хвосту, который обычно покрыт чёрными и белыми волосами вперемешку. Ширина и длина полос отличаются у каждой особи; иногда встречаются совершенно чёрные или, нап', 8, '12.50'),
(12, 0, 'img/product/12.jpeg', 119960, 'Обезьяна', 'Обезья́ны, или «сухоносые» приматы(лат. Haplorhini), — подотряд млекопитающих из отряда приматов.\r\nОбезьяны отличаются по ряду признаков от другого подотряда приматов — полуобезьян. У гаплориновых приматов сухой нос и менее развитое чувство обоняния. Среди обезьян преобладают виды, рождающие одного детёныша. В целом, этот подотряд считается более развитым в эволюционном отношении.\r\nОбезьяны обитают в тропических и субтропических регионах Америки, Африки (за исключением Мадагаскара), в Гибралтаре, а также в Южной и Юго-Восточной Азии вплоть до Японии. Человек населяет все континенты за исключением Антарктиды (где не живёт постоянно, но постоянно присутствует).\r\nУ большинства обезьян белки глаз обычно чёрные, как и зрачки (у людей — белые, что контрастирует со зрачками). Обезьяны отличаются от полуобезьян дневным образом жизни, сложным поведением, всеядностью с уклоном в растительноядность. С этим связаны их многие морфологические особенности, например, сложно устроенный мозг.', 9, '78.23'),
(13, 0, 'img/product/13.jpg', 106075, 'Кит', 'Киты́ (греч. κῆτος — «морское чудовище») — морские млекопитающие из инфраотряда китообразных, не относящиеся ни к дельфинам, ни к морским свиньям. Косатка и гринды имеют слово «кит» в своих неофициальных названиях («кит-убийца»), хотя по строгой классификации они являются дельфинами. В устаревшей классификации под китами подразумевали гладких китов (лат. Balaenidae).\r\nВ старину под словом «кит» иногда подразумевался левиафан.\r\nЛевиафа́н (др.-евр. לִוְיָתָן, совр. ивр. ‏לִװײָתָן‏‎, ливъята́н — «скрученный, свитый»; совр. значение — «кит») — морское чудовище, упоминаемое в Танахе (Ветхом Завете).', 9, '215.00'),
(14, 0, 'img/product/14.jpg', 372746, 'Хорёк', 'Лесной хорёк, или обыкновенный хорёк, или чёрный хорёк, или обыкновенный хорь, или тёмный хорь, или чёрный хорь(лат. Mustela putorius) — обитатель Евразийского континента. Имеет одомашненную форму — фретка (Mustela furo, иногда рассматривается как подвид Mustela putorius furo). Они свободно скрещиваются и дают разные цветовые вариации. Чёрный хорёк широко распространён по всей Западной Европе, хотя территория его обитания постепенно сокращается. Довольно большая популяция хорьков проживает в Англии (название в Британии — Polecat) и почти на всей территории Европейской части России, кроме Северной Карелии, Кавказа, Нижнего Поволжья. В конце XIX века его находили в районах Западной Сибири (на восток до левобережья Иртыша и низовий Тары). В последние десятилетия появилась информация о расселении чёрного хорька в леса Финляндии и Карелии. Также чёрный хорёк обитает в лесах северо-запада Африки.\r\nВ своё время чёрный хорёк вместе с с фретками и ласками был перевезён в Новую Зеландию для борьбы с мышами и крысами. О', 3, '12.24');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id товара', AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
