USE gallery;
/* Создание таблицы фотографий */
CREATE TABLE gallery (
	id smallint unsigned not null auto_increment,		    # id фотографии
	url varchar(255) not null,								# url
	size integer unsigned not null,							# размер
	name varchar(255) not null,								# наименование
	description varchar(1024),								# описание
	views smallint,											# количество просмотров
	constraint pk_id primary key (id)               # первичнй ключ
);
/* Создание таблицы отзывов */
CREATE TABLE reviews (
	id smallint unsigned not null,		        # id отзыва, соответствует id животного, если id=0,
	                                            # то отзыв о самом зоопарке
	date timestamp default CURRENT_TIMESTAMP,   # дата создания отзыва
	author varchar(255) not null,		        # автор
	text text not null      			        # текст отзыва
);