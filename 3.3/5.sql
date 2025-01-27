SELECT name_program, plan
  FROM program
WHERE plan = (SELECT MAX(plan) FROM program);


+-----------------------------+------+
| name_program                | plan |
+-----------------------------+------+
| Мехатроника и робототехника | 3    |
+-----------------------------+------+