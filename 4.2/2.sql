WITH genre_totals AS (
    SELECT name_genre, SUM(buy_book.amount) AS total_amount
      FROM buy_book
           INNER JOIN  book USING(book_id)
           INNER JOIN genre USING(genre_id)
     GROUP BY name_genre
),

min_total AS (
    SELECT MIN(total_amount) AS min_amount
      FROM genre_totals
)

SELECT name_genre, total_amount AS Количество
  FROM genre_totals
 WHERE total_amount = (SELECT min_amount FROM min_total);


+------------+------------+
| name_genre | Количество |
+------------+------------+
| Поэзия     | 4          |
+------------+------------+