-- =========================================
-- SQL BASICS PROJECT — SALES MINI REPORT
-- Author: Alfred
-- =========================================


-- =========================================
-- 1. CREATE TABLE (DATASET)
-- =========================================
CREATE OR REPLACE TABLE practice_sql.sales AS
SELECT 1 AS order_id, 'Alfred' AS customer, 'Manila' AS city, 1000 AS amount, DATE '2024-01-01' AS order_date UNION ALL
SELECT 2, 'Maria', 'Cebu', 1500, DATE '2024-01-02' UNION ALL
SELECT 3, 'John', 'Manila', 800, DATE '2024-01-03' UNION ALL
SELECT 4, 'Alfred', 'Manila', 1200, DATE '2024-01-04' UNION ALL
SELECT 5, 'Maria', 'Cebu', 1500, DATE '2024-01-05' UNION ALL
SELECT 6, 'Anna', 'Davao', 700, DATE '2024-01-06' UNION ALL
SELECT 7, 'John', 'Manila', 800, DATE '2024-01-07';


-- =========================================
-- 2. BASIC QUERIES (SQL BASICS)
-- =========================================

-- SELECT, FROM, WHERE
SELECT *
FROM practice_sql.sales
WHERE city = 'Manila';

-- ORDER BY, LIMIT
SELECT *
FROM practice_sql.sales
ORDER BY amount DESC
LIMIT 3;

-- DISTINCT
SELECT DISTINCT customer
FROM practice_sql.sales;

-- ALIASES
SELECT 
  customer AS customer_name,
  amount AS sales_amount
FROM practice_sql.sales;


-- =========================================
-- 3. MASTER QUERY (COMBINED BASICS)
-- =========================================

-- Top 3 high-value Manila customers
SELECT DISTINCT
  customer AS customer_name,
  city,
  amount AS sales_amount
FROM practice_sql.sales
WHERE city = 'Manila'
  AND amount > 800
ORDER BY sales_amount DESC
LIMIT 3;


-- =========================================
-- 4. SALES MINI REPORT
-- =========================================

-- Top 5 sales
SELECT 
  customer AS customer_name,
  city,
  amount AS sales_amount
FROM practice_sql.sales
ORDER BY sales_amount DESC
LIMIT 5;

-- Unique customers
SELECT DISTINCT customer
FROM practice_sql.sales;

-- Manila sales (sorted)
SELECT 
  customer,
  amount
FROM practice_sql.sales
WHERE city = 'Manila'
ORDER BY amount DESC;

-- High-value transactions
SELECT 
  order_id,
  customer,
  amount
FROM practice_sql.sales
WHERE amount > 1000
ORDER BY amount DESC;


-- =========================================
-- 5. LOGICAL EXECUTION UNDERSTANDING
-- =========================================

-- This query demonstrates execution order:
-- FROM → WHERE → SELECT → ORDER BY → LIMIT

SELECT 
  customer,
  amount
FROM practice_sql.sales
WHERE amount > 800
ORDER BY amount DESC
LIMIT 5;


-- =========================================
-- END OF PROJECT
-- =========================================