CREATE TABLE fine(
       fine_id INT PRIMARY KEY AUTO_INCREMENT,
          name VARCHAR(30),
  number_plate VARCHAR(6),
     violation VARCHAR(50),
      sum_fine DECIMAL(8, 2),
date_violation DATE,
  date_payment DATE
);

INSERT  INTO fine(name, number_plate, violation, sum_fine, date_violation, date_payment)
VALUES  ('Баранов П.Е.', 'Р523ВТ', 'Превышение скорости(от 40 до 60)', 500.00, '2020-01-12', '2020-01-17'),
        ('Абрамова К.А.', 'О111АВ', 'Проезд на запрещающий сигнал', 1000.00, '2020-01-14', '2020-02-27'),
        ('Яковлев Г.Р.', 'Т330ТТ', 'Превышение скорости(от 20 до 40)', 500.00, '2020-01-23', '2020-02-23'),
        ('Яковлев Г.Р.', 'М701АА', 'Превышение скорости(от 20 до 40)', 500.00, '2020-01-12', NULL),
        ('Колесов С.П.', 'К892АХ', 'Превышение скорости(от 20 до 40)', 500.00, '2020-02-01', NULL),
        ('Баранов П.Е.', 'Р523ВТ', 'Превышение скорости(от 40 до 60)', 1000.00, '2020-02-14', NULL),
        ('Абрамова К.А.', 'О111АВ', 'Проезд на запрещающий сигнал', 1000.00, '2020-02-23', NULL),
        ('Яковлев Г.Р.', 'Т330ТТ', 'Проезд на запрещающий сигнал', 1000.00, '2020-03-03', NULL);

CREATE TABLE query_in AS
SELECT name, number_plate, violation
FROM fine
GROUP BY name, number_plate, violation
HAVING COUNT(*) > 1;

UPDATE fine
SET sum_fine = sum_fine * 2
WHERE date_payment IS NULL AND (name, number_plate) IN (
    SELECT name, number_plate FROM query_in
);

SELECT * FROM fine;