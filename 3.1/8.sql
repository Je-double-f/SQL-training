SELECT name_student, name_subject, date_attempt, ROUND(SUM(is_correct / 3 * 100), 2) AS Результат
  FROM answer
        JOIN testing USING(answer_id)
        JOIN attempt USING(attempt_id)
        JOIN subject USING(subject_id)     
        JOIN student USING(student_id)
 GROUP BY name_student, name_subject, date_attempt
 ORDER BY name_student, date_attempt DESC;


 +-----------------+-------------------+--------------+-----------+
| name_student    | name_subject      | date_attempt | Результат |
+-----------------+-------------------+--------------+-----------+
| Баранов Павел   | Основы SQL        | 2020-04-15   | 33.33     |
| Баранов Павел   | Основы баз данных | 2020-03-23   | 66.67     |
| Семенов Иван    | Основы SQL        | 2020-05-17   | 33.33     |
| Семенов Иван    | Основы SQL        | 2020-04-15   | 66.67     |
| Семенов Иван    | Основы SQL        | 2020-03-23   | 100.00    |
| Яковлева Галина | Основы баз данных | 2020-04-21   | 100.00    |
| Яковлева Галина | Основы баз данных | 2020-03-26   | 0.00      |
+-----------------+-------------------+--------------+-----------+