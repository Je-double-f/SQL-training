INSERT INTO buy_book(buy_id, book_id, amount)
SELECT (SELECT MAX(buy_id) AS buy_id
          FROM client
               INNER JOIN buy USING (client_id) 
               INNER JOIN buy_book USING(buy_id)
         WHERE name_client = "Баранов Павел"), book_id, 1
  FROM book 
       LEFT JOIN author USING (author_id)
 WHERE name_author = "Достоевский Ф.М.";
 
 
SELECT * FROM buy_book;



+-------------+--------+---------+--------+
| buy_book_id | buy_id | book_id | amount |
+-------------+--------+---------+--------+
| 1           | 1      | 1       | 1      |
| 2           | 1      | 7       | 2      |
| 3           | 2      | 8       | 2      |
| 4           | 3      | 3       | 2      |
| 5           | 3      | 2       | 1      |
| 6           | 3      | 1       | 1      |
| 7           | 4      | 5       | 1      |
| 8           | 5      | 8       | 2      |
| 9           | 5      | 2       | 1      |
| 10          | 4      | 3       | 1      |
| 11          | 4      | 4       | 1      |
| 12          | 4      | 5       | 1      |
+-------------+--------+---------+--------+