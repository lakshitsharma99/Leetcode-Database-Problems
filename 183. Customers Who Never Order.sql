-- Write an SQL query to report all customers who never order anything.
-- LeetCode: https://leetcode.com/problems/customers-who-never-order/submissions/

SELECT 
    name AS Customers
FROM
    (SELECT 
        c.*, o.customerid AS orderID
    FROM
        customers c
    LEFT JOIN orders o ON c.id = o.customerid) x
WHERE
    orderID IS NULL;
