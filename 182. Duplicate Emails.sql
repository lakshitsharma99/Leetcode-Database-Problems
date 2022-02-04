-- Write an SQL query to report all the duplicate emails.

SELECT distinct(email) FROM
(
SELECT *,
row_number() over(partition by email) as rnk
FROM person
) x
WHERE x.rnk >= 2

or

SELECT email
FROM person
GROUP BY email HAVING COUNT(email)>=2;
