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

SELECT author, title,
    ROUND(price *
        (CASE
            WHEN author = 'Есенин С.А.' THEN 1.05
            WHEN author = 'Булгаков М.А.' THEN 1.10
            ELSE 1.00
        END)
    , 2) AS new_price
FROM book;