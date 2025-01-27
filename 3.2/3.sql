UPDATE attempt
SET result = (
              SELECT ROUND(SUM(is_correct / 3 * 100), 2)
                FROM answer
                     INNER JOIN testing USING(answer_id)
               WHERE attempt_id = 8
             )
WHERE attempt_id = 8;

SELECT * FROM attempt;


+------------+------------+------------+--------------+--------+
| attempt_id | student_id | subject_id | date_attempt | result |
+------------+------------+------------+--------------+--------+
| 1          | 1          | 2          | 2020-03-23   | 67     |
| 2          | 3          | 1          | 2020-03-23   | 100    |
| 3          | 4          | 2          | 2020-03-26   | 0      |
| 4          | 1          | 1          | 2020-04-15   | 33     |
| 5          | 3          | 1          | 2020-04-15   | 67     |
| 6          | 4          | 2          | 2020-04-21   | 100    |
| 7          | 3          | 1          | 2020-05-17   | 33     |
| 8          | 1          | 2          | 2020-06-12   | 67     |
+------------+------------+------------+--------------+--------+