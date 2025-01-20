CREATE TABLE supply(
       supply_id INTEGER PRIMARY KEY,
       title TEXT,
       author TEXT,
       price DECIMAL(8,2),
       amount INT
);

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

INSERT INTO supply(title, author, price, amount)
VALUES  ('Лирика', 'Пастернак Б.Л.', 518.99, 2),
        ('Чёрный человек', 'Есенин С.А.', 570.20, 6),
        ('Белая гвардия', 'Булгаков М.А.', 540.50, 7),
        ('Идиот', 'Достоевский Ф.М.', 360.80, 3);

INSERT INTO book(title, author, price, amount)
SELECT title, author, price, amount
FROM supply
WHERE author NOT IN (
    SELECT author
    FROM book
);

SELECT * FROM book;