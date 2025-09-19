-- ===============================
-- salesDB - Joins & Relationships
-- answers.sql
-- ===============================

-- Question 1 🧑‍💼
-- Retrieve employee details (firstName, lastName, email) along with officeCode
-- Using INNER JOIN between employees and offices on officeCode
USE salesDB;  -- Select the database first

SELECT e.firstName, e.lastName, e.email, o.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;


-- Question 2 🛍️
-- Get product details (productName, productVendor) and match with productLine info
-- Using LEFT JOIN to include all products even if they don’t match a productLine
SELECT p.productName, p.productVendor, pl.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;


-- Question 3 📦
-- Retrieve order details for the first 10 orders
-- Using RIGHT JOIN to ensure all orders are shown even if customer info is missing
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
