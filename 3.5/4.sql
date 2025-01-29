SELECT CASE
           WHEN amount <= 10 THEN 'I'
           WHEN amount <= 15 THEN 'II'
           WHEN amount <= 27 THEN 'III'
           ELSE 'IV'
        END AS Группа,
        CASE
           WHEN amount <= 10 THEN 'от 0 до 10'
           WHEN amount <= 15 THEN 'от 11 до 15'
           WHEN amount <= 27 THEN 'от 16 до 27'
           ELSE 'больше 27'
        END AS Интервал, COUNT(amount) AS Количество
  FROM (
       SELECT student_name, count(*) as amount
         FROM (
               SELECT student_name, step_id
                 FROM student 
                      INNER JOIN step_student USING(student_id)
                WHERE result = "correct"
                GROUP BY student_name, step_id
               ) query_in
         GROUP BY student_name 
         ORDER BY 2
       ) query_in_1
 GROUP BY Группа, Интервал;


 +--------+-------------+------------+
| Группа | Интервал    | Количество |
+--------+-------------+------------+
| I      | от 0 до 10  | 10         |
| II     | от 11 до 15 | 27         |
| III    | от 16 до 27 | 9          |
| IV     | больше 27   | 18         |
+--------+-------------+------------+