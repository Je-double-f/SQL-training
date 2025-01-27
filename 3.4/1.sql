CREATE TABLE applicant AS
SELECT program_id, enrollee_subject.enrollee_id, SUM(result) AS itog
  FROM enrollee
       INNER JOIN program_enrollee USING(enrollee_id)
       INNER JOIN program USING(program_id)
       INNER JOIN program_subject USING(program_id)
       INNER JOIN subject USING(subject_id)
       INNER JOIN enrollee_subject ON subject.subject_id = enrollee_subject.subject_id 
                                      AND enrollee_subject.enrollee_id = enrollee.enrollee_id
GROUP BY program_id, enrollee_id
ORDER BY program_id ASC, itog DESC;

SELECT * FROM applicant;

+------------+-------------+------+
| program_id | enrollee_id | itog |
+------------+-------------+------+
| 1          | 3           | 230  |
| 1          | 2           | 226  |
| 1          | 1           | 213  |
| 2          | 6           | 276  |
| 2          | 3           | 230  |
| 2          | 2           | 226  |
| 3          | 6           | 270  |
| 3          | 4           | 238  |
| 3          | 5           | 192  |
| 3          | 1           | 179  |
| 4          | 6           | 270  |
| 4          | 3           | 242  |
| 4          | 5           | 192  |
| 4          | 1           | 179  |
+------------+-------------+------+