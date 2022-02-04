-- Write an SQL query to report all the classes that have at least five students. 
-- LeetCode: https://leetcode.com/problems/classes-more-than-5-students/

SELECT CLASS FROM
(
SELECT * FROM courses GROUP BY class HAVING COUNT(class) >= 5
) x;
