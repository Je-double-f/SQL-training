SET @temp := 0;
SET @temp2 := 1;

UPDATE applicant_order 
   SET str_id = IF(program_id = @temp2, @temp := @temp + 1, @temp := 1 AND @temp2 := program_id);

SELECT * FROM applicant_order;


+--------+------------+-------------+------+
| str_id | program_id | enrollee_id | itog |
+--------+------------+-------------+------+
| 1      | 1          | 3           | 235  |
| 2      | 1          | 2           | 226  |
| 3      | 1          | 1           | 219  |
| 1      | 2          | 6           | 276  |
| 2      | 2          | 3           | 235  |
| 3      | 2          | 2           | 226  |
| 1      | 3          | 6           | 270  |
| 2      | 3          | 4           | 239  |
| 3      | 3          | 5           | 200  |
| 1      | 4          | 6           | 270  |
| 2      | 4          | 3           | 247  |
| 3      | 4          | 5           | 200  |
+--------+------------+-------------+------+