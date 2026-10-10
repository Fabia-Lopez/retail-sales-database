
-- Retail Sales Database
-- Basic Queries: SELECT, WHERE and ORDER BY

-- 1. Display all products
SELECT *
FROM Products;

-- 2. Display product names and prices
SELECT product_name, price
FROM Products;

-- 3. Filter products by category
SELECT product_name, category, price
FROM Products
WHERE category = 'Electronics';

-- 4. Find products priced above 30
SELECT product_name, price
FROM Products
WHERE price > 30;

-- 5. Sort products by price, highest first
SELECT product_name, price
FROM Products
ORDER BY price DESC;

-- 6. Combine filtering and sorting
SELECT product_name, price
FROM Products
WHERE category = 'Electronics'
  AND price > 25
ORDER BY price DESC;