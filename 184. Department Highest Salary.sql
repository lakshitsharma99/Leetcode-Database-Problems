-- Write an SQL query to find employees who have the highest salary in each of the departments.

SELECT
Department,
Employee,
Salary
from (
SELECT d.name as Department,
       e.name as Employee,
       e.salary as Salary,
    RANK() OVER (partition by d.id order by e.salary desc ) rnk 
    from Employee e join department d on e.departmentId = d.id) x 
    where x.rnk = 1
