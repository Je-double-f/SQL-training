INSERT INTO buy_book(buy_id, book_id, amount)
SELECT buy_id, (
            SELECT book_id
              FROM book
                   INNER JOIN author USING(author_id)
             WHERE title = 'Лирика' AND name_author = 'Пастернак Б.Л.'
           ), 2
FROM buy
WHERE buy_description = 'Связаться со мной по вопросу доставки';
       
INSERT INTO buy_book(buy_id, book_id, amount)
SELECT buy_id, (
            SELECT book_id
              FROM book
                   INNER JOIN author USING(author_id)
             WHERE title = 'Белая гвардия' AND name_author = 'Булгаков М.А.'
           ), 1
FROM buy
WHERE buy_description = 'Связаться со мной по вопросу доставки';

SELECT * FROM buy_book;


+-------------+--------+---------+--------+
| buy_book_id | buy_id | book_id | amount |
+-------------+--------+---------+--------+
| 1           | 1      | 1       | 1      |
| 2           | 1      | 7       | 2      |
| 3           | 1      | 3       | 1      |
| 4           | 2      | 8       | 2      |
| 5           | 3      | 3       | 2      |
| 6           | 3      | 2       | 1      |
| 7           | 3      | 1       | 1      |
| 8           | 4      | 5       | 1      |
| 9           | 5      | 8       | 2      |
| 10          | 5      | 2       | 1      |
+-------------+--------+---------+--------+