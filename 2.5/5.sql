CREATE TABLE buy_pay AS
SELECT title, name_author, price, buy_book.amount, price*buy_book.amount AS Стоимость
  FROM book
       INNER JOIN   author USING(author_id)
       INNER JOIN buy_book USING(book_id)
 WHERE buy_book.buy_id = (
                          SELECT buy_id
                            FROM buy
                           WHERE buy_description = 'Связаться со мной по вопросу доставки'
                         )
ORDER BY title;

SELECT * FROM buy_pay;


+---------------+----------------+--------+--------+-----------+
| title         | name_author    | price  | amount | Стоимость |
+---------------+----------------+--------+--------+-----------+
| Белая гвардия | Булгаков М.А.  | 540.50 | 1      | 540.50    |
| Лирика        | Пастернак Б.Л. | 518.99 | 2      | 1037.98   |
+---------------+----------------+--------+--------+-----------+