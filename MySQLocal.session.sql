CREATE TABLE genres (
  genre_id   INT PRIMARY KEY,
  name_genre VARCHAR(255)
);

INSERT INTO genres (genre_id, name_genre) 
VALUES (1, 'Роман'),
       (2, 'Поэзия'),
       (3, 'Приключения');
       
CREATE TABLE authors (
  author_id   INT PRIMARY KEY,
  name_author VARCHAR(255)
);

INSERT INTO authors (author_id, name_author) 
VALUES (1, 'Булгаков М.А.'),
       (2, 'Достоевский Ф.М.'),
       (3, 'Есенин С.А.'),
       (4, 'Пастернак Б.Л.'),
       (5, 'Лермонтов М.Ю.');

CREATE TABLE books (
  book_id   INT PRIMARY KEY,
  title     VARCHAR(255),
  author_id INT,
  genre_id  INT,
  price     DECIMAL(10, 2),
  amount    INT
);

INSERT INTO books (book_id, title, author_id, genre_id, price, amount)
VALUES (1, 'Мастер и Маргарита', 1, 1, 670.99, 3),
       (2, 'Белая гвардия', 1, 1, 540.50, 5),
       (3, 'Идиот', 2, 1, 460.00, 10),
       (4, 'Братья Карамазовы', 2, 1, 799.01, 3),
       (5, 'Игрок', 2, 1, 480.50, 10),
       (6, 'Стихотворения и поэмы', 3, 2, 650.00, 15),
       (7, 'Черный человек', 3, 2, 570.20, 6),
       (8, 'Лирика', 4, 2, 518.99, 2);