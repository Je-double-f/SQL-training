CREATE TABLE book(
    book_id INTEGER PRIMARY KEY,
    title TEXT,
    author TEXT,
    price DECIMAL,
    amount INTEGER
);

INSERT INTO book(book_id, title, author, price, amount)
VALUES (1, 'Мастер и Маргарита', 'Булгаков М.А.', 670.99, 3),
       (2, 'Белая гвардия', 'Булгаков М.А.', 540.50,5),
       (3, 'Идиот', 'Достоевский Ф.М.',460.00, 10),
       (4, 'Братья Карамазовы', 'Достоевский Ф.М.', 799.01, 2),
       (5, 'Стихотворения и поэмы', 'Есенин С.А.', 650.00, 15);

SELECT title, author, amount,
    ROUND (price*0.7, 2) AS new_price
FROM book;