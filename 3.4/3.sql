UPDATE applicant 
       INNER JOIN (
                    SELECT enrollee_id, SUM(IF(achievement_id IS NULL, 0, bonus)) AS extra_points
                      FROM enrollee
                      LEFT JOIN enrollee_achievement USING(enrollee_id)
                      LEFT JOIN achievement USING(achievement_id)
                    GROUP BY enrollee_id
                   ) AS Bonus USING(enrollee_id)
   SET itog = itog + extra_points;
SELECT * FROM applicant;


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