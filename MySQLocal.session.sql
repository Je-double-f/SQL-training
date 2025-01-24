SELECT name_author
FROM authors INNER JOIN book IN author.author_id = book.author_id
GROUP BY name_author
HAVING COUNT(title) < 10 AS Количество
ORDER BY name_author ASC;