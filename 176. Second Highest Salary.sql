-- Write an SQL query to report the second highest salary from the Employee table.

SELECT salary as SecondHighestSalary FROM
(
SELECT *, rank() over(order by salary) rnk from employee
) x
where x.rnk = 2;
