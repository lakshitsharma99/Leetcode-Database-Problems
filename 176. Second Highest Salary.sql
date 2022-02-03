+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| salary      | int  |
+-------------+------+
id is the primary key column for this table.
Each row of this table contains information about the salary of an employee.

Write an SQL query to report the second highest salary from the Employee table.

My solution:

SELECT salary as SecondHighestSalary FROM
(
SELECT *, rank() over(order by salary) rnk from employee
) x
where x.rnk = 2;
