SELECT CONCAT('Графоман и ',author) AS Автор,
    CONCAT(title,'. Краткое содержание.') AS Название,
    IF(price*0.4 > 250,250,round(price*0.4,3)) AS Цена,
    IF(amount <= 3,'высокий',if(amount <= 10,'средний','низкий')) AS Спрос,
    IF(amount <= 2,'очень мало',if(amount <= 14,'в наличии','много')) AS Наличие
FROM book
ORDER BY Цена, amount, Название;



+-----------------------------+--------------------------------------------+---------+---------+------------+
| Автор                       | Название                                   | Цена    | Спрос   | Наличие    |
+-----------------------------+--------------------------------------------+---------+---------+------------+
| Графоман и Достоевский Ф.М. | Идиот. Краткое содержание.                 | 184.000 | средний | в наличии  |
| Графоман и Достоевский Ф.М. | Игрок. Краткое содержание.                 | 192.200 | средний | в наличии  |
| Графоман и Булгаков М.А.    | Белая гвардия. Краткое содержание.         | 216.200 | средний | в наличии  |
| Графоман и Достоевский Ф.М. | Братья Карамазовы. Краткое содержание.     | 250     | высокий | очень мало |
| Графоман и Булгаков М.А.    | Мастер и Маргарита. Краткое содержание.    | 250     | высокий | в наличии  |
| Графоман и Есенин С.А.      | Черный человек. Краткое содержание.        | 250     | средний | в наличии  |
| Графоман и Есенин С.А.      | Стихотворения и поэмы. Краткое содержание. | 250     | низкий  | много      |
+-----------------------------+--------------------------------------------+---------+---------+------------+