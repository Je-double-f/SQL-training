INSERT INTO client(name_client, city_id,email)
VALUES ('Попов Илья', 1, 'popov@test');

SELECT * FROM client;


+-----------+-----------------+---------+----------------+
| client_id | name_client     | city_id | email          |
+-----------+-----------------+---------+----------------+
| 1         | Баранов Павел   | 3       | baranov@test   |
| 2         | Абрамова Катя   | 1       | abramova@test  |
| 3         | Семенонов Иван  | 2       | semenov@test   |
| 4         | Яковлева Галина | 1       | yakovleva@test |
| 5         | Попов Илья      | 1       | popov@test     |
+-----------+-----------------+---------+----------------+