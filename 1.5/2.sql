CREATE TABLE supply(
       supply_id INTEGER PRIMARY KEY,
       title TEXT,
       author TEXT,
       price DECIMAL(8,2),
       amount INT
);

INSERT INTO supply(title, author, price, amount)
VALUES  ('Лирика', 'Пастернак Б.Л.', 518.99, 2),
        ('Чёрный человек', 'Есенин С.А.', 570.20, 6),
        ('Белая гвардия', 'Булгаков М.А.', 540.50, 7),
        ('Идиот', 'Достоевский Ф.М.', 360.80, 3);