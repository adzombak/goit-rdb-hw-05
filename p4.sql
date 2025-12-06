-- Завдання 4
-- Розв'язання завдання 3 з використанням оператора WITH

WITH temp AS (
    SELECT *
    FROM homework3_db.order_details
    WHERE quantity > 10
)
SELECT
    order_id,
    AVG(quantity) AS avg_quantity
FROM homework3_db.temp
GROUP BY order_id;
