INSERT INTO testing(attempt_id, question_id)
SELECT (SELECT MAX(attempt_id) FROM attempt) AS МАКС, question_id
  FROM question
 WHERE subject_id = 2
ORDER BY RAND() 
LIMIT 3;

SELECT * FROM testing;



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
| 10         | 4          | 1           | 2         |
| 11         | 4          | 5           | 16        |
| 12         | 4          | 3           | 10        |
| 13         | 5          | 2           | 6         |
| 14         | 5          | 1           | 2         |
| 15         | 5          | 4           | 12        |
| 16         | 6          | 6           | 17        |
| 17         | 6          | 8           | 22        |
| 18         | 6          | 7           | 21        |
| 19         | 7          | 1           | 3         |
| 20         | 7          | 4           | 11        |
| 21         | 7          | 5           | 16        |
| 22         | 8          | 9           | NULL      |
| 23         | 8          | 8           | NULL      |
| 24         | 8          | 6           | NULL      |
+------------+------------+-------------+-----------+