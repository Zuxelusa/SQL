-- Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными
CREATE DATABASE homework_2;
USE homework_2;
CREATE TABLE sales
(id INT PRIMARY KEY,
order_date DATE NOT NULL,
count_product INT NOT NULL DEFAULT 0
);
INSERT INTO sales (id, order_date, count_product)
VALUES
(1, '2022-01-01', 156),
(2, '2022-01-02', 180),
(3, '2022-01-03', 21),
(4, '2022-01-04', 124),
(5, '2022-01-05', 341);

SELECT * FROM sales;

-- Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300 (функция IF).
SELECT 
id AS 'id заказа',
IF (count_product < 100, 'Маленький заказ',
	IF (count_product > 300, 'Большой заказ', "Средний заказ")) 
    AS 'Тип заказа'
    FROM sales;

-- Создайте таблицу “orders”, заполните ее значениями. Покажите “полный” статус заказа, используя оператор CASE
DROP TABLE IF EXISTS orders ;
CREATE TABLE IF NOT EXISTS orders
(id INT PRIMARY KEY,
employee_id VARCHAR(3) NOT NULL,
amount DECIMAL(5, 2) NOT NULL,
order_status VARCHAR(10) NOT NULL
);

INSERT INTO orders (id, employee_id, amount, order_status)
VALUES
(1, 'e03', 15.00, 'OPEN'),
(2, 'e01', 25.50, 'OPEN'),
(3, 'e05', 100.70, 'CLOSED'),
(4, 'e02', 22.18, 'OPEN'),
(5, 'e04', 9.50, 'CANCELLED');

SELECT * FROM orders;

SELECT *, 
CASE
WHEN order_status = 'OPEN' THEN 'Order is in open state'
WHEN order_status = 'CLOSED' THEN 'Order is closed'
WHEN order_status = 'CANCELLED' THEN 'Order is cancelled'
ELSE 'Error'
END AS 'full_order_status'
FROM orders;



