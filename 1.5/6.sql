CREATE TABLE book(
    book_id INTEGER PRIMARY KEY,
    title TEXT,
    author TEXT,
    price DECIMAL,
    amount INTEGER,
    buy INTEGER
);

INSERT INTO book(title, author, price, amount, buy)
VALUES ('Мастер и Маргарита', 'Булгаков М.А.', 670.99, 3, 0),
       ('Белая гвардия', 'Булгаков М.А.', 540.50, 5, 3),
       ('Идиот', 'Достоевский Ф.М.',460.00, 10, 8),
       ('Братья Карамазовы', 'Достоевский Ф.М.', 799.01, 3, 0),
       ('Стихотворения и поэмы', 'Есенин С.А.', 650.00, 15, 18);

UPDATE book
SET price = CASE
                WHEN buy = 0 THEN price * 0.9
                ELSE price
            END,
    buy  =  CASE
                WHEN buy >= amount THEN amount
                ELSE buy
            END;
SELECT * FROM book;