DELETE FROM testing
WHERE attempt_id IN(
                    SELECT attempt_id
                      FROM attempt
                     WHERE date_attempt < '2020-05-01'
                   );


DELETE FROM attempt
WHERE date_attempt < '2020-05-01';

SELECT * FROM attempt;
SELECT * FROM testing;


+------------+------------+------------+--------------+--------+
| attempt_id | student_id | subject_id | date_attempt | result |
+------------+------------+------------+--------------+--------+
| 7          | 3          | 1          | 2020-05-17   | 33     |
| 8          | 1          | 2          | 2020-06-12   | 67     |
+------------+------------+------------+--------------+--------+

+------------+------------+-------------+-----------+
| testing_id | attempt_id | question_id | answer_id |
+------------+------------+-------------+-----------+
| 19         | 7          | 1           | 3         |
| 20         | 7          | 4           | 11        |
| 21         | 7          | 5           | 16        |
| 22         | 8          | 7           | 19        |
| 23         | 8          | 6           | 17        |
| 24         | 8          | 8           | 22        |
+------------+------------+-------------+-----------+