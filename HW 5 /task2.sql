-- 1
SELECT SUM(total_amount) AS Income
FROM orders;

-- 2
SELECT SUM(total_amount) AS [Feb Income]
FROM orders
WHERE DATEPART(YEAR, order_date) = 2016 AND DATEPART(MONTH, order_date) = 2;

-- 3
SELECT AVG(total_amount) AS Avg_Bill
FROM orders
WHERE table_id = 2;

-- 4
SELECT 
    MIN(seats) AS Min,
    MAX(seats) AS Max,
    AVG(seats) AS Avg
FROM tables
WHERE room = 'Blue';

-- 5
SELECT COUNT(DISTINCT table_id) AS Distinct_Tables
FROM orders
WHERE waiter_id IN ('004', '002');
