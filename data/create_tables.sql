USE gallery;

/* Создание таблицы фотографий */
CREATE TABLE gallery (
	id smallint unsigned not null auto_increment,		    # id фотографии
	url varchar(255) not null,								# url
	size integer unsigned not null,							# размер
	name varchar(255) not null,								# наименование
	description varchar(1024),								# описание
	views smallint,											# количество просмотров
	constraint pk_id primary key (id)               # первичный ключ
);

/* Создание таблицы отзывов о зоопарке*/
CREATE TABLE gallery_reviews (
	id smallint unsigned not null auto_increment,           # id отзыва
	date timestamp default CURRENT_TIMESTAMP,               # дата создания отзыва
	author varchar(255) not null,                           # автор
	text text not null,                                     # текст отзыва
	constraint pk_id primary key (id)               # первичный ключ
);

/* Создание таблицы новостей */
CREATE TABLE gallery_news (
    id smallint unsigned not null auto_increment,           # id новости
    title varchar(255) not null,                            # заголовок новости
    content text,                                           # текст новости
    date timestamp default CURRENT_TIMESTAMP,               # дата создания
    constraint pk_id primary key (id)               # первичный ключ
);