CREATE TABLE store AS

WITH united AS(
    SELECT title, author, price, amount
      FROM book
     UNION ALL
    SELECT title, author, price, amount
      FROM supply
)

SELECT title, author, MAX(price) AS price, SUM(amount) AS amount
  FROM united
 GROUP BY title, author
HAVING amount > (SELECT AVG(amount) FROM united)
 ORDER BY author ASC, price DESC;

SELECT * FROM store;



+-----------------------+------------------+--------+--------+
| title                 | author           | price  | amount |
+-----------------------+------------------+--------+--------+
| Белая гвардия         | Булгаков М.А.    | 540.50 | 12     |
| Игрок                 | Достоевский Ф.М. | 480.50 | 10     |
| Идиот                 | Достоевский Ф.М. | 460.00 | 13     |
| Стихотворения и поэмы | Есенин С.А.      | 650.00 | 15     |
+-----------------------+------------------+--------+--------+