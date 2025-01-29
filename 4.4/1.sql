WITH complexity AS 
    (
     SELECT name_subject, name_question, 
            ROUND(SUM(is_correct) / COUNT(testing.answer_id) * 100, 2) AS Сложность 
       FROM subject 
            INNER JOIN question USING(subject_id) 
            INNER JOIN  testing USING(question_id) 
             LEFT JOIN   answer USING(answer_id) 
      GROUP BY name_subject, name_question 
      ORDER BY Сложность ASC
    )

SELECT name_subject, name_question, 
       (
         CASE
             WHEN Сложность = (SELECT MIN(Сложность) FROM complexity) THEN 'самый сложный'
             WHEN Сложность = (SELECT MAX(Сложность) FROM complexity) THEN 'самый легкий'
          END
       ) AS Сложность
  FROM complexity
 WHERE Сложность = (SELECT MIN(Сложность) FROM complexity) OR
       Сложность = (SELECT MAX(Сложность) FROM complexity)
 ORDER BY Сложность ASC;


+--------------+-------------------------------------------------------------------------+---------------+
| name_subject | name_question                                                           | Сложность     |
+--------------+-------------------------------------------------------------------------+---------------+
| Основы SQL   | Условие, по которому отбираются записи, задается после ключевого слова: | самый легкий  |
| Основы SQL   | Для внутреннего соединения таблиц используется оператор:                | самый сложный |
+--------------+-------------------------------------------------------------------------+---------------+