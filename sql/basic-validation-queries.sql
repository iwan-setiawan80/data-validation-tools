-- Find duplicate email addresses
SELECT email, COUNT(*)
FROM users
GROUP BY email
HAVING COUNT(*) > 1;

-- Find missing values
SELECT *
FROM users
WHERE email IS NULL
   OR full_name IS NULL;

-- Find invalid dates
SELECT *
FROM orders
WHERE order_date > CURRENT_DATE;
