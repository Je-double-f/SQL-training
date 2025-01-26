SELECT name_student, name_subject, DATEDIFF(MAX(date_attempt), MIN(date_attempt)) AS Интервал
  FROM subject
       INNER JOIN attempt USING(subject_id)
       INNER JOIN student USING(student_id)
GROUP BY name_student, name_subject
  HAVING COUNT(attempt_id) > 1
ORDER BY Интервал ASC;


+-----------------+-------------------+----------+
| name_student    | name_subject      | Интервал |
+-----------------+-------------------+----------+
| Яковлева Галина | Основы баз данных | 26       |
| Семенов Иван    | Основы SQL        | 55       |
+-----------------+-------------------+----------+