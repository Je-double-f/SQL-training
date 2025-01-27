CREATE TABLE applicant_order AS
SELECT * FROM applicant
ORDER BY program_id ASC, itog DESC;

DROP TABLE applicant;

SELECT * FROM applicant_order;


+------------+-------------+------+
| program_id | enrollee_id | itog |
+------------+-------------+------+
| 1          | 3           | 235  |
| 1          | 2           | 226  |
| 1          | 1           | 219  |
| 2          | 6           | 276  |
| 2          | 3           | 235  |
| 2          | 2           | 226  |
| 3          | 6           | 270  |
| 3          | 4           | 239  |
| 3          | 5           | 200  |
| 4          | 6           | 270  |
| 4          | 3           | 247  |
| 4          | 5           | 200  |
+------------+-------------+------+