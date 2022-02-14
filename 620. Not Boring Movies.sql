-- Write an SQL query to report the movies with an odd-numbered ID and a description that is not "boring".
-- Return the result table ordered by rating in descending order.
-- LeetCode = https://leetcode.com/problems/not-boring-movies/

SELECT 
    *
FROM
    cinema
WHERE
    id % 2 = 1 AND description != 'boring'
ORDER BY rating DESC;
