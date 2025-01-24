--   SELECT title AS Название, name_author AS Автор,
--        (
--         SELECT book.amount + supply.amount
--           FROM supply INNER JOIN book ON book.title = supply.title AND book.price = supply.price
--        ) AS Количество;
--     FROM author INNER JOIN book USING(author_id)
--                 INNER JOIN supply ON book.title = supply.title
-- GROUP BY Название, Автор, Количество;
CREATE TABLE supply (
  supply_id INT PRIMARY KEY,
  title VARCHAR(255),
  author VARCHAR(255),
  price DECIMAL(10, 2),
  amount INT
);

INSERT INTO supply (supply_id, title, author, price, amount) 
VALUES (1, 'Доктор Живаго', 'Пастернак Б.Л.', 618.99, 3),
       (2, 'Черный человек', 'Есенин С.А.', 570.20, 6),
       (3, 'Евгений Онегин', 'Пушкин А.С.', 440.80, 5),
       (4, 'Идиот', 'Достоевский Ф.М.', 360.80, 3);