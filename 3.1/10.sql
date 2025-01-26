SELECT name_subject, CONCAT(LEFT(name_question, 30), '...') AS Вопрос, COUNT(answer.question_id) AS Всего_ответов,          ROUND(SUM(is_correct)*100/COUNT(answer.question_id), 2) AS Успешность,
       IF((ROUND(SUM(is_correct)*100 / COUNT(answer.question_id), 2) > 70), 'Прошёл', 'Не прошёл') AS Статус
  FROM subject
    INNER JOIN question  USING(subject_id)
    INNER JOIN testing  USING(question_id)
    INNER JOIN answer  USING(answer_id)
GROUP BY name_subject, name_question
HAVING Успешность > 50 AND Вопрос NOT LIKE '% - %'
ORDER BY name_subject ASC, Успешность DESC, name_question ASC;


+--------------+-----------------------------------+---------------+------------+-----------+
| name_subject | Вопрос                            | Всего_ответов | Успешность | Статус    |
+--------------+-----------------------------------+---------------+------------+-----------+
| Основы SQL   | Условие, по которому отбираютс... | 1             | 100.00     | Прошёл    |
| Основы SQL   | Запрос на выборку начинается с... | 4             | 75.00      | Прошёл    |
| Основы SQL   | Какой запрос выбирает все запи... | 3             | 66.67      | Не прошёл |
+--------------+-----------------------------------+---------------+------------+-----------+