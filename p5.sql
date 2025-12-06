-- Завдання 5
-- Створення функції для ділення двох параметрів типу FLOAT

DROP FUNCTION IF EXISTS homework3_db.divide_floats;

DELIMITER //

CREATE FUNCTION divide_floats(numerator FLOAT, denominator FLOAT)
RETURNS FLOAT
DETERMINISTIC
NO SQL
BEGIN
    RETURN numerator / denominator;
END //

DELIMITER ;

-- Приклад використання функції з таблицею order_details
-- Ділимо quantity на 2
SELECT
    id,
    order_id,
    product_id,
    quantity,
    divide_floats(quantity, 2.0) AS divided_quantity
FROM homework3_db.order_details;
