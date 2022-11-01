-- Дамп MySQL 10.13 Дистрибутив 8.0.30, для Win64 (x86_64)
--
-- Хост: localhost База данных: book
-- ------------------------------------------------------
-- Версия сервера 8.0.30

/*!40101 УСТАНОВИТЬ @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 УСТАНОВИТЬ @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 УСТАНОВИТЬ @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 НАБОР ИМЕН utf8 */;
/*!40103 УСТАНОВИТЬ @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 УСТАНОВИТЬ ВРЕМЕННУЮ ЗОНУ ='+00:00' */;
/*!40014 УСТАНОВИТЬ @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 УСТАНОВИТЬ @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 УСТАНОВИТЬ @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 УСТАНОВИТЬ @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Структура таблицы для таблицы `book`
--

УДАЛЕНИЕ ТАБЛИЦЫ , ЕСЛИ СУЩЕСТВУЕТ `book`;
/*!40101 УСТАНОВИТЬ @saved_cs_client = @@character_set_client */;
/*!50503 УСТАНОВИТЬ character_set_client = utf8mb4 */;
СОЗДАТЬ ТАБЛИЦУ  `книга` (
  NOT NULL int'Id_book  ` АВТО_ИНКРЕМЕНТ,
  переменная `Title '(50) НЕ РАВНА НУЛЮ,
  переменная 'Author `(30) НЕ РАВНО НУЛЮ,
  десятичная 'цена ` (8,2) НЕ РАВНА НУЛЮ,
   значение ПО УМОЛЧАНИЮ РАВНО НУЛЮ,
  NOT NULL int'buy` НЕ NULL int'buy  ',
  ПЕРВИЧНЫЙ КЛЮЧ (`id_Book`)
) ДВИЖОК= InnoDB AUTO_INCREMENT=24 КОДИРОВКА ПО УМОЛЧАНИЮ = utf8mb4 СОПОСТАВЛЕНИЕ=utf8mb4_0900_ai_ci;
/*!40101 УСТАНОВИТЬ character_set_client = @saved_cs_client */;

--
-- Выгрузка данных для таблицы `book`
--

БЛОКИРОВКА ТАБЛИЦ `книга` ЗАПИСЬ;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Мастер и Маргарита','Булгаков М.А.',671.00,3,0),(2,'Белая гвардия','Булгаков М.А.',354.95,5,0),(3,'Идиот','Достоевский Ф.М.',301.81,10,0),(4,'Братья Карамазовы','Достоевский Ф.М.',799.00,2,0),(8,'Стихотворения и поэмы','Есенин С.А.',650.00,15,0),(12,'Лирика','Пастернак Б.Л.',518.99,2,0),(13,'Черный человек','Есенин С.А.',374.10,6,0);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply`
--

