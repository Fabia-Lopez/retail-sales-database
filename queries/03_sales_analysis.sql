-- Retail Sales Database
-- Sales Analysis Queries

-- 1. Calculate total sales
SELECT
    SUM(OrderDetails.quantity * Products.price) AS total_sales
FROM OrderDetails
INNER JOIN Products
    ON OrderDetails.product_id = Products.product_id;

-- 2. Count total orders
SELECT COUNT(*) AS total_orders
FROM Orders;

-- 3. Calculate sales by product
SELECT
    Products.product_name,
    SUM(OrderDetails.quantity * Products.price) AS product_sales
FROM OrderDetails
INNER JOIN Products
    ON OrderDetails.product_id = Products.product_id
GROUP BY Products.product_id, Products.product_name
ORDER BY product_sales DESC;

-- 4. Calculate total spending by customer
SELECT
    Customers.full_name,
    SUM(OrderDetails.quantity * Products.price) AS total_spent
FROM Customers
INNER JOIN Orders
    ON Customers.customer_id = Orders.customer_id
INNER JOIN OrderDetails
    ON Orders.order_id = OrderDetails.order_id
INNER JOIN Products
    ON OrderDetails.product_id = Products.product_id
GROUP BY Customers.customer_id, Customers.full_name
ORDER BY total_spent DESC;

-- 5. Calculate units sold by product
SELECT
    Products.product_name,
    SUM(OrderDetails.quantity) AS units_sold
FROM OrderDetails
INNER JOIN Products
    ON OrderDetails.product_id = Products.product_id
GROUP BY Products.product_id, Products.product_name
ORDER BY units_sold DESC;