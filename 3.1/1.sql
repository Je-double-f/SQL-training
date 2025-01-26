SELECT name_student, date_attempt, result
  FROM subject
       INNER JOIN attempt USING(subject_id)
       INNER JOIN student USING(student_id)
 WHERE name_subject = 'Основы баз данных'
ORDER BY result DESC;


+-----------------+--------------+--------+
| name_student    | date_attempt | result |
+-----------------+--------------+--------+
| Яковлева Галина | 2020-04-21   | 100    |
| Баранов Павел   | 2020-03-23   | 67     |
| Яковлева Галина | 2020-03-26   | 0      |
+-----------------+--------------+--------+