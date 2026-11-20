-- Rule: Check for duplicate customer_email values
-- Purpose: Identify email values shared by multiple customer records

SELECT
    customer_email,
    COUNT(*) AS duplicate_count
FROM customers
GROUP BY customer_email
HAVING COUNT(*) > 1;