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
-- 1.1.8

CREATE TABLE book(
    book_id INT PRIMARY KEY AUTO_INCREMENT, 
    title VARCHAR(50),
    author VARCHAR(30),
    price DECIMAL(8, 2),
    amount INT
);

-- 1.1.9 

INSERT INTO book (title, author, price, amount) VALUES  ("Мастер и Маргарита", "Булгаков М.А.", 670.99 , 3);
SELECT * FROM book;

-- 1.1.10

INSERT INTO book (title, author, price, amount) VALUES  ("Белая гвардия", "Булгаков М.А.", 540.50 , 5);
INSERT INTO book (title, author, price, amount) VALUES  ("Идиот", "Достоевский Ф.М.", 460.00 , 10);
INSERT INTO book (title, author, price, amount) VALUES  ("Братья Карамазовы", "Достоевский Ф.М.", 799.01 , 2);

SELECT * FROM book;

-- 1.2.2
SELECT * FROM book;

-- 1.2.3

SELECT author, title, price   FROM book;
-- 1.2.4
SELECT title  AS Название, author AS Автор  FROM book;

-- 1.2.5
SELECT title, amount, amount * 1.65  AS pack  
FROM book;

-- 1.2.6
SELECT title, author, amount, ROUND(price/100 * 70, 2)  AS new_price
FROM book;

-- 1.2.7
SELECT author,title, ROUND(IF(author = "Булгаков М.А.", price * 1.1, IF(author = "Есенин С.А.", price * 1.05, price*1)),2)  AS new_price FROM book;

-- 1.2.8

SELECT author, title, price
FROM book
WHERE amount < 10;

-- 1.2.9
SELECT title, author, price, amount
FROM book
WHERE (price <500 OR price > 600) AND price*amount >= 5000 ;         

-- 1.2.10
SELECT title, author 
FROM book
WHERE (price < 800 AND price>540.50) AND amount= 2 OR amount= 3 OR amount= 5 OR amount= 7;

-- 1.2.11
SELECT author, title
FROM book
WHERE (amount >=2 AND amount <= 14)
ORDER BY author Desc, title ;

-- 1.2.12
SELECT title, author FROM book
Where title LIKE "_% _%" and
(author like '% С._.%' or author like '% _.С.%')
ORDER BY 1 ASC, 2 DESC;

-- 1.2.13
SELECT * FROM book WHERE book_id =1 OR book_id = 3 OR book_id = 5;


-- 1.3.2
SELECT  amount
FROM book
GROUP BY amount;

-- 1.3.2
SELECT  amount
FROM book
GROUP BY amount;

-- 1.3.3
SELECT author AS Автор, COUNT(title) AS Различных_книг, SUM(amount) AS Количество_экземпляров 
FROM book
GROUP BY author;

-- 1.3.4
SELECT author, MIN(price) AS Минимальная_цена, MAX(price) AS Максимальная_цена, AVG(price) AS Средняя_цена
FROM book
GROUP BY author;

-- 1.3.5
SELECT author, SUM(price * amount) AS Стоимость, ROUND( (SUM(price * amount) * 0.18) / 1.18 , 2) AS НДС,ROUND( SUM(price * amount) -  (SUM(price * amount) * 0.18) / 1.18, 2) AS Стоимость_без_НДС
FROM book
GROUP BY author;

-- 1.3.6
SELECT 
    MIN(price) AS Минимальная_цена, 
    MAX(price ) AS Максимальная_цена,
    ROUND(AVG(price), 2) As  Средняя_цена
FROM book;

-- 1.3.7
SELECT 
   ROUND(AVG(price),2) AS Средняя_цена, 
   ROUND(SUM(price * amount),2) AS Стоимость 
FROM book 
WHERE amount BETWEEN 5 AND 14;

-- 1.3.8
SELECT 
    author, 
   Sum( price * amount) As Стоимость
FROM book

Where title <> "Идиот" AND title <> "Белая гвардия" GROUP BY author HAVING SUM(price * amount) > 5000
 ORDER BY Стоимость DESC;

