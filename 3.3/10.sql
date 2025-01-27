SELECT name_program, name_enrollee
  FROM enrollee
       INNER JOIN program_enrollee USING(enrollee_id)
       INNER JOIN program USING(program_id)
       INNER JOIN program_subject USING(program_id)
       INNER JOIN subject USING(subject_id)
       INNER JOIN enrollee_subject ON subject.subject_id = enrollee_subject.subject_id 
                                      AND enrollee_subject.enrollee_id = enrollee.enrollee_id
WHERE result < min_result
ORDER BY name_program ASC, name_enrollee ASC;


+-----------------------------+---------------+
| name_program                | name_enrollee |
+-----------------------------+---------------+
| Мехатроника и робототехника | Баранов Павел |
| Прикладная механика         | Баранов Павел |
+-----------------------------+---------------+