DELETE FROM applicant
 USING program_subject
     INNER JOIN applicant USING(program_id)
     INNER JOIN enrollee_subject ON applicant.enrollee_id = enrollee_subject.enrollee_id 
                AND enrollee_subject.subject_id = program_subject.subject_id
 WHERE min_result > result;

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
| 4          | 6           | 270  |
| 4          | 3           | 242  |
| 4          | 5           | 192  |
+------------+-------------+------+