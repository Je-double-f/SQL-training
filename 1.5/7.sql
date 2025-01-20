CREATE TABLE book(
    book_id INTEGER PRIMARY KEY,
      title TEXT,
     author TEXT,
      price DECIMAL,
     amount INTEGER,
        buy INTEGER
);


CREATE TABLE supply(
       supply_id INTEGER PRIMARY KEY,
           title TEXT,
          author TEXT,
           price DECIMAL(8,2),
          amount INT
);

INSERT INTO book(title, author, price, amount, buy)
VALUES ('Мастер и Маргарита', 'Булгаков М.А.', 670.99, 3, 0),
       ('Белая гвардия', 'Булгаков М.А.', 540.50, 5, 3),
       ('Идиот', 'Достоевский Ф.М.',460.00, 10, 8),
       ('Братья Карамазовы', 'Достоевский Ф.М.', 799.01, 3, 0),
       ('Стихотворения и поэмы', 'Есенин С.А.', 650.00, 15, 18);

INSERT INTO supply(title, author, price, amount)
VALUES  ('Лирика', 'Пастернак Б.Л.', 518.99, 2),
        ('Чёрный человек', 'Есенин С.А.', 570.20, 6),
        ('Белая гвардия', 'Булгаков М.А.', 540.50, 7),
        ('Идиот', 'Достоевский Ф.М.', 360.80, 3);

UPDATE book
   SET amount = book.amount + supply.amount,
       price = (book.price + supply.price) / 2
  FROM supply
 WHERE book.title = supply.title AND book.author = supply.author;


SELECT * FROM book;