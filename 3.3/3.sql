SELECT name_subject, COUNT(enrollee_id) AS Количество, MAX(result) AS Максимум, MIN(result) AS Минимум, ROUND(AVG(result), 1) Среднее
  FROM enrollee_subject
       INNER JOIN subject USING(subject_id)
GROUP BY name_subject
ORDER BY name_subject;


+--------------+------------+----------+---------+---------+
| name_subject | Количество | Максимум | Минимум | Среднее |
+--------------+------------+----------+---------+---------+
| Информатика  | 4          | 94       | 75      | 82.0    |
| Математика   | 6          | 92       | 67      | 75.3    |
| Русский язык | 6          | 90       | 65      | 77.5    |
| Физика       | 5          | 90       | 41      | 69.8    |
+--------------+------------+----------+---------+---------+
