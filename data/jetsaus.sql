-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 03 2021 г., 14:00
-- Версия сервера: 10.4.17-MariaDB
-- Версия PHP: 7.4.13

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
  `id` smallint(5) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `views` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`id`, `url`, `size`, `name`, `description`, `views`) VALUES
(1, 'img/1.jpg', 170934, 'Дельфин', 'Дельфины (др.-греч. δελφῖνος, δελφίς) — водные млекопитающие инфраотряда китообразных, принадлежащие либо к семейству дельфиновых (Delphinidae) — морские, либо к надсемейству речных дельфинов (Platanistoidea) — пресноводные.', 27),
(2, 'img/2.jpg', 98882, 'Лисица', 'Лисица — общее название нескольких видов млекопитающих семейства псовые. Лишь 10 видов этой группы относят к роду собственно лисиц (лат. Vulpes). Наиболее известный и распространённый представитель — обыкновенная лисица (Vulpes vulpes).', 16),
(3, 'img/3.jpg', 372746, 'Коала', 'Коала (лат. Phascolarctos cinereus) — вид сумчатых, обитающий в Австралии. Единственный современный представитель семейства коаловых (Phascolarctidae) из отряда двурезцовых сумчатых (Diprotodontia).', 15),
(4, 'img/4.jpg', 339981, 'Лев', 'Лев (лат. Panthera leo) — вид хищных млекопитающих, один из четырёх представителей рода пантер (Panthera), относящегося к подсемейству больших кошек (Pantherinae) в составе семейства кошачьих (Felidae). Наряду с тигром — самая крупная из ныне живущих кошек, масса некоторых самцов может достигать 250 кг.', 17),
(5, 'img/5.jpg', 442827, 'Рысь', 'Рысь (лат. Lynx) — род хищных млекопитающих семейства кошачьих, наиболее близкий к роду кошек (Felis).', 17),
(6, 'img/6.jpg', 365881, 'Панда', 'Панда (лат. Ailuridae) — семейство млекопитающих из подотряда псообразные (Caniformia) отряда хищных. Включает семь вымерших и один современный род. Единственный современный вид — малая, или красная панда (Ailurus fulgens).', 17),
(7, 'img/7.jpg', 254168, 'Белый медведь', '\'Белый медведь, или полярный медведь, северный медведь, ошкуй, нанук, умка (лат. Ursus maritimus — «медведь морской») — хищное млекопитающее семейства медвежьих, близкий родственник бурого медведя. Второй по величине сухопутный хищник планеты после гребнистого крокодила. Назван так из-за белой шерсти.', 16),
(8, 'img/8.jpg', 225933, 'Пума', 'Пума (горный лев, кугуар) (лат. Puma concolor) — хищник рода Пумы семейства кошачьих. Обитает в Северной и Южной Америке. Самый крупный представитель рода пум. Длина тела животного составляет 100—180 см, при длине хвоста 60—75 см, высоте в холке 61—76 см при весе до 105 кг (самцы). Охотится преимущественно на оленей.', 19),
(9, 'img/9.jpg', 359751, 'Тигр', 'Тигр (лат. Panthera tigris) — вид хищных млекопитающих семейства кошачьих, один из четырёх представителей рода пантера (лат. Panthera), который относится к подсемейству больших кошек. Слово «тигр» происходит от др.-греч. τίγρις, которое в свою очередь восходит к др.-перс. *tigri от корня «*taig» со значением «острый; быстрый».', 16),
(10, 'img/10.jpg', 220331, 'Волки', 'Волк, или серый волк, или обыкновенный волк (лат. Canis lupus), — вид хищных млекопитающих из семейства псовых (Canidae). Наряду с койотом (Canis latrans), обыкновенным шакалом (Canis aureus) и ещё несколькими видами составляет род волков (Canis).Dолк — одно из самых крупных современных животных в своём семействе: длина его тела (без учёта хвоста) может достигать 160 см, длина хвоста — до 52 см, высота в холке — до 90 см; масса тела может доходить до 90—100 кг.', 16);

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_news`
--

CREATE TABLE `gallery_news` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gallery_news`
--

INSERT INTO `gallery_news` (`id`, `title`, `content`, `date`) VALUES
(1, 'Открытие фото-зоопарка', 'Произошло знаменательное событие - в сети открыт доступ для посещения нашего зоопарка', '2020-03-17 15:18:16'),
(2, 'Заселение животных', 'Уже первые девять животных уютно размещены в нашем зоопарке', '2020-04-19 15:18:16'),
(3, 'Поступление волков', 'Семейная парочка лесных хищников обосновалась в наших пенатах', '2020-04-21 15:18:16');

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_reviews`
--

CREATE TABLE `gallery_reviews` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `author` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gallery_reviews`
--

INSERT INTO `gallery_reviews` (`id`, `date`, `author`, `text`) VALUES
(1, '2020-01-20 15:18:16', 'Незнакомец', 'Классный зоопарк!'),
(2, '2020-01-21 15:18:16', 'Незнакомка', 'О, боже, как здесь восхитительно!');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gallery_news`
--
ALTER TABLE `gallery_news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gallery_reviews`
--
ALTER TABLE `gallery_reviews`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `gallery_news`
--
ALTER TABLE `gallery_news`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `gallery_reviews`
--
ALTER TABLE `gallery_reviews`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
