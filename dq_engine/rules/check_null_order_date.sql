-- Rule: Check for NULL order_date values
-- Purpose: Identify orders with missing dates

SELECT
    COUNT(*) AS null_order_date_count
FROM orders
WHERE order_date IS NULL;