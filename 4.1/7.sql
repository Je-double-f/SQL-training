SELECT author, COUNT(author) AS Количество_произведений, MIN(price) AS Минимальная_цена,
       SUM(amount) AS Число_книг
  FROM book
 WHERE amount > 1
 GROUP BY author
HAVING COUNT(author) > 1
 ORDER BY author;

+------------------+-------------------------+------------------+------------+
| author           | Количество_произведений | Минимальная_цена | Число_книг |
+------------------+-------------------------+------------------+------------+
| Булгаков М.А.    | 2                       | 540.50           | 8          |
| Достоевский Ф.М. | 3                       | 460.00           | 23         |
+------------------+-------------------------+------------------+------------+