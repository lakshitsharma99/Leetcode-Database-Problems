-- Write an SQL query to report all the classes that have at least five students. <a href='https://leetcode.com/problems/classes-more-than-5-students/'>LeetCode</a>

SELECT CLASS FROM(
SELECT *, 
ROW_NUMBER() OVER(PARTITION BY class) rn FROM courses
) x
where X.rn>5 
