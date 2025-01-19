CREATE TABLE book(
    book_id INTEGER PRIMARY KEY,
    title TEXT,
    author TEXT,
    price DECIMAL,
    amount INTEGER
);

INSERT INTO book(title, author, price, amount)
VALUES ('Мастер и Маргарита', 'Булгаков М.А.', 670.99, 3),
       ('Белая гвардия', 'Булгаков М.А.', 540.50,5),
       ('Идиот', 'Достоевский Ф.М.',460.00, 10),
       ('Братья Карамазовы', 'Достоевский Ф.М.', 799.01, 3),
       ('Игрок', 'Достоевский Ф.М.', 480.50, 10),
       ('Стихотворения и поэмы', 'Есенин С.А.', 650.00, 15);

SELECT title AS Книга, author AS Автор, SUM(amount) AS 'Количество экземпляров', 
       SUM(price*amount) AS 'Общая стоимость всех книг', ROUND(AVG(price) ,2) AS 'Средняя стоимость книги',
       MIN(price) AS 'Минимальная стоимость книги', MAX(price) AS 'Максимальная стоимость книги' 
FROM book
WHERE title LIKE '_% _%'
GROUP BY title, author
HAVING AVG(price) BETWEEN 670 AND 800
ORDER BY author;