-- 1.3.9
SELECT book_id, author AS Автор, ROUND(AVG(price)) AS Средняя_цена 
FROM book
GROUP BY book_id, author
HAVING Средняя_цена >500;

-- 1.4.2
SELECT author, title, price
FROM book
WHERE price <= (
    SELECT AVG(price) 
    FROM book) 
ORDER BY price DESC;

-- 1.4.3
SELECT author, title, price
FROM book
WHERE price <= (
    SELECT MIN(price) +  150 
    FROM book) 
ORDER BY price;

-- 1.4.4
SELECT  author, title, amount
FROM book
WHERE amount IN (
        SELECT amount 
        FROM book 
        GROUP BY amount 
        HAVING Count(amount) = 1
      );

-- 1.4.5
SELECT author, title, price
FROM book
WHERE price < ALL (
        SELECT MAX(price) 
        FROM book 
        GROUP BY author 
      );

-- 1.4.6
SELECT title, author, amount, (SELECT MAX(amount) FROM book)-amount AS Заказ
FROM book
WHERE amount<>(SELECT MAX(amount) FROM book);

-- 1.4.7

SELECT author, title, price
FROM book
WHERE price <= (
    SELECT AVG(price) 
    FROM book) 
ORDER BY price DESC;

-- 1.5.2
CREATE TABLE supply(
    supply_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    author VARCHAR(30),
    price DECIMAL(8,2),
    amount INT
);

-- 1.5.3
 INSERT INTO supply(title,author,price,amount) 
    VALUES 
    ('Лирика','Пастернак Б.Л.', 518.99, 2),
    ('Черный человек', 'Есенин С.А.', 570.20, 6),
    ('Белая гвардия', 'Булгаков М.А.', 540.50, 7),
    ('Идиот', 'Достоевский Ф.М.', 360.80, 3);

-- 1.5.4
INSERT INTO book (title, author, price, amount) 
SELECT title, author, price, amount 

FROM supply WHERE author <> "Булгаков М.А." AND author <> "Достоевский Ф.М.";

SELECT * FROM book;

-- 1.5.5
INSERT INTO book (title, author, price, amount) 
SELECT title, author, price, amount 
FROM supply
WHERE author NOT IN (
        SELECT author 
        FROM book
      );

SELECT * FROM book;

-- 1.5.6
UPDATE book 
SET price = 0.9 * price where amount BETWEEN 5 AND 10;

SELECT * FROM book;

-- 1.5.7
UPDATE book 
SET buy = IF(buy > amount, amount, buy),
    price = IF (buy = 0, price * 0.9, price * 1);
    
    
SELECT * FROM book;

-- 1.5.8
UPDATE book, supply 
SET book.amount = book.amount + supply.amount,
    book.price = (book.price + supply.price)/2
WHERE book.title = supply.title AND book.author = supply.author;
SELECT * FROM book;

-- 1.5.9
DELETE FROM supply 
WHERE author IN(
     SELECT author
     FROM book
     GROUP BY author
     HAVING SUM(amount) > 10
     );
SELECT * FROM supply;

-- 1.5.10
CREATE TABLE ordering AS
SELECT author, title, 
   (SELECT ROUND(AVG(amount)) 
    FROM book) AS amount
FROM book
WHERE amount < (SELECT AVG(amount) 
    FROM book);

SELECT * FROM ordering;

-- 1.5.11
INSERT INTO book (title, author, price, amount) 
SELECT title, author, price, amount 

FROM supply WHERE author <> "Булгаков М.А." AND author <> "Достоевский Ф.М.";

SELECT * FROM book;


-- 1.6.2
SELECT name, city, per_diem, date_first, date_last  FROM trip 
WHERE name LIKE '%а %' ORDER BY date_last DESC;

-- 1.6.3
SELECT name FROM trip 
WHERE city = "Москва" GROUP BY name ORDER BY name ASC;


-- 1.6.4
SELECT city, (SELECT  COUNT(city)) AS Количество
FROM trip
GROUP BY city ORDER BY city;


-- 1.6.5
SELECT city, (SELECT  COUNT(city)) AS Количество
FROM trip
GROUP BY city ORDER BY Количество DESC LIMIT 2;


