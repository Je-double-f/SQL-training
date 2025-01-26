SELECT name_subject, CONCAT(LEFT(name_question, 30), '...') AS Вопрос, COUNT(answer.question_id) AS Всего_ответов,                            ROUND(SUM(is_correct)*100/COUNT(answer.question_id), 2) AS Успешность
  FROM subject
    INNER JOIN question  USING(subject_id)
    INNER JOIN testing  USING(question_id)
    INNER JOIN answer  USING(answer_id)
GROUP BY name_subject, name_question
ORDER BY name_subject ASC, Успешность DESC, name_question ASC;


+-------------------+-----------------------------------+---------------+------------+
| name_subject      | Вопрос                            | Всего_ответов | Успешность |
+-------------------+-----------------------------------+---------------+------------+
| Основы SQL        | Условие, по которому отбираютс... | 1             | 100.00     |
| Основы SQL        | Запрос на выборку начинается с... | 4             | 75.00      |
| Основы SQL        | Какой запрос выбирает все запи... | 3             | 66.67      |
| Основы SQL        | Для сортировки используется:...   | 2             | 50.00      |
| Основы SQL        | Для внутреннего соединения таб... | 2             | 0.00       |
| Основы баз данных | База данных - это:...             | 3             | 66.67      |
| Основы баз данных | Какой тип данных не допустим в... | 2             | 50.00      |
| Основы баз данных | Концептуальная модель использу... | 2             | 50.00      |
| Основы баз данных | Отношение - это:...               | 2             | 50.00      |
+-------------------+-----------------------------------+---------------+------------+