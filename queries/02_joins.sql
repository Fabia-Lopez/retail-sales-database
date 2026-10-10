
-- Retail Sales Database
-- Table Relationships: INNER JOIN

-- 1. Display customers and their orders
SELECT
    Customers.full_name,
    Orders.order_date
FROM Customers
INNER JOIN Orders
    ON Customers.customer_id = Orders.customer_id;

-- 2. Display orders for Emma Johnson
SELECT
    Customers.full_name,
    Orders.order_date
FROM Customers
INNER JOIN Orders
    ON Customers.customer_id = Orders.customer_id
WHERE Customers.full_name = 'Emma Johnson';

-- 3. Display orders with their products and quantities
SELECT
    Orders.order_id,
    Products.product_name,
    OrderDetails.quantity,
    Products.price
FROM OrderDetails
INNER JOIN Orders
    ON OrderDetails.order_id = Orders.order_id
INNER JOIN Products
    ON OrderDetails.product_id = Products.product_id;