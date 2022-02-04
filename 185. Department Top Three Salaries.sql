-- A company's executives are interested in seeing who earns the most money in each of the company's departments. A high earner in a department is an employee who has a salary in the top three unique salaries for that department.
-- Write an SQL query to find the employees who are high earners in each of the departments.

SELECT Department,Employee, Salary from(
    SELECT d.name as Department,
       e.name as Employee,
       e.salary as Salary,
    dense_rank() OVER (partition by d.id order by e.salary desc ) rnk 
    from Employee e join Department d on e.departmentId = d.id) x
    where x.rnk<=3