-- 1.6.6
SELECT name,city, (SELECT  DATEDIFF(date_last, date_first ) + 1) AS Длительность
FROM trip WHERE city <> "Москва" AND city <> "Санкт-Петербург" ORDER BY Длительность DESC ;

-- 1.6.7
SELECT name, city, date_first, date_last 
FROM trip 
where DATEDIFF(date_last, date_first) IN (
    SELECT MIN(DATEDIFF(date_last, date_first))
    FROM trip
);          

-- 1.6.8
SELECT name, city, date_first, date_last 
FROM trip 
where MONTH(date_last) = MONTH(date_first) ORDER BY city, name;

-- 1.6.9
SELECT  MONTHNAME(date_first) AS Месяц, Count(MONTHNAME(date_first)) AS Количество
FROM trip 
GROUP BY Месяц ORDER BY Количество DESC, Месяц;

-- 1.6.10
SELECT name, city, date_first, (DATEDIFF(date_last, date_first) +1) * per_diem  AS  Сумма 
FROM trip 
WHERE MONTH(date_first) = 2 OR MONTH(date_first) = 3 ORDER BY name, Сумма DESC;


-- 1.6.11
SELECT name, SUM((DATEDIFF(date_last, date_first) + 1) * per_diem) AS Сумма
FROM trip 
WHERE name IN (
    SELECT name
    FROM trip
    GROUP BY name 
    HAVING COUNT(name) > 3)
GROUP BY name 
ORDER BY Сумма DESC;

--  1.7.2

CREATE TABLE fine(
    fine_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    number_plate VARCHAR(6),
    violation VARCHAR(50),
    sum_fine DECIMAL(8,2),
    date_violation DATETIME,
    date_payment DATETIME	
);

-- 1.7.3

INSERT INTO fine(name, number_plate, violation, sum_fine, date_violation, date_payment)
values('Баранов П.Е.', 'Р523ВТ', 'Превышение скорости(от 40 до 60)', null, '2020-02-14', null),
('Абрамова К.А.', 'О111АВ', 'Проезд на запрещающий сигнал', null, '2020-02-23', null),
('Яковлев Г.Р.', 'Т330ТТ', 'Проезд на запрещающий сигнал', null, '2020-03-03', null);

-- 1.7.4
UPDATE fine
SET sum_fine=(SELECT sum_fine FROM traffic_violation WHERE traffic_violation.violation=fine.violation)
WHERE sum_fine is NULL;

-- 1.7.5
SELECT name, number_plate, violation
from fine
group by name, number_plate, violation
having count(*) > 1;

-- 1.7.6
CREATE table  NewTable AS  
(
    select name, number_plate, violation from fine 
GROUP BY name, number_plate, violation 
HAVING count(violation)>1
ORDER BY name, number_plate, violation
); 
UPDATE fine, NewTable 
SET sum_fine=sum_fine*2 
WHERE 
fine.name=NewTable.name AND fine.number_plate=NewTable.number_plate AND  fine.violation=NewTable.violation
AND fine.date_payment IS NULL; 
select * from fine;

-- 1.7.7
UPDATE fine f, payment p
SET f.date_payment = p.date_payment,
    f.sum_fine = IF(DATEDIFF(f.date_payment, f.date_violation) <= 20, f.sum_fine / 2, f.sum_fine)
WHERE f.name = p.name AND
      f.number_plate = p.number_plate AND
      f.violation = p.violation AND
      f.date_violation = p.date_violation AND
      f.date_payment IS NULL;

SELECT name, violation, sum_fine, date_violation, date_payment
FROM fine;

-- 1.7.8
CREATE TABLE back_payment
    (SELECT name, number_plate, violation, sum_fine, date_violation
     FROM fine
     WHERE date_payment IS NULL);
     
SELECT * FROM back_payment;

-- 1.7.9
DELETE FROM fine
WHERE date_violation <'2020-02-01';
SELECT * FROM fine;

-- 1.8.2
SELECT 
   CONCAT(module_id,'.',lesson_position,".",step_position," ", CONCAT(LEFT(step_name, 50), '...')) AS Шаг,
   note AS Примечание
