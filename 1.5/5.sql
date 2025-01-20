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
       ('Стихотворения и поэмы', 'Есенин С.А.', 650.00, 15);

UPDATE book 
SET price = price * 0.9
WHERE amount BETWEEN 5 AND 10;

SELECT * FROM book;