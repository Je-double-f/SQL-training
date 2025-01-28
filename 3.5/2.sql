INSERT INTO step_keyword(step_id, keyword_id)
SELECT step_id, keyword_id
  FROM keyword, step
 WHERE step_name REGEXP CONCAT('\\b', keyword_name, '\\b');
 
SELECT * FROM step_keyword;


+---------+------------+
| step_id | keyword_id |
+---------+------------+
| 38      | 1          |
| 81      | 3          |
| 82      | 4          |
| 82      | 5          |
| 82      | 6          |
| 81      | 7          |
| 82      | 7          |
| 83      | 7          |
| 83      | 8          |
| 47      | 10         |
| 47      | 11         |
| 42      | 15         |
| 43      | 16         |
| 44      | 16         |
| 42      | 17         |
| 43      | 18         |
| 46      | 18         |
| 43      | 19         |
| 88      | 26         |
| 112     | 27         |
| 113     | 27         |
| 37      | 28         |
| 37      | 29         |
| 18      | 30         |
| 36      | 30         |
| 19      | 31         |
| 18      | 32         |
+---------+------------+