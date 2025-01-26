SELECT name_student, result
  FROM student
       INNER JOIN attempt USING(student_id)
 WHERE result = (
                SELECT MAX(result)
                  FROM attempt
               )
GROUP BY name_student, result
ORDER BY name_student;


+-----------------+--------+
| name_student    | result |
+-----------------+--------+
| Семенов Иван    | 100    |
| Яковлева Галина | 100    |
+-----------------+--------+