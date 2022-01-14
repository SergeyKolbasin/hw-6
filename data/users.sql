-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 14 2022 г., 06:10
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
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL COMMENT 'id пользователя',
  `name` varchar(255) NOT NULL COMMENT 'имя пользователя в системе',
  `password` varchar(255) NOT NULL COMMENT 'пароль',
  `description` varchar(255) NOT NULL COMMENT 'описание (полное имя)',
  `email` varchar(255) NOT NULL COMMENT 'e-mail пользователя',
  `role` int(11) NOT NULL COMMENT 'роль: 0-фдмин, 1-обычный юзер'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `description`, `email`, `role`) VALUES
(1, 'admin', '97ea61ac69fd51713500f4b05ec854cd', 'Администратор системы', 'admin@hw.loc', 0),
(2, 'user', '3fc0a7acf087f549ac2b266baf94b8b1', 'Покупатель', 'customer@hw.loc', 1),
(3, 'ivanov', '4dfe6e220d16e7b633cfdd92bcc8050b', 'Иванов Иван Иванович', 'ivanov@hw.loc', 1),
(4, 'petrov', 'f396c3b74762b1fee69b10abb875139b', 'Петров Петр Петрович', 'petrov@hw.loc', 1),
(5, 'sidorov', '9cd3acb851a21717cc51c213015eb7a7', 'Сидоров Сидор Сидорович', 'sidorov@hw.loc', 1),
(6, 'dmitriev', '5f4f54cb01219ba0cc3cfe3cff8d59d3', 'Дмитриев Дмитрий Дмитриевич', 'dmitriev@hw.loc', 1),
(7, 'jetsaus', '7721ddbf64f1c94315ab3982fca49839', 'Колбасин Сергей Петрович', 'jetsaus@hw.loc', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id пользователя', AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
