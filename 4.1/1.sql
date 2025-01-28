SELECT
    CASE
        WHEN price < 600 THEN 0
        WHEN price >= 600 AND price < 700 THEN 600
        WHEN price >= 700 AND price < 1000 THEN 700
    END AS beg_range,
    CASE
        WHEN price < 600 THEN 600
        WHEN price >= 600 AND price < 700 THEN 700
        WHEN price >= 700 AND price < 1000 THEN 10000
    END AS end_range,
    ROUND(AVG(price), 2) AS Средняя_цена,
    ROUND(SUM(price*amount), 2) AS Стоимость,
    COUNT(price * amount) AS Количество
  FROM book
 GROUP BY beg_range, end_range
 ORDER BY Стоимость DESC;


+-----------+-----------+--------------+-----------+------------+
| beg_range | end_range | Средняя_цена | Стоимость | Количество |
+-----------+-----------+--------------+-----------+------------+
| 0         | 600       | 493.67       | 12107.50  | 3          |
| 600       | 700       | 660.50       | 11762.97  | 2          |
| 700       | 10000     | 799.01       | 2397.03   | 1          |
+-----------+-----------+--------------+-----------+------------+