FROM step
        INNER JOIN lesson USING(lesson_id)
        INNER JOIN module USING(module_id)
        INNER JOIN step_keyword USING(step_id)
        INNER JOIN keyword USING(keyword_id)
WHERE keyword_name = 'DISTINCT'
ORDER BY 1;

-- 2.1.6
CREATE TABLE author (
        author_id	INT PRIMARY KEY AUTO_INCREMENT,
        name_author	VARCHAR(50)
);

-- 2.1.7
insert into author (name_author) 
values ('Булгаков М.А.'), ('Достоевский Ф.М.'), ('Есенин С.А.'), ('Пастернак Б.Л.');

-- 2.1.8
CREATE TABLE book (
    book_id INT PRIMARY KEY AUTO_INCREMENT, 
    title VARCHAR(50), 
    author_id INT NOT NULL,
    genre_id INT,
    price DECIMAL(8,2), 
    amount INT, 
    FOREIGN KEY (author_id)  REFERENCES author (author_id),
    FOREIGN KEY (genre_id)  REFERENCES genre (genre_id)
);
-- 2.1.9
CREATE TABLE book (
    book_id INT PRIMARY KEY AUTO_INCREMENT, 
    title VARCHAR(50), 
    author_id INT NOT NULL,
    genre_id INT,
    price DECIMAL(8,2), 
    amount INT, 
    FOREIGN KEY (author_id)  REFERENCES author (author_id) ON DELETE CASCADE,
    FOREIGN KEY (genre_id)  REFERENCES genre (genre_id) ON DELETE SET NULL
);

-- 2.1.11
INSERT INTO book (title, author_id, genre_id, price, amount)
VALUES ('Стихотворения и поэмы',3,2,650.00,15),
 ('Черный человек',3,2,570.20,6),
('Лирика',4,2,518.99,2);

-- 2.2.2
SELECT title, name_genre, price
FROM
genre INNER JOIN book
ON genre.genre_id = book.genre_id
WHERE amount >8 ORDER BY price DESC ;
-- 2.2.3
SELECT name_genre
FROM genre LEFT JOIN book
ON genre.genre_id = book.genre_id
WHERE book.genre_id IS NULL;
-- 2.2.4
SELECT name_city, name_author, (DATE_ADD('2020-01-01', INTERVAL FLOOR(RAND() * 365) DAY)) as Дата
FROM 
    city, author    
    ORDER by name_city, Дата desc;
-- 2.2.5
SELECT name_genre, title, name_author
FROM
    book
    INNER JOIN  author ON author.author_id = book.author_id
    INNER JOIN genre ON genre.genre_id = book.genre_id
WHERE name_genre LIKE 'Роман' ORDER BY title;
-- 2.2.6
SELECT name_author, SUM(amount) AS Количество
FROM 
    author LEFT JOIN book
    on author.author_id = book.author_id
GROUP BY name_author
HAVING SUM(amount) < 10 OR SUM(amount) IS NULL
ORDER BY Количество;
-- 2.2.7
SELECT name_author
FROM 
    author INNER JOIN book
    on author.author_id = book.author_id
GROUP BY name_author
        HAVING COUNT(distinct(genre_id)) = 1;
-- 2.2.8
SELECT   title, name_author, name_genre, price, amount
FROM 
    book 
    INNER JOIN genre ON book.genre_id = genre.genre_id
    INNER JOIN author ON  book.author_id = author.author_id
WHERE genre.genre_id IN
         (SELECT query_in_1.genre_id
          FROM 
              (SELECT genre_id, SUM(amount) AS sum_amount
                FROM book
                GROUP BY genre_id
               )query_in_1
          INNER JOIN 
              ( SELECT genre_id, SUM(amount) AS sum_amount
                FROM book
                GROUP BY genre_id
                ORDER BY sum_amount DESC
                LIMIT 1
               ) query_in_2
          ON query_in_1.sum_amount= query_in_2.sum_amount
         ) ORDER BY title;   
