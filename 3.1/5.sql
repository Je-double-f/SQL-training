SELECT name_subject, COUNT(DISTINCT(student_id)) AS Количество
  FROM subject
       LEFT JOIN attempt USING(subject_id)
GROUP BY name_subject
ORDER BY Количество DESC, name_subject ASC;


+-------------------+------------+
| name_subject      | Количество |
+-------------------+------------+
| Основы SQL        | 2          |
| Основы баз данных | 2          |
| Физика            | 0          |
+-------------------+------------+