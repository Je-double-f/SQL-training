SELECT author, title, ROUND(price-MOD(price, 1)) AS Рубли, ROUND(MOD(price, 1)*100) AS Копейки
  FROM book
ORDER BY Копейки DESC;


+------------------+-----------------------+-------+---------+
| author           | title                 | Рубли | Копейки |
+------------------+-----------------------+-------+---------+
| Булгаков М.А.    | Мастер и Маргарита    | 670   | 99      |
| Есенин С.А.      | Черный человек        | 670   | 99      |
| Булгаков М.А.    | Белая гвардия         | 540   | 50      |
| Достоевский Ф.М. | Игрок                 | 480   | 50      |
| Достоевский Ф.М. | Братья Карамазовы     | 799   | 1       |
| Достоевский Ф.М. | Идиот                 | 460   | 0       |
| Есенин С.А.      | Стихотворения и поэмы | 650   | 0       |
+------------------+-----------------------+-------+---------+