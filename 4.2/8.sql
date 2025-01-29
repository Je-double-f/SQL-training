SELECT author, title, amount, price AS real_price,
       ROUND(IF(price * amount > 5000, price * 1.2, price * 0.8), 2) AS new_price,
       ROUND(IF(price <= 500, 99.99, IF(amount < 5, 149.99, 0.00)), 2) AS delivery_price
  FROM book
 WHERE author IN('Булгаков М.А.', 'Есенин С.А.') AND amount BETWEEN 3 AND 14
 ORDER BY author, title DESC, delivery_price;


+---------------+--------------------+--------+------------+-----------+----------------+
| author        | title              | amount | real_price | new_price | delivery_price |
+---------------+--------------------+--------+------------+-----------+----------------+
| Булгаков М.А. | Мастер и Маргарита | 3      | 670.99     | 536.79    | 149.99         |
| Булгаков М.А. | Белая гвардия      | 5      | 540.50     | 432.40    | 0.00           |
| Есенин С.А.   | Черный человек     | 5      | 670.99     | 536.79    | 0.00           |
+---------------+--------------------+--------+------------+-----------+----------------+