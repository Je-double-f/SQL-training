ALTER TABLE applicant_order ADD str_id INT FIRST;
SELECT * FROM applicant_order;


+--------+------------+-------------+------+
| str_id | program_id | enrollee_id | itog |
+--------+------------+-------------+------+
| NULL   | 1          | 3           | 235  |
| NULL   | 1          | 2           | 226  |
| NULL   | 1          | 1           | 219  |
| NULL   | 2          | 6           | 276  |
| NULL   | 2          | 3           | 235  |
| NULL   | 2          | 2           | 226  |
| NULL   | 3          | 6           | 270  |
| NULL   | 3          | 4           | 239  |
| NULL   | 3          | 5           | 200  |
| NULL   | 4          | 6           | 270  |
| NULL   | 4          | 3           | 247  |
| NULL   | 4          | 5           | 200  |
+--------+------------+-------------+------+