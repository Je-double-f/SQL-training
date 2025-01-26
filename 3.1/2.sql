SELECT name_subject, 
       COUNT(attempt.subject_id) AS Количество, 
       ROUND(AVG(result), 2) AS Среднее
FROM subject
LEFT JOIN attempt USING(subject_id)
GROUP BY name_subject
ORDER BY Среднее DESC;


+-------------------+------------+---------+
| name_subject      | Количество | Среднее |
+-------------------+------------+---------+
| Основы SQL        | 4          | 58.25   |
| Основы баз данных | 3          | 55.67   |
| Физика            | 0          | NULL    |
+-------------------+------------+---------+