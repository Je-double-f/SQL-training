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

SELECT author AS Автор, title AS Название, price AS Цена, amount AS Количество, price*amount AS 'Общая стоимость'
FROM book
WHERE title LIKE '_% _%'
GROUP BY author,title,price,amount
HAVING price*amount > 2100
ORDER BY 5 DESC;