-- Завдання 1
-- SQL запит з вкладеним запитом в SELECT для відображення customer_id з таблиці orders

SELECT
    od.*,
    (SELECT o.customer_id
     FROM homework3_db.orders o
     WHERE o.id = od.order_id) AS customer_id
FROM homework3_db.order_details od;
