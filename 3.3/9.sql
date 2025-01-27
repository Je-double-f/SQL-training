SELECT name_program, name_enrollee, SUM(result) AS itog
  FROM enrollee
       INNER JOIN program_enrollee USING(enrollee_id)
       INNER JOIN program USING(program_id)
       INNER JOIN program_subject USING(program_id)
       INNER JOIN subject USING(subject_id)
       INNER JOIN enrollee_subject ON subject.subject_id = enrollee_subject.subject_id 
                                      AND enrollee_subject.enrollee_id = enrollee.enrollee_id
GROUP BY name_program, name_enrollee
ORDER BY name_program ASC, itog DESC;


+-------------------------------------+-----------------+------+
| name_program                        | name_enrollee   | itog |
+-------------------------------------+-----------------+------+
| Математика и компьютерные науки     | Степанова Дарья | 276  |
| Математика и компьютерные науки     | Семенов Иван    | 230  |
| Математика и компьютерные науки     | Абрамова Катя   | 226  |
| Мехатроника и робототехника         | Степанова Дарья | 270  |
| Мехатроника и робототехника         | Семенов Иван    | 242  |
| Мехатроника и робототехника         | Попов Илья      | 192  |
| Мехатроника и робототехника         | Баранов Павел   | 179  |
| Прикладная математика и информатика | Семенов Иван    | 230  |
| Прикладная математика и информатика | Абрамова Катя   | 226  |
| Прикладная математика и информатика | Баранов Павел   | 213  |
| Прикладная механика                 | Степанова Дарья | 270  |
| Прикладная механика                 | Яковлева Галина | 238  |
| Прикладная механика                 | Попов Илья      | 192  |
| Прикладная механика                 | Баранов Павел   | 179  |
+-------------------------------------+-----------------+------+