-- 2.2.9
SELECT title AS Название, name_author AS Автор, SUM(book.amount + supply.amount) AS Количество
FROM supply
INNER JOIN book USING(price,title)
INNER JOIN author ON author.name_author = supply.author
GROUP BY author.name_author, book.title;
-- 2.2.10
SELECT title AS Название, name_author AS Автор, SUM(book.amount + supply.amount) AS Количество
FROM supply
INNER JOIN book USING(price,title)
INNER JOIN author ON author.name_author = supply.author
GROUP BY author.name_author, book.title;

-- 2.3.2
UPDATE book
INNER JOIN author ON author.author_id = book.author_id
INNER JOIN supply ON book.title = supply.title
and supply.author = author.name_author
SET book.price = (book.price * book.amount + supply.price * supply.amount)/(book.amount + supply.amount) , book.amount = book.amount + supply.amount, supply.amount = 0
WHERE book.price <> supply.price;

SELECT * FROM book;

SELECT * FROM supply;
-- 2.3.3
INsert into author (name_author)
SELECT supply.author
FROM  author
RIGHT JOIN supply on author.name_author = supply.author
WHERE name_author IS Null;

select * from author;
-- 2.3.4
INSERT INTO book(title, author_id, price, amount)
SELECT title, author_id, price, amount
FROM
author
INNER JOIN supply ON author.name_author = supply.author
WHERE amount <> 0;

SELECT * FROM book;
-- 2.3.5
UPDATE book
SET genre_id = 
      (
       SELECT genre_id 
       FROM genre 
       WHERE name_genre = 'Поэзия'
      )
WHERE book_id = 10;

SELECT * FROM book;

UPDATE book
SET genre_id = 
      (
       SELECT genre_id 
       FROM genre 
       WHERE name_genre = 'Приключения'
      )
WHERE book_id = 11;

SELECT * FROM book;
-- 2.3.6
DELETE FROM author
WHERE author_id IN(
SELECT author_id
FROM book
GROUP BY author_id
HAVING SUM(amount) < 20
);
SELECT * FROM book;
-- 2.3.7
DELETE FROM genre
WHERE genre_id IN(
SELECT genre_id
FROM book
GROUP BY genre_id
HAVING COUNT(book_id) < 4
);
SELECT * FROM book;

SELECT * FROM genre;
-- 2.3.8
DELETE FROM author 
USING 
    author
     INNER JOIN book ON author.author_id = book.author_id
     INNER JOIN genre ON genre.genre_id = book.genre_id
WHERE name_genre LIKE "Поэзия";

SELECT * FROM author;

SELECT * FROM book;
-- 2.3.9
DELETE FROM author 
USING 
    author
     INNER JOIN book ON author.author_id = book.author_id
     INNER JOIN genre ON genre.genre_id = book.genre_id
WHERE name_genre LIKE "Поэзия";

SELECT * FROM author;

SELECT * FROM book;

-- 2.4.5
SELECT buy.buy_id,title,  price, buy_book.amount
FROM client INNER JOIN buy USING(client_id)
    INNER JOIN buy_book USING(buy_id)
    INNER JOIN book USING(book_id)
WHERE name_client = 'Баранов Павел'
ORDER BY buy_id, book.title;
-- 2.4.6
SELECT name_author, title, COUNT(buy_book.amount) AS Количество 
FROM author 
INNER JOIN book USING(author_id) 
LEFT JOIN buy_book USING(book_id) 
GROUP BY book.title, name_author 
ORDER BY name_author, title;
-- 2.4.7
SELECT name_city, COUNT(buy_id) AS 'Количество' FROM 
city
inner join client ON city.city_id = client.city_id
inner join buy ON client.client_id = buy.client_id
group by  name_city 
ORDER BY name_city ASC;
-- 2.4.8
SELECT buy_id, date_step_end
FROM buy_step
WHERE step_id = 1 AND date_step_end IS NOT NULL
ORDER BY date_step_end;
-- 2.4.9
select buy_id,name_client,sum(book.price*buy_book.amount) as Стоимость
from buy_book
join buy using(buy_id)
JOIN client using(client_id)
join book using(book_id)
Group BY buy_id,name_client
  ORDER BY buy_id;
