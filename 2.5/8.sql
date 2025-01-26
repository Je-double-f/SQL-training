UPDATE buy_step
   SET date_step_beg = '2020-04-12'
 WHERE buy_id = 5 AND step_id = 1;
 
 
SELECT * FROM buy_step
WHERE buy_step.buy_id = 5;


+-------------+--------+---------+---------------+---------------+
| buy_step_id | buy_id | step_id | date_step_beg | date_step_end |
+-------------+--------+---------+---------------+---------------+
| 17          | 5      | 1       | 2020-04-12    | NULL          |
| 18          | 5      | 2       | NULL          | NULL          |
| 19          | 5      | 3       | NULL          | NULL          |
| 20          | 5      | 4       | NULL          | NULL          |
+-------------+--------+---------+---------------+---------------+