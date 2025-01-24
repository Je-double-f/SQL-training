  SELECT title, name_author, name_genre, price, amount
    FROM author INNER JOIN book  ON author.author_id = book.author_id
                INNER JOIN genre ON genre.genre_id = book.genre_id
GROUP BY title, name_author, name_genre, price, amount, genre.genre_id
  HAVING genre.genre_id IN(
        SELECT genre_amount.genre_id
          FROM (
            SELECT genre_id, SUM(amount) AS sum_amount
              FROM book
          GROUP BY genre_id
          ) AS genre_amount
        INNER JOIN (
              SELECT genre_id, SUM(amount) AS sum_amount
                FROM book
            GROUP BY genre_id
            ORDER BY sum_amount DESC
             LIMIT 1
        ) AS max_amount
        ON genre_amount.sum_amount = max_amount.sum_amount
       )
ORDER BY title ASC;