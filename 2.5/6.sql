CREATE TABLE buy_pay AS
SELECT buy_id, SUM(buy_book.amount) AS Количество, SUM(price*buy_book.amount) AS Итого
  FROM book
       INNER JOIN buy_book USING(book_id)
       INNER JOIN      buy USING(buy_id)
 WHERE buy_book.buy_id = 5;

SELECT * FROM buy_pay;


+--------+------------+---------+
| buy_id | Количество | Итого   |
+--------+------------+---------+
| 5      | 3          | 1578.48 |
+--------+------------+---------+