-- Завдання 2
-- SQL запит з вкладеним запитом в WHERE для фільтрації по shipper_id=3

SELECT od.*
FROM homework3_db.order_details od
WHERE od.order_id IN (
    SELECT o.id
    FROM homework3_db.orders o
    WHERE o.shipper_id = 3
);
