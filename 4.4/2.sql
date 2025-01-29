INSERT INTO attempt(student_id, subject_id, date_attempt)
SELECT student_id, subject_id, CURDATE()
FROM (
      SELECT student_id, subject_id, COUNT(student_id) AS Количество, MAX(result) AS max_result
        FROM attempt
       GROUP BY student_id, subject_id
     ) AS temp
WHERE Количество < 3 AND max_result < 70;

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
| 8          | 1          | 2          | 2025-01-29   | NULL   |
| 9          | 1          | 1          | 2025-01-29   | NULL   |
+------------+------------+------------+--------------+--------+