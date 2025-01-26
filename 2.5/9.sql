UPDATE buy_step
   SET date_step_end = '2020-04-13'
 WHERE buy_id = 5 AND step_id = 1;
 
UPDATE buy_step
   SET date_step_beg = '2020-04-13'
 WHERE buy_id = 5 AND
       step_id = (
                  SELECT step_id
                    FROM step
                   WHERE name_step = 'Упаковка'
                 );
 
SELECT * FROM buy_step
 WHERE buy_id = 5;


+-------------+--------+---------+---------------+---------------+
| buy_step_id | buy_id | step_id | date_step_beg | date_step_end |
+-------------+--------+---------+---------------+---------------+
| 17          | 5      | 1       | 2020-04-12    | 2020-04-13    |
| 18          | 5      | 2       | 2020-04-13    | NULL          |
| 19          | 5      | 3       | NULL          | NULL          |
| 20          | 5      | 4       | NULL          | NULL          |
+-------------+--------+---------+---------------+---------------+