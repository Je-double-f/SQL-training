CREATE TABLE student AS
SELECT name_program, name_enrollee, itog
  FROM enrollee
       INNER JOIN applicant_order USING(enrollee_id)
       INNER JOIN         program USING(program_id)
WHERE str_id <= plan
ORDER BY name_program, itog DESC;


+-------------------------------------+-----------------+------+
| name_program                        | name_enrollee   | itog |
+-------------------------------------+-----------------+------+
| Математика и компьютерные науки     | Степанова Дарья | 276  |
| Мехатроника и робототехника         | Степанова Дарья | 270  |
| Мехатроника и робототехника         | Семенов Иван    | 247  |
| Мехатроника и робототехника         | Попов Илья      | 200  |
| Прикладная математика и информатика | Семенов Иван    | 235  |
| Прикладная математика и информатика | Абрамова Катя   | 226  |
| Прикладная механика                 | Степанова Дарья | 270  |
| Прикладная механика                 | Яковлева Галина | 239  |
+-------------------------------------+-----------------+------+