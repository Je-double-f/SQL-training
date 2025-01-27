DELETE FROM testing
WHERE attempt_id IN(
                    SELECT attempt_id
                      FROM attempt
                     WHERE date_attempt > '2020-04-01'
                   );


DELETE FROM attempt
WHERE date_attempt > '2020-04-01';

SELECT * FROM attempt;
SELECT * FROM testing;


+------------+------------+------------+--------------+--------+
| attempt_id | student_id | subject_id | date_attempt | result |
+------------+------------+------------+--------------+--------+
| 1          | 1          | 2          | 2020-03-23   | 67     |
| 2          | 3          | 1          | 2020-03-23   | 100    |
| 3          | 4          | 2          | 2020-03-26   | 0      |
+------------+------------+------------+--------------+--------+

----------------------------------------------------------------------

+------------+------------+-------------+-----------+
| testing_id | attempt_id | question_id | answer_id |
+------------+------------+-------------+-----------+
| 1          | 1          | 9           | 25        |
| 2          | 1          | 7           | 19        |
| 3          | 1          | 6           | 17        |
| 4          | 2          | 3           | 9         |
| 5          | 2          | 1           | 2         |
| 6          | 2          | 4           | 11        |
| 7          | 3          | 6           | 18        |
| 8          | 3          | 8           | 24        |
| 9          | 3          | 9           | 28        |
+------------+------------+-------------+-----------+