-- 2.4.10
SELECT buy_id, name_step
FROM step INNER JOIN buy_step ON step.step_id = buy_step.step_id
WHERE date_step_beg IS NOT NULL AND date_step_end IS NULL
ORDER BY buy_id;
-- 2.4.11
SELECT
  buy_step.buy_id,
  datediff(date_step_end, date_step_beg) as 'Количество_дней',
  IF(days_delivery - datediff(date_step_end, date_step_beg)>0, 0,abs(days_delivery - datediff(date_step_end,           date_step_beg)))  as 'Опоздание'
FROM
  buy_step
  INNER JOIN step
  ON buy_step.step_id = step.step_id
  INNER JOIN buy
  ON buy_step.buy_id = buy.buy_id
  INNER JOIN client
  ON buy.client_id = client.client_id
  INNER JOIN city
  ON client.city_id = city.city_id
WHERE
  name_step IN ('Транспортировка')
  and
  date_step_end IS NOT NULL;
-- 2.4.12
select distinct name_client
from client
inner join buy using(client_id)
inner join buy_book using(buy_id)
inner join book using(book_id)
inner join author using(author_id)
where name_author like 'Достоевск%'
order by name_client;
-- 2.4.13
SELECT name_genre, Количество
FROM
    (SELECT name_genre, sum(amount_1) as Количество
        FROM (SELECT book_id, SUM(amount) AS amount_1
        FROM buy_book
        GROUP BY book_id) AS temp
        INNER JOIN book ON temp.book_id = book.book_id
        INNER JOIN genre ON book.genre_id = genre.genre_id
        GROUP BY name_genre) as k
        where k.Количество IN (SELECT MAX(t.Количество) as n
                               FROM( SELECT name_genre, sum(amount_1) as Количество
                               FROM (SELECT book_id, SUM(amount) AS amount_1
                               FROM buy_book
                               GROUP BY book_id) AS temp
                               INNER JOIN book ON temp.book_id = book.book_id
                               INNER JOIN genre ON book.genre_id = genre.genre_id
                               GROUP BY name_genre) as t);
-- 2.4.14
SELECT YEAR(date_payment) AS Год, MONTHNAME(date_payment)AS Месяц, SUM(price*amount) AS Сумма
FROM buy_archive
GROUP BY Год, Месяц
UNION
SELECT YEAR(date_step_end) AS Год, MONTHNAME(date_step_end)AS Месяц, SUM(price*buy_book.amount) AS Сумма
FROM buy_step
        INNER JOIN buy_book USING(buy_id)
    INNER JOIN book USING(book_id)
        where date_step_end is not null and step_id = 1
        GROUP BY Год, Месяц
        ORDER BY Месяц ASC, Год ASC;
-- 2.4.15
SELECT title, sum(Количество) as 'Количество', sum(Сумма) as 'Сумма'
FROM
(select title, sum(buy_archive.amount) as 'Количество', sum(buy_archive.price*buy_archive.amount) as 'Сумма' from buy_archive
JOIN book USING(book_id)
group by title
union all
select title, sum(buy_book.amount) as 'Количество', sum(price*buy_book.amount) as 'Сумма' from book
JOIN buy_book using (book_id)
JOIN buy_step using (buy_id)
JOIN step using (step_id)
where step.name_step = 'Оплата' and buy_step.date_step_end is not null
group by title) as query_in
group by title
order by Сумма desc;
-- 2.4.16
SELECT title, sum(Количество) as 'Количество', sum(Сумма) as 'Сумма'
FROM
(select title, sum(buy_archive.amount) as 'Количество', sum(buy_archive.price*buy_archive.amount) as 'Сумма' from buy_archive
JOIN book USING(book_id)
group by title
union all
select title, sum(buy_book.amount) as 'Количество', sum(price*buy_book.amount) as 'Сумма' from book
JOIN buy_book using (book_id)
JOIN buy_step using (buy_id)
JOIN step using (step_id)
where step.name_step = 'Оплата' and buy_step.date_step_end is not null
group by title) as query_in
group by title
order by Сумма desc;

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
