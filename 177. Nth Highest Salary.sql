-- Write an SQL query to report the nth highest salary from the Employee table. If there is no nth highest salary, the query should report null.

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
            SELECT salary as SecondHighestSalary FROM
            (
            SELECT *, rank() over(order by salary) rnk from employee
            ) x
            where x.rnk = N  
  );
END
