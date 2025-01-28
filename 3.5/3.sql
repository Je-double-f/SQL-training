SELECT DISTINCT CONCAT(module_id, '.', lesson_position, '.', LPAD(step_position, 2, '0'), ' ', step_name) AS Шаг
FROM step_keyword
    INNER JOIN keyword USING(keyword_id)
    INNER JOIN    step USING(step_id)
    INNER JOIN  lesson USING(lesson_id)
    INNER JOIN  module USING(module_id)
WHERE keyword_name = 'MAX'
GROUP BY Шаг
ORDER BY Шаг;


+---------------------------------------------------------+
| Шаг                                                     |
+---------------------------------------------------------+
| 1.3.04 Выборка данных, групповые функции MIN, MAX и AVG |
| 1.4.06 Вложенный запрос после SELECT                    |
+---------------------------------------------------------+