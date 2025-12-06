-- Завдання 3
-- SQL запит з вкладеним запитом в FROM для вибірки quantity>10
-- та знаходження середнього значення quantity по order_id

SELECT
    order_id,
    AVG(quantity) AS avg_quantity
FROM (
    SELECT *
    FROM homework3_db.order_details
    WHERE quantity > 10
) AS filtered_orders
GROUP BY order_id;