DROP TABLE IF EXISTS `supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supply` (
  `supply_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  PRIMARY KEY (`supply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply`
--

LOCK TABLES `supply` WRITE;
/*!40000 ALTER TABLE `supply` DISABLE KEYS */;
INSERT INTO `supply` VALUES (1,'Лирика','Пастернак Б.Л.',518.99,2),(2,'Черный человек','Есенин С.А.',570.20,6),(3,'Белая гвардия','Булгаков М.А.',540.50,7),(4,'Идиот','Достоевский Ф.М.',360.80,3);
/*!40000 ALTER TABLE `supply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-28 11:37:30
1.6.2
Задание
Вывести из таблицы trip информацию о командировках тех сотрудников, фамилия которых заканчивается на букву «а», в отсортированном по убыванию даты последнего дня командировки виде. В результат включить столбцы name, city, per_diem, date_first, date_last.
use book;
ВЫБЕРИТЕ name, citi, per_diem, date_first, date_last ИЗ trip, ГДЕ имя типа  '%а %' УПОРЯДОЧЕНО ПО date_last desc;
из * выберите поездку;
1.6.3
Задание
Вывести в алфавитном порядке фамилии и инициалы тех сотрудников, которые были в командировке в Москве.
используйте книгу;
ВЫБЕРИТЕ ОТДЕЛЬНОЕ имя ИЗ поездки, ГДЕ citi = 'Москва'  ПОРЯДОК ПО имени;
из * выберите поездку;
1.6.4
Задание
Для каждого города посчитать, сколько раз сотрудники в нем были. Информацию вывести в отсортированном в алфавитном порядке по названию городов. Вычисляемый столбец назвать Количество. 
используйте книгу;
ВЫБЕРИТЕ citi, посчитайте (citi) КАК  'Количество  ' ИЗ ГРУППЫ поездок ПО citi ЗАКАЗ ПО citi;
из * выберите поездку;
1.6.5
Задание
Вывести два города, в которых чаще всего были в командировках сотрудники. Вычисляемый столбец назвать Количество.
используйте книгу;
ВЫБЕРИТЕ город, посчитайте (имя) как  'Количество ' ИЗ ГРУППЫ поездок НА  1  ПОРЯДОК НА  2  , ОГРАНИЧЕНИЕ  НА 2;
из * выберите поездку;
1.6.6
Задание
Вывести информацию о командировках во все города кроме Москвы и Санкт-Петербурга (фамилии и инициалы сотрудников, город , длительность командировки в днях, при этом первый и последний день относится к периоду командировки). Последний столбец назвать Длительность. Информацию вывести в упорядоченном по убыванию длительности поездки, а потом по убыванию названий городов (в обратном алфавитном порядке).
используйте книгу;
SELECT name, citi, (DATEDIFF(date_last, date_first)+1) AS Длительность FROM trip WHERE citi NOT IN ('Москва', 'Санкт-Петербург') ORDER BY Длительность DESC, citi DESC;
из * выберите поездку;
1.6.7
Задание
Вывести информацию о командировках сотрудника(ов), которые были самыми короткими по времени. В результат включить столбцы name, city, date_first, date_last.
используйте книгу;
ВЫБЕРИТЕ name, citi, date_first, date_last ИЗ поездки, ГДЕ ABS(DATEDIFF(date_first, date_last) -1 ) = (ВЫБЕРИТЕ  MIN(ABS(DATEDIFF(date_first, date_last) -1 ))ИЗ поездки);
из * выберите поездку;
1.6.8
Задание
Вывести информацию о командировках, начало и конец которых относятся к одному месяцу (год может быть любой). В результат включить столбцы name, city, date_first, date_last. Строки отсортировать сначала в алфавитном порядке по названию города, а затем по фамилии сотрудника .
используйте книгу;
ВЫБЕРИТЕ name, citi, date_first, date_last ИЗ поездки, ГДЕ MONTH(date_first) = MONTH(date_last) ЗАКАЗ ПО citi, name;
из * выберите поездку;
1.6.9
Задание
Вывести название месяца и количество командировок для каждого месяца. Считаем, что командировка относится к некоторому месяцу, если она началась в этом месяце. Информацию вывести сначала в отсортированном по убыванию количества, а потом в алфавитном порядке по названию месяца виде. Название столбцов – Месяц и Количество.
используйте книгу;
ВЫБЕРИТЕ MONTHNAME(date_first) КАК Месяц, COUNT(MONTHNAME(date_first)) AS Количество FROM trip GROUP BY MONTHNAME(date_first) ORDER BY Количество DESC, Месяц;
из * выберите поездку;
1.6.10
Задание
Вывести сумму суточных (произведение количества дней командировки и размера суточных) для командировок, первый день которых пришелся на февраль или март 2020 года. Значение суточных для каждой командировки занесено в столбец per_diem. Вывести фамилию и инициалы сотрудника, город, первый день командировки и сумму суточных. Последний столбец назвать Сумма. Информацию отсортировать сначала в алфавитном порядке по фамилиям сотрудников, а затем по убыванию суммы суточных.
используйте книгу;
ВЫБЕРИТЕ name, citi, date_first, DATEDIFF(date_last+1, date_first)*per_diem КАК Сумма ИЗ поездки, ГДЕ ГОД (date_first)=2020  И МЕСЯЦ (date_first)=3  ИЛИ МЕСЯЦ (date_first)=2  ПОРЯДОК ПО имени, Сумма DESC;
из * выберите поездку;
1.6.11
Задание
Вывести фамилию с инициалами и общую сумму суточных, полученных за все командировки для тех сотрудников, которые были в командировках больше чем 3 раза, в отсортированном по убыванию сумм суточных виде. Последний столбец назвать Сумма.
используйте книгу;
ВЫБЕРИТЕ имя, СУММУ ((DATEDIFF(date_last, date_first) + 1) * per_diem) КАК Сумма ИЗ ГРУППЫ поездок ПО имени, ИМЕЮЩЕЙ  КОЛИЧЕСТВО (date_first) >  3  ПОРЯДОК ПО имени;
из * выберите поездку;

1.7.2
Задание
Создать таблицу fine следующей структуры:

создать ТОЧНУЮ  ТАБЛИЦУ  (fine_id INT  АВТО_ИНКРЕМЕНТ ПЕРВИЧНОГО КЛЮЧА,переменная имени (30), переменная номерного знака (6), переменная нарушения (50), точная ДЕСЯТИЧНАЯ сумма (8,2), дата нарушения, дата платежа, ДАТА И ВРЕМЯ);

1.7.3
Задание
В таблицу fine первые 5 строк уже занесены. Добавить в таблицу записи с ключевыми значениями 6, 7, 8.
INSERT INTO fine(name, number_plate, violation, sum_fine, date_violation, date_payment) values('Баранов П.Е.', 'Р523ВТ', 'Превышение скорости(от 40 до 60)', null, '2020-02-14', null), ('Абрамова К.А.', 'О111АВ', 'Проезд на запрещающий сигнал', null, '2020-02-23', null), ('Яковлев Г.Р.', 'Т330ТТ', 'Проезд на запрещающий сигнал', null, '2020-03-03', null);

1.7.4
Задание
Занести в таблицу fine суммы штрафов, которые должен оплатить водитель, в соответствии с данными из таблицы traffic_violation. При этом суммы заносить только в пустые поля столбца  sum_fine.
UPDATE fine SET sum_fine=(SELECT sum_fine FROM traffic_violation WHERE traffic_violation.violation=fine.violation) WHERE sum_fine is NULL

1.7.5
Задание
Вывести фамилию, номер машины и нарушение только для тех водителей, которые на одной машине нарушили одно и то же правило   два и более раз. При этом учитывать все нарушения, независимо от того оплачены они или нет. Информацию отсортировать в алфавитном порядке, сначала по фамилии водителя, потом по номеру машины и, наконец, по нарушению.
SELECT name, number_plate, violation from fine group by name, number_plate, violation having count(*) > 1;*/;

1.7.6
Задание
В таблице fine увеличить в два раза сумму неоплаченных штрафов для отобранных на предыдущем шаге записей. 
create table  NewTable AS (select name, number_plate, violation from fine  GROUP BY name, number_plate, violation  HAVING count(violation)>1 ORDER BY name, number_plate, violation);  UPDATE fine, NewTable  SET sum_fine=sum_fine*2  WHERE  fine.name=NewTable.name AND fine.number_plate=NewTable.number_plate AND  fine.violation=NewTable.violation AND fine.date_payment IS NULL; 
select * from fine;

1.7.7
Задание
Водители оплачивают свои штрафы. В таблице payment занесены даты их оплаты:
Необходимо:
в таблицу fine занести дату оплаты соответствующего штрафа из таблицы payment; 
уменьшить начисленный штраф в таблице fine в два раза  (только для тех штрафов, информация о которых занесена в таблицу payment) , если оплата произведена не позднее 20 дней со дня нарушения.
UPDATE fine f, payment p SET f.date_payment = p.date_payment, f.sum_fine = IF(DATEDIFF(f.date_payment, f.date_violation) <= 20, f.sum_fine / 2, f.sum_fine) WHERE f.name = p.name AND f.number_plate = p.number_plate AND f.violation = p.violation AND f.date_violation = p.date_violation AND f.date_payment IS NULL;
SELECT name, violation, sum_fine, date_violation, date_payment FROM fine;

1.7.8
Задание
Создать новую таблицу back_payment, куда внести информацию о неоплаченных штрафах (Фамилию и инициалы водителя, номер машины, нарушение, сумму штрафа  и  дату нарушения) из таблицы fine.
CREATE TABLE back_payment (SELECT name, number_plate, violation, sum_fine, date_violation FROM fine WHERE date_payment IS NULL);
SELECT * FROM back_payment;

1.7.9
Задание
Удалить из таблицы fine информацию о нарушениях, совершенных раньше 1 февраля 2020 года. 
DELETE FROM fine WHERE date_violation <'2020-02-01'; SELECT * FROM fine;

1.8.2
SELECT CONCAT(module_id,'.',lesson_position,".",step_position," ", CONCAT(LEFT(step_name, 30), '...')) AS Шаг, link AS Ссылка_на_шаг FROM step
INNER JOIN lesson USING(lesson_id)
INNER JOIN module USING(module_id)
INNER JOIN step_keyword USING(step_id)
INNER JOIN keyword USING(keyword_id) WHERE keyword_name LIKE '%ANY%' GROUP BY ШАГ, Ссылка_на_шаг ORDER BY 1;

2.1.6
Создать таблицу author следующей структуры:
Поле	Тип, описание
author_id	INT PRIMARY KEY AUTO_INCREMENT
name_author	VARCHAR(50)

CREATE TABLE author (author_id	INT PRIMARY KEY AUTO_INCREMENT,name_author	VARCHAR(50));

2.1.7
Задание
Заполнить таблицу author. В нее включить следующих авторов:

Булгаков М.А.
Достоевский Ф.М.
Есенин С.А.
Пастернак Б.Л.
insert into author (name_author) values ('Булгаков М.А.'), ('Достоевский Ф.М.'), ('Есенин С.А.'), ('Пастернак Б.Л.');

2.1.8
Задание
Перепишите запрос на создание таблицы book , чтобы ее структура соответствовала структуре, показанной на логической схеме (таблица genre уже создана, порядок следования столбцов - как на логической схеме в таблице book, genre_id  - внешний ключ) . Для genre_id ограничение о недопустимости пустых значений не задавать. В качестве главной таблицы для описания поля  genre_idиспользовать таблицу genre следующей структуры:

Поле	Тип, описание
genre_id INT  АВТО_ИНКРЕМЕНТ ПЕРВИЧНОГО КЛЮЧА
имя_жен ПЕРЕМЕННОЙ (30)
создать ТАБЛИЦУ книг   (book_id INT  ПЕРВИЧНЫЙ КЛЮЧ AUTO_INCREMENT, заголовок VARCHAR(50), author_id INT  NOT NULL, genre_id INT, цена ДЕСЯТИЧНАЯ (8,2), сумма INT, ВНЕШНИЙ КЛЮЧ (author_id) ССЫЛКИ автор (author_id), ВНЕШНИЙ КЛЮЧ (genre_id) ССЫЛКИ жанр (genre_id));

2.1.9
Задание
Создать таблицу book той же структуры, что и на предыдущем шаге. Будем считать, что при удалении автора из таблицы author, должны удаляться все записи о книгах из таблицы book, написанные этим автором. А при удалении жанра из таблицы genre для соответствующей записи book установить значение Null в столбце genre_id. 
СОЗДАТЬ ТАБЛИЦУ книг   (book_id INT  АВТО_ИНКРЕМЕНТ ПЕРВИЧНОГО КЛЮЧА, заголовок VARCHAR(50), author_id INT  NOT NULL, genre_id INT, ДЕСЯТИЧНАЯ цена (8,2), сумма INT, ВНЕШНИЙ КЛЮЧ (author_id) ССЫЛАЕТСЯ НА автора (author_id) ПРИ КАСКАДНОМ УДАЛЕНИИ, ВНЕШНИЙ КЛЮЧ (genre_id) ССЫЛАЕТСЯ НА жанр (genre_id) ПРИ УДАЛЕНИИ  НАБОРА  НУЛЕВОЙ);

2.1.11
Задание
Добавьте три последние записи (с ключевыми значениями 6, 7, 8) в таблицу book, первые 5 записей уже добавлены:

book_id название author_id жанр_id цена сумма
1 Мастер и Маргарита 1	1	670.99	3
2 Белая гвардия 1	1	540.50	5
3 Идиот 2	1	460.00	10
4 Братья Карамазовы 2	1	799.01	3
5 Игрок 2	1	480.50	10
6 Стихотворения и поэмы 3	2	650.00	15
7 Черный человек 3	2	570.20	6
8 Лирика 4	2	518.99	2

INSERT INTO book (title, author_id, genre_id, price, amount) VALUES ('Стихотворения и поэмы',3,2,650.00,15), ('Черный человек',3,2,570.20,6), ('Лирика',4,2,518.99,2);

2.2.2
Задание
Вывести название, жанр и цену тех книг, количество которых больше 8, в отсортированном по убыванию цены виде.
ВЫБЕРИТЕ title, name_genre, price ИЗ genre INNER ПРИСОЕДИНИТЬСЯ К книге ПО  genre.genre_id = book.genre_id  ГДЕ количество> 8  ЗАКАЗАТЬ ПО цене DESC ;

2.2.3
Задание
Вывести все жанры, которые не представлены в книгах на складе.
ВЫБЕРИТЕ name_genre ИЗ genre СЛЕВА ПРИСОЕДИНИТЕ книгу К  genre.genre_id = book.genre_id  ГДЕ  book.genre_id Равно НУЛЮ;

2.2.4
Задание
Есть список городов, хранящийся в таблице city:

city_id	name_city
1	Москва
2	Санкт-Петербург
3	Владивосток
Необходимо в каждом городе провести выставку книг каждого автора в течение 2020 года. Дату проведения выставки выбрать случайным образом. Создать запрос, который выведет город, автора и дату проведения выставки. Последний столбец назвать Дата. Информацию вывести, отсортировав сначала в алфавитном порядке по названиям городов, а потом по убыванию дат проведения выставок.
SELECT name_city, name_author, (DATE_ADD('2020-01-01', INTERVAL FLOOR(RAND() * 365) DAY)) as Дата FROM  city, author     ORDER by name_city, Дата desc;
    
2.2.5
Задание
 Вывести информацию о книгах (жанр, книга, автор), относящихся к жанру, включающему слово «роман» в отсортированном по названиям книг виде.
SELECT name_genre, title, name_author FROM book INNER JOIN  author ON author.author_id = book.author_id INNER JOIN genre ON genre.genre_id = book.genre_id WHERE name_genre LIKE 'Роман' ORDER BY title;

2.2.6
Задание
Посчитать количество экземпляров  книг каждого автора из таблицы author.  Вывести тех авторов,  количество книг которых меньше 10, в отсортированном по возрастанию количества виде. Последний столбец назвать Количество.
SELECT name_author, SUM(amount) AS Количество FROM author LEFT JOIN book on author.author_id = book.author_id GROUP BY name_author HAVING SUM(amount) < 10 OR SUM(amount) IS NULL ORDER BY Количество;

2.2.7
Задание
Вывести в алфавитном порядке всех авторов, которые пишут только в одном жанре. Поскольку у нас в таблицах так занесены данные, что у каждого автора книги только в одном жанре,  для этого запроса внесем изменения в таблицу book. Пусть у нас  книга Есенина «Черный человек» относится к жанру «Роман», а книга Булгакова «Белая гвардия» к «Приключениям» (эти изменения в таблицы уже внесены).
SELECT name_author FROM author INNER JOIN book on author.author_id = book.author_id GROUP BY name_author HAVING COUNT(distinct(genre_id)) = 1;
        
2.2.8
Задание
Вывести информацию о книгах (название книги, фамилию и инициалы автора, название жанра, цену и количество экземпляров книги), написанных в самых популярных жанрах, в отсортированном в алфавитном порядке по названию книг виде. Самым популярным считать жанр, общее количество экземпляров книг которого на складе максимально.
SELECT   title, name_author, name_genre, price, amount FROM  book  INNER JOIN genre ON book.genre_id = genre.genre_id INNER JOIN author ON  book.author_id = author.author_id
WHERE genre.genre_id IN (SELECT query_in_1.genre_id FROM (SELECT genre_id, SUM(amount) AS sum_amount FROM book GROUP BY genre_id )query_in_1INNER JOIN 
( SELECT genre_id, SUM(amount) AS sum_amount FROM book GROUP BY genre_id ORDER BY sum_amount DESC LIMIT 1) query_in_2 ON query_in_1.sum_amount= query_in_2.sum_amount ) ORDER BY title;   
         
2.2.9
Задание
Если в таблицах supply  и book есть одинаковые книги, которые имеют равную цену,  вывести их название и автора, а также посчитать общее количество экземпляров книг в таблицах supply и book,  столбцы назвать Название, Автор  и Количество.
SELECT title AS Название, name_author AS Автор, SUM(book.amount + supply.amount) AS Количество FROM supply INNER JOIN book USING(price,title) INNER JOIN author ON author.name_author = supply.author GROUP BY author.name_author, book.title;

2.3.2
Задание
Для книг, которые уже есть на складе (в таблице book), но по другой цене, чем в поставке (supply), необходимо в таблице book увеличить количество на значение, указанное в поставке, и пересчитать цену. А в таблице supply обнулить количество этих книг. Формула для пересчета цены:

ОБНОВИТЬ автора ВНУТРЕННЕГО СОЕДИНЕНИЯ С  автором.author_id = book.author_id  ВНУТРЕННЕЕ СОЕДИНЕНИЕ С источником В  книге.title = supply.title  и  supply.author = author.name_author  УСТАНОВИТЬ  book.price = (book.price * book.amount + supply.price * supply.amount)/(book.amount + supply.amount) , book.amount = book.amount + supply.amount, supply.amount = 0 , ГДЕ  book.price <> supply.price;
ИЗ * ВЫБЕРИТЕ забронировать;
ИЗ  * ВЫБЕРИТЕ источник;

2.3.3
Задание
Включить новых авторов в таблицу author с помощью запроса на добавление, а затем вывести все данные из таблицы author. Новыми считаются авторы, которые есть в таблице supply, но нет в таблице author.
Вставить в author (name_author) ВЫБЕРИТЕ  supply.author  ИЗ ПРАВА автора ПРИСОЕДИНИТЬ supply к  author.name_author = supply.author  ГДЕ name_author РАВНО нулю;
из * выберите автора;

2.3.4
Задание
Добавить новые книги из таблицы supply в таблицу book на основе сформированного выше запроса. Затем вывести для просмотра таблицу book.
ВСТАВИТЬ В книгу (title, author_id, цена, количество) ВЫБЕРИТЕ title, author_id, цену, количество ИЗ предложения author INNER JOIN ДЛЯ  author.name_author=supply  .author  ГДЕ количество <> 0;
ИЗ * ВЫБЕРИТЕ забронировать;

2.3.5
Задание
 Занести для книги «Стихотворения и поэмы» Лермонтова жанр «Поэзия», а для книги «Остров сокровищ» Стивенсона - «Приключения». (Использовать два запроса).
ОБНОВИТЬ НАБОР книг genre_id = (ВЫБЕРИТЕ genre_id ИЗ genre, ГДЕ name_genre = 'Поэзия') ГДЕ book_id = 10;
ИЗ * ВЫБЕРИТЕ забронировать; 
ОБНОВИТЬ НАБОР книг genre_id = (ВЫБЕРИТЕ genre_id ИЗ genre, ГДЕ name_genre = 'Приключения' ) ГДЕ book_id = 11;
ИЗ * ВЫБЕРИТЕ забронировать;

2.3.6
Задание
Удалить всех авторов и все их книги, общее количество книг которых меньше 20.
ИЗ  УДАЛИТЬ автора, ГДЕ author_id В( ВЫБЕРИТЕ author_id ИЗ ГРУППЫ книг ПО author_id С  СУММОЙ (сумма) < 20);
ИЗ * ВЫБЕРИТЕ забронировать;

2.3.7
Задание
Удалить все жанры, к которым относится меньше 4-х книг. В таблице book для этих жанров установить значение Null.
DELETE FROM genre WHERE genre_id IN( SELECT genre_id FROM book GROUP BY genre_id HAVING COUNT(book_id) < 4 );
SELECT * FROM book;
SELECT * FROM genre;

2.3.8
Задание
Удалить всех авторов, которые пишут в жанре "Поэзия". Из таблицы book удалить все книги этих авторов. В запросе для отбора авторов использовать полное название жанра, а не его id.
DELETE FROM author  USING author INNER JOIN book ON author.author_id = book.author_id INNER JOIN genre ON genre.genre_id = book.genre_id WHERE name_genre LIKE "Поэзия";
SELECT * FROM author;
SELECT * FROM book;

2.3.9
Задание
Придумайте один или несколько запросов корректировки данных для таблиц book,  author, genre и supply . Проверьте, правильно ли они работают.
SELECT * FROM book;

2.4.5
Задание
Вывести все заказы Баранова Павла (id заказа, какие книги, по какой цене и в каком количестве он заказал) в отсортированном по номеру заказа и названиям книг виде.
SELECT buy.buy_id,title,  price, buy_book.amount FROM client INNER JOIN buy USING(client_id) INNER JOIN buy_book USING(buy_id) INNER JOIN book USING(book_id) WHERE name_client = 'Баранов Павел' ORDER BY buy_id, book.title;

2.4.6
Задание
Посчитать, сколько раз была заказана каждая книга, для книги вывести ее автора (нужно посчитать, в каком количестве заказов фигурирует каждая книга).  Вывести фамилию и инициалы автора, название книги, последний столбец назвать Количество. Результат отсортировать сначала  по фамилиям авторов, а потом по названиям книг.
SELECT name_author, title, COUNT(buy_book.amount) AS Количество  FROM author  INNER JOIN book USING(author_id)  LEFT JOIN buy_book USING(book_id)  GROUP BY book.title, name_author  ORDER BY name_author, title;

2.4.7
Задание 
Вывести города, в которых живут клиенты, оформлявшие заказы в интернет-магазине. Указать количество заказов в каждый город, этот столбец назвать Количество. Информацию вывести по убыванию количества заказов, а затем в алфавитном порядке по названию городов.
SELECT name_city, COUNT(buy_id) AS 'Количество' FROM  city inner join client ON city.city_id = client.city_id inner join buy ON client.client_id = buy.client_id group by  name_city  ORDER BY name_city ASC;

 2.4.8
Задание
Вывести номера всех оплаченных заказов и даты, когда они были оплачены.
SELECT buy_id, date_step_end FROM buy_step WHERE step_id = 1 AND date_step_end IS NOT NULL ORDER BY date_step_end;

2.4.9
Задание
Вывести информацию о каждом заказе: его номер, кто его сформировал (фамилия пользователя) и его стоимость (сумма произведений количества заказанных книг и их цены), в отсортированном по номеру заказа виде. Последний столбец назвать Стоимость.
select buy_id,name_client,sum(book.price*buy_book.amount) as Стоимость from buy_book join buy using(buy_id) JOIN client using(client_id) join book using(book_id) Group BY buy_id,name_client ORDER BY buy_id;
  
2.4.10
Задание
Вывести номера заказов (buy_id) и названия этапов,  на которых они в данный момент находятся. Если заказ доставлен –  информацию о нем не выводить. Информацию отсортировать по возрастанию buy_id.
SELECT buy_id, name_step FROM step INNER JOIN buy_step ON step.step_id = buy_step.step_id WHERE date_step_beg IS NOT NULL AND date_step_end IS NULL ORDER BY buy_id;

2.4.11
Задание
В таблице city для каждого города указано количество дней, за которые заказ может быть доставлен в этот город (рассматривается только этап Транспортировка). Для тех заказов, которые прошли этап транспортировки, вывести количество дней за которое заказ реально доставлен в город. А также, если заказ доставлен с опозданием, указать количество дней задержки, в противном случае вывести 0. В результат включить номер заказа (buy_id), а также вычисляемые столбцы Количество_дней и Опоздание. Информацию вывести в отсортированном по номеру заказа виде.
SELECT buy_step.buy_id, datediff(date_step_end, date_step_beg) as 'Количество_дней', IF(days_delivery - datediff(date_step_end, date_step_beg)>0, 0,abs(days_delivery - datediff(date_step_end,           date_step_beg)))  as 'Опоздание' FROM buy_step
INNER JOIN step ON buy_step.step_id = step.step_id
INNER JOIN buy ON buy_step.buy_id = buy.buy_id
INNER JOIN client ON buy.client_id = client.client_id
INNER JOIN city ON client.city_id = city.city_id WHERE name_step IN ('Транспортировка') and date_step_end IS NOT NULL;
  
2.4.12
Задание
Выбрать всех клиентов, которые заказывали книги Достоевского, информацию вывести в отсортированном по алфавиту виде. В решении используйте фамилию автора, а не его id.
выберите distinct name_client из client 
внутренняя покупка соединения с использованием (client_id) 
внутреннее объединение buy_book с использованием (buy_id)
внутреннее соединение с книгой с помощью (book_id)
автор внутреннего объединения использует (author_id), где name_author как  'Достоевск%' порядок по name_client;

2.4.13
Задание
Вывести жанр (или жанры), в котором было заказано больше всего экземпляров книг, указать это количество. Последний столбец назвать Количество.
ВЫБЕРИТЕ name_genre, Количество FROM (ВЫБЕРИТЕ name_genre, sum(amount_1) как Количество FROM (ВЫБЕРИТЕ book_id, SUM(amount) КАК amount_1 ИЗ ГРУППЫ buy_book ПО book_id) В КАЧЕСТВЕ temp
ВНУТРЕННЕЕ СОЕДИНЕНИЕ С книгой ПО  temp.book_id = book.book_id
ВНУТРЕННЕЕ ОБЪЕДИНЕНИЕ жанра В  книге.genre_id = genre.genre_id  ГРУППА ПО name_genre) как k, где k.Количество IN (ВЫБЕРИТЕ  MAX(т.Количество) как n ИЗ ( ВЫБЕРИТЕ name_genre, сумма (сумма_1) как Количество
ИЗ (ВЫБЕРИТЕ book_id, SUM(сумма) КАК amount_1 ИЗ ГРУППЫ buy_book ПО book_id) В КАЧЕСТВЕ временного
ВНУТРЕННЕЕ СОЕДИНЕНИЕ С книгой ПО  temp.book_id = book.book_id
ВНУТРЕННЕЕ ОБЪЕДИНЕНИЕ жанра В  книге.genre_id = genre.genre_id  ГРУППА ПО name_genre) как t);
                               
 2.4.14
Задание
Сравнить ежемесячную выручку от продажи книг за текущий и предыдущий годы. Для этого вывести год, месяц, сумму выручки в отсортированном сначала по возрастанию месяцев, затем по возрастанию лет виде. Название столбцов: Год, Месяц, Сумма.
ВЫБЕРИТЕ ГОД (дата платежа) AS Год, MONTHNAME(date_payment)AS Месяц, SUM(price*amount) AS Сумма FROM buy_archive GROUP BY Год, Месяц UNION
SELECT YEAR(date_step_end) AS Год, MONTHNAME(date_step_end)AS Месяц, SUM(price*buy_book.amount) AS Сумма FROM buy_step
ВНУТРЕННЕЕ ОБЪЕДИНЕНИЕ buy_book С ИСПОЛЬЗОВАНИЕМ (buy_id)
INNER JOIN book USING(book_id) where date_step_end is not null and step_id = 1 GROUP BY Год, Месяц ORDER BY Месяц ASC, Год ASC;
        
2.4.15
Задание
Для каждой отдельной книги необходимо вывести информацию о количестве проданных экземпляров и их стоимости за 2020 и 2019 год . Вычисляемые столбцы назвать Количество и Сумма. Информацию отсортировать по убыванию стоимости.
SELECT title, sum(Количество) as 'Количество', sum(Сумма) as 'Сумма' FROM (select title, sum(buy_archive.amount) as 'Количество', sum(buy_archive.price*buy_archive.amount) as 'Сумма' from buy_archive JOIN book USING(book_id)
группа по объединению заголовков все  выберите заголовок, сумма (buy_book.amount) как  'Количество', сумма (цена * buy_book.amount) как' Сумма'  из книги
ПРИСОЕДИНИТЬСЯ К buy_book с помощью (book_id) ПРИСОЕДИНИТЬСЯ К buy_step с помощью (buy_id) ПРИСОЕДИНИТЬСЯ к step с помощью (step_id) где  step.name_step = 'Оплата'   и buy_step.date_step_end  не равно нулю
группировать по названию) как query_in группировать по названию в порядке Сумма desc;

2.4.16
Задание
Придумайте один или несколько запросов на выборку для предметной области «Интернет-магазин книг» (в таблицы занесены данные, как на первом шаге урока). Проверьте, правильно ли они работают.
SELECT title, sum(Количество) as 'Количество', sum(Сумма) as 'Сумма' FROM
(select title, sum(buy_archive.amount) as 'Количество', sum(buy_archive.price*buy_archive.amount) as 'Сумма' from buy_archive JOIN book USING(book_id)
group by title union all select title, sum(buy_book.amount) as 'Количество', sum(price*buy_book.amount) as 'Сумма' from book JOIN buy_book using (book_id) JOIN buy_step using (buy_id) JOIN step using (step_id)
шаг , где.name_step = 'Оплата'   и buy_step.date_step_end  не является нулевой  группой по названию) в качестве запроса в группе по названию в порядке Сумма desc;

2.5.2
Задание
Включить нового человека в таблицу с клиентами. Его имя Попов Илья, его email popov@test, проживает он в Москве.
используйте книгу;
INSERT INTO city(name_client,city_id,email) SELECT 'Попов Илья', '1', 'popov@test' FROM city WHERE name_city = 'Москва';
ИЗ * ВЫБЕРИТЕ город;

2.5.3
Задание
Создать новый заказ для Попова Ильи. Его комментарий для заказа: «Связаться со мной по вопросу доставки».
INSERT buy (buy_description, client_id) SELECT 'Связаться со мной по вопросу доставки', client_id FROM client WHERE name_client IN ('Попов Илья');

2.5.4
Задание
В таблицу buy_book добавить заказ с номером 5. Этот заказ должен содержать книгу Пастернака «Лирика» в количестве двух экземпляров и книгу Булгакова «Белая гвардия» в одном экземпляре.
INSERT INTO buy_book (buy_id, book_id, amount) VALUES (5, (SELECT book_id FROM book JOIN author USING(author_id)  WHERE title='Лирика' AND name_author LIKE 'Пастернак%'), 2),(5, (SELECT book_id  FROM book JOIN author USING(author_id)  WHERE title='Белая Гвардия' AND name_author LIKE 'Булгаков%'), 1);
SELECT * FROM buy_book;

2.5.5
Задание
Количество тех книг на складе, которые были включены в заказ с номером 5, уменьшить на то количество, которое в заказе с номером 5  указано.
UPDATE book, buy_book
SET    book.amount = book.amount - buy_book.amount
WHERE  buy_book.buy_id = 5 AND book.book_id = buy_book.book_id;

SELECT * FROM book;
2.5.6
Задание
Создать счет (таблицу buy_pay) на оплату заказа с номером 5, в который включить название книг, их автора, цену, количество заказанных книг и  стоимость. Последний столбец назвать Стоимость. Информацию в таблицу занести в отсортированном по названиям книг виде.
 CREATE TABLE buy_pay AS
SELECT 
    title,
    name_author,
    book.price,
    buy_book.amount,
    book.price * buy_book.amount AS 'Стоимость'
FROM
    buy_book
    INNER JOIN book USING (book_id)
    INNER JOIN author USING (author_id)
WHERE
    buy_id = 5
ORDER BY title;
2.5.7
Задание
Создать общий счет (таблицу buy_pay) на оплату заказа с номером 5. Куда включить номер заказа, количество книг в заказе (название столбца Количество) и его общую стоимость (название столбца Итого). Для решения используйте ОДИН запрос.
CREATE TABLE buy_pay
SELECT buy_id, sum(buy_book.amount) as Количество, sum(book.price*buy_book.amount) as Итого
FROM buy_book
JOIN book USING(book_id)
JOIN author USING(author_id)
WHERE buy_id=5
GROUP BY 1;

SELECT * FROM buy_pay;
2.5.8
Задание
В таблицу buy_step для заказа с номером 5 включить все этапы из таблицы step, которые должен пройти этот заказ. В столбцы date_step_beg и date_step_end всех записей занести Null.
INSERT INTO buy_step (buy_id, step_id, date_step_beg, date_step_end)
SELECT buy_id, step_id, Null, Null
FROM buy
CROSS JOIN step
WHERE buy_id = 5;

2.5.9
Задание
В таблицу buy_step занести дату 12.04.2020 выставления счета на оплату заказа с номером 5.

Правильнее было бы занести не конкретную, а текущую дату. Это можно сделать с помощью функции Now(). Но при этом в разные дни будут вставляться разная дата, и задание нельзя будет проверить, поэтому  вставим дату 12.04.2020.
UPDATE buy_step SET date_step_beg = '2020-04-12'
WHERE buy_id = 5 AND step_id = 1;
2.5.10
Задание
Завершить этап «Оплата» для заказа с номером 5, вставив в столбец date_step_end дату 13.04.2020, и начать следующий этап («Упаковка»), задав в столбце date_step_beg для этого этапа ту же дату.

Реализовать два запроса для завершения этапа и начала следующего. Они должны быть записаны в общем виде, чтобы его можно было применять для любых этапов, изменив только текущий этап. Для примера пусть это будет этап «Оплата».
UPDATE buy_step
SET date_step_end = IF(buy_id = 5 AND step_id = 1, '2020-04-13', date_step_end),
    date_step_beg = IF(buy_id = 5 AND step_id = 2, '2020-04-13', date_step_beg);
2.5.11
Задание
Придумайте один или несколько запросов корректировки данных для предметной области «Интернет-магазин книг» (в таблицы занесены данные, как на этом шаге). Проверьте, правильно ли они работают.

При желании можно формулировку запросов  разместить в комментариях. 

Размещенные задания можно реализовать для закрепления материала урока.

Оценивайте понравившиеся Вам запросы.

В последнем модуле создан отдельный урок, в котором мы разместим запросы, набравшие наибольшее количество лайков. 
UPDATE buy_step SET date_step_beg = '2020-04-12'
WHERE buy_id = 5 AND step_id = 1;
3.1.2
Задание
Вывести студентов, которые сдавали дисциплину «Основы баз данных», указать дату попытки и результат. Информацию вывести по убыванию результатов тестирования.
SELECT name_student, date_attempt, result
FROM student
    INNER JOIN attempt USING(student_id)
    INNER JOIN subject USING(subject_id)
WHERE name_subject = 'Основы баз данных'
ORDER BY result DESC;
3.1.3
Задание
Вывести, сколько попыток сделали студенты по каждой дисциплине, а также средний результат попыток, который округлить до 2 знаков после запятой. Под результатом попытки понимается процент правильных ответов на вопросы теста, который занесен в столбец result.  В результат включить название дисциплины, а также вычисляемые столбцы Количество и Среднее. Информацию вывести по убыванию средних результатов.
SELECT name_subject, 
       COUNT(attempt_id) AS Количество,
       ROUND(AVG(result), 2) AS Среднее
FROM subject
       LEFT JOIN attempt USING(subject_id)
GROUP BY name_subject
ORDER BY Среднее DESC;
3.1.4
Задание
Вывести студентов (различных студентов), имеющих максимальные результаты попыток. Информацию отсортировать в алфавитном порядке по фамилии студента.

Максимальный результат не обязательно будет 100%, поэтому явно это значение в запросе не задавать.
SELECT name_student, result
FROM student
    INNER JOIN attempt USING(student_id)
WHERE result = (
         SELECT MAX(result) 
         FROM attempt
      )
ORDER BY name_student;
3.1.5
Задание
Если студент совершал несколько попыток по одной и той же дисциплине, то вывести разницу в днях между первой и последней попыткой. В результат включить фамилию и имя студента, название дисциплины и вычисляемый столбец Интервал. Информацию вывести по возрастанию разницы. Студентов, сделавших одну попытку по дисциплине, не учитывать. 
SELECT name_student,
       name_subject, 
       DATEDIFF(MAX(date_attempt), MIN(date_attempt)) AS Интервал
  FROM subject 
       JOIN attempt USING (subject_id)
       JOIN student USING (student_id)
 GROUP BY name_student, name_subject
 HAVING COUNT(attempt_id) > 1 
 ORDER BY 3;  
3.1.6
Задание
Студенты могут тестироваться по одной или нескольким дисциплинам (не обязательно по всем). Вывести дисциплину и количество уникальных студентов (столбец назвать Количество), которые по ней проходили тестирование . Информацию отсортировать сначала по убыванию количества, а потом по названию дисциплины. В результат включить и дисциплины, тестирование по которым студенты еще не проходили, в этом случае указать количество студентов 0.
SELECT name_subject, COUNT(DISTINCT student_id) AS 'Количество'
FROM subject LEFT JOIN attempt USING(subject_id)
GROUP BY name_subject
ORDER BY COUNT(DISTINCT student_id) DESC, name_subject;
3.1.7
Задание
Случайным образом отберите 3 вопроса по дисциплине «Основы баз данных». В результат включите столбцы question_id и name_question.
SELECT question_id, name_question
FROM subject INNER JOIN question USING(subject_id)
WHERE subject.subject_id = 2
ORDER BY RAND()
LIMIT 3;
3.1.8
Задание
Вывести вопросы, которые были включены в тест для Семенова Ивана по дисциплине «Основы SQL» 2020-05-17  (значение attempt_id для этой попытки равно 7). Указать, какой ответ дал студент и правильный он или нет (вывести Верно или Неверно). В результат включить вопрос, ответ и вычисляемый столбец  Результат.
SELECT name_question, 
       name_answer, 
       IF(is_correct, 'Верно', 'Неверно') AS Результат
FROM question
     INNER JOIN testing USING(question_id)
     INNER JOIN answer USING(answer_id)
WHERE attempt_id = 7
3.1.9
Задание
Посчитать результаты тестирования. Результат попытки вычислить как количество правильных ответов, деленное на 3 (количество вопросов в каждой попытке) и умноженное на 100. Результат округлить до двух знаков после запятой. Вывести фамилию студента, название предмета, дату и результат. Последний столбец назвать Результат. Информацию отсортировать сначала по фамилии студента, потом по убыванию даты попытки.
SELECT name_student, name_subject, date_attempt, 
    ROUND(SUM(is_correct)*100/3,2) Результат
FROM answer
    JOIN testing USING(answer_id)
    JOIN attempt USING(attempt_id)
    JOIN subject USING(subject_id)
    JOIN student USING(student_id)
GROUP BY 1, 2, 3
ORDER BY 1, 3 DESC;
3.1.10
  Задание 
Для каждого вопроса вывести процент успешных решений, то есть отношение количества верных ответов к общему количеству ответов, значение округлить до 2-х знаков после запятой. Также вывести название предмета, к которому относится вопрос, и общее количество ответов на этот вопрос. В результат включить название дисциплины, вопросы по ней (столбец назвать Вопрос), а также два вычисляемых столбца Всего_ответов и Успешность. Информацию отсортировать сначала по названию дисциплины, потом по убыванию успешности, а потом по тексту вопроса в алфавитном порядке.

Поскольку тексты вопросов могут быть длинными, обрезать их 30 символов и добавить многоточие "...".
SELECT name_subject, 
       CONCAT(LEFT(name_question, 30), '...') AS Вопрос, 
       COUNT(t.answer_id) AS Всего_ответов, 
       ROUND(SUM(is_correct) / COUNT(t.answer_id) * 100, 2) AS Успешность
  FROM subject
       JOIN question USING(subject_id)
       JOIN testing t USING(question_id)
       LEFT JOIN answer a USING(answer_id)
 GROUP BY 1, 2
 ORDER BY 1, 4 DESC, 2;
 3.1.11
  Задание
Придумайте один или несколько запросов на выборку для предметной области «Тестирование» (в таблицы занесены данные, как на первом шаге урока). Проверьте, правильно ли они работают.

При желании можно формулировку запросов  разместить в комментариях. 

Размещенные задания можно реализовать для закрепления материала урока.
 SELECT name_subject, 
       CONCAT(LEFT(name_question, 30), '...') AS Вопрос, 
       COUNT(t.answer_id) AS Всего_ответов, 
       ROUND(SUM(is_correct) / COUNT(t.answer_id) * 100, 2) AS Успешность
  FROM subject
       JOIN question USING(subject_id)
       JOIN testing t USING(question_id)
       LEFT JOIN answer a USING(answer_id)
 GROUP BY 1, 2
 ORDER BY 1, 4 DESC, 2;
